#pragma once

#include <algorithm>
#include <cassert>
#include <sstream>
#include <unordered_map>
#include <vector>
#include "salsa.hpp"

const uintptr_t cScriptOffset = 0x136A6F4;
const uintptr_t cMiscTextOffset = 0xD1EE78;

void salsa_maintext_read(SalsaStream& src, SalsaPath& dest);
void salsa_maintext_write(SalsaPath& src, SalsaStream& dest);

void salsa_misctext_read(SalsaStream& src, SalsaPath& dest);
void salsa_misctext_write(SalsaPath& src, SalsaStream& dest);

// returns size (# chars), value
std::pair<u32, u32> readU8Char(const std::string& s);

static std::string hex_string(u32 value) {
    std::stringstream ss;
    ss << std::hex << value;
    return ss.str();
}

struct CCode {
    std::string name;
    u32 argcount;
};

extern const std::unordered_map<u16, CCode> cc_map;
extern const std::vector<const char*> jp_charmap;

struct TextBank;

enum class TextBlockType : uint8_t {
    FixedMsg,
    DynamicMsg,
};

static const std::unordered_map<TextBlockType, std::string> s_block_type_name = {
    {TextBlockType::FixedMsg, "Fixed"},
    {TextBlockType::DynamicMsg, "Dynamic"},
};

struct Message {
    Message() = default;
    Message(const std::string& str) : text(str) {}

    static Message dump(SalsaStream* stream, s32 size);
    static std::vector<u16> parse(const std::string& line);

    std::string text;
};

struct MessageHeader {
    MessageHeader(u16 offset) : offset(offset) {}

    bool operator==(const MessageHeader& other) {
        return offset == other.offset && is_duplicate == other.is_duplicate;
    }

    bool is_duplicate = false;
    u16 offset;
};

struct DynamicMessageBlock {
    bool isNulled() const { return messages.size() == 0; }

    static DynamicMessageBlock dump(SalsaStream* stream, s32 messages_top, bool hack = false);
    std::vector<MessageHeader> message_headers;
    u16 num_msg;
    std::vector<Message> messages;
};

struct BlockSpec {
    TextBlockType type = TextBlockType::DynamicMsg;
    s32 message_length = -1;
};

struct BlockHeader {
    BlockHeader() = default;
    virtual ~BlockHeader() = default;

    virtual u32 start() const = 0;
    virtual u32 startMessages() const = 0;
    virtual bool isNulled() const = 0;
    virtual bool isEmpty() const = 0;

    virtual DynamicMessageBlock dumpBlock(SalsaStream* stream, s32 size) const = 0;

    // returns the calculated size of the block
    virtual u32 init(const DynamicMessageBlock& block, u32 offset) = 0;
    virtual void initAsEmpty(u32 value) = 0;
    virtual void write(SalsaStream* stream) const = 0;
};

class FixedBlockHeader : public BlockHeader {
public:
    FixedBlockHeader(u32 start_msgs, s32 message_size)
        : start_messages(start_msgs), message_size(message_size) {}
    FixedBlockHeader(SalsaStream* stream, s32 message_size)
        : start_messages(stream->read<u32>()), message_size(message_size) {}
    virtual ~FixedBlockHeader() = default;

    virtual u32 start() const override { return start_messages; }
    virtual u32 startMessages() const override { return start_messages; }
    // todo: is there any place in the rom where these are true?
    // or is this only observed for dynamic blocks?
    virtual bool isNulled() const override { return start_messages == 0; }
    virtual bool isEmpty() const override { return message_size == 0; }

    virtual DynamicMessageBlock dumpBlock(SalsaStream* stream, s32 size) const override {
        //assert(0);
        char* data = new char[size];
        stream->std::istream::read(data, size);
        delete[] data;
        return DynamicMessageBlock {};
    }

    virtual void initAsEmpty(u32 value) override {
        start_messages = value;
        message_size = 0;
    }
    virtual u32 init(const DynamicMessageBlock& block, u32 offset) override {
        u32 message_size =
            pad_to<4>(block.message_headers.back().offset + block.messages.back().text.size());
        start_messages = offset;
        assert(0);  // message_size = ???
        return message_size;
    }
    virtual void write(SalsaStream* stream) const override { stream->write<s32>(start_messages); }

private:
    u32 start_messages = 0;
    u32 message_size = 0;
};

class DynamicBlockHeader : public BlockHeader {
public:
    DynamicBlockHeader() = default;
    DynamicBlockHeader(u32 start_headers, u32 start_msgs)
        : start_message_headers(start_headers), start_messages(start_msgs) {}
    DynamicBlockHeader(SalsaStream* stream) {
        start_message_headers = stream->read<u32>();
        start_messages = stream->read<u32>();

        if (start_message_headers == 0) {
            // nulled blocks have both fields == 0
            assert(start_message_headers == start_messages);
        }
    }
    virtual ~DynamicBlockHeader() = default;

    virtual u32 start() const override { return start_message_headers; }
    virtual u32 startMessages() const override { return start_messages; }
    virtual bool isNulled() const override { return start_message_headers == 0; }
    virtual bool isEmpty() const override { return start_message_headers == start_messages; }

    virtual DynamicMessageBlock dumpBlock(SalsaStream* stream, s32 size) const override {
        if (isNulled()) {
            return DynamicMessageBlock{};
        }

        if (isEmpty()) {
            DynamicMessageBlock block;
            block.messages.emplace_back(Message{});
            stream->seekg((long)stream->tellg() + 4, std::ios::beg);
            return block;
        }

        return DynamicMessageBlock::dump(stream, size);
    }

    virtual void initAsEmpty(u32 value) override {
        start_message_headers = value;
        start_messages = value;
    }
    virtual u32 init(const DynamicMessageBlock& block, u32 offset) override {
        u32 header_size = pad_to<4>(block.message_headers.size() * 2);
        u32 message_size =
            pad_to<4>(block.message_headers.back().offset + block.messages.back().text.size());
        start_message_headers = offset;
        start_messages = offset + header_size;
        return header_size + message_size;
    }
    virtual void write(SalsaStream* stream) const override {
        stream->write<s32>(start_message_headers);
        stream->write<s32>(start_messages);
    }

private:
    u32 start_message_headers = 0;
    u32 start_messages = 0;
};

/*
A text bank follows this structure:

* header size (in 4 byte words): u32
* block headers (may be dynamic or fixed)
* total size of bank: u32
* blocks (may be dynamic or fixed)

some examples:
    The "main script" bank is composed entirely of dynamic blocks
    The "misc text" bank is composed of both fixed and dynamic blocks
*/
struct TextBank {
    auto nextGoodHeader(int cur) {
        return std::find_if(headers.begin() + cur + 1, headers.end(),
                            [](const auto& n) { return !n->isNulled(); });
    }

    void dumpHackBlock(SalsaStream* stream, s32 idx) {
        blocks.emplace_back(DynamicMessageBlock::dump(
            stream, this->total_size - headers[idx]->startMessages(), true));
    }

    static std::unique_ptr<TextBank> dump(SalsaStream* stream, uintptr_t offset,
                                          const std::vector<BlockSpec>& specs) {
        auto bank = std::make_unique<TextBank>();

        stream->seekg(offset);
        (void)stream->read<u32>();  // block header word count
        bank->block_count = specs.size();

        // dump block headers
        for (auto& spec : specs) {
            switch (spec.type) {
            case TextBlockType::FixedMsg:
                bank->headers.emplace_back(
                    std::make_unique<FixedBlockHeader>(stream, spec.message_length));
                break;
            case TextBlockType::DynamicMsg:
                bank->headers.emplace_back(std::make_unique<DynamicBlockHeader>(stream));
                break;
            }
        }
        bank->total_size = stream->read<u32>();

        // dump blocks
        for (int h = 0; h < bank->headers.size(); h++) {
            stream->seekg(pad_to<4>(stream->tellg()), std::ios::beg);
            auto& header = bank->headers[h];

            if (!header->isNulled()) {
                assert(stream->tellg() == offset + header->start());
            }

            if (h == 811) {
                bank->dumpHackBlock(stream, h);
                continue;
            }

            auto next_header = bank->nextGoodHeader(h);
            if (next_header != bank->headers.end()) {
                // calculate block size from next header
                bank->blocks.emplace_back(
                    header->dumpBlock(stream, (*next_header)->start() - header->startMessages()));
            } else {
                // last non-null header, calculate block size from total size
                bank->blocks.emplace_back(
                    header->dumpBlock(stream, bank->total_size - header->startMessages()));
            }
        }
        return bank;
    }

    static TextBank parse(SalsaStream* stream) {
        TextBank bank;

        std::string line;
        while (std::getline(*stream, line)) {
            auto trimmed = line.substr(0, line.find(":"));
            auto message = line.substr(line.find(":") + 1);
            auto block_idx = std::stoi(trimmed.substr(0, trimmed.find("-")));
            auto message_idx = std::stoi(trimmed.substr(trimmed.find("-") + 1));

            // construct all blocks up to and including the current index
            // ones we skipped over are assumed to be nulled
            while (block_idx > bank.block_count - 1) {
                bank.blocks.emplace_back(DynamicMessageBlock{});
                bank.headers.emplace_back(std::make_unique<DynamicBlockHeader>());
                bank.block_count++;
            }
            auto& cur_block = bank.blocks[block_idx];

            // messages should be in order
            assert(message_idx == cur_block.message_headers.size());

            if (message == "[DUP]") {
                // copy last message offset and mark this as duplicate
                MessageHeader header = cur_block.message_headers.back();
                header.is_duplicate = true;
                cur_block.message_headers.emplace_back(header);
                continue;
            }

            // convert the message into a vector<u16>
            // then "store" inside a string to be compatible with our Message struct
            auto converted_raw = Message::parse(message);
            auto converted_string = std::string(reinterpret_cast<char*>(converted_raw.data()),
                                                converted_raw.size() * sizeof(converted_raw[0]));

            if (cur_block.message_headers.size() == 0) {
                cur_block.message_headers.emplace_back(4);  // + 4 for 0xFFFF and size fields
            } else {
                // place at offset + size of last message
                cur_block.message_headers.emplace_back(cur_block.message_headers.back().offset +
                                                       cur_block.messages.back().text.size());
            }
            cur_block.messages.emplace_back(Message{converted_string});
        }

        // I guess these are padding? They are in the original game
        for (int i = 1001 - bank.block_count; i != 0; i--) {
            bank.blocks.emplace_back(DynamicMessageBlock{});
            bank.headers.emplace_back(std::make_unique<DynamicBlockHeader>());
            bank.block_count++;
        }

        u32 offset = 8 + bank.block_count * 8;  // beginning offset of the first block

        // calculate offsets for all block headers
        for (int i = 0; i < bank.block_count; i++) {
            auto& block = bank.blocks[i];
            auto& header = bank.headers[i];
            // hack for weird dup/empty edge case!!!!
            if (i == 812) {
                offset -= 4;
            }

            if (block.isNulled()) {
                continue;
            }

            if (block.messages.size() == 1 && block.messages[0].text.empty()) {
                header->initAsEmpty(offset);
                offset += 4;
                continue;
            }

            offset += header->init(block, offset);
        }
        bank.total_size = offset;
        return bank;
    }

    static void write(SalsaStream* src, SalsaStream* dest) {
        auto bank = TextBank::parse(src);

        dest->write<s32>(bank.block_count * 2);
        for (auto& header : bank.headers) {
            header->write(dest);
        }
        dest->write<s32>(bank.total_size);
        for (int i = 0; i < bank.blocks.size(); ++i) {
            auto& block = bank.blocks[i];
            if (block.isNulled()) {
                continue;
            }

            // HACKK
            if (i == 812) {
                continue;
            }

            if (block.messages.size() == 1 && block.messages[0].text.empty()) {
                // empty block
                dest->write<u16>(0xFFFF);
                dest->write<u16>(0x0000);
                continue;
            }

            for (auto& header : block.message_headers) {
                dest->write<u16>(header.offset);
            }
            // pad to 4 bytes
            if (dest->tellp() % 4 != 0) {
                dest->write<u16>(0x0000);
            }

            dest->write<u16>(0xFFFF);
            dest->write<u16>(block.message_headers.size());
            for (auto& message : block.messages) {
                for (auto& c : message.text) {
                    dest->write<u8>(c);
                }
            }
            // pad to 4 bytes
            if (dest->tellp() % 4 != 0) {
                dest->write<u16>(0x0000);
            }
        }
    }

    s32 block_count = 0;
    std::vector<std::unique_ptr<BlockHeader> > headers;
    u32 total_size;
    std::vector<DynamicMessageBlock> blocks;
};

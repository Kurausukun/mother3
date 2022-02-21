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

struct Message {
    Message() = default;
    Message(const std::string& str) : text(str) {}

    static Message dump(SalsaStream* stream, s32 size);
    static std::vector<u16> parse(const std::string& message);

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

struct MessageBlock {
    bool isNulled() const { return messages.size() == 0; }

    MessageBlock() = default;
    virtual ~MessageBlock() = default;

    virtual u32 headerSize() const = 0;
    virtual u32 messagesSize() const = 0;
    virtual void write(SalsaStream* stream) = 0;
    virtual void appendMessage(const std::string& message) = 0;

    u16 num_msg;
    std::vector<Message> messages;
};

struct DynamicMessageBlock : public MessageBlock {
    DynamicMessageBlock() = default;
    DynamicMessageBlock(SalsaStream* stream, s32 messages_top, bool hack = false);
    virtual ~DynamicMessageBlock() = default;

    u32 headerSize() const override { return pad_to<4>(message_headers.size() * 2); }

    u32 messagesSize() const override {
        return pad_to<4>(message_headers.back().offset + messages.back().text.size());
    }

    void write(SalsaStream* stream) override {
        for (auto& header : message_headers) {
            stream->write<u16>(header.offset);
        }
        // pad to 4 bytes
        if (stream->tellp() % 4 != 0) {
            stream->write<u16>(0x0000);
        }

        stream->write<u16>(0xFFFF);
        stream->write<u16>(message_headers.size());
        for (auto& message : messages) {
            for (auto& c : message.text) {
                stream->write<u8>(c);
            }
        }
        // pad to 4 bytes
        if (stream->tellp() % 4 != 0) {
            stream->write<u16>(0x0000);
        }
    }

    void appendMessage(const std::string& message) override {
        // messages should be in order

        if (message == "[DUP]") {
            // copy last message offset and mark this as duplicate
            MessageHeader header = message_headers.back();
            header.is_duplicate = true;
            message_headers.emplace_back(header);
            return;
        }

        // convert the message into a vector<u16>
        // then "store" inside a string to be compatible with our Message struct
        auto converted_raw = Message::parse(message);
        auto converted_string = std::string(reinterpret_cast<char*>(converted_raw.data()),
                                            converted_raw.size() * sizeof(converted_raw[0]));

        if (message_headers.size() == 0) {
            message_headers.emplace_back(4);  // + 4 for 0xFFFF and size fields
        } else {
            // place at offset + size of last message
            message_headers.emplace_back(message_headers.back().offset +
                                         messages.back().text.size());
        }
        messages.emplace_back(Message{converted_string});
    }

    std::vector<MessageHeader> message_headers;
};

struct FixedMessageBlock : public MessageBlock {
    FixedMessageBlock(s32 message_len) : message_len(message_len) {}
    FixedMessageBlock(SalsaStream* stream) {
        message_len = stream->read<u16>();
        u32 num_message = stream->read<u16>();
        for (int i = 0; i < num_message; i++) {
            auto msg = Message::dump(stream, message_len * 2);
            // fixed messages are automatically padded
            while (msg.text.size() >= 5 && msg.text.substr(msg.text.size() - 5) == "[END]") {
                // inefficent, this should be put in Message::dump or we should create a
                // FixedMessage class
                msg.text.erase(msg.text.size() - 5);
            }
            messages.emplace_back(msg);
        }
    }
    virtual ~FixedMessageBlock() = default;

    u32 headerSize() const override { return 0; }
    u32 messagesSize() const override {
        return message_len * 2 * messages.size();
    }

    void write(SalsaStream* stream) override {
        stream->write<u16>(message_len);
        stream->write<u16>(messages.size());
        for (auto& message : messages) {
            for (auto& c : message.text) {
                stream->write<u8>(c);
            }
            for (int i = 0; i < message_len * 2 - message.text.size(); i += 2) {
                stream->write<u16>(0xFFFF);
            }
        }
    }

    void appendMessage(const std::string& message) override {
        // convert the message into a vector<u16>
        // then "store" inside a string to be compatible with our Message struct
        auto converted_raw = Message::parse(message);
        auto converted_string = std::string(reinterpret_cast<char*>(converted_raw.data()),
                                            converted_raw.size() * sizeof(converted_raw[0]));

        // chop chop
        assert (converted_string.size() <= message_len * 2);
        messages.emplace_back(Message{converted_string});
    }

    u16 message_len;
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
    virtual u32 size() const = 0;  // size of the header

    virtual std::unique_ptr<MessageBlock> dumpBlock(SalsaStream* stream, s32 size) const = 0;

    // returns the calculated size of the block
    virtual u32 init(const std::unique_ptr<MessageBlock>& block, u32 offset) = 0;
    virtual void initAsEmpty(u32 value) = 0;
    virtual void write(SalsaStream* stream) const = 0;
};

class FixedBlockHeader : public BlockHeader {
public:
    FixedBlockHeader() = default;
    FixedBlockHeader(u32 start_msgs) : start_messages(start_msgs) {}
    FixedBlockHeader(SalsaStream* stream) : start_messages(stream->read<u32>()) {}
    virtual ~FixedBlockHeader() = default;

    virtual u32 start() const override { return start_messages; }
    virtual u32 startMessages() const override { return start_messages; }
    // todo: is there any place in the rom where these are true?
    // or is this only observed for dynamic blocks?
    virtual bool isNulled() const override { return start_messages == 0; }
    virtual bool isEmpty() const override { return false; }
    virtual u32 size() const override { return 4; }

    virtual std::unique_ptr<MessageBlock> dumpBlock(SalsaStream* stream, s32 size) const override {
        // todo TEST these
        if (isNulled()) {
            return std::make_unique<FixedMessageBlock>(0);
        }

        if (isEmpty()) {
            auto block = std::make_unique<FixedMessageBlock>(0);
            block->messages.emplace_back(Message{});
            stream->seekg((long)stream->tellg() + 4, std::ios::beg);
            return block;
        }
        ////

        return std::make_unique<FixedMessageBlock>(stream);
    }

    virtual void initAsEmpty(u32 value) override { start_messages = value; }
    virtual u32 init(const std::unique_ptr<MessageBlock>& block, u32 offset) override {
        u32 message_size = block->messagesSize() + 4;
        start_messages = offset;
        return message_size;
    }
    virtual void write(SalsaStream* stream) const override { stream->write<s32>(start_messages); }

private:
    u32 start_messages = 0;
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
    virtual u32 size() const override { return 8; }

    virtual std::unique_ptr<MessageBlock> dumpBlock(SalsaStream* stream, s32 size) const override {
        if (isNulled()) {
            return std::make_unique<DynamicMessageBlock>();
        }

        if (isEmpty()) {
            auto block = std::make_unique<DynamicMessageBlock>();
            block->messages.emplace_back(Message{});
            stream->seekg((long)stream->tellg() + 4, std::ios::beg);
            return block;
        }

        return std::make_unique<DynamicMessageBlock>(stream, size);
    }

    virtual void initAsEmpty(u32 value) override {
        start_message_headers = value;
        start_messages = value;
    }
    virtual u32 init(const std::unique_ptr<MessageBlock>& block, u32 offset) override {
        u32 header_size = block->headerSize();
        u32 message_size = block->messagesSize();
        start_message_headers = offset;
        start_messages = offset + header_size;
        return header_size + message_size;
    }
    virtual void write(SalsaStream* stream) const override {
        stream->write<u32>(start_message_headers);
        stream->write<u32>(start_messages);
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
        blocks.emplace_back(std::make_unique<DynamicMessageBlock>(
            stream, this->total_size - headers[idx]->startMessages(), true));
    }

    static std::unique_ptr<TextBank> dump(SalsaStream* stream, uintptr_t offset,
                                          const std::vector<TextBlockType>& blocktypes) {
        auto bank = std::make_unique<TextBank>();

        stream->seekg(offset);
        (void)stream->read<u32>();  // block header word count
        bank->block_count = blocktypes.size();

        // dump block headers
        for (auto& type : blocktypes) {
            switch (type) {
            case TextBlockType::FixedMsg:
                bank->headers.emplace_back(std::make_unique<FixedBlockHeader>(stream));
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

            // calculate block size from next header
            // or, if last non-null header, calculate block size from total size
            auto next_header = bank->nextGoodHeader(h);
            s32 size = next_header != bank->headers.end() ?
                           (*next_header)->start() - header->startMessages() :
                           bank->total_size - header->startMessages();
            bank->blocks.emplace_back(header->dumpBlock(stream, size));
        }
        return bank;
    }

    void parseSingleBlockFile(SalsaStream* stream, TextBlockType blocktype, s32 message_len = -1) {
        switch (blocktype) {
        case TextBlockType::FixedMsg:
            blocks.emplace_back(std::make_unique<FixedMessageBlock>(message_len));
            headers.emplace_back(std::make_unique<FixedBlockHeader>(message_len));
            break;
        case TextBlockType::DynamicMsg:
            blocks.emplace_back(std::make_unique<DynamicMessageBlock>());
            headers.emplace_back(std::make_unique<DynamicBlockHeader>());
            break;
        default:
            assert(0);
        }
        block_count++;

        auto& cur_block = blocks.back();

        std::string line;
        while (std::getline(*stream, line)) {
            auto message_idx = std::stoi(line.substr(0, line.find(':')));
            auto message = line.substr(line.find(':') + 1);
            cur_block->appendMessage(message);
        }
    }

    static TextBank parse(SalsaStream* stream, const std::vector<TextBlockType>& blocktypes) {
        TextBank bank;

        std::string line;
        while (std::getline(*stream, line)) {
            auto trimmed = line.substr(0, line.find(":"));
            auto message = line.substr(line.find(":") + 1);
            auto block_idx = std::stoi(trimmed.substr(0, trimmed.find("-")));
            auto message_idx = std::stoi(trimmed.substr(trimmed.find("-") + 1));

            assert(block_idx < blocktypes.size());

            // construct all blocks up to and including the current index
            // ones we skipped over are assumed to be nulled
            while (block_idx > bank.block_count - 1) {
                switch (blocktypes[block_idx]) {
                case TextBlockType::FixedMsg:
                    bank.blocks.emplace_back(std::make_unique<FixedMessageBlock>(0));
                    bank.headers.emplace_back(std::make_unique<FixedBlockHeader>());
                    break;
                case TextBlockType::DynamicMsg:
                    bank.blocks.emplace_back(std::make_unique<DynamicMessageBlock>());
                    bank.headers.emplace_back(std::make_unique<DynamicBlockHeader>());
                    break;
                }
                bank.block_count++;
            }
            auto& cur_block = bank.blocks[block_idx];

            cur_block->appendMessage(message);
        }

        // fill in the rest of the blocks per spec
        for (int i = bank.block_count; i < blocktypes.size(); i++) {
            bank.blocks.emplace_back(std::make_unique<DynamicMessageBlock>());
            bank.headers.emplace_back(std::make_unique<DynamicBlockHeader>());
            bank.block_count++;
        }

        bank.calcHeader();
        return bank;
    }

    static void write(SalsaPath* src, SalsaStream* dest,
                      const std::vector<TextBlockType>& blocktypes, bool one_file = true) {
        SalsaStream desc(*src);
        src->replace_extension("");
        TextBank bank;
        if (one_file) {
            bank = TextBank::parse(&desc, blocktypes);
        } else {
            std::string line;
            while (std::getline(desc, line)) {
                if (line.find(':') != std::string::npos) {
                    // fixed
                    std::string filename = line.substr(0, line.find(':'));
                    int message_len = std::stoi(line.substr(line.find(':') + 1));
                    SalsaStream file(*src / filename);
                    bank.parseSingleBlockFile(&file, TextBlockType::FixedMsg, message_len);
                } else {
                    // dynamic
                    SalsaStream file(*src / line);
                    bank.parseSingleBlockFile(&file, TextBlockType::DynamicMsg);
                }
            }
            bank.calcHeader();
        }

        dest->write<s32>((bank.headers[0]->start() - 8) >> 2);
        for (auto& header : bank.headers) {
            header->write(dest);
        }
        dest->write<s32>(bank.total_size);
        for (int i = 0; i < bank.blocks.size(); ++i) {
            auto& block = bank.blocks[i];
            if (block->isNulled()) {
                continue;
            }

            // HACKK
            if (i == 812) {
                continue;
            }

            if (block->messages.size() == 1 && block->messages[0].text.empty()) {
                // empty block
                dest->write<u16>(0xFFFF);
                dest->write<u16>(0x0000);
                continue;
            }

            block->write(dest);
        }
    }

    void calcHeader() {
        u32 offset = 8;
        for (auto& header : headers) {
            offset += header->size();
        }

        // calculate offsets for all block headers
        for (int i = 0; i < block_count; i++) {
            auto& block = blocks[i];
            auto& header = headers[i];
            // hack for weird dup/empty edge case!!!!
            if (i == 812) {
                offset -= 4;
            }

            if (block->isNulled()) {
                continue;
            }

            if (block->messages.size() == 1 && block->messages[0].text.empty()) {
                header->initAsEmpty(offset);
                offset += 4;
                continue;
            }

            offset += header->init(block, offset);
        }
        total_size = offset;
    }

    s32 block_count = 0;
    std::vector<std::unique_ptr<BlockHeader> > headers;
    u32 total_size;
    std::vector<std::unique_ptr<MessageBlock> > blocks;
};

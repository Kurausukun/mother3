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

namespace text {

struct CCode {
    std::string name;
    u32 argcount;
};

enum class TextBlockType : uint8_t {
    FixedMsg,
    DynamicMsg,
};

struct MessageHeader;
struct Message;

struct BlockHeader;
class FixedBlockHeader;
class DynamicBlockHeader;

struct MessageBlock;
struct FixedMessageBlock;
struct DynamicMessageBlock;

struct TextBank;

struct MessageHeader {
    MessageHeader(u16 offset) : offset(offset) {}

    bool operator==(const MessageHeader& other) {
        return offset == other.offset && is_duplicate == other.is_duplicate;
    }

    bool is_duplicate = false;
    u16 offset;
};

struct Message {
    Message() = default;
    Message(const std::string& str) : text(str) {}

    static Message dump(SalsaStream* stream, s32 size);
    static std::vector<u16> parse(const std::string& message);

    std::string text;
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

struct MessageBlock {
    bool isNulled() const { return messages.size() == 0; }

    MessageBlock() = default;
    virtual ~MessageBlock() = default;

    virtual u32 headerSize() const = 0;
    virtual u32 messagesSize() const = 0;
    virtual void write(SalsaStream* stream) = 0;
    virtual void append(const std::string& message) = 0;

    u16 num_msg;
    std::vector<Message> messages;
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
    static std::unique_ptr<TextBank> dump(SalsaStream* stream, uintptr_t offset,
                                          const std::vector<TextBlockType>& blocktypes);

    void parseSingleBlockFile(SalsaStream* stream, TextBlockType blocktype, s32 message_len = -1);
    static TextBank parse(SalsaStream* stream, const std::vector<TextBlockType>& blocktypes);

    static void write(SalsaPath* src, SalsaStream* dest,
                      const std::vector<TextBlockType>& blocktypes, bool one_file = true);

    void calcHeader();
    void dumpHackBlock(SalsaStream* stream, s32 idx);

    auto nextGoodHeader(int cur) {
        return std::find_if(headers.begin() + cur + 1, headers.end(),
                            [](const auto& n) { return !n->isNulled(); });
    }

    s32 block_count = 0;
    std::vector<std::unique_ptr<BlockHeader> > headers;
    u32 total_size;
    std::vector<std::unique_ptr<MessageBlock> > blocks;
};

class FixedBlockHeader : public BlockHeader {
public:
    FixedBlockHeader();
    FixedBlockHeader(u32 start_msgs);
    FixedBlockHeader(SalsaStream* stream);
    virtual ~FixedBlockHeader();

    u32 start() const override { return start_messages; }
    u32 startMessages() const override { return start_messages; }
    // todo: is there any place in the rom where these are true?
    // or is this only observed for dynamic blocks?
    bool isNulled() const override { return start_messages == 0; }
    bool isEmpty() const override { return false; }
    u32 size() const override { return 4; }

    std::unique_ptr<MessageBlock> dumpBlock(SalsaStream* stream, s32 size) const override;

    void initAsEmpty(u32 value) override { start_messages = value; }
    u32 init(const std::unique_ptr<MessageBlock>& block, u32 offset) override;
    void write(SalsaStream* stream) const override { stream->write<s32>(start_messages); }

private:
    u32 start_messages = 0;
};

class DynamicBlockHeader : public BlockHeader {
public:
    DynamicBlockHeader();
    DynamicBlockHeader(u32 start_headers, u32 start_msgs);
    DynamicBlockHeader(SalsaStream* stream);

    virtual ~DynamicBlockHeader();

    u32 start() const override { return start_message_headers; }
    u32 startMessages() const override { return start_messages; }
    bool isNulled() const override { return start_message_headers == 0; }
    bool isEmpty() const override { return start_message_headers == start_messages; }
    u32 size() const override { return 8; }

    std::unique_ptr<MessageBlock> dumpBlock(SalsaStream* stream, s32 size) const override;

    void initAsEmpty(u32 value) override;
    u32 init(const std::unique_ptr<MessageBlock>& block, u32 offset) override;
    void write(SalsaStream* stream) const override;

private:
    u32 start_message_headers = 0;
    u32 start_messages = 0;
};

struct DynamicMessageBlock : public MessageBlock {
    DynamicMessageBlock() = default;
    DynamicMessageBlock(SalsaStream* stream, s32 messages_top, bool hack = false);
    virtual ~DynamicMessageBlock() = default;

    u32 headerSize() const override { return pad_to<4>(message_headers.size() * 2); }
    u32 messagesSize() const override {
        return pad_to<4>(message_headers.back().offset + messages.back().text.size());
    }

    void write(SalsaStream* stream) override;

    void append(const std::string& message) override;

    std::vector<MessageHeader> message_headers;
};

struct FixedMessageBlock : public MessageBlock {
    FixedMessageBlock(s32 message_len);
    FixedMessageBlock(SalsaStream* stream);
    virtual ~FixedMessageBlock();

    u32 headerSize() const override { return 0; }
    u32 messagesSize() const override { return message_len * 2 * messages.size(); }

    void write(SalsaStream* stream) override;
    void append(const std::string& message) override;

    u16 message_len;
};

extern const std::unordered_map<u16, CCode> cc_map;
extern const std::vector<const char*> jp_charmap;

// returns size (# chars), value
std::pair<u32, u32> readU8Char(const std::string& s);

static std::string hex_string(u32 value) {
    std::stringstream ss;
    ss << std::hex << value;
    return ss.str();
}

} // namespace text

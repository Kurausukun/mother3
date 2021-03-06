#pragma once

#include <algorithm>
#include <cassert>
#include <sstream>
#include <unordered_map>
#include <vector>
#include "salsa.hpp"

// Location of banks within the ROM.
const uintptr_t cScriptOffset = 0x136A6F4;
const uintptr_t cMiscTextOffset = 0xD1EE78;

// convTextScript.cpp
void salsa_maintext_read(SalsaStream& src, SalsaPath& dest);
void salsa_maintext_write(SalsaPath& src, SalsaStream& dest);

// convTextMisc.cpp
void salsa_misctext_read(SalsaStream& src, SalsaPath& dest);
void salsa_misctext_write(SalsaPath& src, SalsaStream& dest);

namespace text {

struct MessageHeader;
struct Message;
struct BlockHeader;
class FixedBlockHeader;
class DynamicBlockHeader;
struct MessageBlock;
struct FixedMessageBlock;
struct DynamicMessageBlock;
struct TextBank;

// Text Control Code.
struct CCode {
    std::string name;
    u32 argcount;
};

// Blocks may store fixed or dynamic sized data
enum class TextBlockType : uint8_t {
    FixedMsg,
    DynamicMsg,
};

// Message header, for dynamic-length messages.
struct MessageHeader {
    MessageHeader(u16 offset) : offset(offset) {}

    bool operator==(const MessageHeader& other) {
        return offset == other.offset && is_duplicate == other.is_duplicate;
    }

    // Message headers sometimes point to the same message.
    // We represent this with the [DUP] control code. Possibly might be some sort of nulled message.
    bool is_duplicate = false;

    // Offset relative to the block containing this message.
    u16 offset;
};

// Base class for all message data types.
struct Message {
    Message() = default;
    Message(const std::string& str) : text(str) {}

    // Dump from ROM.
    static Message dump(SalsaStream* stream, s32 size);

    // Convert from text to binary.
    static std::vector<u16> parse(const std::string& message);

    // The actual content of the message.
    std::string text;
};

// Base class for block headers.
struct BlockHeader {
    BlockHeader() = default;
    virtual ~BlockHeader() = default;

    // Start of the block
    virtual u32 start() const = 0;

    // Start of the block's content
    virtual u32 startMessages() const = 0;

    // Block is completely nulled.
    virtual bool isNulled() const = 0;

    // Block is empty.
    virtual bool isEmpty() const = 0;

    // size of the header.
    virtual u32 size() const = 0;

    // Dump the MessageBlock this header points to.
    virtual std::unique_ptr<MessageBlock> dumpBlock(SalsaStream* stream, s32 size) const = 0;

    // Returns the calculated size of the block.
    virtual u32 init(const std::unique_ptr<MessageBlock>& block, u32 offset) = 0;

    // Create an empty block.
    virtual void initAsEmpty(u32 value) = 0;

    // Write this header to a binary stream.
    virtual void write(SalsaStream* stream) const = 0;
};

// Base class for message blocks.
struct MessageBlock {
    // Check if nulled. (Empty blocks have one empty entry.)
    bool isNulled() const { return messages.size() == 0; }

    MessageBlock() = default;
    virtual ~MessageBlock() = default;

    // Size of the content leading up to the first message. (Message headers, etc.)
    virtual u32 headerSize() const = 0;

    // Size of all the messages
    virtual u32 messagesSize() const = 0;

    // Write the block to a binary stream.
    virtual void write(SalsaStream* stream) = 0;

    // Add a new message to the block.
    virtual void append(const std::string& message) = 0;

    // Total number of messages (should be same as messages.size())
    u16 num_msg;

    // The messages contained by this block.
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
    // Dump a TextBank from ROM.
    static std::unique_ptr<TextBank> dump(SalsaStream* stream, uintptr_t offset,
                                          const std::vector<TextBlockType>& blocktypes);

    // Parse a file containing a single block.
    void parseSingleBlockFile(SalsaStream* stream, TextBlockType blocktype, s32 message_len = -1);

    // Parse a file containing all blocks.
    static TextBank parse(SalsaStream* stream, const std::vector<TextBlockType>& blocktypes);

    // Write to a binary stream.
    static void write(SalsaPath* src, SalsaStream* dest,
                      const std::vector<TextBlockType>& blocktypes, bool one_file = true);

    // Update the block headers according to their offsets.
    void calcHeader();

    // FIXME edge case
    void dumpHackBlock(SalsaStream* stream, s32 idx);

    // Find the next non-nulled header
    auto nextGoodHeader(int cur) {
        return std::find_if(headers.begin() + cur + 1, headers.end(),
                            [](const auto& n) { return !n->isNulled(); });
    }

    // Total block count (should be same as blocks.size())
    s32 block_count = 0;

    // Block headers (should be same as blocks.size() + number of nulled blocks).
    std::vector<std::unique_ptr<BlockHeader> > headers;

    // Total size of the bank.
    u32 total_size;

    // Blocks contained by the bank.
    std::vector<std::unique_ptr<MessageBlock> > blocks;
};

// Header for blocks containing fixed-size messages.
class FixedBlockHeader : public BlockHeader {
public:
    FixedBlockHeader();
    FixedBlockHeader(u32 start_msgs);
    FixedBlockHeader(SalsaStream* stream);
    virtual ~FixedBlockHeader();

    u32 start() const override { return start_messages; }
    u32 startMessages() const override { return start_messages; }
    // Check if nulled block. So far a nulled fixed message block has not been observed.
    bool isNulled() const override { return start_messages == 0; }
    // Check if empty block. So far an empty fixed message block has not been observed.
    bool isEmpty() const override { return false; }
    u32 size() const override { return 4; }

    // Dump the MessageBlock this header points to.
    std::unique_ptr<MessageBlock> dumpBlock(SalsaStream* stream, s32 size) const override;

    void initAsEmpty(u32 value) override { start_messages = value; }
    u32 init(const std::unique_ptr<MessageBlock>& block, u32 offset) override;

    // Write the header to binary stream.
    void write(SalsaStream* stream) const override { stream->write<s32>(start_messages); }

private:
    // Start of the messages relative to the beginning of the block.
    u32 start_messages = 0;
};

// Header for blocks containing dynamic-length messages.
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
    // Start of the message headers.
    u32 start_message_headers = 0;
    // Start of the messages.
    u32 start_messages = 0;
};

// A block of messages containing dynamic-length messages.
struct DynamicMessageBlock : public MessageBlock {
    DynamicMessageBlock() = default;
    DynamicMessageBlock(SalsaStream* stream, s32 messages_top, bool hack = false);
    virtual ~DynamicMessageBlock() = default;

    // Total size of all message headers.
    u32 headerSize() const override { return pad_to<4>(message_headers.size() * 2); }

    // Total size of all messages.
    u32 messagesSize() const override {
        return pad_to<4>(message_headers.back().offset + messages.back().text.size());
    }

    // Write the block to a binary stream.
    void write(SalsaStream* stream) override;

    // Add a new message to the block.
    void append(const std::string& message) override;

    // Message headers.
    std::vector<MessageHeader> message_headers;
};

// A block of messages containing fixed-size messages.
struct FixedMessageBlock : public MessageBlock {
    FixedMessageBlock(s32 message_len);
    FixedMessageBlock(SalsaStream* stream);
    virtual ~FixedMessageBlock();

    // Total size of all message headers. (Fixed messages have no headers)
    u32 headerSize() const override { return 0; }

    // Total size of all messages.
    u32 messagesSize() const override { return message_len * 2 * messages.size(); }

    // Write the block to a binary stream.
    void write(SalsaStream* stream) override;

    // Add a new message to the block.
    void append(const std::string& message) override;

    // Message length.
    u16 message_len;
};

extern const std::unordered_map<u16, CCode> cc_map;
extern const std::vector<const char*> jp_charmap;

// returns size (# chars), value
std::pair<u32, u32> readU8Char(const std::string& s);

// Create a hex string from integer.
static std::string hex_string(u32 value) {
    std::stringstream ss;
    ss << std::hex << value;
    return ss.str();
}

} // namespace text

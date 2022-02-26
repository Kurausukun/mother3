// #pragma once

// #include "salsa.hpp"

// namespace text {

// struct Message {
//     Message() = default;
//     Message(const std::string& str) : text(str) {}

//     static Message dump(SalsaStream* stream, s32 size);
//     static std::vector<u16> parse(const std::string& message);

//     std::string text;
// };

// }

// /*
// A bank follows this structure:

// * header size (in 4 byte words): u32
// * block headers (varying size, different types may be used together)
// * total size of bank: u32
// * blocks (matching header type)

// some examples:
//     The "main script" bank is composed entirely of dynamic text blocks
//     The "misc text" bank is composed of both fixed and dynamic text blocks
// */
// struct SalsaBank;

// struct SalsaBlock {
//     bool isNulled() const { return messages.size() == 0; }

//     SalsaBlock() = default;
//     virtual ~SalsaBlock() = default;

//     virtual u32 headerSize() const = 0;
//     virtual u32 messagesSize() const = 0;
//     virtual void write(SalsaStream* stream) = 0;
//     virtual void append(const std::string& message) = 0;

//     u16 num_msg;
//     std::vector<text::Message> messages;
// };

// struct SalsaBlockHeader {
//     SalsaBlockHeader() = default;
//     virtual ~SalsaBlockHeader() = default;

//     virtual u32 start() const = 0;
//     virtual u32 startMessages() const = 0;
//     virtual bool isNulled() const = 0;
//     virtual bool isEmpty() const = 0;
//     virtual u32 size() const = 0;  // size of the header

//     virtual std::unique_ptr<SalsaBlock> dumpBlock(SalsaStream* stream, s32 size) const = 0;

//     // returns the calculated size of the block
//     virtual u32 init(const std::unique_ptr<SalsaBlock>& block, u32 offset) = 0;
//     virtual void initAsEmpty(u32 value) = 0;
//     virtual void write(SalsaStream* stream) const = 0;
// };

// struct SalsaBank {
//     u32 block_count = 0;
//     std::vector<std::unique_ptr<SalsaBlockHeader> > headers;
//     u32 total_size = 0;
//     std::vector<std::unique_ptr<SalsaBlock> > blocks;
// };

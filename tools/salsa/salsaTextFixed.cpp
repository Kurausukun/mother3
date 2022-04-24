#include "salsaText.hpp"

namespace text {

FixedBlockHeader::FixedBlockHeader() = default;
FixedBlockHeader::FixedBlockHeader(u32 start_msgs) : start_messages(start_msgs) {}
FixedBlockHeader::FixedBlockHeader(SalsaStream* stream) : start_messages(stream->read<u32>()) {}

FixedBlockHeader::~FixedBlockHeader() = default;

u32 FixedBlockHeader::init(const std::unique_ptr<MessageBlock>& block, u32 offset) {
    u32 message_size = block->messagesSize() + 4;
    start_messages = offset;
    return message_size;
}

std::unique_ptr<MessageBlock> FixedBlockHeader::dumpBlock(SalsaStream* stream, s32 size) const {
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

FixedMessageBlock::FixedMessageBlock(s32 message_len) : message_len(message_len) {}

FixedMessageBlock::FixedMessageBlock(SalsaStream* stream) {
    message_len = stream->read<u16>();
    u32 num_message = stream->read<u16>();
    for (size_t i = 0; i < num_message; i++) {
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

FixedMessageBlock::~FixedMessageBlock() = default;

void FixedMessageBlock::write(SalsaStream* stream) {
    stream->write<u16>(message_len);
    stream->write<u16>(messages.size());
    for (auto& message : messages) {
        for (auto& c : message.text) {
            stream->write<u8>(c);
        }
        for (size_t i = 0; i < message_len * 2 - message.text.size(); i += 2) {
            stream->write<u16>(0xFFFF);
        }
    }
}

void FixedMessageBlock::append(const std::string& message) {
    // convert the message into a vector<u16>
    // then "store" inside a string to be compatible with our Message struct
    auto converted_raw = Message::parse(message);
    auto converted_string = std::string(reinterpret_cast<char*>(converted_raw.data()),
                                        converted_raw.size() * sizeof(converted_raw[0]));

    // chop chop
    assert(converted_string.size() <= message_len * 2);
    messages.emplace_back(Message{converted_string});
}

} // namespace text

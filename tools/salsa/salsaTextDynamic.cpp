#include "salsaText.hpp"

namespace text {

DynamicBlockHeader::DynamicBlockHeader() = default;

DynamicBlockHeader::DynamicBlockHeader(u32 start_headers, u32 start_msgs)
    : start_message_headers(start_headers), start_messages(start_msgs) {}

DynamicBlockHeader::DynamicBlockHeader(SalsaStream* stream) {
    start_message_headers = stream->read<u32>();
    start_messages = stream->read<u32>();

    if (start_message_headers == 0) {
        // nulled blocks have both fields == 0
        assert(start_message_headers == start_messages);
    }
}

DynamicBlockHeader::~DynamicBlockHeader() = default;

std::unique_ptr<MessageBlock> DynamicBlockHeader::dumpBlock(SalsaStream* stream, s32 size) const {
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

void DynamicBlockHeader::initAsEmpty(u32 value) {
    start_message_headers = value;
    start_messages = value;
}

u32 DynamicBlockHeader::init(const std::unique_ptr<MessageBlock>& block, u32 offset) {
    u32 header_size = block->headerSize();
    u32 message_size = block->messagesSize();
    start_message_headers = offset;
    start_messages = offset + header_size;
    return header_size + message_size;
}

void DynamicBlockHeader::write(SalsaStream* stream) const {
    stream->write<u32>(start_message_headers);
    stream->write<u32>(start_messages);
}

DynamicMessageBlock::DynamicMessageBlock(SalsaStream* stream, s32 messages_top, bool hack) {
    u32 off;
    while ((off = stream->read<u16>()) != 0xFFFF) {
        MessageHeader header(off);

        // determine if the message is a duplicate of another
        auto iter = std::find(message_headers.begin(), message_headers.end(), header);
        if (iter != message_headers.end()) {
            header.is_duplicate = true;
        }
        message_headers.emplace_back(header);
    }

    // messages are padded to 8 byte boundaries...
    // so sometimes there is a 0x0000 pad before the 0xFFFF above
    // (0xFFFF is part of the "messages" section but we break on it for convenience)
    // does this tell us anything else about how they structured the data?
    if (message_headers.size() != 0 && message_headers.back().offset == 0) {
        message_headers.pop_back();
    }
    // number of messages now
    assert(stream->read<u16>() == message_headers.size());
    num_msg = message_headers.size();

    // first message should be right after the offsets
    for (size_t i = 0; i < message_headers.size(); ++i) {
        auto& message_off = message_headers[i];
        // if the message is duplicate, we want to reference the parent message
        if (message_off.is_duplicate) {
            std::string ccode = "[DUP]";
            messages.emplace_back(Message{ccode});

            // HACK FIXME
            if (i == message_headers.size() - 1 && hack) {  // bank == 811?
                stream->seekg((long)stream->tellg() - 2, std::ios::beg);
            }
        } else {
            // this is to get around the fact that [END] markers are sometimes erroneously
            // placed before the end
            int msg_size = -1;

            // im letting these break on 0xFFFF, hopefully they dont overlap the above edge
            // cases
            if (!message_headers[i + 1].is_duplicate) {
                if (i != message_headers.size() - 1) {
                    msg_size = message_headers[i + 1].offset - message_off.offset;
                } else {
                    msg_size = messages_top - message_headers.back().offset;
                }
            }
            messages.emplace_back(Message::dump(stream, msg_size));
        }
    }
}

void DynamicMessageBlock::write(SalsaStream* stream) {
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

void DynamicMessageBlock::append(const std::string& message) {
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
        message_headers.emplace_back(message_headers.back().offset + messages.back().text.size());
    }
    messages.emplace_back(Message{converted_string});
}

} // namespace text

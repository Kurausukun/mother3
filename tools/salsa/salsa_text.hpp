#pragma once

#include <map>
#include <vector>
#include "salsa.hpp"

namespace SalsaText {
    void read_binary(const char* src_path, const char* dest_path);
    void write_binary(const char* src, const char* dest);
};

struct CCode {
    std::string name;
    u32 argcount;
};

extern const std::map<u16, CCode> cc_map;

struct TextBlock {
    struct BankHeader {
        bool is_nulled() const { return start_message_offsets == 0; }

        u32 start_message_offsets; /* relative to beginning of the block */
        u32 start_messages;        /* relative to beginning of the block */
    };

    struct Bank {
        struct MessageOffset {
            MessageOffset(u16 value) : value(value) {}

            bool operator==(const MessageOffset& other) {
                return value == other.value && is_duplicate == other.is_duplicate;
            }
            bool is_duplicate = false;
            u16 value;
        };

        struct Message {
            std::string text;
        };

        bool is_nulled() const { return messages.size() == 0; }

        std::vector<MessageOffset> message_offsets; /* relative to start_messages */
        u16 num_msg;
        std::vector<Message> messages;
    };

    s32 bank_count = 0;
    std::vector<BankHeader> headers;
    u32 total_size;
    std::vector<Bank> banks;
};
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
    uint argcount;
};

extern const std::map<ushort, CCode> cc_map;

struct TextBlock {
    struct BankHeader {
        constexpr bool is_nulled() const { return start_message_offsets == 0; }

        uint start_message_offsets; /* relative to beginning of the block */
        uint start_messages;        /* relative to beginning of the block */
    };

    struct Bank {
        struct MessageOffset {
            MessageOffset(ushort value) : value(value) {}

            bool operator==(const MessageOffset& other) {
                return value == other.value && is_duplicate == other.is_duplicate;
            }
            bool is_duplicate = false;
            ushort value;
        };

        struct Message {
            std::string text;
        };

        constexpr bool is_nulled() const { return messages.size() == 0; }

        std::vector<MessageOffset> message_offsets; /* relative to start_messages */
        ushort num_msg;
        std::vector<Message> messages;
    };

    int bank_count;
    std::vector<BankHeader> headers;
    uint total_size;
    std::vector<Bank> banks;
};
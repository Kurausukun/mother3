#include "salsa_text.hpp"
#include <sstream>

struct MainTextBlock {
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

struct TextBlockParser {
    using Bank = MainTextBlock::Bank;
    using BankHeader = MainTextBlock::BankHeader;
    using Message = MainTextBlock::Bank::Message;
    using MessageOffset = MainTextBlock::Bank::MessageOffset;

    static MainTextBlock parse(const std::string& rom_path, uintptr_t offset) {
        MainTextBlock block;
        SalsaStream rom(rom_path);

        rom.seekg(offset);

        block.bank_count = rom.read<u32>() / 2;
        for (int i = 0; i < block.bank_count; i++) {
            u32 begin = rom.read<u32>();
            u32 end = rom.read<u32>();

            if (begin == 0) {
                // nulled banks have both fields == 0
                assert(begin == end);
            }
            block.headers.emplace_back(BankHeader{begin, end});
        }
        block.total_size = rom.read<u32>();

        for (int h = 0; h < block.headers.size(); h++) {
            auto& header = block.headers[h];
            Bank bank;

            if (header.is_nulled()) {
                auto next_not_nulled =
                    std::find_if(block.headers.begin() + h + 1, block.headers.end(),
                                 [](const auto& n) { return !n.is_nulled(); });

                if (next_not_nulled != block.headers.end()) {
                    assert(rom.tellg() == offset + next_not_nulled->start_message_offsets);
                }
                block.banks.emplace_back(bank);
                continue;
            }

            if (header.start_message_offsets == header.start_messages) {
                // empty bank
                block.banks.emplace_back(bank);
                rom.seekg((long)rom.tellg() + 4, std::ios::beg);
                block.banks.back().messages.emplace_back(Message{});
                continue;
            }

            // first bank should be right after the table
            assert(rom.tellg() == offset + block.headers[h].start_message_offsets);

            u32 off;
            while ((off = rom.read<u16>()) != 0xFFFF) {
                MessageOffset offset(off);

                // determine if the message is a duplicate of another
                auto iter =
                    std::find(bank.message_offsets.begin(), bank.message_offsets.end(), offset);
                if (iter != bank.message_offsets.end()) {
                    offset.is_duplicate = true;
                }
                bank.message_offsets.emplace_back(offset);
            }

            // messages are padded to 8 byte boundaries...
            // so sometimes there is a 0x0000 pad before the 0xFFFF above
            // (0xFFFF is part of the "messages" section but we break on it for convenience)
            // does this tell us anything else about how they structured the data?
            if (bank.message_offsets.size() != 0 && bank.message_offsets.back().value == 0) {
                bank.message_offsets.pop_back();
            }
            // + 2 because we already read the 0xFFFF
            assert(rom.tellg() == offset + header.start_messages + 2);
            // number of messages now
            assert(rom.read<u16>() == bank.message_offsets.size());
            bank.num_msg = bank.message_offsets.size();

            // first message should be right after the offsets
            for (int i = 0; i < bank.message_offsets.size(); ++i) {
                auto& message_off = bank.message_offsets[i];
                // if the message is duplicate, we want to reference the parent message
                if (message_off.is_duplicate) {
                    std::string ccode = "[DUP]";
                    bank.messages.emplace_back(Message{ccode});

                    // HACK
                    if (i == bank.message_offsets.size() - 1 && h == 811) {
                        rom.seekg((long)rom.tellg() - 2, std::ios::beg);
                    }
                } else {
                    // this is to get around the fact that [END] markers are sometimes erroneously
                    // placed before the end
                    int size = -1;

                    // im letting these break on 0xFFFF, hopefully they dont overlap the above edge
                    // cases
                    if (!bank.message_offsets[i + 1].is_duplicate) {
                        size = bank.message_offsets[i + 1].value - message_off.value;

                        if (i == bank.message_offsets.size() - 1) {
                            auto next_not_nulled =
                                std::find_if(block.headers.begin() + h + 1, block.headers.end(),
                                             [](const auto& n) { return !n.is_nulled(); });
                            size = next_not_nulled->start_message_offsets - header.start_messages -
                                   message_off.value;
                        }
                    }
                    bank.messages.emplace_back(Message{read_string(rom, size)});
                }
            }

            block.banks.emplace_back(bank);
            // pad the current pos to 4 byte boundary
            rom.seekg(pad_to<4>(rom.tellg()), std::ios::beg);
        }

        return block;
    }

    static MainTextBlock parseHuman(std::ifstream& src) {
        MainTextBlock block;

        std::string line;
        while (std::getline(src, line)) {
            auto trimmed = line.substr(0, line.find(":"));
            auto message = line.substr(line.find(":") + 1);
            auto bank_idx = std::stoi(trimmed.substr(0, trimmed.find("-")));
            auto message_idx = std::stoi(trimmed.substr(trimmed.find("-") + 1));

            while (bank_idx > block.bank_count - 1) {
                block.banks.emplace_back(Bank{});
                block.headers.emplace_back(BankHeader{});
                block.bank_count++;
            }

            auto& cur_bank = block.banks[bank_idx];

            // messages should be in order
            assert(message_idx == cur_bank.message_offsets.size());

            if (message == "[DUP]") {
                // copy last and mark this as duplicate
                MessageOffset offset = cur_bank.message_offsets.back();
                offset.is_duplicate = true;
                cur_bank.message_offsets.emplace_back(offset);
                continue;
            }

            auto converted_raw = write_string(message);
            auto converted_string = std::string(reinterpret_cast<char*>(converted_raw.data()),
                                                converted_raw.size() * sizeof(converted_raw[0]));

            if (cur_bank.message_offsets.size() == 0) {
                cur_bank.message_offsets.emplace_back(4);  // + 4 for 0xFFFF and size fields
            } else {
                cur_bank.message_offsets.emplace_back(cur_bank.message_offsets.back().value +
                                                      cur_bank.messages.back().text.size());
            }

            cur_bank.messages.emplace_back(Message{converted_string});
        }

        // I guess these are padding? They are in the original game
        for (int i = 1001 - block.bank_count; i != 0; i--) {
            block.banks.emplace_back(Bank{});
            block.headers.emplace_back(BankHeader{});
            block.bank_count++;
        }

        std::cerr << "Creating bank headers..." << std::endl;
        u32 offset = 8 + block.bank_count * 8;
        for (int i = 0; i < block.bank_count; i++) {
            if (i == 812) {
                offset -= 4;
            }

            if (block.banks[i].is_nulled()) {
                continue;
            }

            if (block.banks[i].messages.size() == 1 && block.banks[i].messages[0].text.empty()) {
                block.headers[i].start_message_offsets = block.headers[i].start_messages = offset;
                offset += 4;
                continue;
            }

            block.headers[i].start_message_offsets = offset;
            offset += pad_to<4>(block.banks[i].message_offsets.size() * 2);
            block.headers[i].start_messages = offset;
            offset += pad_to<4>(block.banks[i].message_offsets.back().value +
                                block.banks[i].messages.back().text.size());
        }
        block.total_size = offset;
        return block;
    }

    static std::string hex_string(u32 value) {
        std::stringstream ss;
        ss << std::hex << value;
        return ss.str();
    }

    static std::string read_string(SalsaStream& rom, int size) {
        std::string s;
        u32 code;
        u32 start = rom.tellg();

        // again, getting around the fact that [END] markers may not actually be the end
        auto condition = [&]() {
            if (size == -1) {
                return code != 0xFFFF;
            }
            return rom.tellg() < start + size;
        };

        do {
            code = rom.read<u16>();

            if (code == 0xFFFF) {
                s += "[END]";
            } else if (code == 0xac) {
                s += " ";
            } else if (code == 0x00) {
                continue;
            } else if (code < jp_charmap.size()) {
                s += jp_charmap[code];
            } else {
                auto iter = cc_map.find(code);
                if (iter == cc_map.end()) {
                    std::cerr << "Unknown bytes in message: " << hex_string(code) << std::endl;
                    std::cerr << "At offset: " << std::hex << rom.tellg() << std::endl;
                    exit(1);
                }

                auto cc = iter->second;
                s += "[" + cc.name;
                for (int i = 0; i < cc.argcount; ++i) {
                    s += " " + hex_string(rom.read<u16>());
                }
                s += "]";
            }
        } while (condition());
        return s;
    }

    static std::vector<u16> write_string(const std::string& src) {
        std::vector<u16> result;

        result.reserve(src.size());
        
        int i = 0;
        while (i < src.size()) {
            unsigned char c = src[i];
            if (c == ' ') {
                i++;
                result.emplace_back(0xAC);
                continue;
            }

            // start of a control code
            if (c == '[') {
                i++;
                std::string rem = std::string(&src.c_str()[i]);
                std::string cc_name = rem.substr(0, std::min(rem.find(" "), rem.find("]")));
                if (cc_name.empty()) {
                    std::cerr << "Invalid control code: " << src << std::endl;
                    exit(1);
                }

                auto iter = std::find_if(cc_map.begin(), cc_map.end(),
                                         [&](const auto& cc) { return cc.second.name == cc_name; });

                if (iter != cc_map.end()) {
                    rem.erase(0, cc_name.size() + 1);
                    i += cc_name.size() + 1;
                    result.push_back(iter->first);
                    for (int j = 0; j < iter->second.argcount; ++j) {
                        std::string arg = rem.substr(0, std::min(rem.find(" "), rem.find("]")));
                        if (arg.empty()) {
                            std::cerr << "Invalid control code: " << src << std::endl;
                            exit(1);
                        }
                        rem.erase(0, arg.size() + 1);
                        i += arg.size() + 1;
                        result.push_back(std::stoi(arg, nullptr, 16));
                    }
                } else {
                    std::cerr << "Unknown control code: " << cc_name << std::endl;
                    exit(1);
                }
                continue;
            }

            // normal character
            auto getU8char = [](const std::string& s) -> std::vector<unsigned char> {
                auto num_chrs = 1;
                switch ((unsigned char)s[0]) {
                case 0x0 ... 0x7F:
                    break;
                case 0x80 ... 0xBF:
                    std::cerr << "Expected first byte but found continuation in string: " << s
                              << std::endl;
                    exit(1);
                    break;
                case 0xC0 ... 0xDF:
                    num_chrs = 2;
                    break;
                case 0xE0 ... 0xEF:
                    num_chrs = 3;
                    break;
                case 0xF0 ... 0xF7:
                    num_chrs = 4;
                    break;
                default:
                    std::cerr << "Found unknown byte in string: " << s << std::endl;
                    exit(1);
                    break;
                }

                std::vector<unsigned char> result;
                for (int i = 0; i < num_chrs; ++i) {
                    result.push_back(s[i]);
                }
                return result;
            };

            auto uni = getU8char(&src.c_str()[i]);
            auto iter = std::find_if(jp_charmap.begin(), jp_charmap.end(),
                                     [&](const auto& c) { return getU8char(c) == uni; });
            if (iter != jp_charmap.end()) {
                result.push_back(std::distance(jp_charmap.begin(), iter));
                i += uni.size();
            } else {
                std::cerr << "Unknown character: " << c << std::endl;
                exit(1);
            }
        }
        return result;
    }
};

void salsa_maintext_read(const char* src_path, const char* dest_path) {
    auto block = TextBlockParser::parse(src_path, 0x136A6F4);
    SalsaStream dest(dest_path);

    if (!dest.good()) {
        perror("Failed to open destination file");
        exit(1);
    }

    for (int i = 0; i < block.bank_count; ++i) {
        auto& bank = block.banks[i];
        if (bank.is_nulled()) {
            continue;
        }

        for (int j = 0; j < bank.messages.size(); ++j) {
            auto& message = bank.messages[j];

            dest << std::dec << i << "-" << j << ":";
            dest << message.text << std::endl;
        }
    }

    std::cerr << "Text extracted to " << dest_path << std::endl;
}

void salsa_maintext_write(const char* src_path, const char* dest_path) {
    auto src = std::ifstream(src_path);
    if (!src.is_open()) {
        perror("Failed to open source file");
        exit(1);
    }

    std::unique_ptr<SalsaStream> dest;

    if (strncmp(dest_path, "-", 2) == 0) { // stdout
        dest = std::make_unique<SalsaStream>(std::cout.rdbuf());
    } else {
        dest = std::make_unique<SalsaStream>(dest_path);
        if (!dest->good()) {
            perror("Failed to open destination file");
            exit(1);
        }
    }

    MainTextBlock block = TextBlockParser::parseHuman(src);

    dest->write<s32>(block.bank_count * 2);
    for (auto& header : block.headers) {
        dest->write<s32>(header.start_message_offsets);
        dest->write<s32>(header.start_messages);
    }
    dest->write<s32>(block.total_size);
    for (int i = 0; i < block.banks.size(); ++i) {
        auto& bank = block.banks[i];
        if (bank.is_nulled()) {
            continue;
        }

        // HACKK
        if (i == 812) {
            continue;
        }

        if (bank.messages.size() == 1 && bank.messages[0].text.empty()) {
            // empty bank
            dest->write<u16>(0xFFFF);
            dest->write<u16>(0x0000);
            continue;
        }

        for (auto& offset : bank.message_offsets) {
            dest->write<u16>(offset.value);
        }
        // pad to 4 bytes
        if (dest->tellp() % 4 != 0) {
            dest->write<u16>(0x0000);
        }

        dest->write<u16>(0xFFFF);
        dest->write<u16>(bank.message_offsets.size());
        for (auto& message : bank.messages) {
            for (auto& c : message.text) {
                dest->write<u8>(c);
            }
        }
        // pad to 4 bytes
        if (dest->tellp() % 4 != 0) {
            dest->write<u16>(0x0000);
        }
    }

    std::cerr << "Text built to " << dest_path << std::endl;
}

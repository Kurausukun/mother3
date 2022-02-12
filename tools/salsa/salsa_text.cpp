#include "salsa_text.hpp"
#include <algorithm>
#include <cassert>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <sstream>
#include <vector>

extern const std::vector<const char*> jp_charmap;

struct TextBlockParser {
    static TextBlock parse(const std::string& rom_path, uintptr_t offset) {
        TextBlock block;
        RomStream rom(rom_path);

        rom.seekg(offset);

        block.bank_count = rom.read<u32>() / 2;
        for (int i = 0; i < block.bank_count; i++) {
            u32 begin = rom.read<u32>();
            u32 end = rom.read<u32>();

            if (begin == 0) {
                // nulled banks have both fields == 0
                assert(begin == end);
            }
            block.headers.emplace_back(TextBlock::BankHeader{begin, end});
        }
        block.total_size = rom.read<u32>();

        for (int h = 0; h < block.headers.size(); h++) {
            auto& header = block.headers[h];
            TextBlock::Bank bank;

            if (header.is_nulled()) {
                std::cout << std::dec << h << " null bank at " << std::hex << rom.tellg()
                          << std::endl;
                auto next_not_nulled =
                    std::find_if(block.headers.begin() + h + 1, block.headers.end(),
                                 [](const auto& n) { return !n.is_nulled(); });

                if (next_not_nulled != block.headers.end()) {
                    std::cout << "now pos " << rom.tellg() << std::endl;
                    std::cout << "expected pos " << offset + next_not_nulled->start_message_offsets
                              << std::endl;
                    assert(rom.tellg() == offset + next_not_nulled->start_message_offsets);
                }
                block.banks.emplace_back(bank);
                continue;
            }

            if (header.start_message_offsets == header.start_messages) {
                std::cout << std::dec << h << " empty bank at " << std::hex << rom.tellg()
                          << std::endl;
                block.banks.emplace_back(bank);
                rom.seekg((long)rom.tellg() + 4, std::ios::beg);
                block.banks.back().messages.emplace_back(TextBlock::Bank::Message{});
                continue;
            }

            // first bank should be right after the table
            assert(rom.tellg() == offset + block.headers[h].start_message_offsets);

            u32 off;
            while ((off = rom.read<u16>()) != 0xFFFF) {
                TextBlock::Bank::MessageOffset offset(off);

                // determine if the message is a duplicate of another
                auto iter =
                    std::find(bank.message_offsets.begin(), bank.message_offsets.end(), offset);
                if (iter != bank.message_offsets.end()) {
                    offset.is_duplicate = true;
                }
                bank.message_offsets.emplace_back(offset);
            }
            std::cout << "offsets done at " << rom.tellg() << std::endl;

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
                    bank.messages.emplace_back(TextBlock::Bank::Message{ccode});

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
                    bank.messages.emplace_back(TextBlock::Bank::Message{read_string(rom, size)});
                }
            }
            std::cout << "messages done at " << rom.tellg() << std::endl;

            block.banks.emplace_back(bank);
            // pad the current pos to 4 byte boundary
            rom.seekg(pad_to<4>(rom.tellg()), std::ios::beg);
            std::cout << std::dec << h << " padded to " << std::hex << rom.tellg() << std::endl;
        }

        return block;
    }

    static TextBlock parseHuman(std::ifstream& src) {
        TextBlock block;

        std::string line;
        while (std::getline(src, line)) {
            auto trimmed = line.substr(0, line.find(":"));
            auto message = line.substr(line.find(":") + 1);
            auto bank_idx = std::stoi(trimmed.substr(0, trimmed.find("-")));
            auto message_idx = std::stoi(trimmed.substr(trimmed.find("-") + 1));

            if (bank_idx > block.bank_count - 1) {
                // handle nulled banks too
                while (bank_idx > block.bank_count - 1) {
                    block.banks.emplace_back(TextBlock::Bank{});
                    block.headers.emplace_back(TextBlock::BankHeader{});
                    block.bank_count++;
                }
                std::cout << "Reading bank " << bank_idx << std::endl;
            }

            auto& cur_bank = block.banks[bank_idx];

            // messages should be in order
            assert(message_idx == cur_bank.message_offsets.size());

            if (message == "[DUP]") {
                // copy last and mark this as duplicate
                TextBlock::Bank::MessageOffset offset = cur_bank.message_offsets.back();
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

            cur_bank.messages.emplace_back(TextBlock::Bank::Message{converted_string});
        }

        // I guess these are padding? They are in the original game
        for (int i = 1001 - block.bank_count; i != 0; i--) {
            block.banks.emplace_back(TextBlock::Bank{});
            block.headers.emplace_back(TextBlock::BankHeader{});
            block.bank_count++;
        }

        std::cout << "Creating bank headers..." << std::endl;
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

            std::cout << "Bank " << i << std::endl;
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

    static std::string read_string(RomStream& rom, int size) {
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
        std::string rem(src);

        while (!rem.empty()) {
            unsigned char c = rem[0];
            if (c == ' ') {
                rem.erase(0, 1);
                result.emplace_back(0xAC);
                continue;
            }

            // start of a control code
            if (c == '[') {
                rem.erase(0, 1);
                std::string cc_name = rem.substr(0, std::min(rem.find(" "), rem.find("]")));
                if (cc_name.empty()) {
                    std::cerr << "Invalid control code: " << src << std::endl;
                    exit(1);
                }

                auto iter = std::find_if(cc_map.begin(), cc_map.end(),
                                         [&](const auto& cc) { return cc.second.name == cc_name; });

                if (iter != cc_map.end()) {
                    rem.erase(0, cc_name.size() + 1);
                    result.push_back(iter->first);
                    for (int j = 0; j < iter->second.argcount; ++j) {
                        std::string arg = rem.substr(0, std::min(rem.find(" "), rem.find("]")));
                        if (arg.empty()) {
                            std::cerr << "Invalid control code: " << src << std::endl;
                            exit(1);
                        }
                        rem.erase(0, arg.size() + 1);
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

            auto uni = getU8char(rem);
            auto iter = std::find_if(jp_charmap.begin(), jp_charmap.end(),
                                     [&](const auto& c) { return getU8char(c) == uni; });
            if (iter != jp_charmap.end()) {
                result.push_back(std::distance(jp_charmap.begin(), iter));
                rem.erase(0, uni.size());
            } else {
                std::cerr << "Unknown character: " << c << std::endl;
                exit(1);
            }
        }
        return result;
    }
};

template <typename T>
void write(std::ofstream& stream, T val) {
    stream.write(reinterpret_cast<char*>(&val), sizeof(T));
}

namespace SalsaText {

void read_binary(const char* src_path, const char* dest_path) {
    auto block = TextBlockParser::parse(src_path, 0x136A6F4);
    auto dest = std::ofstream(dest_path, std::ios::binary);

    if (!dest.is_open()) {
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

    std::cout << "Text extracted to " << dest_path << std::endl;
}
void write_binary(const char* src_path, const char* dest_path) {
    auto src = std::ifstream(src_path);
    if (!src.is_open()) {
        perror("Failed to open source file");
        exit(1);
    }

    auto dest = std::ofstream(dest_path, std::ios::binary);
    if (!dest.is_open()) {
        perror("Failed to open destination file");
        exit(1);
    }

    TextBlock block = TextBlockParser::parseHuman(src);

    write<int>(dest, block.bank_count * 2);
    for (auto& header : block.headers) {
        write<int>(dest, header.start_message_offsets);
        write<int>(dest, header.start_messages);
    }
    write<int>(dest, block.total_size);
    for (int i = 0; i < block.banks.size(); ++i) {
        auto& bank = block.banks[i];
        if (bank.is_nulled()) {
            std::cout << "null bank " << std::dec << i << std::hex << std::endl;
            continue;
        }

        // HACKK
        if (i == 812) {
            continue;
        }

        if (bank.messages.size() == 1 && bank.messages[0].text.empty()) {
            std::cout << "empty bank " << std::dec << i << std::hex << std::endl;
            write<u16>(dest, 0xFFFF);
            write<u16>(dest, 0x0000);
            continue;
        }

        for (auto& offset : bank.message_offsets) {
            write<u16>(dest, offset.value);
        }
        // pad to 4 bytes
        if (dest.tellp() % 4 != 0) {
            write<u16>(dest, 0x0000);
        }

        write<u16>(dest, 0xFFFF);
        write<u16>(dest, bank.message_offsets.size());
        for (auto& message : bank.messages) {
            for (auto& c : message.text) {
                write<unsigned char>(dest, c);
            }
        }
        // pad to 4 bytes
        if (dest.tellp() % 4 != 0) {
            write<u16>(dest, 0x0000);
        }
    }

    std::cout << "Text built to " << dest_path << std::endl;
}

}  // namespace SalsaText

const std::map<u16, CCode> cc_map = {
    {0x0000, {"NUL", 0}},           {0xFF00, {"@", 0}},        {0xFF01, {"BREAK", 0}},
    {0xFF02, {"WAIT2", 0}},         {0xFF03, {"WAIT", 0}},     {0xFF04, {"PAUSE", 1}},
    {0xFF05, {"COLOR", 1}},         {0xFF06, {"MENU", 1}},     {0xFF07, {"EVENT", 0}},
    {0xFF08, {"SOUND", 1}},         {0xFF09, {"CENTER", 0}},   {0xFF0A, {"CENTER2", 0}},
    {0xFF0B, {"ALTERNATEFONT", 0}}, {0xFF0C, {"CC_C", 1}},     {0xFF21, {"ITEM", 1}},
    {0xFF22, {"CHARNAME2", 1}},     {0xFF23, {"CHARNAME", 1}}, {0xFF24, {"ENEMYNAME", 1}},
    {0xFF25, {"CC_25", 1}},         {0xFF26, {"CC_26", 2}},    {0xFF42, {"CC_42", 1}},
    {0xFF45, {"FAVFOOD", 0}},       {0xFF46, {"FAVTHING", 0}}, {0xFF47, {"PLAYERNAME2", 0}},
    {0xFF48, {"PLAYERNAME", 0}},    {0xFF80, {"CC_80", 1}},    {0xFF81, {"CC_81", 0}},
    {0xFF82, {"CC_82", 0}},         {0xFF83, {"CC_83", 0}},    {0xFF84, {"CC_84", 0}},
    {0xFFFF, {"END", 0}},
};

// todo: implement this with wchar array?
const std::vector<const char*> jp_charmap = {
    " ",    "、",   "。",   "，",   "．",   "・",   "：",   "；",   "？",   "！",   "゛",   "゜",
    "´",    "｀",   "¨",    "＾",   "￣",   "＿",   "ヽ",   "ヾ",   "ゝ",   "ゞ",   "〃",   "仝",
    "々",   "〆",   "〇",   "ー",   "―",    "‐",    "／",   "＼",   "〜",   "‖",    "｜",   "…",
    "‥",    "‘",    "’",    "“",    "”",    "（",   "）",   "〔",   "〕",   "［",   "］",   "｛",
    "｝",   "〈",   "〉",   "《",   "》",   "「",   "」",   "『",   "』",   "【",   "】",   "＋",
    "−",    "±",    "×",    "÷",    "＝",   "≠",    "＜",   "＞",   "≦",    "≧",    "∞",    "∴",
    "♂",    "♀",    "°",    "′",    "″",    "℃",    "￥",   "＄",   "¢",    "£",    "％",   "＃",
    "＆",   "＊",   "＠",   "§",    "☆",    "★",    "○",    "●",    "◎",    "◇",    "◆",    "□",
    "■",    "△",    "▲",    "▽",    "▼",    "※",    "〒",   "→",    "←",    "↑",    "↓",    "〓",
    "ｭ",    "ｮ",    "ｯ",    "ｰ",    "ｱ",    "ｲ",    "ｳ",    "ｴ",    "ｵ",    "ｶ",    "ｷ",    "∈",
    "∋",    "⊆",    "⊇",    "⊂",    "⊃",    "∪",    "∩",    "ﾀ",    "ﾁ",    "ﾂ",    "ﾃ",    "ﾄ",
    "ﾅ",    "ﾆ",    "ﾇ",    "∧",    "∨",    "¬",    "⇒",    "⇔",    "∀",    "∃",    "ﾏ",    "ﾐ",
    "ﾑ",    "ﾒ",    "ﾓ",    "ﾔ",    "ﾕ",    "ﾖ",    "ﾗ",    "ﾘ",    "ﾙ",    "∠",    "⊥",    "⌒",
    "∂",    "∇",    "≡",    "≒",    "≪",    "≫",    "√",    "∽",    "∝",    "∵",    "∫",    "∬",
    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "Å",    "‰",    "♯",    "♭",    "♪",
    "†",    "‡",    "¶",    "?",    "?",    "?",    "?",    "◯",    "NO @", "NO A", "NO B", "NO C",
    "NO D", "NO E", "NO F", "NO G", "NO H", "NO I", "NO J", "NO K", "NO L", "NO M", "NO N", "０",
    "１",   "２",   "３",   "４",   "５",   "６",   "７",   "８",   "９",   "NO Y", "NO Z", "[",
    "\\",   "]",    "^",    "_",    "Ａ",   "Ｂ",   "Ｃ",   "Ｄ",   "Ｅ",   "Ｆ",   "Ｇ",   "Ｈ",
    "Ｉ",   "Ｊ",   "Ｋ",   "Ｌ",   "Ｍ",   "Ｎ",   "Ｏ",   "Ｐ",   "Ｑ",   "Ｒ",   "Ｓ",   "Ｔ",
    "Ｕ",   "Ｖ",   "Ｗ",   "Ｘ",   "Ｙ",   "Ｚ",   "z",    "{",    "|",    "}",    "~",    "?",
    "ａ",   "ｂ",   "ｃ",   "ｄ",   "ｅ",   "ｆ",   "ｇ",   "ｈ",   "ｉ",   "ｊ",   "ｋ",   "ｌ",
    "ｍ",   "ｎ",   "ｏ",   "ｐ",   "ｑ",   "ｒ",   "ｓ",   "ｔ",   "ｕ",   "ｖ",   "ｗ",   "ｘ",
    "ｙ",   "ｚ",   "?",    "?",    "?",    "?",    "ぁ",   "あ",   "ぃ",   "い",   "ぅ",   "う",
    "ぇ",   "え",   "ぉ",   "お",   "か",   "が",   "き",   "ぎ",   "く",   "ぐ",   "け",   "げ",
    "こ",   "ご",   "さ",   "ざ",   "し",   "じ",   "す",   "ず",   "せ",   "ぜ",   "そ",   "ぞ",
    "た",   "だ",   "ち",   "ぢ",   "っ",   "つ",   "づ",   "て",   "で",   "と",   "ど",   "な",
    "に",   "ぬ",   "ね",   "の",   "は",   "ば",   "ぱ",   "ひ",   "び",   "ぴ",   "ふ",   "ぶ",
    "ぷ",   "へ",   "べ",   "ぺ",   "ほ",   "ぼ",   "ぽ",   "ま",   "み",   "む",   "め",   "も",
    "ゃ",   "や",   "ゅ",   "ゆ",   "ょ",   "よ",   "ら",   "り",   "る",   "れ",   "ろ",   "ゎ",
    "わ",   "ゐ",   "ゑ",   "を",   "ん",   "?",    "?",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "?",    "?",    "ァ",   "ア",   "ィ",   "イ",   "ゥ",   "ウ",   "ェ",   "エ",
    "ォ",   "オ",   "カ",   "ガ",   "キ",   "ギ",   "ク",   "グ",   "ケ",   "ゲ",   "コ",   "ゴ",
    "サ",   "ザ",   "シ",   "ジ",   "ス",   "ズ",   "セ",   "ゼ",   "ソ",   "ゾ",   "タ",   "ダ",
    "チ",   "ヂ",   "ッ",   "ツ",   "ヅ",   "テ",   "デ",   "ト",   "ド",   "ナ",   "ニ",   "ヌ",
    "ネ",   "ノ",   "ハ",   "バ",   "パ",   "ヒ",   "ビ",   "ピ",   "フ",   "ブ",   "プ",   "ヘ",
    "ベ",   "ペ",   "ホ",   "ボ",   "ポ",   "マ",   "ミ",   "ム",   "メ",   "モ",   "ャ",   "ヤ",
    "ュ",   "ユ",   "ョ",   "ヨ",   "ラ",   "リ",   "ル",   "レ",   "ロ",   "ヮ",   "ワ",   "ヰ",
    "ヱ",   "ヲ",   "ン",   "ヴ",   "ヵ",   "ヶ",   "?",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "Α",    "Β",    "Γ",    "Δ",    "Ε",    "Ζ",    "Η",    "Θ",    "Ι",    "Κ",
    "Λ",    "Μ",    "Ν",    "Ξ",    "Ο",    "Π",    "Ρ",    "Σ",    "Τ",    "Υ",    "Φ",    "Χ",
    "Ψ",    "Ω",    "ｷ",    "ｸ",    "ｹ",    "ｺ",    "ｻ",    "ｼ",    "ｽ",    "ｾ",    "α",    "β",
    "γ",    "δ",    "ε",    "ζ",    "η",    "θ",    "ι",    "κ",    "λ",    "μ",    "ν",    "ξ",
    "ο",    "π",    "ρ",    "σ",    "τ",    "υ",    "φ",    "χ",    "ψ",    "ω",    "ﾗ",    "ﾘ",
    "ﾙ",    "ﾚ",    "ﾛ",    "ﾜ",    "ﾝ",    "ﾞ",    "ﾟ",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",
    "А",    "Б",    "В",    "Г",    "Д",    "Е",    "Ё",    "Ж",    "З",    "И",    "Й",    "К",
    "Л",    "М",    "Н",    "О",    "П",    "Р",    "С",    "Т",    "У",    "Ф",    "Х",    "Ц",
    "Ч",    "Ш",    "Щ",    "Ъ",    "Ы",    "Ь",    "Э",    "Ю",    "Я",    "a",    "b",    "c",
    "d",    "e",    "f",    "g",    "h",    "i",    "j",    "k",    "",     "m",    "n",    "o",
    "а",    "б",    "в",    "г",    "д",    "е",    "ё",    "ж",    "з",    "и",    "й",    "к",
    "л",    "м",    "н",    "о",    "п",    "р",    "с",    "т",    "у",    "ф",    "х",    "ц",
    "ч",    "ш",    "щ",    "ъ",    "ы",    "ь",    "э",    "ю",    "я",    "?",    "?",    "?",
    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "─",    "│",
    "┌",    "┐",    "┘",    "└",    "├",    "┬",    "┤",    "┴",    "┼",    "━",    "┃",    "┏",
    "┓",    "┛",    "┗",    "┣",    "┳",    "┫",    "┻",    "╋",    "┠",    "┯",    "┨",    "┷",
    "┿",    "┝",    "┰",    "┥",    "┸",    "╂",    "ｿ",    "ﾀ",    "ﾁ",    "ﾂ",    "ﾃ",    "ﾄ",
    "ﾅ",    "ﾆ",    "ﾇ",    "ﾈ",    "ﾉ",    "ﾊ",    "ﾋ",    "ﾌ",    "ﾍ",    "ﾎ",    "ﾏ",    "ﾐ",
    "ﾑ",    "ﾒ",    "ﾓ",    "ﾔ",    "ﾕ",    "ﾖ",    "ﾗ",    "ﾘ",    "ﾙ",    "ﾚ",    "ﾛ",    "ﾜ",
    "ﾝ",    "ﾞ",    "ﾟ",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "@",    "A",    "B",    "C",
    "D",    "E",    "F",    "G",    "H",    "I",    "J",    "K",    "",     "M",    "N",    "O",
    "P",    "Q",    "R",    "S",    "T",    "U",    "V",    "W",    "X",    "Y",    "Z",    "[",
    "\\",   "]",    "^",    "_",    "`",    "a",    "b",    "c",    "d",    "e",    "f",    "g",
    "h",    "i",    "j",    "k",    "",     "m",    "n",    "o",    "p",    "q",    "r",    "s",
    "t",    "u",    "v",    "w",    "x",    "y",    "z",    "{",    "|",    "}",    "~",    "?",
    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "?",    "?",    "?",    "?",    "亜",   "唖",   "娃",   "阿",   "哀",   "愛",
    "挨",   "姶",   "逢",   "葵",   "茜",   "穐",   "悪",   "握",   "渥",   "旭",   "葦",   "芦",
    "鯵",   "梓",   "圧",   "斡",   "扱",   "宛",   "姐",   "虻",   "飴",   "絢",   "綾",   "鮎",
    "或",   "粟",   "袷",   "安",   "庵",   "按",   "暗",   "案",   "闇",   "鞍",   "杏",   "以",
    "伊",   "位",   "依",   "偉",   "囲",   "夷",   "委",   "威",   "尉",   "惟",   "意",   "慰",
    "易",   "椅",   "為",   "畏",   "異",   "移",   "維",   "緯",   "胃",   "萎",   "衣",   "謂",
    "違",   "遺",   "医",   "井",   "亥",   "域",   "育",   "郁",   "磯",   "一",   "壱",   "溢",
    "逸",   "稲",   "茨",   "芋",   "鰯",   "允",   "印",   "咽",   "員",   "因",   "姻",   "引",
    "飲",   "淫",   "胤",   "蔭",   "院",   "陰",   "隠",   "韻",   "吋",   "右",   "宇",   "烏",
    "羽",   "迂",   "雨",   "卯",   "鵜",   "窺",   "丑",   "碓",   "臼",   "渦",   "嘘",   "唄",
    "欝",   "蔚",   "鰻",   "姥",   "厩",   "浦",   "瓜",   "閏",   "噂",   "云",   "運",   "雲",
    "荏",   "餌",   "叡",   "営",   "嬰",   "影",   "映",   "曳",   "栄",   "永",   "泳",   "洩",
    "瑛",   "盈",   "穎",   "頴",   "英",   "衛",   "詠",   "鋭",   "液",   "疫",   "益",   "駅",
    "悦",   "謁",   "越",   "閲",   "榎",   "厭",   "円",   "園",   "堰",   "奄",   "宴",   "延",
    "怨",   "掩",   "援",   "沿",   "演",   "炎",   "焔",   "煙",   "燕",   "猿",   "縁",   "艶",
    "苑",   "薗",   "遠",   "鉛",   "鴛",   "塩",   "於",   "汚",   "甥",   "凹",   "央",   "奥",
    "往",   "応",   "押",   "旺",   "横",   "欧",   "殴",   "王",   "翁",   "襖",   "鴬",   "鴎",
    "黄",   "岡",   "沖",   "荻",   "億",   "屋",   "憶",   "臆",   "桶",   "牡",   "乙",   "俺",
    "卸",   "恩",   "温",   "穏",   "音",   "下",   "化",   "仮",   "何",   "伽",   "価",   "佳",
    "加",   "可",   "嘉",   "夏",   "嫁",   "家",   "寡",   "科",   "暇",   "果",   "架",   "歌",
    "河",   "火",   "珂",   "禍",   "禾",   "稼",   "箇",   "花",   "苛",   "茄",   "荷",   "華",
    "菓",   "蝦",   "課",   "嘩",   "貨",   "迦",   "過",   "霞",   "蚊",   "俄",   "峨",   "我",
    "牙",   "画",   "臥",   "芽",   "蛾",   "賀",   "雅",   "餓",   "駕",   "介",   "会",   "解",
    "回",   "塊",   "壊",   "廻",   "快",   "怪",   "悔",   "恢",   "懐",   "戒",   "拐",   "改",
    "魁",   "晦",   "械",   "海",   "灰",   "界",   "皆",   "絵",   "芥",   "蟹",   "開",   "階",
    "貝",   "凱",   "劾",   "外",   "咳",   "害",   "崖",   "慨",   "概",   "涯",   "碍",   "蓋",
    "街",   "該",   "鎧",   "骸",   "浬",   "馨",   "蛙",   "垣",   "柿",   "蛎",   "鈎",   "劃",
    "嚇",   "各",   "廓",   "拡",   "撹",   "格",   "核",   "殻",   "獲",   "確",   "穫",   "覚",
    "角",   "赫",   "較",   "郭",   "閣",   "隔",   "革",   "学",   "岳",   "楽",   "額",   "顎",
    "掛",   "笠",   "樫",   "橿",   "梶",   "鰍",   "潟",   "割",   "喝",   "恰",   "括",   "活",
    "渇",   "滑",   "葛",   "褐",   "轄",   "且",   "鰹",   "叶",   "椛",   "樺",   "鞄",   "株",
    "兜",   "竃",   "蒲",   "釜",   "鎌",   "噛",   "鴨",   "栢",   "茅",   "萱",   "粥",   "刈",
    "苅",   "瓦",   "乾",   "侃",   "冠",   "寒",   "刊",   "勘",   "勧",   "巻",   "喚",   "堪",
    "姦",   "完",   "官",   "寛",   "干",   "幹",   "患",   "感",   "慣",   "憾",   "換",   "敢",
    "柑",   "桓",   "棺",   "款",   "歓",   "汗",   "漢",   "澗",   "潅",   "環",   "甘",   "監",
    "看",   "竿",   "管",   "簡",   "緩",   "缶",   "翰",   "肝",   "艦",   "莞",   "観",   "諌",
    "貫",   "還",   "鑑",   "間",   "閑",   "関",   "陥",   "韓",   "館",   "舘",   "丸",   "含",
    "岸",   "巌",   "玩",   "癌",   "眼",   "岩",   "翫",   "贋",   "雁",   "頑",   "顔",   "願",
    "企",   "伎",   "危",   "喜",   "器",   "基",   "奇",   "嬉",   "寄",   "岐",   "希",   "幾",
    "忌",   "揮",   "机",   "旗",   "既",   "期",   "棋",   "棄",   "機",   "帰",   "毅",   "気",
    "汽",   "畿",   "祈",   "季",   "稀",   "紀",   "徽",   "規",   "記",   "貴",   "起",   "軌",
    "輝",   "飢",   "騎",   "鬼",   "亀",   "偽",   "儀",   "妓",   "宜",   "戯",   "技",   "擬",
    "欺",   "犠",   "疑",   "祇",   "義",   "蟻",   "誼",   "議",   "掬",   "菊",   "鞠",   "吉",
    "吃",   "喫",   "桔",   "橘",   "詰",   "砧",   "杵",   "黍",   "却",   "客",   "脚",   "虐",
    "逆",   "丘",   "久",   "仇",   "休",   "及",   "吸",   "宮",   "弓",   "急",   "救",   "朽",
    "求",   "汲",   "泣",   "灸",   "球",   "究",   "窮",   "笈",   "級",   "糾",   "給",   "旧",
    "牛",   "去",   "居",   "巨",   "拒",   "拠",   "挙",   "渠",   "虚",   "許",   "距",   "鋸",
    "漁",   "禦",   "魚",   "亨",   "享",   "京",   "供",   "侠",   "僑",   "兇",   "競",   "共",
    "凶",   "協",   "匡",   "卿",   "叫",   "喬",   "境",   "峡",   "強",   "彊",   "怯",   "恐",
    "恭",   "挟",   "教",   "橋",   "況",   "狂",   "狭",   "矯",   "胸",   "脅",   "興",   "蕎",
    "郷",   "鏡",   "響",   "饗",   "驚",   "仰",   "凝",   "尭",   "暁",   "業",   "局",   "曲",
    "極",   "玉",   "桐",   "粁",   "僅",   "勤",   "均",   "巾",   "錦",   "斤",   "欣",   "欽",
    "琴",   "禁",   "禽",   "筋",   "緊",   "芹",   "菌",   "衿",   "襟",   "謹",   "近",   "金",
    "吟",   "銀",   "九",   "倶",   "句",   "区",   "狗",   "玖",   "矩",   "苦",   "躯",   "駆",
    "駈",   "駒",   "具",   "愚",   "虞",   "喰",   "空",   "偶",   "寓",   "遇",   "隅",   "串",
    "櫛",   "釧",   "屑",   "屈",   "掘",   "窟",   "沓",   "靴",   "轡",   "窪",   "熊",   "隈",
    "粂",   "栗",   "繰",   "桑",   "鍬",   "勲",   "君",   "薫",   "訓",   "群",   "軍",   "郡",
    "卦",   "袈",   "祁",   "係",   "傾",   "刑",   "兄",   "啓",   "圭",   "珪",   "型",   "契",
    "形",   "径",   "恵",   "慶",   "慧",   "憩",   "掲",   "携",   "敬",   "景",   "桂",   "渓",
    "畦",   "稽",   "系",   "経",   "継",   "繋",   "罫",   "茎",   "荊",   "蛍",   "計",   "詣",
    "警",   "軽",   "頚",   "鶏",   "芸",   "迎",   "鯨",   "劇",   "戟",   "撃",   "激",   "隙",
    "桁",   "傑",   "欠",   "決",   "潔",   "穴",   "結",   "血",   "訣",   "月",   "件",   "倹",
    "倦",   "健",   "兼",   "券",   "剣",   "喧",   "圏",   "堅",   "嫌",   "建",   "憲",   "懸",
    "拳",   "捲",   "検",   "権",   "牽",   "犬",   "献",   "研",   "硯",   "絹",   "県",   "肩",
    "見",   "謙",   "賢",   "軒",   "遣",   "鍵",   "険",   "顕",   "験",   "鹸",   "元",   "原",
    "厳",   "幻",   "弦",   "減",   "源",   "玄",   "現",   "絃",   "舷",   "言",   "諺",   "限",
    "乎",   "個",   "古",   "呼",   "固",   "姑",   "孤",   "己",   "庫",   "弧",   "戸",   "故",
    "枯",   "湖",   "狐",   "糊",   "袴",   "股",   "胡",   "菰",   "虎",   "誇",   "跨",   "鈷",
    "雇",   "顧",   "鼓",   "五",   "互",   "伍",   "午",   "呉",   "吾",   "娯",   "後",   "御",
    "悟",   "梧",   "檎",   "瑚",   "碁",   "語",   "誤",   "護",   "醐",   "乞",   "鯉",   "交",
    "佼",   "侯",   "候",   "倖",   "光",   "公",   "功",   "効",   "勾",   "厚",   "口",   "向",
    "后",   "喉",   "坑",   "垢",   "好",   "孔",   "孝",   "宏",   "工",   "巧",   "巷",   "幸",
    "広",   "庚",   "康",   "弘",   "恒",   "慌",   "抗",   "拘",   "控",   "攻",   "昂",   "晃",
    "更",   "杭",   "校",   "梗",   "構",   "江",   "洪",   "浩",   "港",   "溝",   "甲",   "皇",
    "硬",   "稿",   "糠",   "紅",   "紘",   "絞",   "綱",   "耕",   "考",   "肯",   "肱",   "腔",
    "膏",   "航",   "荒",   "行",   "衡",   "講",   "貢",   "購",   "郊",   "酵",   "鉱",   "砿",
    "鋼",   "閤",   "降",   "項",   "香",   "高",   "鴻",   "剛",   "劫",   "号",   "合",   "壕",
    "拷",   "濠",   "豪",   "轟",   "麹",   "克",   "刻",   "告",   "国",   "穀",   "酷",   "鵠",
    "黒",   "獄",   "漉",   "腰",   "甑",   "忽",   "惚",   "骨",   "狛",   "込",   "此",   "頃",
    "今",   "困",   "坤",   "墾",   "婚",   "恨",   "懇",   "昏",   "昆",   "根",   "梱",   "混",
    "痕",   "紺",   "艮",   "魂",   "些",   "佐",   "叉",   "唆",   "嵯",   "左",   "差",   "査",
    "沙",   "瑳",   "砂",   "詐",   "鎖",   "裟",   "坐",   "座",   "挫",   "債",   "催",   "再",
    "最",   "哉",   "塞",   "妻",   "宰",   "彩",   "才",   "採",   "栽",   "歳",   "済",   "災",
    "采",   "犀",   "砕",   "砦",   "祭",   "斎",   "細",   "菜",   "裁",   "載",   "際",   "剤",
    "在",   "材",   "罪",   "財",   "冴",   "坂",   "阪",   "堺",   "榊",   "肴",   "咲",   "崎",
    "埼",   "碕",   "鷺",   "作",   "削",   "咋",   "搾",   "昨",   "朔",   "柵",   "窄",   "策",
    "索",   "錯",   "桜",   "鮭",   "笹",   "匙",   "冊",   "刷",   "察",   "拶",   "撮",   "擦",
    "札",   "殺",   "薩",   "雑",   "皐",   "鯖",   "捌",   "錆",   "鮫",   "皿",   "晒",   "三",
    "傘",   "参",   "山",   "惨",   "撒",   "散",   "桟",   "燦",   "珊",   "産",   "算",   "纂",
    "蚕",   "讃",   "賛",   "酸",   "餐",   "斬",   "暫",   "残",   "仕",   "仔",   "伺",   "使",
    "刺",   "司",   "史",   "嗣",   "四",   "士",   "始",   "姉",   "姿",   "子",   "屍",   "市",
    "師",   "志",   "思",   "指",   "支",   "孜",   "斯",   "施",   "旨",   "枝",   "止",   "死",
    "氏",   "獅",   "祉",   "私",   "糸",   "紙",   "紫",   "肢",   "脂",   "至",   "視",   "詞",
    "詩",   "試",   "誌",   "諮",   "資",   "賜",   "雌",   "飼",   "歯",   "事",   "似",   "侍",
    "児",   "字",   "寺",   "慈",   "持",   "時",   "次",   "滋",   "治",   "爾",   "璽",   "痔",
    "磁",   "示",   "而",   "耳",   "自",   "蒔",   "辞",   "汐",   "鹿",   "式",   "識",   "鴫",
    "竺",   "軸",   "宍",   "雫",   "七",   "叱",   "執",   "失",   "嫉",   "室",   "悉",   "湿",
    "漆",   "疾",   "質",   "実",   "蔀",   "篠",   "偲",   "柴",   "芝",   "屡",   "蕊",   "縞",
    "舎",   "写",   "射",   "捨",   "赦",   "斜",   "煮",   "社",   "紗",   "者",   "謝",   "車",
    "遮",   "蛇",   "邪",   "借",   "勺",   "尺",   "杓",   "灼",   "爵",   "酌",   "釈",   "錫",
    "若",   "寂",   "弱",   "惹",   "主",   "取",   "守",   "手",   "朱",   "殊",   "狩",   "珠",
    "種",   "腫",   "趣",   "酒",   "首",   "儒",   "受",   "呪",   "寿",   "授",   "樹",   "綬",
    "需",   "囚",   "収",   "周",   "宗",   "就",   "州",   "修",   "愁",   "拾",   "洲",   "秀",
    "秋",   "終",   "繍",   "習",   "臭",   "舟",   "蒐",   "衆",   "襲",   "讐",   "蹴",   "輯",
    "週",   "酋",   "酬",   "集",   "醜",   "什",   "住",   "充",   "十",   "従",   "戎",   "柔",
    "汁",   "渋",   "獣",   "縦",   "重",   "銃",   "叔",   "夙",   "宿",   "淑",   "祝",   "縮",
    "粛",   "塾",   "熟",   "出",   "術",   "述",   "俊",   "峻",   "春",   "瞬",   "竣",   "舜",
    "駿",   "准",   "循",   "旬",   "楯",   "殉",   "淳",   "準",   "潤",   "盾",   "純",   "巡",
    "遵",   "醇",   "順",   "処",   "初",   "所",   "暑",   "曙",   "渚",   "庶",   "緒",   "署",
    "書",   "薯",   "藷",   "諸",   "助",   "叙",   "女",   "序",   "徐",   "恕",   "鋤",   "除",
    "傷",   "償",   "勝",   "匠",   "升",   "召",   "哨",   "商",   "唱",   "嘗",   "奨",   "妾",
    "娼",   "宵",   "将",   "小",   "少",   "尚",   "庄",   "床",   "廠",   "彰",   "承",   "抄",
    "招",   "掌",   "捷",   "昇",   "昌",   "昭",   "晶",   "松",   "梢",   "樟",   "樵",   "沼",
    "消",   "渉",   "湘",   "焼",   "焦",   "照",   "症",   "省",   "硝",   "礁",   "祥",   "称",
    "章",   "笑",   "粧",   "紹",   "肖",   "菖",   "蒋",   "蕉",   "衝",   "裳",   "訟",   "証",
    "詔",   "詳",   "象",   "賞",   "醤",   "鉦",   "鍾",   "鐘",   "障",   "鞘",   "上",   "丈",
    "丞",   "乗",   "冗",   "剰",   "城",   "場",   "壌",   "嬢",   "常",   "情",   "擾",   "条",
    "杖",   "浄",   "状",   "畳",   "穣",   "蒸",   "譲",   "醸",   "錠",   "嘱",   "埴",   "飾",
    "拭",   "植",   "殖",   "燭",   "織",   "職",   "色",   "触",   "食",   "蝕",   "辱",   "尻",
    "伸",   "信",   "侵",   "唇",   "娠",   "寝",   "審",   "心",   "慎",   "振",   "新",   "晋",
    "森",   "榛",   "浸",   "深",   "申",   "疹",   "真",   "神",   "秦",   "紳",   "臣",   "芯",
    "薪",   "親",   "診",   "身",   "辛",   "進",   "針",   "震",   "人",   "仁",   "刃",   "塵",
    "壬",   "尋",   "甚",   "尽",   "腎",   "訊",   "迅",   "陣",   "靭",   "笥",   "諏",   "須",
    "酢",   "図",   "厨",   "逗",   "吹",   "垂",   "帥",   "推",   "水",   "炊",   "睡",   "粋",
    "翠",   "衰",   "遂",   "酔",   "錐",   "錘",   "随",   "瑞",   "髄",   "崇",   "嵩",   "数",
    "枢",   "趨",   "雛",   "据",   "杉",   "椙",   "菅",   "頗",   "雀",   "裾",   "澄",   "摺",
    "寸",   "世",   "瀬",   "畝",   "是",   "凄",   "制",   "勢",   "姓",   "征",   "性",   "成",
    "政",   "整",   "星",   "晴",   "棲",   "栖",   "正",   "清",   "牲",   "生",   "盛",   "精",
    "聖",   "声",   "製",   "西",   "誠",   "誓",   "請",   "逝",   "醒",   "青",   "静",   "斉",
    "税",   "脆",   "隻",   "席",   "惜",   "戚",   "斥",   "昔",   "析",   "石",   "積",   "籍",
    "績",   "脊",   "責",   "赤",   "跡",   "蹟",   "碩",   "切",   "拙",   "接",   "摂",   "折",
    "設",   "窃",   "節",   "説",   "雪",   "絶",   "舌",   "蝉",   "仙",   "先",   "千",   "占",
    "宣",   "専",   "尖",   "川",   "戦",   "扇",   "撰",   "栓",   "栴",   "泉",   "浅",   "洗",
    "染",   "潜",   "煎",   "煽",   "旋",   "穿",   "箭",   "線",   "繊",   "羨",   "腺",   "舛",
    "船",   "薦",   "詮",   "賎",   "践",   "選",   "遷",   "銭",   "銑",   "閃",   "鮮",   "前",
    "善",   "漸",   "然",   "全",   "禅",   "繕",   "膳",   "糎",   "噌",   "塑",   "岨",   "措",
    "曾",   "曽",   "楚",   "狙",   "疏",   "疎",   "礎",   "祖",   "租",   "粗",   "素",   "組",
    "蘇",   "訴",   "阻",   "遡",   "鼠",   "僧",   "創",   "双",   "叢",   "倉",   "喪",   "壮",
    "奏",   "爽",   "宋",   "層",   "匝",   "惣",   "想",   "捜",   "掃",   "挿",   "掻",   "操",
    "早",   "曹",   "巣",   "槍",   "槽",   "漕",   "燥",   "争",   "痩",   "相",   "窓",   "糟",
    "総",   "綜",   "聡",   "草",   "荘",   "葬",   "蒼",   "藻",   "装",   "走",   "送",   "遭",
    "鎗",   "霜",   "騒",   "像",   "増",   "憎",   "臓",   "蔵",   "贈",   "造",   "促",   "側",
    "則",   "即",   "息",   "捉",   "束",   "測",   "足",   "速",   "俗",   "属",   "賊",   "族",
    "続",   "卒",   "袖",   "其",   "揃",   "存",   "孫",   "尊",   "損",   "村",   "遜",   "他",
    "多",   "太",   "汰",   "詑",   "唾",   "堕",   "妥",   "惰",   "打",   "柁",   "舵",   "楕",
    "陀",   "駄",   "騨",   "体",   "堆",   "対",   "耐",   "岱",   "帯",   "待",   "怠",   "態",
    "戴",   "替",   "泰",   "滞",   "胎",   "腿",   "苔",   "袋",   "貸",   "退",   "逮",   "隊",
    "黛",   "鯛",   "代",   "台",   "大",   "第",   "醍",   "題",   "鷹",   "滝",   "瀧",   "卓",
    "啄",   "宅",   "托",   "択",   "拓",   "沢",   "濯",   "琢",   "託",   "鐸",   "濁",   "諾",
    "茸",   "凧",   "蛸",   "只",   "叩",   "但",   "達",   "辰",   "奪",   "脱",   "巽",   "竪",
    "辿",   "棚",   "谷",   "狸",   "鱈",   "樽",   "誰",   "丹",   "単",   "嘆",   "坦",   "担",
    "探",   "旦",   "歎",   "淡",   "湛",   "炭",   "短",   "端",   "箪",   "綻",   "耽",   "胆",
    "蛋",   "誕",   "鍛",   "団",   "壇",   "弾",   "断",   "暖",   "檀",   "段",   "男",   "談",
    "値",   "知",   "地",   "弛",   "恥",   "智",   "池",   "痴",   "稚",   "置",   "致",   "蜘",
    "遅",   "馳",   "築",   "畜",   "竹",   "筑",   "蓄",   "逐",   "秩",   "窒",   "茶",   "嫡",
    "着",   "中",   "仲",   "宙",   "忠",   "抽",   "昼",   "柱",   "注",   "虫",   "衷",   "註",
    "酎",   "鋳",   "駐",   "樗",   "瀦",   "猪",   "苧",   "著",   "貯",   "丁",   "兆",   "凋",
    "喋",   "寵",   "帖",   "帳",   "庁",   "弔",   "張",   "彫",   "徴",   "懲",   "挑",   "暢",
    "朝",   "潮",   "牒",   "町",   "眺",   "聴",   "脹",   "腸",   "蝶",   "調",   "諜",   "超",
    "跳",   "銚",   "長",   "頂",   "鳥",   "勅",   "捗",   "直",   "朕",   "沈",   "珍",   "賃",
    "鎮",   "陳",   "津",   "墜",   "椎",   "槌",   "追",   "鎚",   "痛",   "通",   "塚",   "栂",
    "掴",   "槻",   "佃",   "漬",   "柘",   "辻",   "蔦",   "綴",   "鍔",   "椿",   "潰",   "坪",
    "壷",   "嬬",   "紬",   "爪",   "吊",   "釣",   "鶴",   "亭",   "低",   "停",   "偵",   "剃",
    "貞",   "呈",   "堤",   "定",   "帝",   "底",   "庭",   "廷",   "弟",   "悌",   "抵",   "挺",
    "提",   "梯",   "汀",   "碇",   "禎",   "程",   "締",   "艇",   "訂",   "諦",   "蹄",   "逓",
    "邸",   "鄭",   "釘",   "鼎",   "泥",   "摘",   "擢",   "敵",   "滴",   "的",   "笛",   "適",
    "鏑",   "溺",   "哲",   "徹",   "撤",   "轍",   "迭",   "鉄",   "典",   "填",   "天",   "展",
    "店",   "添",   "纏",   "甜",   "貼",   "転",   "顛",   "点",   "伝",   "殿",   "澱",   "田",
    "電",   "兎",   "吐",   "堵",   "塗",   "妬",   "屠",   "徒",   "斗",   "杜",   "渡",   "登",
    "菟",   "賭",   "途",   "都",   "鍍",   "砥",   "砺",   "努",   "度",   "土",   "奴",   "怒",
    "倒",   "党",   "冬",   "凍",   "刀",   "唐",   "塔",   "塘",   "套",   "宕",   "島",   "嶋",
    "悼",   "投",   "搭",   "東",   "桃",   "梼",   "棟",   "盗",   "淘",   "湯",   "涛",   "灯",
    "燈",   "当",   "痘",   "祷",   "等",   "答",   "筒",   "糖",   "統",   "到",   "董",   "蕩",
    "藤",   "討",   "謄",   "豆",   "踏",   "逃",   "透",   "鐙",   "陶",   "頭",   "騰",   "闘",
    "働",   "動",   "同",   "堂",   "導",   "憧",   "撞",   "洞",   "瞳",   "童",   "胴",   "萄",
    "道",   "銅",   "峠",   "鴇",   "匿",   "得",   "徳",   "涜",   "特",   "督",   "禿",   "篤",
    "毒",   "独",   "読",   "栃",   "橡",   "凸",   "突",   "椴",   "届",   "鳶",   "苫",   "寅",
    "酉",   "瀞",   "噸",   "屯",   "惇",   "敦",   "沌",   "豚",   "遁",   "頓",   "呑",   "曇",
    "鈍",   "奈",   "那",   "内",   "乍",   "凪",   "薙",   "謎",   "灘",   "捺",   "鍋",   "楢",
    "馴",   "縄",   "畷",   "南",   "楠",   "軟",   "難",   "汝",   "二",   "尼",   "弐",   "迩",
    "匂",   "賑",   "肉",   "虹",   "廿",   "日",   "乳",   "入",   "如",   "尿",   "韮",   "任",
    "妊",   "忍",   "認",   "濡",   "禰",   "祢",   "寧",   "葱",   "猫",   "熱",   "年",   "念",
    "捻",   "撚",   "燃",   "粘",   "乃",   "廼",   "之",   "埜",   "嚢",   "悩",   "濃",   "納",
    "能",   "脳",   "膿",   "農",   "覗",   "蚤",   "巴",   "把",   "播",   "覇",   "杷",   "波",
    "派",   "琶",   "破",   "婆",   "罵",   "芭",   "馬",   "俳",   "廃",   "拝",   "排",   "敗",
    "杯",   "盃",   "牌",   "背",   "肺",   "輩",   "配",   "倍",   "培",   "媒",   "梅",   "楳",
    "煤",   "狽",   "買",   "売",   "賠",   "陪",   "這",   "蝿",   "秤",   "矧",   "萩",   "伯",
    "剥",   "博",   "拍",   "柏",   "泊",   "白",   "箔",   "粕",   "舶",   "薄",   "迫",   "曝",
    "漠",   "爆",   "縛",   "莫",   "駁",   "麦",   "函",   "箱",   "硲",   "箸",   "肇",   "筈",
    "櫨",   "幡",   "肌",   "畑",   "畠",   "八",   "鉢",   "溌",   "発",   "醗",   "髪",   "伐",
    "罰",   "抜",   "筏",   "閥",   "鳩",   "噺",   "塙",   "蛤",   "隼",   "伴",   "判",   "半",
    "反",   "叛",   "帆",   "搬",   "斑",   "板",   "氾",   "汎",   "版",   "犯",   "班",   "畔",
    "繁",   "般",   "藩",   "販",   "範",   "釆",   "煩",   "頒",   "飯",   "挽",   "晩",   "番",
    "盤",   "磐",   "蕃",   "蛮",   "匪",   "卑",   "否",   "妃",   "庇",   "彼",   "悲",   "扉",
    "批",   "披",   "斐",   "比",   "泌",   "疲",   "皮",   "碑",   "秘",   "緋",   "罷",   "肥",
    "被",   "誹",   "費",   "避",   "非",   "飛",   "樋",   "簸",   "備",   "尾",   "微",   "枇",
    "毘",   "琵",   "眉",   "美",   "鼻",   "柊",   "稗",   "匹",   "疋",   "髭",   "彦",   "膝",
    "菱",   "肘",   "弼",   "必",   "畢",   "筆",   "逼",   "桧",   "姫",   "媛",   "紐",   "百",
    "謬",   "俵",   "彪",   "標",   "氷",   "漂",   "瓢",   "票",   "表",   "評",   "豹",   "廟",
    "描",   "病",   "秒",   "苗",   "錨",   "鋲",   "蒜",   "蛭",   "鰭",   "品",   "彬",   "斌",
    "浜",   "瀕",   "貧",   "賓",   "頻",   "敏",   "瓶",   "不",   "付",   "埠",   "夫",   "婦",
    "富",   "冨",   "布",   "府",   "怖",   "扶",   "敷",   "斧",   "普",   "浮",   "父",   "符",
    "腐",   "膚",   "芙",   "譜",   "負",   "賦",   "赴",   "阜",   "附",   "侮",   "撫",   "武",
    "舞",   "葡",   "蕪",   "部",   "封",   "楓",   "風",   "葺",   "蕗",   "伏",   "副",   "復",
    "幅",   "服",   "福",   "腹",   "複",   "覆",   "淵",   "弗",   "払",   "沸",   "仏",   "物",
    "鮒",   "分",   "吻",   "噴",   "墳",   "憤",   "扮",   "焚",   "奮",   "粉",   "糞",   "紛",
    "雰",   "文",   "聞",   "丙",   "併",   "兵",   "塀",   "幣",   "平",   "弊",   "柄",   "並",
    "蔽",   "閉",   "陛",   "米",   "頁",   "僻",   "壁",   "癖",   "碧",   "別",   "瞥",   "蔑",
    "箆",   "偏",   "変",   "片",   "篇",   "編",   "辺",   "返",   "遍",   "便",   "勉",   "娩",
    "弁",   "鞭",   "保",   "舗",   "鋪",   "圃",   "捕",   "歩",   "甫",   "補",   "輔",   "穂",
    "募",   "墓",   "慕",   "戊",   "暮",   "母",   "簿",   "菩",   "倣",   "俸",   "包",   "呆",
    "報",   "奉",   "宝",   "峰",   "峯",   "崩",   "庖",   "抱",   "捧",   "放",   "方",   "朋",
    "法",   "泡",   "烹",   "砲",   "縫",   "胞",   "芳",   "萌",   "蓬",   "蜂",   "褒",   "訪",
    "豊",   "邦",   "鋒",   "飽",   "鳳",   "鵬",   "乏",   "亡",   "傍",   "剖",   "坊",   "妨",
    "帽",   "忘",   "忙",   "房",   "暴",   "望",   "某",   "棒",   "冒",   "紡",   "肪",   "膨",
    "謀",   "貌",   "貿",   "鉾",   "防",   "吠",   "頬",   "北",   "僕",   "卜",   "墨",   "撲",
    "朴",   "牧",   "睦",   "穆",   "釦",   "勃",   "没",   "殆",   "堀",   "幌",   "奔",   "本",
    "翻",   "凡",   "盆",   "摩",   "磨",   "魔",   "麻",   "埋",   "妹",   "昧",   "枚",   "毎",
    "哩",   "槙",   "幕",   "膜",   "枕",   "鮪",   "柾",   "鱒",   "桝",   "亦",   "俣",   "又",
    "抹",   "末",   "沫",   "迄",   "侭",   "繭",   "麿",   "万",   "慢",   "満",   "漫",   "蔓",
    "味",   "未",   "魅",   "巳",   "箕",   "岬",   "密",   "蜜",   "湊",   "蓑",   "稔",   "脈",
    "妙",   "粍",   "民",   "眠",   "務",   "夢",   "無",   "牟",   "矛",   "霧",   "鵡",   "椋",
    "婿",   "娘",   "冥",   "名",   "命",   "明",   "盟",   "迷",   "銘",   "鳴",   "姪",   "牝",
    "滅",   "免",   "棉",   "綿",   "緬",   "面",   "麺",   "摸",   "模",   "茂",   "妄",   "孟",
    "毛",   "猛",   "盲",   "網",   "耗",   "蒙",   "儲",   "木",   "黙",   "目",   "杢",   "勿",
    "餅",   "尤",   "戻",   "籾",   "貰",   "問",   "悶",   "紋",   "門",   "匁",   "也",   "冶",
    "夜",   "爺",   "耶",   "野",   "弥",   "矢",   "厄",   "役",   "約",   "薬",   "訳",   "躍",
    "靖",   "柳",   "薮",   "鑓",   "愉",   "愈",   "油",   "癒",   "諭",   "輸",   "唯",   "佑",
    "優",   "勇",   "友",   "宥",   "幽",   "悠",   "憂",   "揖",   "有",   "柚",   "湧",   "涌",
    "猶",   "猷",   "由",   "祐",   "裕",   "誘",   "遊",   "邑",   "郵",   "雄",   "融",   "夕",
    "予",   "余",   "与",   "誉",   "輿",   "預",   "傭",   "幼",   "妖",   "容",   "庸",   "揚",
    "揺",   "擁",   "曜",   "楊",   "様",   "洋",   "溶",   "熔",   "用",   "窯",   "羊",   "耀",
    "葉",   "蓉",   "要",   "謡",   "踊",   "遥",   "陽",   "養",   "慾",   "抑",   "欲",   "沃",
    "浴",   "翌",   "翼",   "淀",   "羅",   "螺",   "裸",   "来",   "莱",   "頼",   "雷",   "洛",
    "絡",   "落",   "酪",   "乱",   "卵",   "嵐",   "欄",   "濫",   "藍",   "蘭",   "覧",   "利",
    "吏",   "履",   "李",   "梨",   "理",   "璃",   "痢",   "裏",   "裡",   "里",   "離",   "陸",
    "律",   "率",   "立",   "葎",   "掠",   "略",   "劉",   "流",   "溜",   "琉",   "留",   "硫",
    "粒",   "隆",   "竜",   "龍",   "侶",   "慮",   "旅",   "虜",   "了",   "亮",   "僚",   "両",
    "凌",   "寮",   "料",   "梁",   "涼",   "猟",   "療",   "瞭",   "稜",   "糧",   "良",   "諒",
    "遼",   "量",   "陵",   "領",   "力",   "緑",   "倫",   "厘",   "林",   "淋",   "燐",   "琳",
    "臨",   "輪",   "隣",   "鱗",   "麟",   "瑠",   "塁",   "涙",   "累",   "類",   "令",   "伶",
    "例",   "冷",   "励",   "嶺",   "怜",   "玲",   "礼",   "苓",   "鈴",   "隷",   "零",   "霊",
    "麗",   "齢",   "暦",   "歴",   "列",   "劣",   "烈",   "裂",   "廉",   "恋",   "憐",   "漣",
    "煉",   "簾",   "練",   "聯",   "蓮",   "連",   "錬",   "呂",   "魯",   "櫓",   "炉",   "賂",
    "路",   "露",   "労",   "婁",   "廊",   "弄",   "朗",   "楼",   "榔",   "浪",   "漏",   "牢",
    "狼",   "篭",   "老",   "聾",   "蝋",   "郎",   "六",   "麓",   "禄",   "肋",   "録",   "論",
    "倭",   "和",   "話",   "歪",   "賄",   "脇",   "惑",   "枠",   "鷲",   "亙",   "亘",   "鰐",
    "詫",   "藁",   "蕨",   "椀",   "湾",   "碗",   "腕",   "s",    "t",    "u",    "v",    "w",
    "x",    "y",    "z",    "{",    "|",    "}",    "~",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "弌",   "丐",   "丕",   "个",   "丱",   "丶",   "丼",   "丿",   "乂",   "乖",
    "乘",   "亂",   "亅",   "豫",   "亊",   "舒",   "弍",   "于",   "亞",   "亟",   "亠",   "亢",
    "亰",   "亳",   "亶",   "从",   "仍",   "仄",   "仆",   "仂",   "仗",   "仞",   "仭",   "仟",
    "价",   "伉",   "佚",   "估",   "佛",   "佝",   "佗",   "佇",   "佶",   "侈",   "侏",   "侘",
    "佻",   "佩",   "佰",   "侑",   "佯",   "來",   "侖",   "儘",   "俔",   "俟",   "俎",   "俘",
    "俛",   "俑",   "俚",   "俐",   "俤",   "俥",   "倚",   "倨",   "倔",   "倪",   "倥",   "倅",
    "伜",   "俶",   "倡",   "倩",   "倬",   "俾",   "俯",   "們",   "倆",   "偃",   "假",   "會",
    "偕",   "偐",   "偈",   "做",   "偖",   "偬",   "偸",   "傀",   "傚",   "傅",   "傴",   "傲",
    "僉",   "僊",   "傳",   "僂",   "僖",   "僞",   "僥",   "僭",   "僣",   "僮",   "價",   "僵",
    "儉",   "儁",   "儂",   "儖",   "儕",   "儔",   "儚",   "儡",   "儺",   "儷",   "儼",   "儻",
    "儿",   "兀",   "兒",   "兌",   "兔",   "兢",   "竸",   "兩",   "兪",   "兮",   "冀",   "冂",
    "囘",   "册",   "冉",   "冏",   "冑",   "冓",   "冕",   "冖",   "冤",   "冦",   "冢",   "冩",
    "冪",   "冫",   "决",   "冱",   "冲",   "冰",   "况",   "冽",   "凅",   "凉",   "凛",   "几",
    "處",   "凩",   "凭",   "凰",   "凵",   "凾",   "刄",   "刋",   "刔",   "刎",   "刧",   "刪",
    "刮",   "刳",   "刹",   "剏",   "剄",   "剋",   "剌",   "剞",   "剔",   "剪",   "剴",   "剩",
    "剳",   "剿",   "剽",   "劍",   "劔",   "劒",   "剱",   "劈",   "劑",   "辨",   "辧",   "劬",
    "劭",   "劼",   "劵",   "勁",   "勍",   "勗",   "勞",   "勣",   "勦",   "飭",   "勠",   "勳",
    "勵",   "勸",   "勹",   "匆",   "匈",   "甸",   "匍",   "匐",   "匏",   "匕",   "匚",   "匣",
    "匯",   "匱",   "匳",   "匸",   "區",   "卆",   "卅",   "丗",   "卉",   "卍",   "凖",   "卞",
    "卩",   "卮",   "夘",   "卻",   "卷",   "厂",   "厖",   "厠",   "厦",   "厥",   "厮",   "厰",
    "厶",   "參",   "簒",   "雙",   "叟",   "曼",   "燮",   "叮",   "叨",   "叭",   "叺",   "吁",
    "吽",   "呀",   "听",   "吭",   "吼",   "吮",   "吶",   "吩",   "吝",   "呎",   "咏",   "呵",
    "咎",   "呟",   "呱",   "呷",   "呰",   "咒",   "呻",   "咀",   "呶",   "咄",   "咐",   "咆",
    "哇",   "咢",   "咸",   "咥",   "咬",   "哄",   "哈",   "咨",   "咫",   "哂",   "咤",   "咾",
    "咼",   "哘",   "哥",   "哦",   "唏",   "唔",   "哽",   "哮",   "哭",   "哺",   "哢",   "唹",
    "啀",   "啣",   "啌",   "售",   "啜",   "啅",   "啖",   "啗",   "唸",   "唳",   "啝",   "喙",
    "喀",   "咯",   "喊",   "喟",   "啻",   "啾",   "喘",   "喞",   "單",   "啼",   "喃",   "喩",
    "喇",   "喨",   "嗚",   "嗅",   "嗟",   "嗄",   "嗜",   "嗤",   "嗔",   "嘔",   "嗷",   "嘖",
    "嗾",   "嗽",   "嘛",   "嗹",   "噎",   "噐",   "營",   "嘴",   "嘶",   "嘲",   "嘸",   "噫",
    "噤",   "嘯",   "噬",   "噪",   "嚆",   "嚀",   "嚊",   "嚠",   "嚔",   "嚏",   "嚥",   "嚮",
    "嚶",   "嚴",   "囂",   "嚼",   "囁",   "囃",   "囀",   "囈",   "囎",   "囑",   "囓",   "囗",
    "囮",   "囹",   "圀",   "囿",   "圄",   "圉",   "圈",   "國",   "圍",   "圓",   "團",   "圖",
    "嗇",   "圜",   "圦",   "圷",   "圸",   "坎",   "圻",   "址",   "坏",   "坩",   "埀",   "垈",
    "坡",   "坿",   "垉",   "垓",   "垠",   "垳",   "垤",   "垪",   "垰",   "埃",   "埆",   "埔",
    "埒",   "埓",   "堊",   "埖",   "埣",   "堋",   "堙",   "堝",   "塲",   "堡",   "塢",   "塋",
    "塰",   "毀",   "塒",   "堽",   "塹",   "墅",   "墹",   "墟",   "墫",   "墺",   "壞",   "墻",
    "墸",   "墮",   "壅",   "壓",   "壑",   "壗",   "壙",   "壘",   "壥",   "壜",   "壤",   "壟",
    "壯",   "壺",   "壹",   "壻",   "壼",   "壽",   "夂",   "夊",   "夐",   "夛",   "梦",   "夥",
    "夬",   "夭",   "夲",   "夸",   "夾",   "竒",   "奕",   "奐",   "奎",   "奚",   "奘",   "奢",
    "奠",   "奧",   "奬",   "奩",   "奸",   "妁",   "妝",   "佞",   "侫",   "妣",   "妲",   "姆",
    "姨",   "姜",   "妍",   "姙",   "姚",   "娥",   "娟",   "娑",   "娜",   "娉",   "娚",   "婀",
    "婬",   "婉",   "娵",   "娶",   "婢",   "婪",   "媚",   "媼",   "媾",   "嫋",   "嫂",   "媽",
    "嫣",   "嫗",   "嫦",   "嫩",   "嫖",   "嫺",   "嫻",   "嬌",   "嬋",   "嬖",   "嬲",   "嫐",
    "嬪",   "嬶",   "嬾",   "孃",   "孅",   "孀",   "孑",   "孕",   "孚",   "孛",   "孥",   "孩",
    "孰",   "孳",   "孵",   "學",   "斈",   "孺",   "宀",   "它",   "宦",   "宸",   "寃",   "寇",
    "寉",   "寔",   "寐",   "寤",   "實",   "寢",   "寞",   "寥",   "寫",   "寰",   "寶",   "寳",
    "尅",   "將",   "專",   "對",   "尓",   "尠",   "尢",   "尨",   "尸",   "尹",   "屁",   "屆",
    "屎",   "屓",   "屐",   "屏",   "孱",   "屬",   "屮",   "乢",   "屶",   "屹",   "岌",   "岑",
    "岔",   "妛",   "岫",   "岻",   "岶",   "岼",   "岷",   "峅",   "岾",   "峇",   "峙",   "峩",
    "峽",   "峺",   "峭",   "嶌",   "峪",   "崋",   "崕",   "崗",   "嵜",   "崟",   "崛",   "崑",
    "崔",   "崢",   "崚",   "崙",   "崘",   "嵌",   "嵒",   "嵎",   "嵋",   "嵬",   "嵳",   "嵶",
    "嶇",   "嶄",   "嶂",   "嶢",   "嶝",   "嶬",   "嶮",   "嶽",   "嶐",   "嶷",   "嶼",   "巉",
    "巍",   "巓",   "巒",   "巖",   "巛",   "巫",   "已",   "巵",   "帋",   "帚",   "帙",   "帑",
    "帛",   "帶",   "帷",   "幄",   "幃",   "幀",   "幎",   "幗",   "幔",   "幟",   "幢",   "幤",
    "幇",   "幵",   "并",   "幺",   "麼",   "广",   "庠",   "廁",   "廂",   "廈",   "廐",   "廏",
    "廖",   "廣",   "廝",   "廚",   "廛",   "廢",   "廡",   "廨",   "廩",   "廬",   "廱",   "廳",
    "廰",   "廴",   "廸",   "廾",   "弃",   "弉",   "彝",   "彜",   "弋",   "弑",   "弖",   "弩",
    "弭",   "弸",   "彁",   "彈",   "彌",   "彎",   "弯",   "彑",   "彖",   "彗",   "彙",   "彡",
    "彭",   "彳",   "彷",   "徃",   "徂",   "彿",   "徊",   "很",   "徑",   "徇",   "從",   "徙",
    "徘",   "徠",   "徨",   "徭",   "徼",   "忖",   "忻",   "忤",   "忸",   "忱",   "忝",   "悳",
    "忿",   "怡",   "恠",   "怙",   "怐",   "怩",   "怎",   "怱",   "怛",   "怕",   "怫",   "怦",
    "怏",   "怺",   "恚",   "恁",   "恪",   "恷",   "恟",   "恊",   "恆",   "恍",   "恣",   "恃",
    "恤",   "恂",   "恬",   "恫",   "恙",   "悁",   "悍",   "惧",   "悃",   "悚",   "悄",   "悛",
    "悖",   "悗",   "悒",   "悧",   "悋",   "惡",   "悸",   "惠",   "惓",   "悴",   "忰",   "悽",
    "惆",   "悵",   "惘",   "慍",   "愕",   "愆",   "惶",   "惷",   "愀",   "惴",   "惺",   "愃",
    "愡",   "惻",   "惱",   "愍",   "愎",   "慇",   "愾",   "愨",   "愧",   "慊",   "愿",   "愼",
    "愬",   "愴",   "愽",   "慂",   "慄",   "慳",   "慷",   "慘",   "慙",   "慚",   "慫",   "慴",
    "慯",   "慥",   "慱",   "慟",   "慝",   "慓",   "慵",   "憙",   "憖",   "憇",   "憬",   "憔",
    "憚",   "憊",   "憑",   "憫",   "憮",   "懌",   "懊",   "應",   "懷",   "懈",   "懃",   "懆",
    "憺",   "懋",   "罹",   "懍",   "懦",   "懣",   "懶",   "懺",   "懴",   "懿",   "懽",   "懼",
    "懾",   "戀",   "戈",   "戉",   "戍",   "戌",   "戔",   "戛",   "戞",   "戡",   "截",   "戮",
    "戰",   "戲",   "戳",   "扁",   "扎",   "扞",   "扣",   "扛",   "扠",   "扨",   "扼",   "抂",
    "抉",   "找",   "抒",   "抓",   "抖",   "拔",   "抃",   "抔",   "拗",   "拑",   "抻",   "拏",
    "拿",   "拆",   "擔",   "拈",   "拜",   "拌",   "拊",   "拂",   "拇",   "抛",   "拉",   "挌",
    "拮",   "拱",   "挧",   "挂",   "挈",   "拯",   "拵",   "捐",   "挾",   "捍",   "搜",   "捏",
    "掖",   "掎",   "掀",   "掫",   "捶",   "掣",   "掏",   "掉",   "掟",   "掵",   "捫",   "捩",
    "掾",   "揩",   "揀",   "揆",   "揣",   "揉",   "插",   "揶",   "揄",   "搖",   "搴",   "搆",
    "搓",   "搦",   "搶",   "攝",   "搗",   "搨",   "搏",   "摧",   "摯",   "摶",   "摎",   "攪",
    "撕",   "撓",   "撥",   "撩",   "撈",   "撼",   "據",   "擒",   "擅",   "擇",   "撻",   "擘",
    "擂",   "擱",   "擧",   "舉",   "擠",   "擡",   "抬",   "擣",   "擯",   "攬",   "擶",   "擴",
    "擲",   "擺",   "攀",   "擽",   "攘",   "攜",   "攅",   "攤",   "攣",   "攫",   "攴",   "攵",
    "攷",   "收",   "攸",   "畋",   "效",   "敖",   "敕",   "敍",   "敘",   "敞",   "敝",   "敲",
    "數",   "斂",   "斃",   "變",   "斛",   "斟",   "斫",   "斷",   "旃",   "旆",   "旁",   "旄",
    "旌",   "旒",   "旛",   "旙",   "无",   "旡",   "旱",   "杲",   "昊",   "昃",   "旻",   "杳",
    "昵",   "昶",   "昴",   "昜",   "晏",   "晄",   "晉",   "晁",   "晞",   "晝",   "晤",   "晧",
    "晨",   "晟",   "晢",   "晰",   "暃",   "暈",   "暎",   "暉",   "暄",   "暘",   "暝",   "曁",
    "暹",   "曉",   "暾",   "暼",   "曄",   "暸",   "曖",   "曚",   "曠",   "昿",   "曦",   "曩",
    "曰",   "曵",   "曷",   "朏",   "朖",   "朞",   "朦",   "朧",   "霸",   "朮",   "朿",   "朶",
    "杁",   "朸",   "朷",   "杆",   "杞",   "杠",   "杙",   "杣",   "杤",   "枉",   "杰",   "枩",
    "杼",   "杪",   "枌",   "枋",   "枦",   "枡",   "枅",   "枷",   "柯",   "枴",   "柬",   "枳",
    "柩",   "枸",   "柤",   "柞",   "柝",   "柢",   "柮",   "枹",   "柎",   "柆",   "柧",   "檜",
    "栞",   "框",   "栩",   "桀",   "桍",   "栲",   "桎",   "梳",   "栫",   "桙",   "档",   "桷",
    "桿",   "梟",   "梏",   "梭",   "梔",   "條",   "梛",   "梃",   "檮",   "梹",   "桴",   "梵",
    "梠",   "梺",   "椏",   "梍",   "桾",   "椁",   "棊",   "椈",   "棘",   "椢",   "椦",   "棡",
    "椌",   "棍",   "棔",   "棧",   "棕",   "椶",   "椒",   "椄",   "棗",   "棣",   "椥",   "棹",
    "棠",   "棯",   "椨",   "椪",   "椚",   "椣",   "椡",   "棆",   "楹",   "楷",   "楜",   "楸",
    "楫",   "楔",   "楾",   "楮",   "椹",   "楴",   "椽",   "楙",   "椰",   "楡",   "楞",   "楝",
    "榁",   "楪",   "榲",   "榮",   "槐",   "榿",   "槁",   "槓",   "榾",   "槎",   "寨",   "槊",
    "槝",   "榻",   "槃",   "榧",   "樮",   "榑",   "榠",   "榜",   "榕",   "榴",   "槞",   "槨",
    "樂",   "樛",   "槿",   "權",   "槹",   "槲",   "槧",   "樅",   "榱",   "樞",   "槭",   "樔",
    "槫",   "樊",   "樒",   "櫁",   "樣",   "樓",   "橄",   "樌",   "橲",   "樶",   "橸",   "橇",
    "橢",   "橙",   "橦",   "橈",   "樸",   "樢",   "檐",   "檍",   "檠",   "檄",   "檢",   "檣",
    "檗",   "蘗",   "檻",   "櫃",   "櫂",   "檸",   "檳",   "檬",   "櫞",   "櫑",   "櫟",   "檪",
    "櫚",   "櫪",   "櫻",   "欅",   "蘖",   "櫺",   "欒",   "欖",   "鬱",   "欟",   "欸",   "欷",
    "盜",   "欹",   "飮",   "歇",   "歃",   "歉",   "歐",   "歙",   "歔",   "歛",   "歟",   "歡",
    "歸",   "歹",   "歿",   "殀",   "殄",   "殃",   "殍",   "殘",   "殕",   "殞",   "殤",   "殪",
    "殫",   "殯",   "殲",   "殱",   "殳",   "殷",   "殼",   "毆",   "毋",   "毓",   "毟",   "毬",
    "毫",   "毳",   "毯",   "麾",   "氈",   "氓",   "气",   "氛",   "氤",   "氣",   "汞",   "汕",
    "汢",   "汪",   "沂",   "沍",   "沚",   "沁",   "沛",   "汾",   "汨",   "汳",   "沒",   "沐",
    "泄",   "泱",   "泓",   "沽",   "泗",   "泅",   "泝",   "沮",   "沱",   "沾",   "沺",   "泛",
    "泯",   "泙",   "泪",   "洟",   "衍",   "洶",   "洫",   "洽",   "洸",   "洙",   "洵",   "洳",
    "洒",   "洌",   "浣",   "涓",   "浤",   "浚",   "浹",   "浙",   "涎",   "涕",   "濤",   "涅",
    "淹",   "渕",   "渊",   "涵",   "淇",   "淦",   "涸",   "淆",   "淬",   "淞",   "淌",   "淨",
    "淒",   "淅",   "淺",   "淙",   "淤",   "淕",   "淪",   "淮",   "渭",   "湮",   "渮",   "渙",
    "湲",   "湟",   "渾",   "渣",   "湫",   "渫",   "湶",   "湍",   "渟",   "湃",   "渺",   "湎",
    "渤",   "滿",   "渝",   "游",   "溂",   "溪",   "溘",   "滉",   "溷",   "滓",   "溽",   "溯",
    "滄",   "溲",   "滔",   "滕",   "溏",   "溥",   "滂",   "溟",   "潁",   "漑",   "灌",   "滬",
    "滸",   "滾",   "漿",   "滲",   "漱",   "滯",   "漲",   "滌",   "漾",   "漓",   "滷",   "澆",
    "潺",   "潸",   "澁",   "澀",   "潯",   "潛",   "濳",   "潭",   "澂",   "潼",   "潘",   "澎",
    "澑",   "濂",   "潦",   "澳",   "澣",   "澡",   "澤",   "澹",   "濆",   "澪",   "濟",   "濕",
    "濬",   "濔",   "濘",   "濱",   "濮",   "濛",   "瀉",   "瀋",   "濺",   "瀑",   "瀁",   "瀏",
    "濾",   "瀛",   "瀚",   "潴",   "瀝",   "瀘",   "瀟",   "瀰",   "瀾",   "瀲",   "灑",   "灣",
    "炙",   "炒",   "炯",   "烱",   "炬",   "炸",   "炳",   "炮",   "烟",   "烋",   "烝",   "烙",
    "焉",   "烽",   "焜",   "焙",   "煥",   "煕",   "熈",   "煦",   "煢",   "煌",   "煖",   "煬",
    "熏",   "燻",   "熄",   "熕",   "熨",   "熬",   "燗",   "熹",   "熾",   "燒",   "燉",   "燔",
    "燎",   "燠",   "燬",   "燧",   "燵",   "燼",   "燹",   "燿",   "爍",   "爐",   "爛",   "爨",
    "爭",   "爬",   "爰",   "爲",   "爻",   "爼",   "爿",   "牀",   "牆",   "牋",   "牘",   "牴",
    "牾",   "犂",   "犁",   "犇",   "犒",   "犖",   "犢",   "犧",   "犹",   "犲",   "狃",   "狆",
    "狄",   "狎",   "狒",   "狢",   "狠",   "狡",   "狹",   "狷",   "倏",   "猗",   "猊",   "猜",
    "猖",   "猝",   "猴",   "猯",   "猩",   "猥",   "猾",   "獎",   "獏",   "默",   "獗",   "獪",
    "獨",   "獰",   "獸",   "獵",   "獻",   "獺",   "珈",   "玳",   "珎",   "玻",   "珀",   "珥",
    "珮",   "珞",   "璢",   "琅",   "瑯",   "琥",   "珸",   "琲",   "琺",   "瑕",   "琿",   "瑟",
    "瑙",   "瑁",   "瑜",   "瑩",   "瑰",   "瑣",   "瑪",   "瑶",   "瑾",   "璋",   "璞",   "璧",
    "瓊",   "瓏",   "瓔",   "珱",   "瓠",   "瓣",   "瓧",   "瓩",   "瓮",   "瓲",   "瓰",   "瓱",
    "瓸",   "瓷",   "甄",   "甃",   "甅",   "甌",   "甎",   "甍",   "甕",   "甓",   "甞",   "甦",
    "甬",   "甼",   "畄",   "畍",   "畊",   "畉",   "畛",   "畆",   "畚",   "畩",   "畤",   "畧",
    "畫",   "畭",   "畸",   "當",   "疆",   "疇",   "畴",   "疊",   "疉",   "疂",   "疔",   "疚",
    "疝",   "疥",   "疣",   "痂",   "疳",   "痃",   "疵",   "疽",   "疸",   "疼",   "疱",   "痍",
    "痊",   "痒",   "痙",   "痣",   "痞",   "痾",   "痿",   "痼",   "瘁",   "痰",   "痺",   "痲",
    "痳",   "瘋",   "瘍",   "瘉",   "瘟",   "瘧",   "瘠",   "瘡",   "瘢",   "瘤",   "瘴",   "瘰",
    "瘻",   "癇",   "癈",   "癆",   "癜",   "癘",   "癡",   "癢",   "癨",   "癩",   "癪",   "癧",
    "癬",   "癰",   "癲",   "癶",   "癸",   "發",   "皀",   "皃",   "皈",   "皋",   "皎",   "皖",
    "皓",   "皙",   "皚",   "皰",   "皴",   "皸",   "皹",   "皺",   "盂",   "盍",   "盖",   "盒",
    "盞",   "盡",   "盥",   "盧",   "盪",   "蘯",   "盻",   "眈",   "眇",   "眄",   "眩",   "眤",
    "眞",   "眥",   "眦",   "眛",   "眷",   "眸",   "睇",   "睚",   "睨",   "睫",   "睛",   "睥",
    "睿",   "睾",   "睹",   "瞎",   "瞋",   "瞑",   "瞠",   "瞞",   "瞰",   "瞶",   "瞹",   "瞿",
    "瞼",   "瞽",   "瞻",   "矇",   "矍",   "矗",   "矚",   "矜",   "矣",   "矮",   "矼",   "砌",
    "砒",   "礦",   "砠",   "礪",   "硅",   "碎",   "硴",   "碆",   "硼",   "碚",   "碌",   "碣",
    "碵",   "碪",   "碯",   "磑",   "磆",   "磋",   "磔",   "碾",   "碼",   "磅",   "磊",   "磬",
    "磧",   "磚",   "磽",   "磴",   "礇",   "礒",   "礑",   "礙",   "礬",   "礫",   "祀",   "祠",
    "祗",   "祟",   "祚",   "祕",   "祓",   "祺",   "祿",   "禊",   "禝",   "禧",   "齋",   "禪",
    "禮",   "禳",   "禹",   "禺",   "秉",   "秕",   "秧",   "秬",   "秡",   "秣",   "稈",   "稍",
    "稘",   "稙",   "稠",   "稟",   "禀",   "稱",   "稻",   "稾",   "稷",   "穃",   "穗",   "穉",
    "穡",   "穢",   "穩",   "龝",   "穰",   "穹",   "穽",   "窈",   "窗",   "窕",   "窘",   "窖",
    "窩",   "竈",   "窰",   "窶",   "竅",   "竄",   "窿",   "邃",   "竇",   "竊",   "竍",   "竏",
    "竕",   "竓",   "站",   "竚",   "竝",   "竡",   "竢",   "竦",   "竭",   "竰",   "笂",   "笏",
    "笊",   "笆",   "笳",   "笘",   "笙",   "笞",   "笵",   "笨",   "笶",   "筐",   "筺",   "笄",
    "筍",   "笋",   "筌",   "筅",   "筵",   "筥",   "筴",   "筧",   "筰",   "筱",   "筬",   "筮",
    "箝",   "箘",   "箟",   "箍",   "箜",   "箚",   "箋",   "箒",   "箏",   "筝",   "箙",   "篋",
    "篁",   "篌",   "篏",   "箴",   "篆",   "篝",   "篩",   "簑",   "簔",   "篦",   "篥",   "籠",
    "簀",   "簇",   "簓",   "篳",   "篷",   "簗",   "簍",   "篶",   "簣",   "簧",   "簪",   "簟",
    "簷",   "簫",   "簽",   "籌",   "籃",   "籔",   "籏",   "籀",   "籐",   "籘",   "籟",   "籤",
    "籖",   "籥",   "籬",   "籵",   "粃",   "粐",   "粤",   "粭",   "粢",   "粫",   "粡",   "粨",
    "粳",   "粲",   "粱",   "粮",   "粹",   "粽",   "糀",   "糅",   "糂",   "糘",   "糒",   "糜",
    "糢",   "鬻",   "糯",   "糲",   "糴",   "糶",   "糺",   "紆",   "紂",   "紜",   "紕",   "紊",
    "絅",   "絋",   "紮",   "紲",   "紿",   "紵",   "絆",   "絳",   "絖",   "絎",   "絲",   "絨",
    "絮",   "絏",   "絣",   "經",   "綉",   "絛",   "綏",   "絽",   "綛",   "綺",   "綮",   "綣",
    "綵",   "緇",   "綽",   "綫",   "總",   "綢",   "綯",   "緜",   "綸",   "綟",   "綰",   "緘",
    "緝",   "緤",   "緞",   "緻",   "緲",   "緡",   "縅",   "縊",   "縣",   "縡",   "縒",   "縱",
    "縟",   "縉",   "縋",   "縢",   "繆",   "繦",   "縻",   "縵",   "縹",   "繃",   "縷",   "縲",
    "縺",   "繧",   "繝",   "繖",   "繞",   "繙",   "繚",   "繹",   "繪",   "繩",   "繼",   "繻",
    "纃",   "緕",   "繽",   "辮",   "繿",   "纈",   "纉",   "續",   "纒",   "纐",   "纓",   "纔",
    "纖",   "纎",   "纛",   "纜",   "缸",   "缺",   "罅",   "罌",   "罍",   "罎",   "罐",   "网",
    "罕",   "罔",   "罘",   "罟",   "罠",   "罨",   "罩",   "罧",   "罸",   "羂",   "羆",   "羃",
    "羈",   "羇",   "羌",   "羔",   "羞",   "羝",   "羚",   "羣",   "羯",   "羲",   "羹",   "羮",
    "羶",   "羸",   "譱",   "翅",   "翆",   "翊",   "翕",   "翔",   "翡",   "翦",   "翩",   "翳",
    "翹",   "飜",   "耆",   "耄",   "耋",   "耒",   "耘",   "耙",   "耜",   "耡",   "耨",   "耿",
    "耻",   "聊",   "聆",   "聒",   "聘",   "聚",   "聟",   "聢",   "聨",   "聳",   "聲",   "聰",
    "聶",   "聹",   "聽",   "聿",   "肄",   "肆",   "肅",   "肛",   "肓",   "肚",   "肭",   "冐",
    "肬",   "胛",   "胥",   "胙",   "胝",   "胄",   "胚",   "胖",   "脉",   "胯",   "胱",   "脛",
    "脩",   "脣",   "脯",   "腋",   "隋",   "腆",   "脾",   "腓",   "腑",   "胼",   "腱",   "腮",
    "腥",   "腦",   "腴",   "膃",   "膈",   "膊",   "膀",   "膂",   "膠",   "膕",   "膤",   "膣",
    "腟",   "膓",   "膩",   "膰",   "膵",   "膾",   "膸",   "膽",   "臀",   "臂",   "膺",   "臉",
    "臍",   "臑",   "臙",   "臘",   "臈",   "臚",   "臟",   "臠",   "臧",   "臺",   "臻",   "臾",
    "舁",   "舂",   "舅",   "與",   "舊",   "舍",   "舐",   "舖",   "舩",   "舫",   "舸",   "舳",
    "艀",   "艙",   "艘",   "艝",   "艚",   "艟",   "艤",   "艢",   "艨",   "艪",   "艫",   "舮",
    "艱",   "艷",   "艸",   "艾",   "芍",   "芒",   "芫",   "芟",   "芻",   "芬",   "苡",   "苣",
    "苟",   "苒",   "苴",   "苳",   "苺",   "莓",   "范",   "苻",   "苹",   "苞",   "茆",   "苜",
    "茉",   "苙",   "茵",   "茴",   "茖",   "茲",   "茱",   "荀",   "茹",   "荐",   "荅",   "茯",
    "茫",   "茗",   "茘",   "莅",   "莚",   "莪",   "莟",   "莢",   "莖",   "茣",   "莎",   "莇",
    "莊",   "荼",   "莵",   "荳",   "荵",   "莠",   "莉",   "莨",   "菴",   "萓",   "菫",   "菎",
    "菽",   "萃",   "菘",   "萋",   "菁",   "菷",   "萇",   "菠",   "菲",   "萍",   "萢",   "萠",
    "莽",   "萸",   "蔆",   "菻",   "葭",   "萪",   "萼",   "蕚",   "蒄",   "葷",   "葫",   "蒭",
    "葮",   "蒂",   "葩",   "葆",   "萬",   "葯",   "葹",   "萵",   "蓊",   "葢",   "蒹",   "蒿",
    "蒟",   "蓙",   "蓍",   "蒻",   "蓚",   "蓐",   "蓁",   "蓆",   "蓖",   "蒡",   "蔡",   "蓿",
    "蓴",   "蔗",   "蔘",   "蔬",   "蔟",   "蔕",   "蔔",   "蓼",   "蕀",   "蕣",   "蕘",   "蕈",
    "蕁",   "蘂",   "蕋",   "蕕",   "薀",   "薤",   "薈",   "薑",   "薊",   "薨",   "蕭",   "薔",
    "薛",   "藪",   "薇",   "薜",   "蕷",   "蕾",   "薐",   "藉",   "薺",   "藏",   "薹",   "藐",
    "藕",   "藝",   "藥",   "藜",   "藹",   "蘊",   "蘓",   "蘋",   "藾",   "藺",   "蘆",   "蘢",
    "蘚",   "蘰",   "蘿",   "虍",   "乕",   "虔",   "號",   "虧",   "虱",   "蚓",   "蚣",   "蚩",
    "蚪",   "蚋",   "蚌",   "蚶",   "蚯",   "蛄",   "蛆",   "蚰",   "蛉",   "蠣",   "蚫",   "蛔",
    "蛞",   "蛩",   "蛬",   "蛟",   "蛛",   "蛯",   "蜒",   "蜆",   "蜈",   "蜀",   "蜃",   "蛻",
    "蜑",   "蜉",   "蜍",   "蛹",   "蜊",   "蜴",   "蜿",   "蜷",   "蜻",   "蜥",   "蜩",   "蜚",
    "蝠",   "蝟",   "蝸",   "蝌",   "蝎",   "蝴",   "蝗",   "蝨",   "蝮",   "蝙",   "蝓",   "蝣",
    "蝪",   "蠅",   "螢",   "螟",   "螂",   "螯",   "蟋",   "螽",   "蟀",   "蟐",   "雖",   "螫",
    "蟄",   "螳",   "蟇",   "蟆",   "螻",   "蟯",   "蟲",   "蟠",   "蠏",   "蠍",   "蟾",   "蟶",
    "蟷",   "蠎",   "蟒",   "蠑",   "蠖",   "蠕",   "蠢",   "蠡",   "蠱",   "蠶",   "蠹",   "蠧",
    "蠻",   "衄",   "衂",   "衒",   "衙",   "衞",   "衢",   "衫",   "袁",   "衾",   "袞",   "衵",
    "衽",   "袵",   "衲",   "袂",   "袗",   "袒",   "袮",   "袙",   "袢",   "袍",   "袤",   "袰",
    "袿",   "袱",   "裃",   "裄",   "裔",   "裘",   "裙",   "裝",   "裹",   "褂",   "裼",   "裴",
    "裨",   "裲",   "褄",   "褌",   "褊",   "褓",   "襃",   "褞",   "褥",   "褪",   "褫",   "襁",
    "襄",   "褻",   "褶",   "褸",   "襌",   "褝",   "襠",   "襞",   "襦",   "襤",   "襭",   "襪",
    "襯",   "襴",   "襷",   "襾",   "覃",   "覈",   "覊",   "覓",   "覘",   "覡",   "覩",   "覦",
    "覬",   "覯",   "覲",   "覺",   "覽",   "覿",   "觀",   "觚",   "觜",   "觝",   "觧",   "觴",
    "觸",   "訃",   "訖",   "訐",   "訌",   "訛",   "訝",   "訥",   "訶",   "詁",   "詛",   "詒",
    "詆",   "詈",   "詼",   "詭",   "詬",   "詢",   "誅",   "誂",   "誄",   "誨",   "誡",   "誑",
    "誥",   "誦",   "誚",   "誣",   "諄",   "諍",   "諂",   "諚",   "諫",   "諳",   "諧",   "諤",
    "諱",   "謔",   "諠",   "諢",   "諷",   "諞",   "諛",   "謌",   "謇",   "謚",   "諡",   "謖",
    "謐",   "謗",   "謠",   "謳",   "鞫",   "謦",   "謫",   "謾",   "謨",   "譁",   "譌",   "譏",
    "譎",   "證",   "譖",   "譛",   "譚",   "譫",   "譟",   "譬",   "譯",   "譴",   "譽",   "讀",
    "讌",   "讎",   "讒",   "讓",   "讖",   "讙",   "讚",   "谺",   "豁",   "谿",   "豈",   "豌",
    "豎",   "豐",   "豕",   "豢",   "豬",   "豸",   "豺",   "貂",   "貉",   "貅",   "貊",   "貍",
    "貎",   "貔",   "豼",   "貘",   "戝",   "貭",   "貪",   "貽",   "貲",   "貳",   "貮",   "貶",
    "賈",   "賁",   "賤",   "賣",   "賚",   "賽",   "賺",   "賻",   "贄",   "贅",   "贊",   "贇",
    "贏",   "贍",   "贐",   "齎",   "贓",   "賍",   "贔",   "贖",   "赧",   "赭",   "赱",   "赳",
    "趁",   "趙",   "跂",   "趾",   "趺",   "跏",   "跚",   "跖",   "跌",   "跛",   "跋",   "跪",
    "跫",   "跟",   "跣",   "跼",   "踈",   "踉",   "跿",   "踝",   "踞",   "踐",   "踟",   "蹂",
    "踵",   "踰",   "踴",   "蹊",   "蹇",   "蹉",   "蹌",   "蹐",   "蹈",   "蹙",   "蹤",   "蹠",
    "踪",   "蹣",   "蹕",   "蹶",   "蹲",   "蹼",   "躁",   "躇",   "躅",   "躄",   "躋",   "躊",
    "躓",   "躑",   "躔",   "躙",   "躪",   "躡",   "躬",   "躰",   "軆",   "躱",   "躾",   "軅",
    "軈",   "軋",   "軛",   "軣",   "軼",   "軻",   "軫",   "軾",   "輊",   "輅",   "輕",   "輒",
    "輙",   "輓",   "輜",   "輟",   "輛",   "輌",   "輦",   "輳",   "輻",   "輹",   "轅",   "轂",
    "輾",   "轌",   "轉",   "轆",   "轎",   "轗",   "轜",   "轢",   "轣",   "轤",   "辜",   "辟",
    "辣",   "辭",   "辯",   "辷",   "迚",   "迥",   "迢",   "迪",   "迯",   "邇",   "迴",   "逅",
    "迹",   "迺",   "逑",   "逕",   "逡",   "逍",   "逞",   "逖",   "逋",   "逧",   "逶",   "逵",
    "逹",   "迸",   "遏",   "遐",   "遑",   "遒",   "逎",   "遉",   "逾",   "遖",   "遘",   "遞",
    "遨",   "遯",   "遶",   "隨",   "遲",   "邂",   "遽",   "邁",   "邀",   "邊",   "邉",   "邏",
    "邨",   "邯",   "邱",   "邵",   "郢",   "郤",   "扈",   "郛",   "鄂",   "鄒",   "鄙",   "鄲",
    "鄰",   "酊",   "酖",   "酘",   "酣",   "酥",   "酩",   "酳",   "酲",   "醋",   "醉",   "醂",
    "醢",   "醫",   "醯",   "醪",   "醵",   "醴",   "醺",   "釀",   "釁",   "釉",   "釋",   "釐",
    "釖",   "釟",   "釡",   "釛",   "釼",   "釵",   "釶",   "鈞",   "釿",   "鈔",   "鈬",   "鈕",
    "鈑",   "鉞",   "鉗",   "鉅",   "鉉",   "鉤",   "鉈",   "銕",   "鈿",   "鉋",   "鉐",   "銜",
    "銖",   "銓",   "銛",   "鉚",   "鋏",   "銹",   "銷",   "鋩",   "錏",   "鋺",   "鍄",   "錮",
    "錙",   "錢",   "錚",   "錣",   "錺",   "錵",   "錻",   "鍜",   "鍠",   "鍼",   "鍮",   "鍖",
    "鎰",   "鎬",   "鎭",   "鎔",   "鎹",   "鏖",   "鏗",   "鏨",   "鏥",   "鏘",   "鏃",   "鏝",
    "鏐",   "鏈",   "鏤",   "鐚",   "鐔",   "鐓",   "鐃",   "鐇",   "鐐",   "鐶",   "鐫",   "鐵",
    "鐡",   "鐺",   "鑁",   "鑒",   "鑄",   "鑛",   "鑠",   "鑢",   "鑞",   "鑪",   "鈩",   "鑰",
    "鑵",   "鑷",   "鑽",   "鑚",   "鑼",   "鑾",   "钁",   "鑿",   "閂",   "閇",   "閊",   "閔",
    "閖",   "閘",   "閙",   "閠",   "閨",   "閧",   "閭",   "閼",   "閻",   "閹",   "閾",   "闊",
    "濶",   "闃",   "闍",   "闌",   "闕",   "闔",   "闖",   "關",   "闡",   "闥",   "闢",   "阡",
    "阨",   "阮",   "阯",   "陂",   "陌",   "陏",   "陋",   "陷",   "陜",   "陞",   "陝",   "陟",
    "陦",   "陲",   "陬",   "隍",   "隘",   "隕",   "隗",   "險",   "隧",   "隱",   "隲",   "隰",
    "隴",   "隶",   "隸",   "隹",   "雎",   "雋",   "雉",   "雍",   "襍",   "雜",   "霍",   "雕",
    "雹",   "霄",   "霆",   "霈",   "霓",   "霎",   "霑",   "霏",   "霖",   "霙",   "霤",   "霪",
    "霰",   "霹",   "霽",   "霾",   "靄",   "靆",   "靈",   "靂",   "靉",   "靜",   "靠",   "靤",
    "靦",   "靨",   "勒",   "靫",   "靱",   "靹",   "鞅",   "靼",   "鞁",   "靺",   "鞆",   "鞋",
    "鞏",   "鞐",   "鞜",   "鞨",   "鞦",   "鞣",   "鞳",   "鞴",   "韃",   "韆",   "韈",   "韋",
    "韜",   "韭",   "齏",   "韲",   "竟",   "韶",   "韵",   "頏",   "頌",   "頸",   "頤",   "頡",
    "頷",   "頽",   "顆",   "顏",   "顋",   "顫",   "顯",   "顰",   "顱",   "顴",   "顳",   "颪",
    "颯",   "颱",   "颶",   "飄",   "飃",   "飆",   "飩",   "飫",   "餃",   "餉",   "餒",   "餔",
    "餘",   "餡",   "餝",   "餞",   "餤",   "餠",   "餬",   "餮",   "餽",   "餾",   "饂",   "饉",
    "饅",   "饐",   "饋",   "饑",   "饒",   "饌",   "饕",   "馗",   "馘",   "馥",   "馭",   "馮",
    "馼",   "駟",   "駛",   "駝",   "駘",   "駑",   "駭",   "駮",   "駱",   "駲",   "駻",   "駸",
    "騁",   "騏",   "騅",   "駢",   "騙",   "騫",   "騷",   "驅",   "驂",   "驀",   "驃",   "騾",
    "驕",   "驍",   "驛",   "驗",   "驟",   "驢",   "驥",   "驤",   "驩",   "驫",   "驪",   "骭",
    "骰",   "骼",   "髀",   "髏",   "髑",   "髓",   "體",   "髞",   "髟",   "髢",   "髣",   "髦",
    "髯",   "髫",   "髮",   "髴",   "髱",   "髷",   "髻",   "鬆",   "鬘",   "鬚",   "鬟",   "鬢",
    "鬣",   "鬥",   "鬧",   "鬨",   "鬩",   "鬪",   "鬮",   "鬯",   "鬲",   "魄",   "魃",   "魏",
    "魍",   "魎",   "魑",   "魘",   "魴",   "鮓",   "鮃",   "鮑",   "鮖",   "鮗",   "鮟",   "鮠",
    "鮨",   "鮴",   "鯀",   "鯊",   "鮹",   "鯆",   "鯏",   "鯑",   "鯒",   "鯣",   "鯢",   "鯤",
    "鯔",   "鯡",   "鰺",   "鯲",   "鯱",   "鯰",   "鰕",   "鰔",   "鰉",   "鰓",   "鰌",   "鰆",
    "鰈",   "鰒",   "鰊",   "鰄",   "鰮",   "鰛",   "鰥",   "鰤",   "鰡",   "鰰",   "鱇",   "鰲",
    "鱆",   "鰾",   "鱚",   "鱠",   "鱧",   "鱶",   "鱸",   "鳧",   "鳬",   "鳰",   "鴉",   "鴈",
    "鳫",   "鴃",   "鴆",   "鴪",   "鴦",   "鶯",   "鴣",   "鴟",   "鵄",   "鴕",   "鴒",   "鵁",
    "鴿",   "鴾",   "鵆",   "鵈",   "鵝",   "鵞",   "鵤",   "鵑",   "鵐",   "鵙",   "鵲",   "鶉",
    "鶇",   "鶫",   "鵯",   "鵺",   "鶚",   "鶤",   "鶩",   "鶲",   "鷄",   "鷁",   "鶻",   "鶸",
    "鶺",   "鷆",   "鷏",   "鷂",   "鷙",   "鷓",   "鷸",   "鷦",   "鷭",   "鷯",   "鷽",   "鸚",
    "鸛",   "鸞",   "鹵",   "鹹",   "鹽",   "麁",   "麈",   "麋",   "麌",   "麒",   "麕",   "麑",
    "麝",   "麥",   "麩",   "麸",   "麪",   "麭",   "靡",   "黌",   "黎",   "黏",   "黐",   "黔",
    "黜",   "點",   "黝",   "黠",   "黥",   "黨",   "黯",   "黴",   "黶",   "黷",   "黹",   "黻",
    "黼",   "黽",   "鼇",   "鼈",   "皷",   "鼕",   "鼡",   "鼬",   "鼾",   "齊",   "齒",   "齔",
    "齣",   "齟",   "齠",   "齡",   "齦",   "齧",   "齬",   "齪",   "齷",   "齲",   "齶",   "龕",
    "龜",   "龠",   "堯",   "槇",   "遙",   "瑤",   "凜",   "熙",   "･",    "ｦ",    "ｧ",    "ｨ",
    "ｩ",    "ｪ",    "ｫ",    "ｬ",    "ｭ",    "ｮ",    "ｯ",    "ｰ",    "ｱ",    "ｲ",    "ｳ",    "ｴ",
    "ｵ",    "ｶ",    "ｷ",    "ｸ",    "ｹ",    "ｺ",    "ｻ",    "ｼ",    "ｽ",    "ｾ",    "ｿ",    "ﾀ",
    "ﾁ",    "ﾂ",    "ﾃ",    "ﾄ",    "ﾅ",    "ﾆ",    "ﾇ",    "ﾈ",    "ﾉ",    "ﾊ",    "ﾋ",    "ﾌ",
    "ﾍ",    "ﾎ",    "ﾏ",    "ﾐ",    "ﾑ",    "ﾒ",    "ﾓ",    "ﾔ",    "ﾕ",    "ﾖ",    "ﾗ",    "ﾘ",
    "ﾙ",    "ﾚ",    "ﾛ",    "ﾜ",    "ﾝ",    "ﾞ",    "ﾟ",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",
    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",    "?",
};

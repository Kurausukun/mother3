#pragma once

#include <fstream>

template <long T>
static uint pad_to(uint offset) { return offset + ((T - (offset & (T - 1))) & ~T); }

struct RomStream : std::ifstream {
    RomStream(const std::string& path) : std::ifstream(path, std::ios::binary) {
        if (!is_open()) {
            perror("Failed to open ROM file");
            exit(1);
        }
    }

    template <typename T>
    T read() {
        T value;
        std::ifstream::read(reinterpret_cast<char*>(&value), sizeof(T));
        return value;
    }
};

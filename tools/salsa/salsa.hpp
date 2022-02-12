#pragma once

#include <fstream>

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;

typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef signed long long s64;

template <long T>
static long pad_to(long offset) { return offset + ((T - (offset & (T - 1))) & ~T); }

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

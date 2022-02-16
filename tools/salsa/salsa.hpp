#pragma once

#include <fstream>
#include <iostream>

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

typedef void (*SalsaFunc)(const char* src, const char* dest);

struct ISalsaFile {
    ISalsaFile() = default;
    ISalsaFile(const char* path) {
        std::fstream(path, std::ios::out | std::ios::app).close(); // make sure exists
        file = std::make_unique<std::fstream>(path);
    }

    std::unique_ptr<std::fstream> file;
};

struct SalsaStream : ISalsaFile, std::iostream {
    SalsaStream(std::streambuf* buf) : std::iostream(buf) {}
    SalsaStream(const char* path) : ISalsaFile(path), std::iostream(file->rdbuf()) {}
    SalsaStream(const std::string& path) : ISalsaFile(path.c_str()), std::iostream(file->rdbuf()) {}
    SalsaStream(const SalsaStream&) = delete;

    template <typename T>
    T read() {
        T value;
        std::iostream::read(reinterpret_cast<char*>(&value), sizeof(T));
        return value;
    }

    template <typename T>
    void write(T value) {
        std::iostream::write(reinterpret_cast<char*>(&value), sizeof(T));
    }
};

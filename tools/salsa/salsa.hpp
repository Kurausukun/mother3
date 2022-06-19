#pragma once

#include <filesystem>
#include <fstream>
#include <iostream>
#include <memory>
#include <string>

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;

typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef signed long long s64;

template <long T>
static long pad_to(long offset) {
    return offset + ((T - (offset & (T - 1))) & ~T);
}

template <class T>
static T sign_extend(T x, const int bits) {
    T m = 1;
    m <<= bits - 1;
    return (x ^ m) - m;
}

[[maybe_unused]] static std::string trim_whitespace(const std::string& s) {
    auto start = s.begin();
    while (start != s.end() && std::isspace(*start)) {
        start++;
    }
    auto end = s.end();
    do {
        end--;
    } while (std::distance(start, end) > 0 && std::isspace(*end));
    return std::string(start, end + 1);
};

struct ISalsaFile {
    ISalsaFile() = default;
    ISalsaFile(const char* path) {
        std::fstream(path, std::ios::out | std::ios::app).close();  // make sure exists
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

struct SalsaPath : std::filesystem::path {
    SalsaPath(const char* path) : std::filesystem::path(path) {}
};

typedef void (*SalsaRead)(SalsaStream& src, SalsaPath& dest);
typedef void (*SalsaWrite)(SalsaPath& src, SalsaStream& dest);

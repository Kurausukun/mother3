#pragma once

#include <map>
#include <vector>
#include "salsa.hpp"

void salsa_maintext_read(const char* src_path, const char* dest_path);
void salsa_maintext_write(const char* src, const char* dest);

void salsa_battletext_read(const char* src_path, const char* dest_path);
void salsa_battletext_write(const char* src, const char* dest);

struct CCode {
    std::string name;
    u32 argcount;
};

extern const std::map<u16, CCode> cc_map;
extern const std::vector<const char*> jp_charmap;

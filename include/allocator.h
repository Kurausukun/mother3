#ifndef GUARD_CORE_FIT_H
#define GUARD_CORE_FIT_H

#include "global.h"

struct Fit {
    Fit() {
        _0 = 0;
        size = 0;
        data = 0;
    }

    ~Fit() { delete[] data; }

    Fit* next() { return static_cast<Fit*>(data); }

    void** content() { return &_0; }

    bool empty() const {
        u32 ret;
        if (size > 0)
            ret = 1;
        else
            ret = 0;
        return ret;
    }

    void append(void** ptr) {
        s32 new_size = size + 1;
        if (sig32 < new_size) {
            s32 x = new_size * 2;
            s32 y = 4;
            s32 z;
            if (y < x) {
                y = x;
            }
            z = y;
            u32* f = new u32[z];
            u32* a = (u32*)next()->content();
            u32* b = (u32*)f;
            if (size > 0) {
                for (int i = size; i != 0; --i) {
                    *b++ = *a++;
                }
            }
            if (data)
                delete[] data;
            *content() = (void*)z;
            data = f;
        }
        ((void**)data)[size] = *ptr;
        size++;
    }

    union {
        void* _0;
        char sig[4];
        s32 sig32;
    };
    s32 size;
    void* data;
};

class FitAllocator {
public:
    FitAllocator(u32 size, Fit* fit);
    virtual ~FitAllocator();

    void* malloc(u32 size);
    void free(void* ptr);
    void defragment();
    // debug
    u32 bytesRemaining();
    void check();
    void getInfo();

private:
    u32 buf_size;
    Fit* _4;
    Fit* _8;
    u32 _c;
    Fit* head;
};

#endif  // GUARD_CORE_FIT_H

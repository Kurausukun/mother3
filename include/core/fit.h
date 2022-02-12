#ifndef GUARD_CORE_FIT_H
#define GUARD_CORE_FIT_H

#include "global.h"

struct Fit {
    Fit() {
        _0 = 0;
        size = 0;
        data = 0;
    }

    ~Fit() {
        delete[] data;
    }

    Fit* next() {
        return static_cast<Fit*>(data);
    }

    void** content() { return &_0; }

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

// thanks to: maide, pixel, ibot02
template <class T>
struct Vector {
    Vector() {
        capacity = 0;
        size = 0;
        storage = (T*)NULL;
    }

    ~Vector() {
        size = 0;
        delete[] storage;
    }

    void append(const T& data) {
        s32 new_size = size + 1;
        if (capacity < new_size) {
            new_size = max(4, new_size * 2);
            T* dest = new T[new_size];
            T* src = storage;
            T* dest_copy = dest;
            for (int i = 0; i < size; i++) {
                *dest_copy++ = *src++;
            }
            delete[] storage;
            capacity = new_size;
            storage = dest;
        }

        storage[size++] = data;
    }

    s32 capacity;
    s32 size;
    T* storage;
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

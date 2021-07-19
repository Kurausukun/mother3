#ifndef GUARD_CORE_FIT_H
#define GUARD_CORE_FIT_H

#include "global.h"

struct Fit {
    Fit() {
        *(u32*)sig = 0;
        size = 0;
        next = 0;
    }

    char sig[4];
    u32 size;
    Fit* next;
};

class FitAllocator {
public:
    FitAllocator(u32 size, Fit* fit);
    virtual ~FitAllocator();

    void* malloc(u32 size);
    void free(void* ptr);
    void collapse();
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

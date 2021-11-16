#include "core/singleton.h"

Singleton::Allocator* Singleton::Allocator::get() {
    if (guard == 0) {
        instance.count = 0;
        instance.start = 0;
        instance.end = 0;
        guard = 1;
    }
    return &instance;
}

Singleton::Singleton() {
    Allocator* a = Allocator::get();
    if (a->count < 1) {
        prev = 0;
        next = 0;
        a->start = this;
    } else {
        prev = a->end;
        next = 0;
        a->end->next = this;
    }
    a->end = this;
    a->count++;
}

Singleton* Singleton::sub_08068978() {
    Allocator* a = Allocator::get();
    for (Singleton* i = a->start; i != 0; i = i->next) {
        const char* name = i->getName();
        if (!debugStub(name))
            return i;
    }
    return 0;
}

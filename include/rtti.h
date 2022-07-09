#ifndef RTTI_H
#define RTTI_H

#include "global.h"

struct Singleton {
    struct Allocator {
        static Allocator* get();

        s32 count;
        Singleton* start;
        Singleton* end;

        static Allocator instance;
        static s32 guard;
    };

    Singleton();

    Singleton* sub_08068978();
    u32 debugStub(const char*);

    // todo: make pure virtual once children are finished
    virtual const char* getName();  // = 0;

    Singleton* prev;  // debug related?
    Singleton* next;
};

// TODO: rewrite this to work inside class definition
#define RTTI(CLASS)                                                                                \
    struct CLASS##RTTI : Singleton {                                                                           \
        virtual const char* getName();                                                             \
                                                                                                   \
        static void* init(u16 id);                                                                 \
        static void* get();                                                                        \
    };

#define RTTI_IMPL(CLASS)                                                                           \
    CLASS##RTTI s##CLASS##RTTI;                                                                    \
                                                                                                   \
    void* CLASS##RTTI::get() {                                                                     \
        return &s##CLASS##RTTI;                                                                    \
    }                                                                                              \
                                                                                                   \
    /* this is implementing a CLASS member function!!! */                                          \
    void* CLASS::getRTTI() {                                                                       \
        return CLASS##RTTI::get();                                                                 \
    }

#endif // RTTI_H

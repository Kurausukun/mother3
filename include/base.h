#ifndef BASE_H
#define BASE_H

#include "allocator.h"
#include "singleton.h"
#include "vector.h"

class Clock;
class Base;
struct Singleton;

// wut
template<typename T>
class SafeVector : Vector<T> {
public:
    SafeVector() {}
    ~SafeVector() {
        mSize = 0;
    }
};

typedef void (*Callback)(Base*, Clock*);

struct Listener {
    ~Listener() {
        delete[] stuff;
    }

    u8* _4;
    u8* _8;
    u8* _c;
    u8* stuff;
};

struct BaseNode {
    Base* sender;
    Base* receiver;
    Base* base;
    u32 mask;
    Callback fn;
};

struct ClockData {
    u32 mask;
    Callback callback;
};

class Base {
public:
    Base();
    virtual ~Base();

    virtual void* getInstance();
    virtual void base_1c();
    virtual s32 base_24();
    virtual void base_2c();
    virtual void base_34();
    virtual void registerClock(void* target, const Base& trigger, ClockData callback);
    virtual void base_44();
    virtual void base_4c(u32 mask, Base& base, u32 mask2);
    virtual void base_54(const Base& clock);
    virtual void base_5c();
    virtual void base_64();

    void free_fit1();
    void free_fit2();

    s16 _0;
    s16 _2;
    SafeVector<Listener> mFit1;
    Fit mFit2;
};

struct Unk : public Base {
    Unk() {}
    ~Unk() {}
};

extern "C" void sub_0806E238(Base*, u32, u32);

#endif  // BASE_H

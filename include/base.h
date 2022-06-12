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
struct SafeVector : public Vector<T> {
public:
    SafeVector() {}
    ~SafeVector() {
        // clang cannot find "mSize" without `this->` ??
        this->mSize = 0;
    }
};

typedef void (*Callback)(Base*, Clock*);

struct Listener {
    ~Listener() {}

    Base* sender;
    Base* trigger;
    Base* receiver;
    u32 callback;
    u32 flags;
};

struct Dispatcher {
    ~Dispatcher() {}

    void* _0;
    Vector<Listener*> listeners;
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
    virtual void listen(void* target, const Base& trigger, ClockData callback);
    virtual void base_44();
    virtual void base_4c(u32 mask, Base& base, u32 mask2);
    virtual void base_54(const Base& clock);
    virtual void base_5c();
    virtual void clearNullOutgoing();

    void releaseOutgoing();
    void releaseIncoming();

    s16 num_active_listeners;
    s16 lifetime;
    SafeVector<Dispatcher> outgoing;
    Vector<Listener*> incoming;
};

struct Unk : public Base {
    Unk() {}
    ~Unk() {}
};

struct PrintSettings {
    PrintSettings(u32 x, u32 y, u32 z) : x(x), y(y), z(z) {}

    u8 x,y,z;
};

struct Msg {
    Msg();
    Msg(const void* ptr, u32 size);
    virtual ~Msg();

    static Msg genMisctextMsg(void*, u32 idx);

    void print(const PrintSettings&, bool);
    s32 len();
    u16* sub_0806E334(s32 idx);
    void sub_0806E2E8(const Msg&);
    void sub_0806E374(const Msg&);
    static Msg sub_08073460(s32, const Msg&, const Msg&, const Msg&);

    u16* ptr;
    u16 _4;
    u16 _6;
};

#endif  // BASE_H

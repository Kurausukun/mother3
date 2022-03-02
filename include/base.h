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
class SafeVector : public Vector<T> {
public:
    SafeVector() {}
    ~SafeVector() {
        mSize = 0;
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

extern "C" void sub_0806E238(Base*, u32, u32);

#endif  // BASE_H

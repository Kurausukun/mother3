#ifndef BASE_H
#define BASE_H

#include "allocator.h"
#include "global.h"
#include "singleton.h"
#include "vector.h"

class Clock;
class Base;
struct Singleton;

// wut
template <typename T>
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

    virtual void* getRTTI();
    virtual void base_1c();
    virtual s32 base_24();
    virtual void base_2c();
    virtual void base_34();
    virtual void listen(void* target, const Base& trigger, ClockData callback);
    virtual void base_44();
    virtual void base_4c(u32 mask, Base& base, u32 mask2);
    virtual void emit(const Base& clock);
    virtual void base_5c();
    virtual void clearNullOutgoing();

    void releaseOutgoing();
    void releaseIncoming();

    s16 num_active_listeners;
    s16 lifetime;
    SafeVector<Dispatcher> outgoing;
    Vector<Listener*> incoming;
};

struct Event : public Base {
    virtual ~Event() {}
};

struct Color {
    Color() : r(0), g(0), b(0) {}
    Color(u32 r, u32 g, u32 b) : r(r), g(g), b(b) {}

    static Color Black() { return Color(0, 0, 0); }

    u8 r, g, b;
};

class Msg {
public:
    Msg();
    Msg(const u16*, s32);
    Msg(const Msg&);
    virtual ~Msg();

    static Msg genMisctextMsg(u16*, s32);
    static Msg bcd(s32);

    void print(const Color&, bool);
    s32 len() const;
    u16* getTextAtOffset(s32);
    u16* getTextAtOffset(s32) const;
    Msg* replace(const Msg&);
    Msg* appendCharacter(u16);
    Msg* concatenate(const Msg&);
    Msg* insertAt(s32, const Msg&);

    enum CCode {

        Break = 0xFF01,

        // User must press A to advance message, continues on new line
        // TODO: Better name
        Wait2 = 0xFF02,

        // Generic string substitution
        FmtArg0 = 0xFF10,
        FmtArg1 = 0xFF11,
        FmtArg2 = 0xFF12,

        // Create a pause in the text for N frames
        Pause5 = 0xFF30,
        Pause10 = 0xFF31,
        Pause30 = 0xFF32,
        Pause60 = 0xFF33,
        Pause90 = 0xFF34,

        End = 0xFFFF
    };

private:
    void setText(const u16* text, s32 len);
    void resize(s32 size);

    u16* mText;
    u16 mCapacity;
    u16 mLen;
};

Msg ROMStrFmt(s32, const Msg&, const Msg&, const Msg&);

#endif  // BASE_H

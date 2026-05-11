#ifndef BATTLE_KEYPAD_H
#define BATTLE_KEYPAD_H

#include "base.h"
#include "singleton.h"

struct KeyPad : Base {
    KeyPad();
    virtual ~KeyPad();

    virtual void* getRTTI();

    void set_20(u32 val);
    void set_22(u32 val);
    u32 get_20();
    u32 get_22();
    u32 getKeys();
    u32 getNewKeys();

    void update(Clock* clock);
    void emitNewKeys();

    u16 _20;
    u16 _22;
    u16 keys;  // copy of keypad state
    u16 hold_timers[16];
    u16 new_keys;
    u16 long_keys;
};
MANAGER_DECL(KeyPad);

struct UpKeyPress : Event {
    virtual ~UpKeyPress();
    virtual void* getRTTI();
};
struct DownKeyPress : Event {
    virtual ~DownKeyPress();
    virtual void* getRTTI();
};
struct LeftKeyPress : Event {
    virtual ~LeftKeyPress();
    virtual void* getRTTI();
};
struct RightKeyPress : Event {
    virtual ~RightKeyPress();
    virtual void* getRTTI();
};
struct AKeyPress : Event {
    virtual ~AKeyPress();
    virtual void* getRTTI();
};
struct BKeyPress : Event {
    virtual ~BKeyPress();
    virtual void* getRTTI();
};
struct RKeyPress : Event {
    virtual ~RKeyPress();
    virtual void* getRTTI();
};
struct LKeyPress : Event {
    virtual ~LKeyPress();
    virtual void* getRTTI();
};
struct StartKeyPress : Event {
    virtual ~StartKeyPress();
    virtual void* getRTTI();
};
struct SelectKeyPress : Event {
    virtual ~SelectKeyPress();
    virtual void* getRTTI();
};

struct UpKeyLongPress : Event {
    virtual ~UpKeyLongPress();
    virtual void* getRTTI();
};
struct DownKeyLongPress : Event {
    virtual ~DownKeyLongPress();
    virtual void* getRTTI();
};
struct LeftKeyLongPress : Event {
    virtual ~LeftKeyLongPress();
    virtual void* getRTTI();
};
struct RightKeyLongPress : Event {
    virtual ~RightKeyLongPress();
    virtual void* getRTTI();
};
struct AKeyLongPress : Event {
    virtual ~AKeyLongPress();
    virtual void* getRTTI();
};
struct BKeyLongPress : Event {
    virtual ~BKeyLongPress();
    virtual void* getRTTI();
};
struct RKeyLongPress : Event {
    virtual ~RKeyLongPress();
    virtual void* getRTTI();
};
struct LKeyLongPress : Event {
    virtual ~LKeyLongPress();
    virtual void* getRTTI();
};
struct StartKeyLongPress : Event {
    virtual ~StartKeyLongPress();
    virtual void* getRTTI();
};
struct SelectKeyLongPress : Event {
    virtual ~SelectKeyLongPress();
    virtual void* getRTTI();
};

RTTI_DECL(UpKeyPress);
RTTI_DECL(DownKeyPress);
RTTI_DECL(LeftKeyPress);
RTTI_DECL(RightKeyPress);
RTTI_DECL(AKeyPress);
RTTI_DECL(BKeyPress);
RTTI_DECL(RKeyPress);
RTTI_DECL(LKeyPress);
RTTI_DECL(StartKeyPress);
RTTI_DECL(SelectKeyPress);
RTTI_DECL(UpKeyLongPress);
RTTI_DECL(DownKeyLongPress);
RTTI_DECL(LeftKeyLongPress);
RTTI_DECL(RightKeyLongPress);
RTTI_DECL(AKeyLongPress);
RTTI_DECL(BKeyLongPress);
RTTI_DECL(RKeyLongPress);
RTTI_DECL(LKeyLongPress);
RTTI_DECL(StartKeyLongPress);
RTTI_DECL(SelectKeyLongPress);

#endif  // BATTLE_KEYPAD_H

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

struct UpKeyPress : Unk {
    virtual ~UpKeyPress();
    virtual void* getRTTI();
};
struct DownKeyPress : Unk {
    virtual ~DownKeyPress();
    virtual void* getRTTI();
};
struct LeftKeyPress : Unk {
    virtual ~LeftKeyPress();
    virtual void* getRTTI();
};
struct RightKeyPress : Unk {
    virtual ~RightKeyPress();
    virtual void* getRTTI();
};
struct AKeyPress : Unk {
    virtual ~AKeyPress();
    virtual void* getRTTI();
};
struct BKeyPress : Unk {
    virtual ~BKeyPress();
    virtual void* getRTTI();
};
struct RKeyPress : Unk {
    virtual ~RKeyPress();
    virtual void* getRTTI();
};
struct LKeyPress : Unk {
    virtual ~LKeyPress();
    virtual void* getRTTI();
};
struct StartKeyPress : Unk {
    virtual ~StartKeyPress();
    virtual void* getRTTI();
};
struct SelectKeyPress : Unk {
    virtual ~SelectKeyPress();
    virtual void* getRTTI();
};

struct UpKeyLongPress : Unk {
    virtual ~UpKeyLongPress();
    virtual void* getRTTI();
};
struct DownKeyLongPress : Unk {
    virtual ~DownKeyLongPress();
    virtual void* getRTTI();
};
struct LeftKeyLongPress : Unk {
    virtual ~LeftKeyLongPress();
    virtual void* getRTTI();
};
struct RightKeyLongPress : Unk {
    virtual ~RightKeyLongPress();
    virtual void* getRTTI();
};
struct AKeyLongPress : Unk {
    virtual ~AKeyLongPress();
    virtual void* getRTTI();
};
struct BKeyLongPress : Unk {
    virtual ~BKeyLongPress();
    virtual void* getRTTI();
};
struct RKeyLongPress : Unk {
    virtual ~RKeyLongPress();
    virtual void* getRTTI();
};
struct LKeyLongPress : Unk {
    virtual ~LKeyLongPress();
    virtual void* getRTTI();
};
struct StartKeyLongPress : Unk {
    virtual ~StartKeyLongPress();
    virtual void* getRTTI();
};
struct SelectKeyLongPress : Unk {
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

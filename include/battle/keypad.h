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
SINGLETON_DECL(KeyPad);

struct UpKeyPress : Unk {
    inline UpKeyPress() {}
    virtual ~UpKeyPress();
    virtual void* getRTTI();
};
struct DownKeyPress : Unk {
    inline DownKeyPress() {}
    virtual ~DownKeyPress();
    virtual void* getRTTI();
};
struct LeftKeyPress : Unk {
    inline LeftKeyPress() {}
    virtual ~LeftKeyPress();
    virtual void* getRTTI();
};
struct RightKeyPress : Unk {
    inline RightKeyPress() {}
    virtual ~RightKeyPress();
    virtual void* getRTTI();
};
struct AKeyPress : Unk {
    inline AKeyPress() {}
    virtual ~AKeyPress();
    virtual void* getRTTI();
};
struct BKeyPress : Unk {
    inline BKeyPress() {}
    virtual ~BKeyPress();
    virtual void* getRTTI();
};
struct RKeyPress : Unk {
    inline RKeyPress() {}
    virtual ~RKeyPress();
    virtual void* getRTTI();
};
struct LKeyPress : Unk {
    inline LKeyPress() {}
    virtual ~LKeyPress();
    virtual void* getRTTI();
};
struct StartKeyPress : Unk {
    inline StartKeyPress() {}
    virtual ~StartKeyPress();
    virtual void* getRTTI();
};
struct SelectKeyPress : Unk {
    inline SelectKeyPress() {}
    virtual ~SelectKeyPress();
    virtual void* getRTTI();
};

struct UpKeyLongPress : Unk {
    inline UpKeyLongPress() {}
    virtual ~UpKeyLongPress();
    virtual void* getRTTI();
};
struct DownKeyLongPress : Unk {
    inline DownKeyLongPress() {}
    virtual ~DownKeyLongPress();
    virtual void* getRTTI();
};
struct LeftKeyLongPress : Unk {
    inline LeftKeyLongPress() {}
    virtual ~LeftKeyLongPress();
    virtual void* getRTTI();
};
struct RightKeyLongPress : Unk {
    inline RightKeyLongPress() {}
    virtual ~RightKeyLongPress();
    virtual void* getRTTI();
};
struct AKeyLongPress : Unk {
    inline AKeyLongPress() {}
    virtual ~AKeyLongPress();
    virtual void* getRTTI();
};
struct BKeyLongPress : Unk {
    inline BKeyLongPress() {}
    virtual ~BKeyLongPress();
    virtual void* getRTTI();
};
struct RKeyLongPress : Unk {
    inline RKeyLongPress() {}
    virtual ~RKeyLongPress();
    virtual void* getRTTI();
};
struct LKeyLongPress : Unk {
    inline LKeyLongPress() {}
    virtual ~LKeyLongPress();
    virtual void* getRTTI();
};
struct StartKeyLongPress : Unk {
    inline StartKeyLongPress() {}
    virtual ~StartKeyLongPress();
    virtual void* getRTTI();
};
struct SelectKeyLongPress : Unk {
    inline SelectKeyLongPress() {}
    virtual ~SelectKeyLongPress();
    virtual void* getRTTI();
};

RTTI(UpKeyPress);
RTTI(DownKeyPress);
RTTI(LeftKeyPress);
RTTI(RightKeyPress);
RTTI(AKeyPress);
RTTI(BKeyPress);
RTTI(RKeyPress);
RTTI(LKeyPress);
RTTI(StartKeyPress);
RTTI(SelectKeyPress);
RTTI(UpKeyLongPress);
RTTI(DownKeyLongPress);
RTTI(LeftKeyLongPress);
RTTI(RightKeyLongPress);
RTTI(AKeyLongPress);
RTTI(BKeyLongPress);
RTTI(RKeyLongPress);
RTTI(LKeyLongPress);
RTTI(StartKeyLongPress);
RTTI(SelectKeyLongPress);

#endif  // BATTLE_KEYPAD_H

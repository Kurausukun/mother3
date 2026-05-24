#ifndef BATTLE_KEYPAD_H
#define BATTLE_KEYPAD_H

#include "base.h"
#include "global.h"
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
MANAGER_DECL_INLINE(KeyPad);

struct UpKeyPress : Event {
    inline virtual ~UpKeyPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(UpKeyPress);

struct UpKeyLongPress : Event {
    inline virtual ~UpKeyLongPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(UpKeyLongPress);

struct DownKeyPress : Event {
    inline virtual ~DownKeyPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(DownKeyPress);

struct DownKeyLongPress : Event {
    inline virtual ~DownKeyLongPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(DownKeyLongPress);

struct LeftKeyPress : Event {
    inline virtual ~LeftKeyPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(LeftKeyPress);

struct LeftKeyLongPress : Event {
    inline virtual ~LeftKeyLongPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(LeftKeyLongPress);

struct RightKeyPress : Event {
    inline virtual ~RightKeyPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(RightKeyPress);

struct RightKeyLongPress : Event {
    inline virtual ~RightKeyLongPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(RightKeyLongPress);

struct AKeyPress : Event {
    inline virtual ~AKeyPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(AKeyPress);

struct AKeyLongPress : Event {
    inline virtual ~AKeyLongPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(AKeyLongPress);

struct BKeyPress : Event {
    inline virtual ~BKeyPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(BKeyPress);

struct BKeyLongPress : Event {
    inline virtual ~BKeyLongPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(BKeyLongPress);

struct LKeyPress : Event {
    inline virtual ~LKeyPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(LKeyPress);

struct LKeyLongPress : Event {
    inline virtual ~LKeyLongPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(LKeyLongPress);

struct RKeyPress : Event {
    inline virtual ~RKeyPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(RKeyPress);

struct RKeyLongPress : Event {
    inline virtual ~RKeyLongPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(RKeyLongPress);

struct StartKeyPress : Event {
    inline virtual ~StartKeyPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(StartKeyPress);

struct StartKeyLongPress : Event {
    inline virtual ~StartKeyLongPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(StartKeyLongPress);

struct SelectKeyPress : Event {
    inline virtual ~SelectKeyPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(SelectKeyPress);

struct SelectKeyLongPress : Event {
    inline virtual ~SelectKeyLongPress() {}
    INLINE_VT_END
    virtual void* getRTTI();
};
RTTI_DECL_INLINE(SelectKeyLongPress);

#endif  // BATTLE_KEYPAD_H

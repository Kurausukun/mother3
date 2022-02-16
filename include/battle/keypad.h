#ifndef KEYPAD_H
#define KEYPAD_H

#include "base.h"

struct KeyPad : Base {
    KeyPad();
    virtual ~KeyPad();

    virtual void* manager();

    void set_20(u32 val);
    void set_22(u32 val);
    u32 get_20();
    u32 get_22();
    u32 getKeys();
    u32 getNewKeys();

    u16 _20;
    u16 _22;
    u16 keys; // copy of keypad state
    u16 hold_timers[16];
    u16 new_keys;
    u16 long_keys;
};

struct UpKeyPress : Unk {
	inline UpKeyPress() {}
    inline virtual ~UpKeyPress() {}
};
struct DownKeyPress : Unk {
	inline DownKeyPress() {}
    inline virtual ~DownKeyPress() {}
};
struct LeftKeyPress : Unk {
	inline LeftKeyPress() {}
    inline virtual ~LeftKeyPress() {}
};
struct RightKeyPress : Unk {
	inline RightKeyPress() {}
    inline virtual ~RightKeyPress() {}
};
struct AKeyPress : Unk {
	inline AKeyPress() {}
    inline virtual ~AKeyPress() {}
};
struct BKeyPress : Unk {
	inline BKeyPress() {}
    inline virtual ~BKeyPress() {}
};
struct RKeyPress : Unk {
	inline RKeyPress() {}
    inline virtual ~RKeyPress() {}
};
struct LKeyPress : Unk {
	inline LKeyPress() {}
    inline virtual ~LKeyPress() {}
};
struct StartKeyPress : Unk {
	inline StartKeyPress() {}
    inline virtual ~StartKeyPress() {}
};
struct SelectKeyPress : Unk {
	inline SelectKeyPress() {}
    inline virtual ~SelectKeyPress() {}
};

struct UpKeyLongPress : Unk {
	inline UpKeyLongPress() {}
    inline virtual ~UpKeyLongPress() {}
};
struct DownKeyLongPress : Unk {
	inline DownKeyLongPress() {}
    inline virtual ~DownKeyLongPress() {}
};
struct LeftKeyLongPress : Unk {
	inline LeftKeyLongPress() {}
    inline virtual ~LeftKeyLongPress() {}
};
struct RightKeyLongPress : Unk {
	inline RightKeyLongPress() {}
    inline virtual ~RightKeyLongPress() {}
};
struct AKeyLongPress : Unk {
	inline AKeyLongPress() {}
    inline virtual ~AKeyLongPress() {}
};
struct BKeyLongPress : Unk {
	inline BKeyLongPress() {}
    inline virtual ~BKeyLongPress() {}
};
struct RKeyLongPress : Unk {
	inline RKeyLongPress() {}
    inline virtual ~RKeyLongPress() {}
};
struct LKeyLongPress : Unk {
	inline LKeyLongPress() {}
    inline virtual ~LKeyLongPress() {}
};
struct StartKeyLongPress : Unk {
	inline StartKeyLongPress() {}
    inline virtual ~StartKeyLongPress() {}
};
struct SelectKeyLongPress : Unk {
	inline SelectKeyLongPress() {}
    inline virtual ~SelectKeyLongPress() {}
};

#endif // KEYPAD_H

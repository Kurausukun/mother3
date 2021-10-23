#ifndef KEYPAD_H
#define KEYPAD_H

#include "core/base.h"

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
    u16 holdTimer[16];
    u16 newKeys;
    u16 _48;
};

#endif // KEYPAD_H

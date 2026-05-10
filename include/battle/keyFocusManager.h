#ifndef BATTLE_KEY_FOCUS_MANAGER_H
#define BATTLE_KEY_FOCUS_MANAGER_H

#include "base.h"
#include "m4a.h"
#include "vector.h"

class KeyFocusManager : public Base {
public:
    KeyFocusManager();
    virtual ~KeyFocusManager();
    virtual void* getRTTI();

private:
    Vector<u32> mUnk;
};

class KeyFocuser : public Base {
public:
    KeyFocuser();
    virtual ~KeyFocuser();
};

#endif  // BATTLE_KEY_FOCUS_MANAGER_H

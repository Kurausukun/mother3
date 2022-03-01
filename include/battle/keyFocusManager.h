#ifndef BATTLE_KEY_FOCUS_MANAGER_H
#define BATTLE_KEY_FOCUS_MANAGER_H

#include "base.h"

class KeyFocusManager : public Base {
};

class KeyFocuser : public Base {
public:
    KeyFocuser();
    virtual ~KeyFocuser();
};

#endif // BATTLE_KEY_FOCUS_MANAGER_H

#ifndef KEY_FOCUS_MANAGER_H
#define KEY_FOCUS_MANAGER_H

#include "core/base.h"

class KeyFocusManager : public Base {
};

class KeyFocuser : public Base {
public:
    KeyFocuser();
    virtual ~KeyFocuser();
};

#endif // KEY_FOCUS_MANAGER_H
#ifndef BATTLE_KEY_FOCUS_MANAGER_H
#define BATTLE_KEY_FOCUS_MANAGER_H

#include "base.h"
#include "m4a.h"
#include "singleton.h"
#include "vector.h"

class KeyFocuser : public Base {
public:
    KeyFocuser();
    virtual ~KeyFocuser();
};

class KeyFocusManager : public Base {
public:
    KeyFocusManager();
    virtual ~KeyFocusManager();
    virtual void* getRTTI();

    virtual void sub_08072424(KeyFocuser*);
    virtual void sub_0807248C();

private:
    Vector<u32> mUnk;
};
MANAGER_DECL(KeyFocusManager);

#endif  // BATTLE_KEY_FOCUS_MANAGER_H

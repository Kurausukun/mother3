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

class vt_09F80770 : public Base {
public:
    virtual ~vt_09F80770();  // sub_08070414 (0x08)
    virtual bool sub_08070478(void* arg1, void* arg2, void* arg3,
                              bool arg4);  // sub_08070478 (0x70)
    virtual bool sub_08070578();           // sub_08070578 (0x74)
    virtual void* sub_0807058C();          // sub_0807058C (0x78)
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

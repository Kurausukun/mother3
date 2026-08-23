#ifndef BATTLE_SNDMON_H
#define BATTLE_SNDMON_H

#include "base.h"
#include "battle/unit.h"
#include "structs.h"

class UnnamedSndMon : public Base {
public:
    UnnamedSndMon();
    virtual ~UnnamedSndMon();

    virtual void sub_080652DC(UnitObject_s16r2*);
    virtual void sub_080652E4(s32);
    virtual void sub_080652E8(s16);
    virtual void sub_080652EC();
    virtual void sub_080652F4();
    virtual void sub_080652F8();
    virtual void sub_080652FC();
    virtual void sub_08065344();
    virtual void sub_08065348();

    u8 pad[0x11c - sizeof(Base)];
};

#endif  // BATTLE_SNDMON_H

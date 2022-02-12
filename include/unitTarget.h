#ifndef UNIT_TARGET_H
#define UNIT_TARGET_H

#include "core/unit.h"

class AttackData : public Base {
public:
    AttackData(u16 target, Unit* unit);
    virtual ~AttackData();

    virtual void attackdata_68();
    virtual void attackdata_70();
    virtual void attackdata_78();
    virtual void attackdata_80();
    virtual void attackdata_88();
    virtual void attackdata_90();
    virtual void attackdata_98();
    virtual void attackdata_a0();
    virtual void attackdata_a8();
    virtual void attackdata_b0();
    virtual void attackdata_b8();
    virtual void attackdata_c0();
    virtual u32 attackdata_c8();
    virtual void attackdata_d0();
    virtual void attackdata_d8();
    virtual void attackdata_e0();
    virtual void attackdata_e8();
    virtual void attackdata_f0();
    virtual void attackdata_f8();
    virtual void attackdata_100();
    virtual void attackdata_108();
    virtual s32 attackdata_110();
    virtual u32 attackdata_118(u32 idx);

    u8** _24;
    void* _28;
    void* _2c;
    void* _30;
    void* _34;
    void* _38;
    void* _3c;
    void* _40;
    void* _44;
};

#endif // UNIT_TARGET_H

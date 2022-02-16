#ifndef UNIT_TARGET_H
#define UNIT_TARGET_H

#include "battle/unit.h"
#include "battle/keyFocusManager.h"
#include "battle/textAccessor.h"

struct UnitTargetInfo;

class UnitTarget : public Base {
public:
    UnitTarget(u16 target, Unit* unit);
    virtual ~UnitTarget();

    virtual bool attackdata_68();
    virtual bool attackdata_70();
    virtual u32 getType() const;
    virtual Unit* getUnit() const;
    virtual u32 getSelection() const;
    virtual bool targettingAlly();
    virtual bool attackdata_98();
    virtual s32 attackdata_a0() const;
    virtual bool attackdata_a8() const;
    virtual bool attackdata_b0() const;
    virtual u32 attackdata_b8() const;
    virtual bool attackdata_c0() const;
    virtual s32 attackdata_c8();
    virtual Unit* addTarget(Unit*);
    virtual bool removeTarget(Unit*);
    virtual s32 getNumTargets() const;
    virtual s32 attackdata_e8() const;
    virtual Unit* attackdata_f0(s32 idx);
    virtual s32 attackdata_f8(Unit*) const;
    virtual Unit* attackdata_100(Unit*);
    virtual bool attackdata_108(Unit* u);
    virtual s32 attackdata_110() const;
    virtual Unit* attackdata_118(s32 idx);
    virtual s32 attackdata_120(Unit* unit) const;

private:
    void* _20;
    UnitTargetInfo* mInfo;
    Unit* mUnit;
    Vector<Unit*> mTargets;
    Vector<Unit*> _38;
};

class UnitTargetChoice : public UnitTarget {
public:
    UnitTargetChoice(u16 target, Unit* unit);
    virtual ~UnitTargetChoice();

    void sub_08077CF0(Unit*, u32);

//private:
    Vector<void*> _44;
    Vector<void*> _50;
    u8 _5c;
    u32 _60;
    u16 _64;
    TextAccessor _68;
    u8 _118[60];
    Vector<Unit*> _154;
    KeyFocuser mKeyFocuser;
};

struct UnitTargetInfo {
    u16 type;
    u32 selection;
    u16 _8;
    u32 _c;
    u8 _10;
};
extern UnitTargetInfo gUnitTargetInfo[];

#endif  // UNIT_TARGET_H

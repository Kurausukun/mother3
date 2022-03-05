#ifndef BATTLE_SKILL_H
#define BATTLE_SKILL_H

#include "base.h"
#include "battle/unit.h"

struct Msg {
    u32 x[10];
};

class Skill : public Base {
public:
    Skill(u32 unk);
    virtual ~Skill();

    virtual void skill_68();
    virtual void skill_70();
    virtual void skill_78();
    virtual void skill_80();
    virtual void skill_88();
    virtual void skill_90();
    virtual void skill_a0();
    virtual void skill_a8();
    virtual void skill_b0();
    virtual void skill_b8();
    virtual void skill_c0();
    virtual void calcHit();
    virtual void skill_d0();
    virtual void skill_d8();
    virtual void skill_e0();
    virtual u8 skill_e8();
    virtual void skill_f0();
    virtual void skill_f8();
    virtual u8 skill_100(u32);
    virtual u8 skill_108(u32);
    virtual void onUse(Unit* target);
    virtual void skill_118();
    virtual void skill_120();
    virtual void onFail();
    virtual void skill_130();
    virtual void skill_138();
    virtual void skill_140();
    virtual void skill_148();
    virtual void skill_150();
    virtual Msg skill_158(u32) const;
    virtual void skill_160();
    virtual Unit* getUser() const;
    virtual void skill_170(Unit*);
    virtual void skill_178();
    virtual void skill_180(s32) const;
    virtual s32 numTargets() const;
    virtual Unit* getTarget(u32) const;
    virtual void skill_198();
    virtual u32 skill_1a0();
    virtual u32 skill_1a8();
    virtual u8 skill_1b0();
    virtual u8 skill_1b8();

    virtual Skill* skill_1c0() = 0;
    virtual u16 id() const = 0;
    virtual Skill* name(Skill*) = 0;
    virtual Skill* skill_1d8(Skill*) = 0;
    virtual u32 skill_1e0() = 0;
    virtual u32 effect() const = 0;
    virtual u32 element() const = 0;
    virtual u32 target() const = 0;
    virtual u32 attackMult() const = 0;
    virtual u32 healLo() const = 0;
    virtual u32 healHi() const = 0;
    virtual u32 ailment() const = 0;
    virtual u32 ailmentChance() const = 0;
    virtual u32 hasAction() const = 0;
    virtual u32 priority() const = 0;
    virtual Msg showUseMessage() const = 0;
    virtual Msg showForceUseMessage() const = 0;
    virtual u32 hasDim() const = 0;
    virtual u32 animNo() const = 0;
    virtual u32 successAnimNo() const = 0;
    virtual u16 nextAnim() const = 0;
    virtual u32 sfxNo() const = 0;
    virtual u32 hitChance() const = 0;
    virtual u32 critChance() const = 0;
    virtual bool redirectable() const = 0;
    virtual u32 skill_288() = 0;
    virtual u32 skill_290() = 0;
    virtual u32 skill_298() = 0;
};

struct MoveInfo {
    u32 effect;
    u32 element;
    u16 target;
    u16 unk1;
    u8 atk_mult;
    u16 heal_lo;
    u16 heal_hi;
    u8 ailment;
    u8 ailment_chance;
    u8 action;
    u32 priority;
    u16 msg_no;
    u8 has_dim;
    u8 anim_no;
    u8 anim_success;
    u16 sfx_no;
    u8 miss_chance;
    u8 smash_chance;
    u8 redirectable;
    u8 redirectable2;
};

struct MonsterSkillData {
    u16 id;
    u16 pp_cost;
    u16 recolor_value;
    s16 has_sound;
    MoveInfo move;
};

extern "C" void sub_08077D8C(Skill*, u32);

#endif  // BATTLE_SKILL_H

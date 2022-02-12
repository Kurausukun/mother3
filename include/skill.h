#ifndef CORE_SKILL_H
#define CORE_SKILL_H

#include "core/base.h"

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
    virtual void skill_c8();
    virtual void skill_d0();
    virtual void skill_d8();
    virtual void skill_e0();
    virtual void skill_e8();
    virtual void skill_f0();
    virtual void skill_f8();
    virtual void skill_100();
    virtual void skill_108();
    virtual void skill_110();
    virtual void skill_118();
    virtual void skill_120();
    virtual void skill_128();
    virtual void skill_130();
    virtual void skill_138();
    virtual void skill_140();
    virtual void skill_148();
    virtual void skill_150(Skill*, u32);
    virtual void skill_158();
    virtual void skill_160();
    virtual Unit* skill_168();
    virtual void skill_170(u32);
    virtual void skill_178();
    virtual void skill_180();
    virtual void skill_188();
    virtual void skill_190();
    virtual void skill_198();
    virtual void skill_1a0();
    virtual void skill_1a8();
    virtual void skill_1b0();
    virtual void skill_1b8();

    virtual Skill* skill_1c0() = 0;
    virtual u32 getID() const = 0;
    virtual Skill* skill_1d0(Skill*) = 0;
    virtual Skill* skill_1d8() = 0;
    virtual u32 skill_1e0() = 0;
    virtual u32 getEffect() const = 0;
    virtual u32 getElement() const = 0;
    virtual u32 getTarget() const = 0;
    virtual u32 getAttackMult() const = 0;
    virtual u32 getHealLo() const = 0;
    virtual u32 getHealHi() const = 0;
    virtual u32 getAilment() const = 0;
    virtual u32 getAilmentChance() const = 0;
    virtual u32 hasAction() const = 0;
    virtual u32 getPriority() const = 0;
    virtual Skill* skill_238(Skill* s) = 0;
    virtual Skill* skill_240(Skill* s) = 0;
    virtual u32 getTextBank() const = 0;
    virtual u32 getTextNo() const = 0;
    virtual u32 getAnimBank() const = 0;
    virtual u16 getNextAnim() const = 0;
    virtual u32 getAnimNo() const = 0;
    virtual u32 getSfxBank() const = 0;
    virtual u32 getSfxNo() const = 0;
    virtual bool canMiss() const = 0;
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
    u16 unk2;
    u8 text_bank;
    u8 text_no;
    u8 anim_bank;
    u16 anim_no;
    u8 sfx_bank;
    u8 sfx_no;
    u8 miss_chance;
    u8 smash_chance;
    // u16 redirectable;
};

#endif  // CORE_SKILL_H
#ifndef BATTLE_GUEST_SKILL_H
#define BATTLE_GUEST_SKILL_H

#include "battle/skill.h"

struct GuestSkillInfo {
    u8 id;
    MoveInfo move;
};
extern GuestSkillInfo gGuestSkillData2[];

class GuestSkill : public Skill {
public:
    GuestSkill(u16 idx, u32 unk);
    virtual ~GuestSkill();

    void* getInstance();

    Skill* skill_1c0();
    u16 id() const;
    Skill* skill_1d0(Skill*);
    Skill* skill_1d8(Skill*);
    u32 skill_1e0();
    u32 effect() const;
    u32 element() const;
    u32 target() const;
    u32 attackMult() const;
    u32 healLo() const;
    u32 healHi() const;
    u32 ailment() const;
    u32 ailmentChance() const;
    u32 hasAction() const;
    u32 priority() const;
    Skill* skill_238(Skill* s);
    Skill* skill_240(Skill* s);
    u32 hasDim() const;
    u32 animNo() const;
    u32 successAnimNo() const;
    u16 nextAnim() const;
    u32 sfxNo() const;
    u32 missChance() const;
    u32 critChance() const;
    bool redirectable() const;
    u32 skill_288();
    u32 skill_290();
    u32 skill_298();

private:
    u8 filler[0x28];
    GuestSkillInfo* mInfo;
};

SINGLETON(GuestSkill);

#endif  // BATTLE_GUEST_SKILL_H

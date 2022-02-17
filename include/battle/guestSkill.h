#ifndef BATTLE_GUEST_SKILL_H
#define BATTLE_GUEST_SKILL_H

#include "battle/skill.h"

struct GuestSkillInfo {
    u8 id;
    MoveInfo move;
};
extern GuestSkillInfo gGuestSkillInfo[];

class GuestSkill : public Skill {
public:
    GuestSkill(u16 idx, u32 unk);
    virtual ~GuestSkill();

    void* getInstance();

    Skill* skill_1c0();
    u16 getID() const;
    Skill* skill_1d0(Skill*);
    Skill* skill_1d8(Skill*);
    u32 skill_1e0();
    u32 getEffect() const;
    u32 getElement() const;
    u32 getTarget() const;
    u32 getAttackMult() const;
    u32 getHealLo() const;
    u32 getHealHi() const;
    u32 getAilment() const;
    u32 getAilmentChance() const;
    u32 hasAction() const;
    u32 getPriority() const;
    Skill* skill_238(Skill* s);
    Skill* skill_240(Skill* s);
    u32 getTextBank() const;
    u32 getTextNo() const;
    u32 getAnimBank() const;
    u16 getNextAnim() const;
    u32 getAnimNo() const;
    u32 getSfxBank() const;
    u32 getSfxNo() const;
    bool canMiss() const;
    u32 skill_288();
    u32 skill_290();
    u32 skill_298();

private:
    u8 filler[0x28];
    GuestSkillInfo* mInfo;
};

SINGLETON(GuestSkill);

#endif  // BATTLE_GUEST_SKILL_H

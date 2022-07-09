#ifndef BATTLE_GUEST_SKILL_H
#define BATTLE_GUEST_SKILL_H

#include "battle/action.h"

struct GuestSkillInfo {
    u8 id;
    MoveInfo move;
};
extern const GuestSkillInfo gGuestSkillData[];

class GuestSkill : public Action {
public:
    GuestSkill() {}
    GuestSkill(u16 id, Unit* user);
    virtual ~GuestSkill();

    void* getRTTI();

    Action* action_1c0();
    u16 id() const;
    Msg name() const;
    Msg action_1d8() const;
    u32 action_1e0();
    u32 effect() const;
    u32 element() const;
    u32 target() const;
    u32 attackMult() const;
    s32 healLo() const;
    s32 healHi() const;
    u16 ailment() const;
    u32 ailmentChance() const;
    u8 hasAction() const;
    u32 priority() const;
    Msg getUseMessage() const;
    Msg getForceUseMessage() const;
    bool hasDim() const;
    u16 animNo() const;
    u16 successAnimNo() const;
    u16 nextAnim() const;
    u32 sfxNo() const;
    s32 hitChance() const;
    s32 critChance() const;
    bool redirectable() const;
    u32 action_288();
    u32 action_290();
    u32 action_298();

private:
    const GuestSkillInfo* mInfo;
};

RTTI(GuestSkill);

#endif  // BATTLE_GUEST_SKILL_H

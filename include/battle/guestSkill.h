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
    virtual ~GuestSkill() override;

    void* getRTTI() override;

    Action* action_1c0() override;
    u16 id() const override;
    Msg name() const override;
    Msg action_1d8() const override;
    u32 action_1e0() override;
    u32 effect() const override;
    u32 element() const override;
    u32 target() const override;
    u32 attackMult() const override;
    s32 healLo() const override;
    s32 healHi() const override;
    u16 ailment() const override;
    u32 ailmentChance() const override;
    u8 hasAction() const override;
    u32 priority() const override;
    Msg getUseMessage() const override;
    Msg getForceUseMessage() const override;
    bool hasDim() const override;
    u16 animNo() const override;
    u16 successAnimNo() const override;
    u16 nextAnim() const override;
    u32 sfxNo() const override;
    s32 hitChance() const override;
    s32 critChance() const override;
    bool redirectable() const override;
    u32 action_288() override;
    u32 action_290() override;
    u32 action_298() override;

private:
    const GuestSkillInfo* mInfo;
};

RTTI(GuestSkill);

#endif  // BATTLE_GUEST_SKILL_H

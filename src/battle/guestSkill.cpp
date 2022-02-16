#include "battle/guestSkill.h"

extern "C" void sub_08077D8C(Skill*, u32);
extern "C" Skill* sub_0808079C(Skill*, u32);
extern "C" void sub_0806E274(Skill*);

SINGLETON_IMPL(GuestSkill);

extern "C" Skill* sub_0808079C(Skill* s, u32 id) {
    sub_0806E274(s);
    return s;
}

GuestSkill::GuestSkill(u16 idx, u32 unk) : Skill(unk), mInfo(&gGuestSkillInfo[idx]) {}

GuestSkill::~GuestSkill() {}

Skill* GuestSkill::skill_1c0() {
    sub_08077D8C(this, 0);
    return this;
}

u32 GuestSkill::getID() const {
    return mInfo->id;
}

Skill* GuestSkill::skill_1d0(Skill* s) {
    u16 tmp = s->getID();
    sub_0808079C(this, tmp);
    return this;
}

Skill* GuestSkill::skill_1d8() {
    sub_0806E274(this);
    return this;
}

u32 GuestSkill::skill_1e0() {
    return 0;
}

u32 GuestSkill::getEffect() const {
    return mInfo->move.effect;
}

u32 GuestSkill::getElement() const {
    return mInfo->move.element;
}

u32 GuestSkill::getTarget() const {
    return mInfo->move.target;
}

u32 GuestSkill::getAttackMult() const {
    return mInfo->move.atk_mult;
}

u32 GuestSkill::getHealLo() const {
    return mInfo->move.heal_lo;
}

u32 GuestSkill::getHealHi() const {
    return mInfo->move.heal_hi;
}

u32 GuestSkill::getAilment() const {
    return mInfo->move.ailment;
}

u32 GuestSkill::getAilmentChance() const {
    return mInfo->move.ailment_chance;
}

u32 GuestSkill::hasAction() const {
    u32 action = mInfo->move.action;
    return action ? 1 : 0;
}

u32 GuestSkill::getPriority() const {
    return mInfo->move.priority;
}

// Seems to pass `this` as thisptr for the called function, but uses the vtable of `s` ??????
NONMATCH("asm/non_matching/guestSkill/sub_080808A8.inc", Skill* GuestSkill::skill_238(Skill* s)) {
    // s->skill_150(this, s->mInfo->move.text_no);
    return this;
}
END_NONMATCH

NONMATCH("asm/non_matching/guestSkill/sub_080808D0.inc", Skill* GuestSkill::skill_240(Skill* s)) {
    // s->skill_150(this, s->mInfo->move.text_no);
    return this;
}
END_NONMATCH

u32 GuestSkill::getTextBank() const {
    u32 bank = mInfo->move.text_bank;
    return bank ? 1 : 0;
}

u32 GuestSkill::getTextNo() const {
    return mInfo->move.text_no;
}

u32 GuestSkill::getAnimBank() const {
    return mInfo->move.anim_bank;
}

u16 GuestSkill::getNextAnim() const {
    if (!getNextAnim()) {
        return 0;
    }
    return getNextAnim() + 1;
}

u32 GuestSkill::getAnimNo() const {
    return mInfo->move.anim_no;
}

u32 GuestSkill::getSfxBank() const {
    return 100 - mInfo->move.sfx_bank;
}

u32 GuestSkill::getSfxNo() const {
    return mInfo->move.sfx_no;
}

bool GuestSkill::canMiss() const {
    return mInfo->move.miss_chance != 0;
}

u32 GuestSkill::skill_288() {
    return 0;
}

u32 GuestSkill::skill_290() {
    return 0;
}

u32 GuestSkill::skill_298() {
    return 0;
}

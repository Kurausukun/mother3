#include "battle/guestSkill.h"

extern "C" Skill* getName(Skill*, u32);
extern "C" void sub_0806E274(Skill*);

SINGLETON_IMPL(GuestSkill);

extern "C" Skill* getName(Skill* s, u32 id) {
    sub_0806E274(s);
    return s;
}

GuestSkill::GuestSkill(u16 idx, u32 unk) : Skill(unk), mInfo(&gGuestSkillData2[idx]) {}

GuestSkill::~GuestSkill() {}

Skill* GuestSkill::skill_1c0() {
    sub_08077D8C(this, 0);
    return this;
}

u16 GuestSkill::id() const {
    return mInfo->id;
}

Skill* GuestSkill::name(Skill* s) {
    u16 tmp = s->id();
    getName(this, tmp);
    return this;
}

Skill* GuestSkill::skill_1d8(Skill* s) {
    sub_0806E274(this);
    return this;
}

u32 GuestSkill::skill_1e0() {
    return 0;
}

u32 GuestSkill::effect() const {
    return mInfo->move.effect;
}

u32 GuestSkill::element() const {
    return mInfo->move.element;
}

u32 GuestSkill::target() const {
    return mInfo->move.target;
}

u32 GuestSkill::attackMult() const {
    return mInfo->move.atk_mult;
}

u32 GuestSkill::healLo() const {
    return mInfo->move.heal_lo;
}

u32 GuestSkill::healHi() const {
    return mInfo->move.heal_hi;
}

u32 GuestSkill::ailment() const {
    return mInfo->move.ailment;
}

u32 GuestSkill::ailmentChance() const {
    return mInfo->move.ailment_chance;
}

u32 GuestSkill::hasAction() const {
    u32 action = mInfo->move.action;
    return action ? 1 : 0;
}

u32 GuestSkill::priority() const {
    return mInfo->move.priority;
}

// Seems to pass `this` as thisptr for the called function, but uses the vtable of `s` ??????
NONMATCH("asm/non_matching/guestSkill/sub_080808A8.inc", Skill* GuestSkill::showUseMessage(Skill* s)) {
    // s->skill_150(this, s->mInfo->move.text_no);
    return this;
}
END_NONMATCH

NONMATCH("asm/non_matching/guestSkill/sub_080808D0.inc", Skill* GuestSkill::showForceUseMessage(Skill* s)) {
    // s->skill_150(this, s->mInfo->move.text_no);
    return this;
}
END_NONMATCH

u32 GuestSkill::hasDim() const {
    u32 bank = mInfo->move.has_dim;
    return bank ? 1 : 0;
}

u32 GuestSkill::animNo() const {
    return mInfo->move.anim_no;
}

u32 GuestSkill::successAnimNo() const {
    return mInfo->move.anim_success;
}

u16 GuestSkill::nextAnim() const {
    if (!nextAnim()) {
        return 0;
    }
    return nextAnim() + 1;
}

u32 GuestSkill::sfxNo() const {
    return mInfo->move.sfx_no;
}

u32 GuestSkill::hitChance() const {
    return 100 - mInfo->move.miss_chance;
}

u32 GuestSkill::critChance() const {
    return mInfo->move.smash_chance;
}

bool GuestSkill::redirectable() const {
    return mInfo->move.redirectable != 0;
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

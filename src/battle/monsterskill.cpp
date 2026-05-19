// Auto-generated source file
#include "battle/monsterSkill.h"

extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081994.inc", void sub_08081994());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_080819BC.inc", void sub_080819BC());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_080819E4.inc", void sub_080819E4());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081A08.inc", void sub_08081A08());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081A30.inc", void sub_08081A30());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081A50.inc", void sub_08081A50());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081A78.inc", void sub_08081A78());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081A98.inc", void sub_08081A98());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081AC0.inc", void sub_08081AC0());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081AE8.inc", void sub_08081AE8());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081B00.inc", void sub_08081B00());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081B20.inc", void sub_08081B20());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081B44.inc", void sub_08081B44());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081B64.inc", void sub_08081B64());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081B84.inc", void sub_08081B84());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081BA4.inc", void sub_08081BA4());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081BC4.inc", void sub_08081BC4());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081BE4.inc", void sub_08081BE4());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081C08.inc", void sub_08081C08());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/__12BattleSpriteP7Monster.inc", void __12BattleSpriteP7Monster());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081D48.inc", void sub_08081D48());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081D70.inc", void sub_08081D70());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081DDC.inc", void sub_08081DDC());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081E90.inc", void sub_08081E90());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081E94.inc", void sub_08081E94());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081EC4.inc", void sub_08081EC4());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081EF4.inc", void sub_08081EF4());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081F0C.inc", void sub_08081F0C());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081F14.inc", void sub_08081F14());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081F88.inc", void sub_08081F88());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081F8C.inc", void sub_08081F8C());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081FC8.inc", void sub_08081FC8());
extern "C" ASM_FUNC("asm/non_matching/monsterskill/sub_08081FF4.inc", void sub_08081FF4());

RTTI_IMPL(MonsterSkill);

Msg MonsterSkill::getName(u16 id) {
    return Msg();
}

MonsterSkill::MonsterSkill(u16 id, Unit* user) : Action(user), mInfo(&gMonsterSkillData[id]) {}

MonsterSkill::~MonsterSkill() {}

ASM_FUNC("asm/non_matching/monsterskill/sub_08082088.inc", bool MonsterSkill::fire());
ASM_FUNC("asm/non_matching/monsterskill/sub_0808213C.inc", void MonsterSkill::playSfx());
ASM_FUNC("asm/non_matching/monsterskill/sub_080821A0.inc", void MonsterSkill::action_150());

Action* MonsterSkill::action_1c0() {
    sub_08077D8C(this, 0);
    return this;
}

u16 MonsterSkill::id() const {
    return mInfo->id;
}

Msg MonsterSkill::name() const {
    return getName(id());
}

Msg MonsterSkill::action_1d8() const {
    return Msg();
}

u32 MonsterSkill::action_1e0() {
    return 0;
}

u32 MonsterSkill::effect() const {
    return mInfo->move.effect;
}

u32 MonsterSkill::element() const {
    return mInfo->move.element;
}

u32 MonsterSkill::target() const {
    return *(u16*)&mInfo->move.target;
}

u32 MonsterSkill::attackMult() const {
    return mInfo->move.atk_mult;
}

s32 MonsterSkill::healLo() const {
    return mInfo->move.heal_lo;
}

s32 MonsterSkill::healHi() const {
    return mInfo->move.heal_hi;
}

u16 MonsterSkill::ailment() const {
    return mInfo->move.ailment;
}

u32 MonsterSkill::ailmentChance() const {
    return mInfo->move.ailment_chance;
}

u8 MonsterSkill::hasAction() const {
    u32 action = mInfo->move.action;
    return action ? 1 : 0;
}

u32 MonsterSkill::priority() const {
    return mInfo->move.priority;
}


Msg MonsterSkill::getUseMessage() const {
    return ROMStr(mInfo->move.msg_no);
}

Msg MonsterSkill::getForceUseMessage() const {
    return sub_08073444(mInfo->move.msg_no);
}

bool MonsterSkill::hasDim() const {
    return mInfo->move.has_dim;
}

u16 MonsterSkill::animNo() const {
    return mInfo->move.anim_no;
}

u16 MonsterSkill::successAnimNo() const {
    return mInfo->move.anim_success;
}

u16 MonsterSkill::critAnimNo() const {
    if (!successAnimNo()) {
        return 0;
    }
    return successAnimNo() + 1;
}

u32 MonsterSkill::sfxNo() const {
    return mInfo->move.sfx_no;
}

s32 MonsterSkill::hitChance() const {
    return 100 - mInfo->move.miss_chance;
}

s32 MonsterSkill::critChance() const {
    return mInfo->move.smash_chance;
}

bool MonsterSkill::redirectable() const {
    return mInfo->move.redirectable != 0;
}

u16 MonsterSkill::userAttackSfx() const {
    if (mInfo->has_sound < 0) {
        return getUser()->attackSfx();
    }

    else if (mInfo->has_sound > 0) {
        return mInfo->has_sound;
    }

    else return 0;
}

u16 MonsterSkill::userCritSfx() const {
    if (mInfo->has_sound < 0) {
        return getUser()->critSfx();
    }

    else if (mInfo->has_sound > 0) {
        return mInfo->has_sound + 1;
    }

    else return 0;
}

u16 MonsterSkill::userMissSfx() const {
    if (mInfo->has_sound < 0) {
        return getUser()->missSfx();
    }

    else if (mInfo->has_sound > 0) {
        return mInfo->has_sound + 2;
    }

    else return 0;
}

u16 MonsterSkill::ppCost() const {
    return mInfo->pp_cost;
}

u8 MonsterSkill::recolorValue() const {
    return (u8) mInfo->recolor_value;
}

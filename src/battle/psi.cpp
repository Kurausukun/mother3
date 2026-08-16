// Auto-generated source file
#include "battle/psi.h"
#include "base.h"

extern "C" u16* get_misctext_msg(u32, u32);
extern "C" u16 get_misctext_len(u32);

RTTI_IMPL(Psi);

Msg Psi::getName(u16 idx) {
    return Msg::genMisctextMsg(get_misctext_msg(8, idx), get_misctext_len(8));
}

extern "C" Msg tellTurnAction(s32 unk) {
    return ROMStrFmt((u16)(unk + 0xAD), Msg(), Msg(), Msg());
}

Psi::Psi(u16 id, Unit* user) : Action(user), mInfo(&gPsiData[id]) {}

Psi::~Psi() {}

ASM_FUNC("asm/non_matching/psi/sub_08082BBC.inc", bool Psi::fire());
ASM_FUNC("asm/non_matching/psi/sub_08082D70.inc", void Psi::action_150());

Action* Psi::action_1c0() {
    sub_08077D8C(this, 6);
    return this;
}

u16 Psi::id() const {
    return (u8)mInfo->psi_num;
}

Msg Psi::name() const {
    return getName(id());
}

ASM_FUNC("asm/non_matching/psi/sub_08082E1C.inc", Msg Psi::action_1d8() const);

u32 Psi::action_1e0() {
    return 0;
}

u32 Psi::effect() const {
    return mInfo->move.effect;
}

u32 Psi::element() const {
    return mInfo->move.element;
}

u32 Psi::target() const {
    return *(u16*)&mInfo->move.target;
}

u32 Psi::attackMult() const {
    return mInfo->move.atk_mult;
}

s32 Psi::healLo() const {
    return mInfo->move.heal_lo;
}

s32 Psi::healHi() const {
    return mInfo->move.heal_hi;
}

u16 Psi::ailment() const {
    return mInfo->move.ailment;
}

u32 Psi::ailmentChance() const {
    return mInfo->move.ailment_chance;
}

u8 Psi::hasAction() const {
    u32 action = mInfo->move.action;
    return action ? 1 : 0;
}

u32 Psi::priority() const {
    return mInfo->move.priority;
}

Msg Psi::getUseMessage() const {
    return ROMStr(mInfo->move.msg_no);
}

Msg Psi::getForceUseMessage() const {
    return sub_08073444(mInfo->move.msg_no);
}

bool Psi::hasDim() const {
    return mInfo->move.has_dim;
}

u16 Psi::animNo() const {
    return mInfo->move.anim_no;
}

u16 Psi::successAnimNo() const {
    return mInfo->move.anim_success;
}

u16 Psi::critAnimNo() const {
    if (!successAnimNo()) {
        return 0;
    }
    return successAnimNo() + 1;
}

u32 Psi::sfxNo() const {
    return mInfo->move.sfx_no;
}

s32 Psi::hitChance() const {
    return 100 - mInfo->move.miss_chance;
}

s32 Psi::critChance() const {
    return mInfo->move.smash_chance;
}

bool Psi::redirectable() const {
    return mInfo->move.redirectable != 0;
}

u16 Psi::userAttackSfx() const {
    return 0;
}

u16 Psi::userCritSfx() const {
    return 0;
}

u16 Psi::userMissSfx() const {
    return 0;
}

ASM_FUNC("asm/non_matching/psi/sub_0808304C.inc", bool Psi::isOverworldUsable() const);  // 0808304C

u32 Psi::type() const {
    return mInfo->type;
}

u16 Psi::ppCost() const {
    return (u16)mInfo->pp_cost;
}

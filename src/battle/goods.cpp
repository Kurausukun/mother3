#include "battle/goods.h"
#include "battle/player.h"
#include "structs.h"

extern "C" void* get_misctext_msg(u32, u32);
extern "C" u16 get_misctext_len(u32);
extern "C" void* sub_08001BCC(u32);

extern "C" ASM_FUNC("asm/non_matching/goods/sub_08062308.inc", void sub_08062308());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08062358.inc", void sub_08062358());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08062368.inc", void sub_08062368());
extern "C" ASM_FUNC("asm/non_matching/goods/MonsterInfo_ct.inc", void MonsterInfo_ct());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08062448.inc", void sub_08062448());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080625A4.inc", void sub_080625A4());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080626D4.inc", void sub_080626D4());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080627A4.inc", void sub_080627A4());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08062818.inc", void sub_08062818());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08062894.inc", void sub_08062894());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08062910.inc", void sub_08062910());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_0806298C.inc", void sub_0806298C());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08062A08.inc", void sub_08062A08());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08062AD0.inc", void sub_08062AD0());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08062DB0.inc", void sub_08062DB0());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08062E7C.inc", void sub_08062E7C());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080630D8.inc", void sub_080630D8());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080632E4.inc", void sub_080632E4());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063478.inc", void sub_08063478());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063710.inc", void sub_08063710());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080638BC.inc", void sub_080638BC());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080638D8.inc", void sub_080638D8());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080638DC.inc", void sub_080638DC());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080638E8.inc", void sub_080638E8());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080638F0.inc", void sub_080638F0());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080638FC.inc", void sub_080638FC());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063904.inc", void sub_08063904());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_0806390C.inc", void sub_0806390C());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063914.inc", void sub_08063914());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_0806391C.inc", void sub_0806391C());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063924.inc", void sub_08063924());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_0806392C.inc", void sub_0806392C());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063934.inc", void sub_08063934());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_0806393C.inc", void sub_0806393C());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063944.inc", void sub_08063944());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_0806395C.inc", void sub_0806395C());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063960.inc", void sub_08063960());
extern "C" ASM_FUNC("asm/non_matching/goods/__15struct_08063998.inc", void __15struct_08063998());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080639A8.inc", void sub_080639A8());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080639D4.inc", void sub_080639D4());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080639D8.inc", void sub_080639D8());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_080639FC.inc", void sub_080639FC());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063A90.inc", void sub_08063A90());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063AD0.inc", void sub_08063AD0());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063EB4.inc", void sub_08063EB4());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063EC4.inc", void sub_08063EC4());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08063EE4.inc", void sub_08063EE4());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08064564.inc", void sub_08064564());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08064574.inc", void sub_08064574());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08064590.inc", void sub_08064590());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08064808.inc", void sub_08064808());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08064818.inc", void sub_08064818());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08064834.inc", void sub_08064834());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08064940.inc", void sub_08064940());
extern "C" ASM_FUNC("asm/non_matching/goods/sub_08064950.inc", void sub_08064950());

extern s32 gUnknown_020038B0;

extern "C" void* getGoodsRTTI(void) {
    return &gUnknown_020038B0;
}

extern "C" ASM_FUNC("asm/non_matching/goods/sub_08064974.inc", void sub_08064974());

Msg Goods::getName(u16 idx) {
    return Msg::genMisctextMsg(get_misctext_msg(2, idx), get_misctext_len(2));
}

Goods::Goods(u16 id, Unit* user, u16 a2) : Action(user) {
    mInfo = &gGoodsInfo[id];
    _4c = a2;
}

Goods::~Goods() {}

bool Goods::fire() {
    if (action_1b8() == true) {
        playSfx();
        return true;
    }
    return Action::fire();
}

void Goods::action_150() {
    if (action_1b0() == 1 && goods_2b8() == 1) {
        Player* p;
        if ((p = tryCastPlayer(getUser())) == NULL) {
            return;
        }

        if (p->player_410(goods_2a0()) != 1) {
            p->player_408(id());
        }
    }
    Action::action_150();
}

Action* Goods::action_1c0() {
    sub_08077D8C(this, 7);
    return this;
}

u16 Goods::id() const {
    return mInfo->item_id;
}

u16 Goods::goods_2a0() const {
    return _4c;
}

Msg Goods::name() const {
    return getName(id());
}

NONMATCH("asm/non_matching/goods/skill_1d8.inc", Msg Goods::action_1d8() const) {
    Msg m = Msg::genMisctextMsg(sub_08001BCC(id()), -1);
    return m;
}
END_NONMATCH

u32 Goods::action_1e0() {
    return 0;
}

u32 Goods::effect() const {
    return mInfo->action.effect;
}

u32 Goods::element() const {
    return mInfo->action.element;
}

u32 Goods::target() const {
    return (u16) * (u32*)&mInfo->action.target;
}

u32 Goods::attackMult() const {
    return mInfo->action.atk_mult;
}

s32 Goods::healLo() const {
    return mInfo->action.heal_lo;
}

s32 Goods::healHi() const {
    return mInfo->action.heal_hi;
}

u16 Goods::ailment() const {
    return mInfo->action.ailment;
}

u32 Goods::ailmentChance() const {
    return mInfo->action.ailment_chance;
}

u8 Goods::hasAction() const {
    u32 action = mInfo->action.action;
    return action ? 1 : 0;
}

u32 Goods::priority() const {
    return mInfo->action.priority;
}

Msg Goods::getUseMessage() const {
    if (numTargets() == 1 && getTarget(0) == getUser()) {
        return ROMStr(calcMessage(mInfo->action.msg_no));
    } else {
        return ROMStr(calcMessage(mInfo->action.msg_no + 1));
    }
}

u16 Goods::calcMessage(u16 idx) const {
    if (goods_2b0() != 4 || numTargets() <= 0)
        return idx;

    if (getTarget(0)->hasStatus(Status::Nauseous) != 1)
        return idx;

    switch (idx) {
    case 0x146: /* [] ate [][]! */
        /* [] tried to eat [][]! */
        idx = 0x15A;
        break;
    case 0x147: /* [] took out [][],[]and [][] ate []! */
        /* [] took out [][],[]and tried to have [][] eat []. */
        idx = 0x15B;
        break;
    case 0x148: /* [] drank [][]! */
        /* [] tried to drink [][]! */
        idx = 0x15C;
        break;
    case 0x149: /* [] took out [][],[]and [][] drank []! */
        /* [] took out [][],[]and tried to have [][] drink []. */
        idx = 0x15D;
        break;
    }
    return idx;
}

Msg Goods::getForceUseMessage() const {
    if (numTargets() == 1 && getTarget(0) == getUser()) {
        return sub_08073444(mInfo->action.msg_no);
    } else {
        return sub_08073444(mInfo->action.msg_no + 1);
    }
}

bool Goods::hasDim() const {
    return mInfo->action.has_dim;
}

u16 Goods::animNo() const {
    return mInfo->action.anim_no;
}

u16 Goods::successAnimNo() const {
    return mInfo->action.anim_success;
}

u16 Goods::critAnimNo() const {
    if (!successAnimNo()) {
        return 0;
    }
    return successAnimNo() + 1;
}

u32 Goods::sfxNo() const {
    return mInfo->action.sfx_no;
}

s32 Goods::hitChance() const {
    return 100 - mInfo->action.miss_chance;
}

s32 Goods::critChance() const {
    return mInfo->action.smash_chance;
}

bool Goods::redirectable() const {
    return mInfo->action.redirectable != 0;
}

u32 Goods::action_288() {
    return 0;
}

u32 Goods::action_290() {
    return 0;
}

u32 Goods::action_298() {
    return 0;
}

bool Goods::goods_2c0() {
    switch (goods_2b0()) {
    default:
        return false;
    case 0:
        return true;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
        return true;
    case 8:
    case 9:
        return false;
    }
}

u32 Goods::type() const {
    return mInfo->item_type;
}

bool Goods::isConsumable(Unit* target) const {
    return mInfo->consumable == 1;
}

bool Goods::isKeyItem() const {
    return mInfo->key_item == 1;
}

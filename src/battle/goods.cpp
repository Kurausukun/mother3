#include "battle/goods.h"
#include "battle/player.h"
#include "structs.h"

extern "C" void* get_misctext_msg(u32, u32);
extern "C" u16 get_misctext_len(u32);
extern "C" void* sub_08001BCC(u32);

Msg Goods::getName(u16 idx) {
    return Msg::genMisctextMsg(get_misctext_msg(2, idx), get_misctext_len(2));
}

Goods::Goods(u16 id, Unit* user, u16 a2) : Action(user) {
    mInfo = &gGoodsInfo[id];
    _4c = a2;
}

Goods::~Goods() {}

bool Goods::action_1a0() {
    if (action_1b8() == true) {
        playSfx();
        return true;
    }
    return Action::action_1a0();
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
        return createMsg(calcMessage(mInfo->action.msg_no));
    } else {
        return createMsg(calcMessage(mInfo->action.msg_no + 1));
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

u16 Goods::nextAnim() const {
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

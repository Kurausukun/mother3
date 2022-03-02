#include "battle/goods.h"

extern "C" u32 get_string(u32, u32);
extern "C" u16 get_misctext_block(u32);

Goods* Goods::getName(u16 idx) {
    sub_0806E238(this, get_string(2, idx), get_misctext_block(2));
    return this;
}

Goods::Goods(u16 idx, u32 unk, u16 a2) : Skill(unk) {
    mInfo = &gGoodsInfo[idx];
    _4c = a2;
}

Goods::~Goods() {}

u32 Goods::skill_1a0() {
    if (skill_1b8() == 1) {
        skill_78();
        return 1;
    }
    return sub_08078410();
}

ASM_FUNC("asm/non_matching/goods/skill_150.inc", void Goods::skill_150(Skill* s, u32 a2));

Skill* Goods::skill_1c0() {
    sub_08077D8C(this, 7);
    return this;
}

u16 Goods::id() const {
    return mInfo->item_id;
}

u32 Goods::goods_2a0() const {
    return _4c;
}

Skill* Goods::name(Skill* s) {
    getName(s->id());
    return this;
}

ASM_FUNC("asm/non_matching/goods/skill_1d8.inc", Skill* Goods::skill_1d8(Skill* s));

u32 Goods::skill_1e0() {
    return 0;
}

u32 Goods::effect() const {
    return mInfo->action.effect;
}

u32 Goods::element() const {
    return mInfo->action.element;
}

u32 Goods::target() const {
    return (u16)*(u32*)&mInfo->action.target;
}

u32 Goods::attackMult() const {
    return mInfo->action.atk_mult;
}

u32 Goods::healLo() const {
    return mInfo->action.heal_lo;
}

u32 Goods::healHi() const {
    return mInfo->action.heal_hi;
}

u32 Goods::ailment() const {
    return mInfo->action.ailment;
}

u32 Goods::ailmentChance() const {
    return mInfo->action.ailment_chance;
}

u32 Goods::hasAction() const {
    u32 action = mInfo->action.action;
    return action ? 1 : 0;
}

u32 Goods::priority() const {
    return mInfo->action.priority;
}

// weird vtable thing, same as in battle/skill.cpp
NONMATCH("asm/non_matching/goods/skill_238.inc", Skill* Goods::showUseMessage(Skill* s)) {
    Goods* o = reinterpret_cast<Goods*>(s);

    if (o->numTargets() == 1 && o->getTarget(0) == o->getUser()) {
        sub_08073444(o->calcMessage(o->mInfo->action.msg_no));
    } else {
        sub_08073444(o->calcMessage(o->mInfo->action.msg_no + 1));
    }
    return this;
}
END_NONMATCH

u16 Goods::calcMessage(u16 idx) {
    if (goods_2b8() != 4 || numTargets() <= 0)
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

Skill* Goods::showForceUseMessage(Skill* s) {
    Goods* o = reinterpret_cast<Goods*>(s);

    if (o->numTargets() == 1 && o->getTarget(0) == o->getUser()) {
        sub_08073444(o->mInfo->action.msg_no);
    } else {
        sub_08073444(o->mInfo->action.msg_no + 1);
    }
    return this;
}

u32 Goods::hasDim() const {
    u32 bank = mInfo->action.has_dim;
    return bank ? 1 : 0;
}

u32 Goods::animNo() const {
    return mInfo->action.anim_no;
}

u32 Goods::successAnimNo() const {
    return mInfo->action.anim_success;
}

u16 Goods::nextAnim() const {
    if (!nextAnim()) {
        return 0;
    }
    return nextAnim() + 1;
}

u32 Goods::sfxNo() const {
    return mInfo->action.sfx_no;
}

u32 Goods::hitChance() const {
    return 100 - mInfo->action.miss_chance;
}

u32 Goods::critChance() const {
    return mInfo->action.smash_chance;
}

bool Goods::redirectable() const {
    return mInfo->action.redirectable != 0;
}

u32 Goods::skill_288() {
    return 0;
}

u32 Goods::skill_290() {
    return 0;
}

u32 Goods::skill_298() {
    return 0;
}

bool Goods::goods_2c0() {
    switch (goods_2b8()) {
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

u32 Goods::getType() const {
    return mInfo->item_type;
}

bool Goods::isConsumable() const {
    return mInfo->consumable == 1;
}

bool Goods::isKeyItem() const {
    return mInfo->key_item == 1;
}

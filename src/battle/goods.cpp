#include "battle/goods.h"

extern "C" u32 sub_08001C5C(u32, u32);
extern "C" u16 sub_08001DB0(u32);

Goods* Goods::sub_08064980(u16 idx) {
    sub_0806E238(this, sub_08001C5C(2, idx), sub_08001DB0(2));
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

u16 Goods::getID() const {
    return mInfo->item_id;
}

u32 Goods::goods_2a0() const {
    return _4c;
}

Skill* Goods::skill_1d0(Skill* s) {
    sub_08064980(s->getID());
    return this;
}

ASM_FUNC("asm/non_matching/goods/skill_1d8.inc", Skill* Goods::skill_1d8(Skill* s));

u32 Goods::skill_1e0() {
    return 0;
}

u32 Goods::getEffect() const {
    return mInfo->action.effect;
}

u32 Goods::getElement() const {
    return mInfo->action.element;
}

u32 Goods::getTarget() const {
    return (u16)*(u32*)&mInfo->action.target;
}

u32 Goods::getAttackMult() const {
    return mInfo->action.atk_mult;
}

u32 Goods::getHealLo() const {
    return mInfo->action.heal_lo;
}

u32 Goods::getHealHi() const {
    return mInfo->action.heal_hi;
}

u32 Goods::getAilment() const {
    return mInfo->action.ailment;
}

u32 Goods::getAilmentChance() const {
    return mInfo->action.ailment_chance;
}

u32 Goods::hasAction() const {
    u32 action = mInfo->action.action;
    return action ? 1 : 0;
}

u32 Goods::getPriority() const {
    return mInfo->action.priority;
}

// weird vtable thing, same as in battle/skill.cpp
NONMATCH("asm/non_matching/goods/skill_238.inc", Skill* Goods::skill_238(Skill* s)) {
    Goods* o = reinterpret_cast<Goods*>(s);

    if (o->skill_188() == 1 && o->skill_190(0) == o->skill_168()) {
        sub_08073444(o->sub_08064D68(o->mInfo->action.text_no));
    } else {
        sub_08073444(o->sub_08064D68(o->mInfo->action.text_no + 1));
    }
    return this;
}
END_NONMATCH

u16 Goods::sub_08064D68(u16 idx) {
    if (goods_2b8() != 4 || skill_188() <= 0)
        return idx;

    if (skill_190(0)->unit_2a0(7) != 1)
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

Skill* Goods::skill_240(Skill* s) {
    Goods* o = reinterpret_cast<Goods*>(s);

    if (o->skill_188() == 1 && o->skill_190(0) == o->skill_168()) {
        sub_08073444(o->mInfo->action.unk2);
    } else {
        sub_08073444(o->mInfo->action.unk2 + 1);
    }
    return this;
}

u32 Goods::getTextBank() const {
    u32 bank = mInfo->action.text_bank;
    return bank ? 1 : 0;
}

u32 Goods::getTextNo() const {
    return mInfo->action.text_no;
}

u32 Goods::getAnimBank() const {
    return mInfo->action.anim_bank;
}

u16 Goods::getNextAnim() const {
    if (!getNextAnim()) {
        return 0;
    }
    return getNextAnim() + 1;
}

u32 Goods::getAnimNo() const {
    return mInfo->action.anim_no;
}

u32 Goods::getSfxBank() const {
    return 100 - mInfo->action.sfx_bank;
}

u32 Goods::getSfxNo() const {
    return mInfo->action.sfx_no;
}

bool Goods::canMiss() const {
    return mInfo->action.miss_chance != 0;
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

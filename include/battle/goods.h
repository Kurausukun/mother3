#ifndef BATTLE_GOODS_H
#define BATTLE_GOODS_H

#include "battle/skill.h"

struct GoodsInfo;

class Goods : public Skill {
public:
    Goods();
    Goods(u16 idx, u32 unk, u16 a2);
    virtual ~Goods();

    virtual void skill_150(Skill*, u32);
    virtual Skill* skill_1c0();
    virtual u32 skill_1a0();
    virtual u16 id() const;
    virtual Skill* skill_1d0(Skill*);
    virtual Skill* skill_1d8(Skill*);
    virtual u32 skill_1e0();
    virtual u32 effect() const;
    virtual u32 element() const;
    virtual u32 target() const;
    virtual u32 attackMult() const;
    virtual u32 healLo() const;
    virtual u32 healHi() const;
    virtual u32 ailment() const;
    virtual u32 ailmentChance() const;
    virtual u32 hasAction() const;
    virtual u32 priority() const;
    virtual Skill* skill_238(Skill* s);
    virtual Skill* skill_240(Skill* s);
    virtual u32 hasDim() const;
    virtual u32 animNo() const;
    virtual u32 successAnimNo() const;
    virtual u16 nextAnim() const;
    virtual u32 sfxNo() const;
    virtual u32 missChance() const;
    virtual u32 critChance() const;
    virtual bool redirectable() const;
    virtual u32 skill_288();
    virtual u32 skill_290();
    virtual u32 skill_298();

    virtual u32 goods_2a0() const;
    virtual u16 goods_2a8();
    virtual u32 goods_2b0();
    virtual u32 goods_2b8();
    virtual bool goods_2c0();
    virtual u32 getType() const;
    virtual bool isConsumable() const;
    virtual bool isKeyItem() const;

    u32 sub_08078410();
    void nullsub_28();
    Goods* sub_080729B0();
    Goods* sub_08064980(u16);
    u16 sub_08064D68(u16 idx);
    void sub_08073444(u16 idx);

    u32 _20;
    u32 _24;
    u32 _28;
    u32 _2c;
    u32 _30;
    u32 _34;
    u32 _38;
    u32 _3c;
    u32 _40;
    u32 _44;
    GoodsInfo* mInfo;
    u16 _4c;
};

struct GoodsInfo {
    u8 item_id;
    u32 item_type;
    u8 key_item;
    u16 sell_price;
    u32 equip_flags;
    s32 hp_mod;
    s32 pp_mod;
    s8 off_mod;
    s8 def_mod;
    s8 iq_mod;
    s8 spd_mod;
    s32 kindness_mod;
    s16 ailment_resist[11];
    s8 element_resist[5];
    u8 attack_type[5];
    MoveInfo action;
    u8 _68;
    u8 _69;
    u8 consumable;
};
extern GoodsInfo gGoodsInfo[];

#endif // BATTLE_GOODS_H

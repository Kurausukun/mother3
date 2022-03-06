#ifndef BATTLE_GOODS_H
#define BATTLE_GOODS_H

#include "battle/action.h"

struct Player;

struct GoodsInfo;

class Goods : public Action{
public:
    Goods();
    Goods(u16 id, Unit* user, u16 a2);
    virtual ~Goods();

    virtual void action_150();
    virtual Action* action_1c0();
    virtual u32 action_1a0();
    virtual u16 id() const;
    virtual Msg name() const;
    virtual Msg action_1d8() const;
    virtual u32 action_1e0();
    virtual u32 effect() const;
    virtual u32 element() const;
    virtual u32 target() const;
    virtual u32 attackMult() const;
    virtual u32 healLo() const;
    virtual u32 healHi() const;
    virtual u16 ailment() const;
    virtual u32 ailmentChance() const;
    virtual u8 hasAction() const;
    virtual u32 priority() const;
    virtual Msg getUseMessage() const;
    virtual Msg getForceUseMessage() const;
    virtual u8 hasDim() const;
    virtual u16 animNo() const;
    virtual u16 successAnimNo() const;
    virtual u16 nextAnim() const;
    virtual u32 sfxNo() const;
    virtual s32 hitChance() const;
    virtual s32 critChance() const;
    virtual bool redirectable() const;
    virtual u32 action_288();
    virtual u32 action_290();
    virtual u32 action_298();

    virtual u16 goods_2a0() const;
    virtual u16 goods_2a8();
    virtual u32 goods_2b0() const;
    virtual bool goods_2b8() const;
    virtual bool goods_2c0();
    virtual u32 getType() const;
    virtual bool isConsumable() const;
    virtual bool isKeyItem() const;

    u32 sub_08078410();
    static Player* tryCastPlayer(Unit*);
    static Msg getName(u16);
    u16 calcMessage(u16 idx) const;
    static Msg sub_08073444(u16 idx);

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

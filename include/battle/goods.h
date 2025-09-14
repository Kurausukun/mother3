#ifndef BATTLE_GOODS_H
#define BATTLE_GOODS_H

#include "battle/action.h"

struct Player;

struct GoodsInfo;

class Goods : public Action {
public:
    Goods();
    Goods(u16 id, Unit* user, u16 a2);
    virtual ~Goods() override;

    void action_150() override;
    Action* action_1c0() override;
    bool fire() override;
    u16 id() const override;
    Msg name() const override;
    Msg action_1d8() const override;
    u32 action_1e0() override;
    u32 effect() const override;
    u32 element() const override;
    u32 target() const override;
    u32 attackMult() const override;
    s32 healLo() const override;
    s32 healHi() const override;
    u16 ailment() const override;
    u32 ailmentChance() const override;
    u8 hasAction() const override;
    u32 priority() const override;
    Msg getUseMessage() const override;
    Msg getForceUseMessage() const override;
    bool hasDim() const override;
    u16 animNo() const override;
    u16 successAnimNo() const override;
    u16 critAnimNo() const override;
    u32 sfxNo() const override;
    s32 hitChance() const override;
    s32 critChance() const override;
    bool redirectable() const override;
    u32 action_288() override;
    u32 action_290() override;
    u32 action_298() override;

    virtual u16 goods_2a0() const;
    // FAKE
    virtual u16 goods_2a8();
    virtual u32 goods_2b0() const;
    virtual bool goods_2b8() const;

    virtual bool goods_2c0();
    virtual u32 type() const;
    virtual bool isConsumable(Unit* target) const;
    virtual bool isKeyItem() const;

    u32 sub_08078410();
    static Player* tryCastPlayer(Unit*);
    static Msg getName(u16);
    u16 calcMessage(u16 idx) const;

    GoodsInfo* mInfo;
    u16 _4c;
};

Msg sub_08073444(u16 idx);

extern "C" void* getGoodsRTTI();

RTTI(Goods);

#endif  // BATTLE_GOODS_H

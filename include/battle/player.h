#ifndef BATTLE_PLAYER_H
#define BATTLE_PLAYER_H

#include "battle/unit.h"

class Player : public Unit {
public:
    Player();
    virtual ~Player();

    virtual void player_2c0();
    virtual void player_2c8();
    virtual void player_2d0();
    virtual void player_2d8();
    virtual void player_2e0();
    virtual void player_2e8();
    virtual void player_2f0();
    virtual void player_2f8();
    virtual void player_300();
    virtual void player_308();
    virtual void player_310();
    virtual void player_318();
    virtual void player_320();
    virtual void player_328();
    virtual void player_330();
    virtual void player_338();
    virtual void player_340();
    virtual void player_348();
    virtual void player_350();
    virtual void player_358();
    virtual void player_360();
    virtual void player_368();
    virtual void player_370();
    virtual void player_378();
    virtual void player_380();
    virtual void player_388();
    virtual void player_390();
    virtual void player_398();
    virtual void player_3a0();
    virtual void player_3a8();
    virtual void player_3b0();
    virtual void player_3b8();
    virtual void player_3c0();
    virtual void player_3c8();
    virtual void player_3d0();
    virtual void player_3d8();
    virtual void player_3e0();
    virtual void player_3e8();
    virtual void player_3f0();
    virtual void player_3f8();
    virtual void player_400();
    virtual void player_408(u32);
    virtual u8 player_410(u32);
};

#endif // BATTLE_PLAYER_H
#ifndef BATTLE_PLAYER_SKILL_IMPL_H
#define BATTLE_PLAYER_SKILL_IMPL_H

#include "battle/monster.h"
#include "battle/playerskill.h"
#include "battle/sndmon.h"

class Bash : public PlayerSkill {
public:
    Bash(u16 id, Unit* user);
    virtual ~Bash();

    virtual void sub_0809ED04__4Bash();
    virtual bool sub_0809EC44__4Bash();
    virtual bool sub_0809EC04__4Bash();
    virtual bool sub_0809EBBC__4Bash(Unit*);
    virtual bool sub_0809EBA8__4Bash(Monster*);
    virtual void sub_0809EB94__4Bash(Monster*);
    virtual void sub_0809EAF0__4Bash();
    virtual void sub_0809EAA4__4Bash();
    virtual void sub_0809E954__4Bash();
    virtual void sub_0809E910__4Bash();
    virtual void sub_0809E8F0__4Bash();

    virtual u8 calcDidHit(Unit* target);
    virtual bool isResisted(Unit* target);
    virtual void onAttack(Unit* target);
    virtual s32 hitChance() const;

    u32 _4C;  // unconfirmed filler
    u32 _50;
    u32 _54;
    u32 _58;
    UnnamedSndMon* _BashTargetMonster;
};

#endif  // BATTLE_PLAYER_SKILL_IMPL_H

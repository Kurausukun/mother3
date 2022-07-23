#include "battle.h"
#include "battle/monster.h"
#include "battle/player.h"
#include "battle/sndSystem.h"
#include "battle/unit.h"
#include "structs.h"

s32 sub_08072DFC();
void sub_08072B70();
void sub_08072D0C();
void sub_08073018(bool, bool);
Player* sub_08072E18(s32);
void sub_0807459C(u16, s32, s32, s32);
extern "C" void sub_08074394(s32, s32, s32, bool, bool, bool);
extern "C" s32 getPartyCount();
extern "C" Player* GetPlayer(s32);
extern "C" s32 sub_08072C60();
extern "C" Unit* sub_08072C7C(s32);
extern "C" Player* GetPlayer(s32);
extern "C" u8 sub_08072648(s32);
void sub_0807459C(u16, s32, s32, s32);
void sub_08074414(s32, s32, s32, bool, bool, bool);

extern MonsterData gMonsterData[];

struct Encounter {
    u8 _0;
    u8 _1[3];
    u8 _4;
    u8 monster_count;
    u8 _6[4];
    u16 _a;
    s16 _c;
    u8 filler[0x2e];
    u8 result;
};
extern Encounter gEncounter;

void Battle::sub_0805DC1C() {
    switch (mBattleResult) {
    case 2:
        gEncounter.result = 1;
        break;
    case 4:
        gEncounter.result = 3;
        break;
    case 5:
        gEncounter.result = 1;
        break;
    case 3:
    default:
        gEncounter.result = 2;
        break;
    }
}

ASM_FUNC("asm/non_matching/battle/sub_0805DC6C.inc", void Battle::sub_0805DC6C());

void Battle::sub_0805DDE4() {
    setBattleResult(5, false);
}

void Battle::battle_68() {
    battle_70();
    battle_78();
}

void Battle::battle_70() {}

void Battle::battle_78() {
    sub_08072B70();
    sub_08072D0C();
    sub_08073018(0, 0);

    _48->bgclass_68(gMonsterData[sub_08072E18(0)->id()].battle_bg);

    sub_0807459C(battle_1e8(), 0, 0, 0);
}

void Battle::battle_80() {
    battle_88();
    battle_90();
}

void Battle::battle_88() {
    sub_08074394(0, 0x100, 0x20, 1, 1, 0);
}

void Battle::battle_90() {
    Msg m;

    if (sub_08072DFC() < 2) {
        m.replace(ROMStrFmt(0xb2, sub_08072E18(0)->name(), Msg(), Msg()));
    } else {
        m.replace(ROMStrFmt(0xb3, sub_08072E18(0)->name(), Msg(), Msg()));
    }

    switch (_38) {
    case 0:
        m.sub_0806E374(sub_08072E18(0)->player_330());
        break;
    case 1:
        m.sub_0806E374(ROMStrFmt(0xb4, Msg(), Msg(), Msg()));
        break;
    case 2:
        m.sub_0806E374(ROMStrFmt(0xb5, Msg(), Msg(), Msg()));
        break;
    }

    m.print(Color::Black(), true);
}

bool Battle::battle_98() {
    if (battle_a0() != 1 || battle_a8() != 1) {
        return 0;
    }

    battle_b0();
    for (int i = 0; i < battle_230()->class2_80(); i++) {
        if (battle_b8(battle_230()->class2_88(i)) != 1)
            return 0;
    }
    return battle_c0();
}

u8 Battle::battle_a0() {
    emit(RoundBegin(mRoundNo));

    if (mRoundNo < 1) {
        if (battle_1a0() == 1) {
            for (int i = 0; i < getPartyCount(); i++) {
                GetPlayer(i)->unit_268(0x33);
            }
            for (int i = 0; i < sub_08072C60(); i++) {
                sub_08072C7C(i)->unit_268(0x33);
            }
        }
    }

    if (battle_c8(1) == 1) {
        return 0;
    } else {
        return 1;
    }
}

u8 Battle::battle_a8() {
    if (sub_08072A88() <= 0) {
        return false;
    }

    for (Player* i = sub_08072AA4(0); i != 0;) {
        Player* j = NULL;
        switch (i->player_318()) {
        case 0:
        case 2:
            j = getNextPlayer(i);
            break;
        case 1:
            j = tryKillPlayer(i);
            if (j == NULL) {
                j = i;
            }
            break;
        }

        i = j;
        if (battle_c8(0) == 1)
            return false;
    }
    return true;
}

Player* Battle::getNextPlayer(Unit* u) {
    for (int i = 0; i < getPartyCount(); i++) {
        if (GetPlayer(i) == u) {
            for (int j = i + 1; j < getPartyCount(); j++) {
                if (GetPlayer(j)->isAlive() == true) {
                    return GetPlayer(j);
                }
            }
            break;
        }
    }
    return NULL;
}

Player* Battle::tryKillPlayer(Unit* u) {
    for (int i = getPartyCount() - 1; i >= 0; i--) {
        if (GetPlayer(i) == u) {
            for (int j = i - 1; j >= 0; j--) {
                if (GetPlayer(j)->isAlive() == true && GetPlayer(j)->player_310() == true) {
                    GetPlayer(j)->onNoStatus();
                    return GetPlayer(j);
                }
            }
            break;
        }
    }
    return NULL;
}

void Battle::battle_b0() {
    battle_230()->class2_68();
}

bool Battle::battle_b8(Unit* u) {
    if (u != NULL) {
        emit(UnitTurnBegin(u));
        u->onTurn();
        emit(UnitTurnEnd(u));
    }
    if (battle_c8(1) == true) {
        return false;
    } else {
        setsleep(10);
        return true;
    }
}

bool Battle::battle_c0() {
    emit(RoundEnd(mRoundNo));
    mRoundNo++;

    if (battle_c8(1) == true) {
        return false;
    } else {
        return true;
    }
}

ASM_FUNC("asm/non_matching/battle/sub_0805E59C.inc", u8 Battle::battle_c8(u8));

bool Battle::battle_d0() {
    return true;
}

bool Battle::battle_d8() {
    return true;
}

bool Battle::battle_e0() {
    return true;
}

bool Battle::setBattleResult(s32 a1, bool force) {
    if (mBattleResult != a1 || force == true) {
        mBattleResult = a1;
        return true;
    } else {
        return false;
    }
}

void Battle::battle_e8() {
    switch (mBattleResult) {
    case 2:
        onWin();
        break;
    case 3:
        onEscape();
        break;
    case 4:
        onLose();
        break;
    case 5:
        battle_108();
        break;
    }
    battle_110();
}

ASM_FUNC("asm/non_matching/battle/sub_0805E700.inc", void Battle::onWin());

ASM_FUNC("asm/non_matching/battle/sub_0805E808.inc", void Battle::sub_0805E808());

void Battle::onEscape() {
    emit(ShowDownAsEscape());
    sub_0807459C(0, 0x20, 0, 0);
}

void Battle::onLose() {
    emit(ShowDownAsLose());

    sub_0807459C(battle_1f8(), 0x20, 0x20, 0);
    // The battle was lost...
    ROMStrFmt(0x78, Msg(), Msg(), Msg()).print(Color(0, 0, 0), true);
    sub_0805E9BC();
}

bool Battle::sub_0805E9BC() {
    if (sub_08072648(0x17) != true) {
        sub_0806FDB0()->sndsystem_80(0);
        return true;
    } else {
        return false;
    }
}

void Battle::battle_108() {
    emit(ShowDownAsWin());
    sub_0807459C(0, 0x20, 0, 0);
}

void Battle::battle_110() {
    sub_08074414(0, 0x100, 0x20, true, true, false);
}

void Battle::battle_118() {
    battle_120();
}

void Battle::battle_120() {}

u16 Battle::battle_138() {
    return _24;
}

s32 Battle::battle_140() {
    return _28;
}

s32 Battle::battle_148() {
    return _2c;
}

s32 Battle::battle_150() {
    return _30;
}

s32 Battle::battle_158() {
    return _34;
}

bool Battle::battle_160() {
    return gEncounter._0 == 0;
}

Struct160* Battle::battle_168() {
    return &gUnknown_080C7D28[gEncounter._c];
}

bool Battle::isFightBoss() {
    return gEncounter._0 == 1;
}

BattleGroup* Battle::battle_178() {
    return &gBattleGroupTable[gEncounter._a];
}

bool Battle::battle_180() {
    return gEncounter._0 == 2;
}

Struct160* Battle::battle_188() {
    return &gUnknown_080C7D28[gEncounter._c];
}

bool Battle::battle_190() {
    return _38 == 0;
}

bool Battle::battle_198() {
    return _38 == 1;
}

bool Battle::battle_1a0() {
    return _38 == 2;
}

bool Battle::battle_1a8() {
    if (battle_160() == true) {
        return gEncounter._4 == false;
    } else if (isFightBoss() == true) {
        return gEncounter._4 == false || battle_178()->_8 == true;
    } else if (battle_180() == true) {
        return true;
    }
    return true;
}

bool Battle::isBattleWon() {
    return mBattleResult == 1;
}

s32 Battle::roundNo() {
    return mRoundNo;
}

bool Battle::battle_1c0() {
    return mBattleResult == 5 || mBattleResult == 4 || mBattleResult == 3 || mBattleResult == 2;
}

bool Battle::battle_1c8() {
    return mBattleResult == 2;
}

bool Battle::battle_1d0() {
    return mBattleResult == 3;
}

bool Battle::isBattleLost() {
    return mBattleResult == 4;
}

bool Battle::battle_1e0() {
    return mBattleResult == 5;
}

u16 Battle::battle_1e8() {
    if (battle_160() == true) {
        return battle_168()->_e;
    } else if (isFightBoss() == true) {
        return battle_178()->_c;
    } else if (battle_180() == true) {
        return battle_188()->_e;
    }
    return false;
}

u16 Battle::battle_1f0() {
    if (battle_160() == true) {
        return battle_168()->_10;
    } else if (isFightBoss() == true) {
        return battle_178()->_e;
    } else if (battle_180() == true) {
        return battle_188()->_10;
    }
    return false;
}

u16 Battle::battle_1f8() {
    return 3;
}

u8* Battle::battle_200() {
    return gSave._80e;
}

s32 Battle::battle_208() {
    return _44;
}

BgClass* Battle::battle_210() {
    return _48;
}

PartyInfo* Battle::partyInfo() {
    return mPartyInfo;
}

GuestInfo* Battle::guestInfo() {
    return mGuestInfo;
}

MonsterInfo* Battle::monsterInfo() {
    return mMonsterInfo;
}

Class2* Battle::battle_230() {
    return _58;
}

Sequencer* Battle::battle_238() {
    return _5c;
}

extern "C" void nullsub_95() {}

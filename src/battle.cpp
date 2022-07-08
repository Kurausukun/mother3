#include "battle.h"
#include "battle/monster.h"
#include "battle/player.h"
#include "battle/unit.h"
#include "battle/sndSystem.h"
#include "structs.h"

s32 sub_08072DFC();
void sub_08072B70();
void sub_08072D0C();
void sub_08073018(bool, bool);
Player* sub_08072E18(s32);
void sub_0807459C(u16, s32, s32, s32);
extern "C" void sub_08074394(s32, s32, s32, bool, bool, bool);
extern "C" s32 getPartyCount();
extern "C" Player* getPlayer(s32);
extern "C" s32 sub_08072C60();
extern "C" Unit* sub_08072C7C(s32);
extern "C" Player* getPlayer(s32);
extern "C" u8 sub_08072648(s32);
s32 sub_08072A88();
Player* sub_08072AA4(s32);
void sub_0807459C(u16, s32, s32, s32);
void sub_08074414(s32, s32, s32, bool, bool, bool);

extern MonsterData gMonsterData[];

struct Encounter {
    u8 _0;
    u8 _1[3];
    u8 _4;
    u8 _5[5];
    u16 _a;
    s16 _c;
    u8 filler[0x2e];
    u8 result;
};
extern Encounter gEncounter;

void Battle::sub_0805DC1C() {
    switch (_40) {
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
    sub_0805E670(5, 0);
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
        m.sub_0806E2E8(sub_08073460(0xb2, sub_08072E18(0)->name(), Msg(), Msg()));
    } else {
        m.sub_0806E2E8(sub_08073460(0xb3, sub_08072E18(0)->name(), Msg(), Msg()));
    }

    switch (_38) {
    case 0:
        m.sub_0806E374(sub_08072E18(0)->player_330());
        break;
    case 1:
        m.sub_0806E374(sub_08073460(0xb4, Msg(), Msg(), Msg()));
        break;
    case 2:
        m.sub_0806E374(sub_08073460(0xb5, Msg(), Msg(), Msg()));
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
                getPlayer(i)->unit_268(0x33);
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
            j = sub_0805E338(i);
            break;
        case 1:
            j = sub_0805E390(i);
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

Player* Battle::sub_0805E338(Unit* u) {
    for (int i = 0; i < getPartyCount(); i++) {
        if (getPlayer(i) == u) {
            for (int j = i + 1; j < getPartyCount(); j++) {
                if (getPlayer(j)->isAlive() == true) {
                    return getPlayer(j);
                }
            }
            break;
        }
    }
    return NULL;
}

Player* Battle::sub_0805E390(Unit* u) {
    for (int i = getPartyCount() - 1; i >= 0; i--) {
        if (getPlayer(i) == u) {
            for (int j = i - 1; j >= 0; j--) {
                if (getPlayer(j)->isAlive() == true && getPlayer(j)->player_310() == true) {
                    getPlayer(j)->unit_108();
                    return getPlayer(j);
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
    if (u != 0) {
        emit(UnitTurnBegin(u));
        u->unit_d0();
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

bool Battle::sub_0805E670(s32 a1, bool a2) {
    if (_40 != a1 || a2 == true) {
        _40 = a1;
        return true;
    } else {
        return false;
    }
}

void Battle::battle_e8() {
    switch (_40) {
    case 2:
        battle_f0();
        break;
    case 3:
        battle_f8();
        break;
    case 4:
        battle_100();
        break;
    case 5:
        battle_108();
        break;
    }
    battle_110();
}

ASM_FUNC("asm/non_matching/battle/sub_0805E700.inc", void Battle::battle_f0());

ASM_FUNC("asm/non_matching/battle/sub_0805E808.inc", void Battle::sub_0805E808());

void Battle::battle_f8() {
    emit(ShowDownAsEscape());
    sub_0807459C(0, 0x20, 0, 0);
}

void Battle::battle_100() {
    emit(ShowDownAsLose());

    sub_0807459C(battle_1f8(), 0x20, 0x20, 0);
    sub_08073460(0x78, Msg(), Msg(), Msg()).print(Color(0, 0, 0), true);
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

bool Battle::battle_170() {
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
    } else if (battle_170() == true) {
        return gEncounter._4 == false || battle_178()->_8 == true;
    } else if (battle_180() == true) {
        return true;
    }
    return true;
}

bool Battle::battle_1b0() {
    return _40 == true;
}

s32 Battle::roundNo() {
    return mRoundNo;
}

bool Battle::battle_1c0() {
    return _40 == 5 || _40 == 4 || _40 == 3 || _40 == 2;
}

bool Battle::battle_1c8() {
    return _40 == 2;
}

bool Battle::battle_1d0() {
    return _40 == 3;
}

bool Battle::battle_1d8() {
    return _40 == 4;
}

bool Battle::battle_1e0() {
    return _40 == 5;
}

u16 Battle::battle_1e8() {
    if (battle_160() == true) {
        return battle_168()->_e;
    } else if (battle_170() == true) {
        return battle_178()->_c;
    } else if (battle_180() == true) {
        return battle_188()->_e;
    }
    return false;
}

u16 Battle::battle_1f0() {
    if (battle_160() == true) {
        return battle_168()->_10;
    } else if (battle_170() == true) {
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

PartyInfo* Battle::battle_218() {
    return _4c;
}

GuestInfo* Battle::battle_220() {
    return _50;
}

MonsterInfo* Battle::battle_228() {
    return _54;
}

Class2* Battle::battle_230() {
    return _58;
}

Sequencer* Battle::battle_238() {
    return _5c;
}

extern "C" void nullsub_95() {}

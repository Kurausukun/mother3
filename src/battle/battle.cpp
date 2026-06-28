#include "battle.h"
#include "battle/fader.h"
#include "battle/goods.h"
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
extern "C" bool sub_080725E8();
extern "C" Struct160* sub_08072608();
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
    ROMStrFmt(0x78, Msg(), Msg(), Msg()).print(Color::Black(), true);
    sub_0805E9BC();
}

bool Battle::sub_0805E9BC() {
    if (sub_08072648(0x17) != true) {
        SndSystemManager::get()->setUnk22(0);
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

BattleFader* Battle::battle_140() {
    return _28;
}

BattleFader* Battle::battle_148() {
    return _2c;
}

BattleFader* Battle::battle_150() {
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

Combo* Battle::battle_208() {
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

extern "C" ASM_FUNC("asm/non_matching/battle/sub_0805EDD8.inc", void sub_0805EDD8());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EE80.inc", void sub_0805EE80());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EEA0.inc", void sub_0805EEA0());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EEA4.inc", void sub_0805EEA4());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EEC0.inc", void sub_0805EEC0());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EED8.inc", void sub_0805EED8());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EEDC.inc", void sub_0805EEDC());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EEF8.inc", void sub_0805EEF8());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EF10.inc", void sub_0805EF10());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EF14.inc", void sub_0805EF14());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EF34.inc", void sub_0805EF34());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EF50.inc", void sub_0805EF50());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EF54.inc", void sub_0805EF54());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EF74.inc", void sub_0805EF74());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EF90.inc", void sub_0805EF90());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EFEC.inc", void sub_0805EFEC());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805EFFC.inc", void sub_0805EFFC());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F018.inc", void sub_0805F018());
extern "C" ASM_FUNC("asm/non_matching/guest/nullsub_26.inc", void nullsub_26());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F0C8.inc", void sub_0805F0C8());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F0FC.inc", void sub_0805F0FC());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F134.inc", void sub_0805F134());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F138.inc", void sub_0805F138());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F140.inc", void sub_0805F140());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F1C0.inc", void sub_0805F1C0());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F448.inc", void sub_0805F448());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F478.inc", void sub_0805F478());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F624.inc", void sub_0805F624());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F6B0.inc", void sub_0805F6B0());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F788.inc", void sub_0805F788());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F83C.inc", void sub_0805F83C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F840.inc", void sub_0805F840());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F860.inc", void sub_0805F860());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F8E8.inc", void sub_0805F8E8());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F95C.inc", void sub_0805F95C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805F98C.inc", void sub_0805F98C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805FA48.inc", void sub_0805FA48());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805FA8C.inc", void sub_0805FA8C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805FB30.inc", void sub_0805FB30());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805FBA8.inc", void sub_0805FBA8());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805FC18.inc", void sub_0805FC18());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805FC88.inc", void sub_0805FC88());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805FCF8.inc", void sub_0805FCF8());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_0805FE30.inc", void sub_0805FE30());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060038.inc", void sub_08060038());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060340.inc", void sub_08060340());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_080604CC.inc", void sub_080604CC());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060664.inc", void sub_08060664());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_080608BC.inc", void sub_080608BC());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060A48.inc", void sub_08060A48());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060AE8.inc", void sub_08060AE8());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060AEC.inc", void sub_08060AEC());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060AF8.inc", void sub_08060AF8());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060AFC.inc", void sub_08060AFC());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060B08.inc", void sub_08060B08());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060B0C.inc", void sub_08060B0C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060B14.inc", void sub_08060B14());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060B20.inc", void sub_08060B20());
extern "C" ASM_FUNC("asm/non_matching/guest/tellExperience.inc", void tellExperience());

extern "C" bool metalMonkeyCheck(Unit* t) {
    if (sub_080725E8() == true && (sub_08072608()->_0[0] == Monster::MetalMonkey)) {
        ROMStrFmt(0x87, Msg(), Msg(), Msg()).print(Color::Black(), true);
        return true;
    }
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060D78.inc", void sub_08060D78());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060DA0.inc", void sub_08060DA0());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060DC0.inc", void sub_08060DC0());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060DE0.inc", void sub_08060DE0());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060E0C.inc", void sub_08060E0C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060E1C.inc", void sub_08060E1C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060E34.inc", void sub_08060E34());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060E38.inc", void sub_08060E38());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060E70.inc", void sub_08060E70());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060E80.inc", void sub_08060E80());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060E8C.inc", void sub_08060E8C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060EAC.inc", void sub_08060EAC());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060EB0.inc", void sub_08060EB0());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060ED4.inc", void sub_08060ED4());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060F7C.inc", void sub_08060F7C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060F80.inc", void sub_08060F80());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08060FF4.inc", void sub_08060FF4());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061004.inc", void sub_08061004());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061024.inc", void sub_08061024());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061048.inc", void sub_08061048());
extern "C" ASM_FUNC("asm/non_matching/guest/tellPresent.inc", void tellPresent());
extern "C" ASM_FUNC("asm/non_matching/guest/druggedPresentCheck.inc", void druggedPresentCheck());

extern "C" Player* reqInventorySlot() {
    for (int i = 0; i < getPartyCount(); i++) {
        Player* player = GetPlayer(i);
        if (player->player_414() < 16) {
            return player;
        }
    }

    return NULL;
}

extern "C" ASM_FUNC("asm/non_matching/guest/tellPlayerInventoryFull.inc", void tellPlayerInventoryFull());
extern "C" ASM_FUNC("asm/non_matching/guest/throwAwayItem.inc", void throwAwayItem());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061678.inc", void sub_08061678());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_080616C4.inc", void sub_080616C4());
extern "C" ASM_FUNC("asm/non_matching/guest/checkGiveUpItem.inc", void checkGiveUpItem());
extern "C" ASM_FUNC("asm/non_matching/guest/tellGaveUpItem.inc", void tellGaveUpItem());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061954.inc", void sub_08061954());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061974.inc", void sub_08061974());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061A3C.inc", void sub_08061A3C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061A4C.inc", void sub_08061A4C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061A68.inc", void sub_08061A68());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061AE8.inc", void sub_08061AE8());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061B30.inc", void sub_08061B30());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061B94.inc", void sub_08061B94());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061C0C.inc", void sub_08061C0C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061C1C.inc", void sub_08061C1C());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061CC8.inc", void sub_08061CC8());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061DE4.inc", void sub_08061DE4());
extern "C" ASM_FUNC("asm/non_matching/guest/sub_08061DE8.inc", void sub_08061DE8());

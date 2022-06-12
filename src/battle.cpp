#include "battle.h"
#include "battle/monster.h"
#include "battle/unit.h"

s32 sub_08072DFC();
void sub_08072B70();
void sub_08072D0C();
void sub_08073018(s32, s32);
Monster* sub_08072E18(s32);
void sub_0807459C(u16, s32, s32, s32);
extern "C" void sub_08074394(s32, s32, s32, bool, bool, bool);
extern "C" s32 getPartyCount();
extern "C" Monster* sub_080729F8(s32);
extern "C" s32 sub_08072C60();
extern "C" Unit* sub_08072C7C(s32);
extern "C" Monster* sub_080729F8(s32);
s32 sub_08072A88();
Monster* sub_08072AA4(s32);

extern MonsterData gMonsterData[];

struct Encounter {
    u8 filler[0x3c];
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
        m.sub_0806E2E8(Msg::sub_08073460(0xb2, sub_08072E18(0)->name(), Msg(), Msg()));
    } else {
        m.sub_0806E2E8(Msg::sub_08073460(0xb3, sub_08072E18(0)->name(), Msg(), Msg()));
    }

    switch (_38) {
    case 0:
        m.sub_0806E374(sub_08072E18(0)->monster_330());
        break;
    case 1:
        m.sub_0806E374(Msg::sub_08073460(0xb4, Msg(), Msg(), Msg()));
        break;
    case 2:
        m.sub_0806E374(Msg::sub_08073460(0xb5, Msg(), Msg(), Msg()));
        break;
    }

    m.print(PrintSettings(0, 0, 0), true);
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
    base_54(RoundBegin(mRoundNo));

    if (mRoundNo < 1) {
        if (battle_1a0() == 1) {
            for (int i = 0; i < getPartyCount(); i++) {
                sub_080729F8(i)->unit_268(0x33);
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

    for (Monster* i = sub_08072AA4(0); i != 0;) {
        Monster* j = NULL;
        switch (i->monster_318()) {
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

Monster* Battle::sub_0805E338(Unit* u) {
    for (int i = 0; i < getPartyCount(); i++) {
        if (sub_080729F8(i) == u) {
            for (int j = i + 1; j < getPartyCount(); j++) {
                if (sub_080729F8(j)->isAlive() == true) {
                    return sub_080729F8(j);
                }
            }
            break;
        }
    }
    return NULL;
}

Monster* Battle::sub_0805E390(Unit* u) {
    for (int i = getPartyCount() - 1; i >= 0; i--) {
        if (sub_080729F8(i) == u) {
            for (int j = i - 1; j >= 0; j--) {
                if (sub_080729F8(j)->isAlive() == true && sub_080729F8(j)->monster_310() == true) {
                    sub_080729F8(j)->unit_108();
                    return sub_080729F8(j);
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
        base_54(UnitTurnBegin(u));
        u->unit_d0();
        base_54(UnitTurnEnd(u));
    }
    if (battle_c8(1) == true) {
        return false;
    } else {
        setsleep(10);
        return true;
    }
}

bool Battle::battle_c0() {
    base_54(RoundEnd(mRoundNo));
    mRoundNo++;

    if (battle_c8(1) == true) {
        return false;
    } else {
        return true;
    }
}

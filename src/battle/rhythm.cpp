// Auto-generated source file
#include "battle/rhythm.h"
#include "battle.h"
#include "battle/clock.h"
#include "battle/fader.h"
#include "battle/goods.h"
#include "battle/irc.h"
#include "battle/keyFocusManager.h"
#include "battle/monster.h"
#include "battle/monsterSkill.h"
#include "battle/unitTarget.h"
#include "global.h"

extern Intr2 callback_sub_0807489C;
extern ClockData callback_sub_080748C8;
extern u32 gBgmHypnosisMappings;

extern "C" s32 sub_08069558(s32 min, s32 max, s32 step, s32 duration);
extern "C" BattleFader* sub_08072568();
extern "C" BattleFader* sub_08072588();
extern "C" BattleFader* sub_080725A8();
extern "C" vt_09F80770* sub_080725C8();
extern "C" Action* create__19MonsterSkillFactoryUsP4Unit(u16 arg0, Unit* user);
extern "C" Action* create__18PlayerSkillFactoryUsP4Unit(u16 arg0,
                                                        Unit* user);    // TODO: confirm return type
extern "C" Action* create__10PsiFactoryUsP4Unit(u16 arg0, Unit* user);  // TODO: confirm return type
extern "C" Action* create__12GoodsFactoryUsP4UnitUs(u16 arg0, Unit* arg1,
                                                    u16 arg2);  // TODO: confirm return type
extern "C" Action* create__17GuestSkillFactoryUsP4Unit(u16 arg0,
                                                       Unit* user);  // TODO: confirm return type
extern "C" s32 Remainder(s32, s32);
extern "C" bool IsPlayer(Unit*);
extern "C" void sub_08085FB0(RhythmCombo*, s32, Object38_s16r2_t*);
extern "C" s32 sub_0807066C(s32, s32);
bool statusWearOff(Unit* unit, Status::Type type, bool print);

extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_080736F8.inc", void sub_080736F8());
extern "C" s32 hitPlayer(Unit* target, s32 damage, bool print) {
    static const s32 SLEEP_WEAR_OFF_CHANCE = 0x27;
    if (target->hasStatus(Status::Endure) == true) {
        damage = 0;
    }
    s32 prevHP = target->hpReal();
    target->setHP(target->hpReal() - damage);
    target->unit_170(target->unit_200() + damage);

    if (print == 1) {
        new RhythmCombo(damage, &target->object_38());

        if (IsPlayer(target) == true) {
            if (target->hpReal() <= 0) {
                PlayAnimation(0x4D, target, target);
                ROMStrFmt(0x7B, target->name(), Msg(), Msg()).print(Color(), 1);
            }
        }
    }

    if ((s32)(prevHP - target->hpReal()) > 0) {
        if (target->hpReal() > 0) {
            if ((target->hasStatus(Status::Sleep) == true) &&
                (randS32(0, 0x63) <= SLEEP_WEAR_OFF_CHANCE)) {
                statusWearOff(target, Status::Sleep, print);
            }
        }
    }
    return prevHP - target->hpReal();
}
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_0807392C.inc", void sub_0807392C());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073ABC.inc", void sub_08073ABC());
extern "C" ASM_FUNC("asm/non_matching/rhythm/InitHeal.inc", void InitHeal());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073CF0.inc", void sub_08073CF0());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073D98.inc", void sub_08073D98());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073E3C.inc", void sub_08073E3C());

bool statusWearOff(Unit* unit, Status::Type type, bool print) {
    if (unit->hasStatus(type) == 1) {
        Status* s = unit->findStatus(type);

        if (print == true && s) {
            s->woreOffMsg().print(Color(0, 0, 0), 1);
        }

        return unit->removeOneStatus(type);
    }
    return false;
}

extern "C" Action* getPlayerSkill(u16 arg0, Unit* user) {
    return create__18PlayerSkillFactoryUsP4Unit(arg0, user);
}

extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073F98.inc", void sub_08073F98());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073FC4.inc", void sub_08073FC4());

extern "C" void* getPsi(u16 arg0, Unit* user) {
    return create__10PsiFactoryUsP4Unit(arg0, user);
}

extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074020.inc", void sub_08074020());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_0807404C.inc", void sub_0807404C());

extern "C" Action* getGoods(u16 arg0, Unit* arg1, u16 arg2) {
    return create__12GoodsFactoryUsP4UnitUs(arg0, arg1, arg2);
}

extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_080740AC.inc", void sub_080740AC());

extern "C" bool IsGoodsAndType(Action* action, u16 id) {
    return action && action->getRTTI() == GoodsRTTI::get() && action->id() == id;
}

extern "C" Action* getGuestSkill(u16 arg0, Unit* user) {
    return create__17GuestSkillFactoryUsP4Unit(arg0, user);
}

extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074134.inc", void sub_08074134());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074160.inc", void sub_08074160());

extern "C" Action* getMonsterSkill(u16 arg0, Unit* user) {
    return create__19MonsterSkillFactoryUsP4Unit(arg0, user);
}

extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_080741BC.inc", void sub_080741BC());

extern "C" u8 IsMonsterSkillAndType(Action* action, u16 id) {
    return action && action->getRTTI() == MonsterSkillRTTI::get() && action->id() == id;
}

extern "C" bool triggerMonsterSkill(Action* action) {
    UnitTarget ut(action->target(), action->getUser());
    bool result = 0;
    if (ut.attackdata_c8() == 0) {
        for (int i = 0; i < ut.attackdata_110(); i++) {
            action->addTarget(ut.attackdata_118(i));
        }
        result = action->fire();
    }
    delete action;
    return result;
}

extern "C" bool sub_080742EC(Action* action, Monster* monster) {
    action->addTarget(monster);
    bool result = action->fire();
    delete action;
    return result;
}

extern "C" bool sub_08074338(Action* action, s32 count, Monster** monsters) {
    for (int i = 0; i < count; i++) {
        action->addTarget(monsters[i]);
    }
    bool result = action->fire();
    delete action;
    return result;
}

extern "C" void sub_08074394(s32 min, s32 max, s32 duration, bool r3, bool r4, bool r5) {
    for (int i = 0; i <= duration; i++) {
        s32 value = sub_08069558(min, max, i, duration);
        if (r3 == 1) {
            sub_08072568()->setBAll(value);
        }
        if (r4 == 1) {
            sub_08072588()->setBAll(value);
        }
        if (r5 == 1) {
            sub_080725A8()->setBAll(value);
        }
        setsleep(1);
    }
}

extern "C" void sub_08074414__FiiibN23(s32 min, s32 max, s32 duration, bool r3, bool r4, bool r5) {
    for (int i = 0; i <= duration; i++) {
        s32 value = sub_08069558(min, max, duration - i, duration);
        if (r3 == 1) {
            sub_08072568()->setBAll(value);
        }
        if (r4 == 1) {
            sub_08072588()->setBAll(value);
        }
        if (r5 == 1) {
            sub_080725A8()->setBAll(value);
        }
        setsleep(1);
    }
}

extern "C" void sub_08074494(s32 min, s32 max, s32 duration, bool r3, bool r4, bool r5) {
    for (int i = 0; i <= duration; i++) {
        s32 value = sub_08069558(min, max, duration - i, duration) + 0x100;
        if (r3 == 1) {
            sub_08072568()->setBAll(value);
        }
        if (r4 == 1) {
            sub_08072588()->setBAll(value);
        }
        if (r5 == 1) {
            sub_080725A8()->setBAll(value);
        }
        setsleep(1);
    }
}

extern "C" void sub_08074518(s32 min, s32 max, s32 duration, bool r3, bool r4, bool r5) {
    for (int i = 0; i <= duration; i++) {
        s32 value = sub_08069558(min, max, i, duration) + 0x100;
        if (r3 == 1) {
            sub_08072568()->setBAll(value);
        }
        if (r4 == 1) {
            sub_08072588()->setBAll(value);
        }
        if (r5 == 1) {
            sub_080725A8()->setBAll(value);
        }
        setsleep(1);
    }
}
extern "C" void sub_0807459C__FUsiii(u16 songNum, void* arg1, void* arg2, bool arg3) {
    if (songNum != 0) {
        sub_080725C8()->sub_08070478(arg1, new RhythmBgm(songNum), arg2, arg3);
    } else {
        sub_080725C8()->sub_08070478(arg1, 0, arg2, songNum);
    }
}
extern "C" void* sub_08074614() {
    return sub_080725C8()->sub_0807058C();
}

RTTI_IMPL(RhythmIn);
RTTI_IMPL(RhythmOut);
RTTI_IMPL(RhythmBgm);

RhythmBgm::RhythmBgm(u16 songNum) : Sound(songNum) {
    rhythmData = GetRhythmDataBySongNum(songNum);
    field_40 = 0;
    field_44 = 0;
    field_48 = 0;
    field_4C = 0;
    field_50 = 0;
    field_58 = 2;
    field_5C = 0;

    IrcManager::get()->sub_08069A50((u32)this, callback_sub_0807489C);

    listen(ClockManager::get(), AppClock(), callback_sub_080748C8);
}

const RhythmInfo* RhythmBgm::GetRhythmDataBySongNum(u16 songNum) {
    int i;

    for (i = 0; i < 119; i++) {
        if (gRhythmData[i].songNum == songNum)
            return &gRhythmData[i];
    }

    return gRhythmData;
}

RhythmBgm::~RhythmBgm() {
    IrcManager::get()->sub_08069C84((u32)this, callback_sub_0807489C);
}
void RhythmBgm::sub_0807476C() {
    if ((--field_5C << 0x18) == 0) {
        setup(sub_080747CC(getIndex()));
        play(0x00);
    }
}
u16 RhythmBgm::sub_080747CC(u16 songNum) {
    u32 index = 0;
    u32* entry = &gBgmHypnosisMappings;
    while ((s32)index <= 0x38) {
        if (((u16*)entry)[1] == songNum)
            return ((u16*)entry)[0];
        entry++;
        index++;
    }
    return 0;
}
void RhythmBgm::sub_080747F4() {
    if ((field_5C++ << 0x18) == 0) {
        setup(sub_08074854(getIndex()));
        play(0x00);
    }
}

u16 RhythmBgm::sub_08074854(u16 songNum) {
    u32 index = 0, *entry = &gBgmHypnosisMappings;
    while ((s32)index <= 0x38) {
        if (((u16*)entry)[0] == songNum)
            return ((u16*)entry)[1];
        entry++;
        index++;
    }
    return 0;
}

u32 RhythmBgm::getTempo() {
    return sub_0807066C(0x64 * _pad54, field_50);
}

s32 RhythmBgm::sub_08074898() {
    return field_58;
}

void RhythmBgm::sub_0807489C() {
    const u32 RHYTHM_LAG_OFFSET = 1;
    s32 tick = getPlayerClock();
    field_44 = Remainder(tick + RHYTHM_LAG_OFFSET, 0x18);
    field_40++;
}

void RhythmBgm::sub_080748C8() {
    if (field_44 < field_48) {
        field_50 = field_40 - field_4C;
        field_4C = field_40;
        _pad54 = (field_44 + 0x18) - _pad52;
        _pad52 = field_44;
    }

    field_48 = field_44;
    u32 previousHitState = field_58;
    s32 beatLength = field_50, clampedBeatLength = 0, minBeatLength = 1;
    if (minBeatLength < beatLength)
        minBeatLength = beatLength;
    clampedBeatLength = minBeatLength;

    u32 scaledTick = field_44 * clampedBeatLength;
    u32 newHitState;

    u8 greatWindow = ((u8*)rhythmData)[4];

    if ((scaledTick <= (greatWindow * 24)) ||
        (scaledTick >= ((clampedBeatLength - greatWindow) * 24))) {
        newHitState = 0;
    } else {
        u8 okayWindow = (((u8*)rhythmData)[5]);

        if ((scaledTick <= ((okayWindow) * 24)) ||
            (scaledTick >= ((clampedBeatLength - (okayWindow)) * 24))) {
            newHitState = 1;
        } else {
            newHitState = 2;
        }
    }

    field_58 = newHitState;
    volatile u32* pHitState = &field_58;

    if (previousHitState == 2) {
        if (*pHitState != 2)
            emit(RhythmIn());
    } else {
        if (*pHitState == 2)
            emit(RhythmOut());
    }
}

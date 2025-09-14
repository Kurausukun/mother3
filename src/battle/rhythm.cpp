// Auto-generated source file
#include "battle.h"
#include "battle/fader.h"
#include "battle/monster.h"
#include "battle/monsterSkill.h"
#include "battle/unitTarget.h"
#include "battle/goods.h"
#include "global.h"

extern "C" s32 sub_08069558(s32 min, s32 max, s32 step, s32 duration);
extern "C" BattleFader* sub_08072568();
extern "C" BattleFader* sub_08072588();
extern "C" BattleFader* sub_080725A8();

extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_080736F8.inc", void sub_080736F8());
extern "C" ASM_FUNC("asm/non_matching/rhythm/hitPlayer.inc", void hitPlayer());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_0807392C.inc", void sub_0807392C());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073ABC.inc", void sub_08073ABC());
extern "C" ASM_FUNC("asm/non_matching/rhythm/InitHeal.inc", void InitHeal());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073CF0.inc", void sub_08073CF0());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073D98.inc", void sub_08073D98());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073E3C.inc", void sub_08073E3C());
extern "C" ASM_FUNC("asm/non_matching/rhythm/tellStatusWoreOff.inc", void tellStatusWoreOff());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073F88.inc", void sub_08073F88());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073F98.inc", void sub_08073F98());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08073FC4.inc", void sub_08073FC4());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074010.inc", void sub_08074010());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074020.inc", void sub_08074020());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_0807404C.inc", void sub_0807404C());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074098.inc", void sub_08074098());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_080740AC.inc", void sub_080740AC());

extern "C" bool IsGoodsAndType(Action *action, u16 id) {
    return action && action->getRTTI() == getGoodsRTTI() && action->id() == id;
}

extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074124.inc", void sub_08074124());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074134.inc", void sub_08074134());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074160.inc", void sub_08074160());
extern "C" ASM_FUNC("asm/non_matching/rhythm/getMonsterSkill.inc", void getMonsterSkill());
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

extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_0807459C__FUsiii.inc", void sub_0807459C__FUsiii());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074614.inc", void sub_08074614());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074630.inc", void sub_08074630());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074638.inc", void sub_08074638());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074644.inc", void sub_08074644());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_0807464C.inc", void sub_0807464C());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074658.inc", void sub_08074658());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074660.inc", void sub_08074660());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_0807466C.inc", void sub_0807466C());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074710.inc", void sub_08074710());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_0807473C.inc", void sub_0807473C());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_0807476C.inc", void sub_0807476C());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_080747CC.inc", void sub_080747CC());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_080747F4.inc", void sub_080747F4());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074854.inc", void sub_08074854());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_0807487C.inc", void sub_0807487C());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074898.inc", void sub_08074898());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_0807489C.inc", void sub_0807489C());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_080748C8.inc", void sub_080748C8());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_080749D8.inc", void sub_080749D8());
extern "C" ASM_FUNC("asm/non_matching/rhythm/sub_08074A1C.inc", void sub_08074A1C());

#include "battle/playerskillImpl.h"
#include "battle/clock.h"
#include "battle/goodsImpl.h"
#include "battle/keyFocusManager.h"
#include "battle/keypad.h"
#include "battle/monster.h"
#include "battle/rhythm.h"
#include "global.h"

extern "C" void sub_08073270();
extern "C" void* sub_08074614();

extern "C" const ClockData gUnknown_080F5FE4;
extern "C" const ClockData gUnknown_080F5FEC;
extern "C" const ClockData gUnknown_080F5FF4;
extern "C" const ClockData gUnknown_080F5FFC;

extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__12SniffFactoryUsP4Unit.inc", void create__12SniffFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__18SirenBeetleFactoryUsP4Unit.inc", void create__18SirenBeetleFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__16QuickFlipFactoryUsP4Unit.inc", void create__16QuickFlipFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__26CantAttackMaskedManFactoryUsP4Unit.inc", void create__26CantAttackMaskedManFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__10RunFactoryUsP4Unit.inc", void create__10RunFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__12DanceFactoryUsP4Unit.inc", void create__12DanceFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__16MakeLaughFactoryUsP4Unit.inc", void create__16MakeLaughFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__16ApologizeFactoryUsP4Unit.inc", void create__16ApologizeFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__18TickleStickFactoryUsP4Unit.inc", void create__18TickleStickFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__16ScaryMaskFactoryUsP4Unit.inc", void create__16ScaryMaskFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__16SmokeBombFactoryUsP4Unit.inc", void create__16SmokeBombFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__20HypnoPendulumFactoryUsP4Unit.inc", void create__20HypnoPendulumFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__17WallStapleFactoryUsP4Unit.inc", void create__17WallStapleFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809D6B8.inc", void sub_0809D6B8());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809D728.inc", void sub_0809D728());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809D7D4.inc", void sub_0809D7D4());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809D838.inc", void sub_0809D838());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__11BashFactoryUsP4Unit.inc", void create__11BashFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/create__25DefaultPlayerSkillFactoryUsP4Unit.inc", void create__25DefaultPlayerSkillFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__5SniffUsP4Unit.inc", void __5SniffUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__11SirenBeetleUsP4Unit.inc", void __11SirenBeetleUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__9QuickFlipUsP4Unit.inc", void __9QuickFlipUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__19CantAttackMaskedManUsP4Unit.inc", void __19CantAttackMaskedManUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__3RunUsP4Unit.inc", void __3RunUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__5DanceUsP4Unit.inc", void __5DanceUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__9MakeLaughUsP4Unit.inc", void __9MakeLaughUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__9ApologizeUsP4Unit.inc", void __9ApologizeUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__11TickleStickUsP4Unit.inc", void __11TickleStickUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__9ScaryMaskUsP4Unit.inc", void __9ScaryMaskUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__9SmokeBombUsP4Unit.inc", void __9SmokeBombUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__13HypnoPendulumUsP4Unit.inc", void __13HypnoPendulumUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__10WallStapleUsP4Unit.inc", void __10WallStapleUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__4BashUsP4Unit.inc", void __4BashUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/__18DefaultPlayerSkillUsP4Unit.inc", void __18DefaultPlayerSkillUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellMissed__5SniffP4Unit.inc", void tellMissed__5SniffP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/onSuccess__5SniffP4Unit.inc", void onSuccess__5SniffP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/calcDidHit__5SniffP4Unit.inc", void calcDidHit__5SniffP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellResisted__5SniffP4Unit.inc", void tellResisted__5SniffP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/isResisted__5SniffP4Unit.inc", void isResisted__5SniffP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellUseMessage__5Sniff.inc", void tellUseMessage__5Sniff());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__5Sniff.inc", void dt__5Sniff());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellMissed__11SirenBeetleP4Unit.inc", void tellMissed__11SirenBeetleP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/onSuccess__11SirenBeetleP4Unit.inc", void onSuccess__11SirenBeetleP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/calcDidHit__11SirenBeetleP4Unit.inc", void calcDidHit__11SirenBeetleP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellResisted__11SirenBeetleP4Unit.inc", void tellResisted__11SirenBeetleP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/isResisted__11SirenBeetleP4Unit.inc", void isResisted__11SirenBeetleP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/playAnim__11SirenBeetle.inc", void playAnim__11SirenBeetle());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__11SirenBeetle.inc", void dt__11SirenBeetle());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellUseMessage__9QuickFlip.inc", void tellUseMessage__9QuickFlip());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__9QuickFlip.inc", void dt__9QuickFlip());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellUseMessage__19CantAttackMaskedMan.inc", void tellUseMessage__19CantAttackMaskedMan());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__19CantAttackMaskedMan.inc", void dt__19CantAttackMaskedMan());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellMissed__3RunP4Unit.inc", void tellMissed__3RunP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/onSuccess__3RunP4Unit.inc", void onSuccess__3RunP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/calcDidHit__3RunP4Unit.inc", void calcDidHit__3RunP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellUseMessage__3Run.inc", void tellUseMessage__3Run());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__3Run.inc", void dt__3Run());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/onSuccess__5DanceP4Unit.inc", void onSuccess__5DanceP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__5Dance.inc", void dt__5Dance());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellMissed__9MakeLaughP4Unit.inc", void tellMissed__9MakeLaughP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/calcDidHit__9MakeLaughP4Unit.inc", void calcDidHit__9MakeLaughP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellResisted__9MakeLaughP4Unit.inc", void tellResisted__9MakeLaughP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/isResisted__9MakeLaughP4Unit.inc", void isResisted__9MakeLaughP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellUseMessage__9MakeLaugh.inc", void tellUseMessage__9MakeLaugh());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__9MakeLaugh.inc", void dt__9MakeLaugh());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellMissed__9ApologizeP4Unit.inc", void tellMissed__9ApologizeP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/calcDidHit__9ApologizeP4Unit.inc", void calcDidHit__9ApologizeP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellResisted__9ApologizeP4Unit.inc", void tellResisted__9ApologizeP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/isResisted__9ApologizeP4Unit.inc", void isResisted__9ApologizeP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellUseMessage__9Apologize.inc", void tellUseMessage__9Apologize());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__9Apologize.inc", void dt__9Apologize());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__11TickleStick.inc", void dt__11TickleStick());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__9ScaryMask.inc", void dt__9ScaryMask());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__11UnusedPlySk.inc", void dt__11UnusedPlySk());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__9SmokeBomb.inc", void dt__9SmokeBomb());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__13HypnoPendulum.inc", void dt__13HypnoPendulum());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/tellResisted__10WallStapleP4Unit.inc", void tellResisted__10WallStapleP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__10WallStaple.inc", void dt__10WallStaple());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809E8F0__4Bash.inc", void sub_0809E8F0__4Bash());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809E910__4Bash.inc", void sub_0809E910__4Bash());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809E954__4Bash.inc", void sub_0809E954__4Bash());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809EAA4__4Bash.inc", void sub_0809EAA4__4Bash());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809EAF0__4Bash.inc", void sub_0809EAF0__4Bash());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809EB94__4Bash.inc", void sub_0809EB94__4Bash());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809EBA8__4Bash.inc", void sub_0809EBA8__4Bash());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809EBBC__4Bash.inc", void sub_0809EBBC__4Bash());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809EC04__4Bash.inc", void sub_0809EC04__4Bash());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809EC44__4Bash.inc", void sub_0809EC44__4Bash());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809ED04__4Bash.inc", void sub_0809ED04__4Bash());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809EEAC.inc", void sub_0809EEAC());
// extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/onAttack__4BashP4Unit.inc", void
// onAttack__4BashP4Unit());

void Bash::onAttack(Unit* TargetedUnit) {
    Monster* targetMonster = dynaCastMonster(TargetedUnit);
    UnitObject_s16r2 sp68 = TargetedUnit->object_50();
    this->_BashTargetMonster = new (UnnamedSndMon);
    this->_BashTargetMonster->sub_080652DC(({
        UnitObject_s16r2 sp6c = TargetedUnit->object_38();
        UnitObject_s16r2 sp70(0, sp68.val2 / 2);
        UnitObject_s16r2 sp74((s32)sp6c.val1, sp6c.val2 - sp70.val2);
        &sp74;
    }));
    this->_BashTargetMonster->sub_080652E4(TargetedUnit->object_48());
    this->_BashTargetMonster->sub_080652E8(sp68.val1);

    if ((u8)this->userAttackSfx(TargetedUnit) == true) {
        bool sp88 = this->sub_0809EBBC__4Bash(TargetedUnit);
        if (sp88 == true) {
            KeyFocuser key;  // sp4

            if (this->_58 != 4) {
                this->listen(sub_08074614(), RhythmIn(), gUnknown_080F5FE4);
                this->listen(sub_08074614(), RhythmOut(), gUnknown_080F5FEC);
                this->listen((void*)&key, AKeyPress(), gUnknown_080F5FF4);
                this->listen((void*)&key, LKeyPress(), gUnknown_080F5FF4);
                this->listen(ClockManager::get(), AppClock(), gUnknown_080F5FFC);
                // 0x246
            }  // its not doing the while check if the first if fails
            this->_58 = sp88;
            do {
                setsleep(1);
            } while (this->_58 != 4);

            this->base_4c(sub_08074614(), RhythmIn(), gUnknown_080F5FE4);
            this->base_4c(sub_08074614(), RhythmOut(), gUnknown_080F5FEC);
            this->base_4c((void*)&key, AKeyPress(), gUnknown_080F5FF4);
            this->base_4c((void*)&key, LKeyPress(), gUnknown_080F5FF4);
            this->base_4c(ClockManager::get(), AppClock(), gUnknown_080F5FFC);

        }  // 37a
    }
    if (this->sub_0809EC44__4Bash() == true) {
        new AutoCombo(this->_50, ComboRhythm(0x78, 0x28));
        new AutoComboResult(this->_54, ComboRhythm(0x78, 0x34));
    }  // 3ca
    if (this->sub_0809EC04__4Bash() == true) {
        playSound(0x0000064c);
        this->_BashTargetMonster->sub_08065348();
    }  // 402
    if (this->_BashTargetMonster != 0) {
        delete this->_BashTargetMonster;
    }  // 41a
    if (this->sub_0809EBA8__4Bash(targetMonster) == true) {
        this->sub_0809EB94__4Bash(targetMonster);
        targetMonster->setDeathAnim(0);
    } else if (0 < TargetedUnit->hpReal()) {
        if (TargetedUnit->hasStatus(3) == 1) {
            if (0x27 >= randS32(0x0, 0x63)) {
                statusWearOff(TargetedUnit, Status::Sleep, 1);
            }
        }  // 29c
    }  // 4ec
    sub_08073270();
    this->sub_0809EAF0__4Bash();
}

extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/hitChance__C4BashP4Unit.inc", void hitChance__C4BashP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/calcDidHit__4BashP4Unit.inc", void calcDidHit__4BashP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/isResisted__4BashP4Unit.inc", void isResisted__4BashP4Unit());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__4Bash.inc", void dt__4Bash());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809F710.inc", void sub_0809F710());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809F724.inc", void sub_0809F724());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/action_1c0__5Sniff.inc", void action_1c0__5Sniff());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/fire__5Sniff.inc", void fire__5Sniff());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809F970.inc", void sub_0809F970());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809F990.inc", void sub_0809F990());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809F9F0.inc", void sub_0809F9F0());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809FA58.inc", void sub_0809FA58());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/sub_0809FA6C.inc", void sub_0809FA6C());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/hitChance__C18DefaultPlayerSkill.inc", void hitChance__C18DefaultPlayerSkill());
extern "C" ASM_FUNC("asm/non_matching/playerskillImpl/dt__18DefaultPlayerSkill.inc", void dt__18DefaultPlayerSkill());
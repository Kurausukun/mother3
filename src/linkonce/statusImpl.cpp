#include "battle/statusImpl.h"

#define CAST_U16(x)  ({u16 _r; asm("" : "=r"(_r) : "0"(x)); _r;}) // Workaround for strange bug with the compiler not casting u16

extern "C" s32 randS32(s32, s32);
bool statusWearOff(Unit*, Status::Type, bool);
extern "C" void PlayAnimation(u16, Unit*, Unit*);
extern "C" bool sub_08073E3C(Unit*, u32, u32);
extern "C" s32 sub_0807066C(s32, s32);

extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__18StatusNoExpFactoryUsP4Unit.inc", void create__18StatusNoExpFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__19StatusSmellyFactoryUsP4Unit.inc", void create__19StatusSmellyFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__20StatusStrangeFactoryUsP4Unit.inc", void create__20StatusStrangeFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__27StatusMonkeyDanceIQ2FactoryUsP4Unit.inc", void create__27StatusMonkeyDanceIQ2FactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__27StatusMonkeyDanceSP2FactoryUsP4Unit.inc", void create__27StatusMonkeyDanceSP2FactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__28StatusMonkeyDanceDef2FactoryUsP4Unit.inc", void create__28StatusMonkeyDanceDef2FactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__28StatusMonkeyDanceOff2FactoryUsP4Unit.inc", void create__28StatusMonkeyDanceOff2FactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__26StatusMonkeyDanceIQFactoryUsP4Unit.inc", void create__26StatusMonkeyDanceIQFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__26StatusMonkeyDanceSPFactoryUsP4Unit.inc", void create__26StatusMonkeyDanceSPFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__27StatusMonkeyDanceDefFactoryUsP4Unit.inc", void create__27StatusMonkeyDanceDefFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__27StatusMonkeyDanceOffFactoryUsP4Unit.inc", void create__27StatusMonkeyDanceOffFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__23StatusParamsDownFactoryUsP4Unit.inc", void create__23StatusParamsDownFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__21StatusParamsUpFactoryUsP4Unit.inc", void create__21StatusParamsUpFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__24StatusDefUpStrongFactoryUsP4Unit.inc", void create__24StatusDefUpStrongFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__21StatusDefUpMidFactoryUsP4Unit.inc", void create__21StatusDefUpMidFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__22StatusDefUpWeakFactoryUsP4Unit.inc", void create__22StatusDefUpWeakFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__24StatusOffUpStrongFactoryUsP4Unit.inc", void create__24StatusOffUpStrongFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__21StatusOffUpMidFactoryUsP4Unit.inc", void create__21StatusOffUpMidFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__22StatusOffUpWeakFactoryUsP4Unit.inc", void create__22StatusOffUpWeakFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__26StatusDefDownStrongFactoryUsP4Unit.inc", void create__26StatusDefDownStrongFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__23StatusDefDownMidFactoryUsP4Unit.inc", void create__23StatusDefDownMidFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__24StatusDefDownWeakFactoryUsP4Unit.inc", void create__24StatusDefDownWeakFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__26StatusOffDownStrongFactoryUsP4Unit.inc", void create__26StatusOffDownStrongFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__23StatusOffDownMidFactoryUsP4Unit.inc", void create__23StatusOffDownMidFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__24StatusOffDownWeakFactoryUsP4Unit.inc", void create__24StatusOffDownWeakFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__19StatusDefendFactoryUsP4Unit.inc", void create__19StatusDefendFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__18StatusFleasFactoryUsP4Unit.inc", void create__18StatusFleasFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__19StatusCryingFactoryUsP4Unit.inc", void create__19StatusCryingFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__25StatusNoBackSpriteFactoryUsP4Unit.inc", void create__25StatusNoBackSpriteFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__20StatusStapledFactoryUsP4Unit.inc", void create__20StatusStapledFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__17StatusFellFactoryUsP4Unit.inc", void create__17StatusFellFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__17StatusDCMCFactoryUsP4Unit.inc", void create__17StatusDCMCFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__18StatusDanceFactoryUsP4Unit.inc", void create__18StatusDanceFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__21StatusLaughingFactoryUsP4Unit.inc", void create__21StatusLaughingFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__23StatusApologeticFactoryUsP4Unit.inc", void create__23StatusApologeticFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__19StatusFrozenFactoryUsP4Unit.inc", void create__19StatusFrozenFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__21StatusNauseousFactoryUsP4Unit.inc", void create__21StatusNauseousFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__22StatusForgetfulFactoryUsP4Unit.inc", void create__22StatusForgetfulFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__18StatusSleepFactoryUsP4Unit.inc", void create__18StatusSleepFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__17StatusNumbFactoryUsP4Unit.inc", void create__17StatusNumbFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__20StatusRefreshFactoryUsP4Unit.inc", void create__20StatusRefreshFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__19StatusEndureFactoryUsP4Unit.inc", void create__19StatusEndureFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__21StatusTimeBombFactory.inc", void create__21StatusTimeBombFactory());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__23StatusPsiCounterFactoryUsP4Unit.inc", void create__23StatusPsiCounterFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__22StatusPsiShieldFactoryUsP4Unit.inc", void create__22StatusPsiShieldFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__25StatusElectrocutedFactoryUsP4Unit.inc", void create__25StatusElectrocutedFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__20StatusCounterFactoryUsP4Unit.inc", void create__20StatusCounterFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__19StatusShieldFactoryUsP4Unit.inc", void create__19StatusShieldFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__19StatusOnFireFactoryUsP4Unit.inc", void create__19StatusOnFireFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__19StatusPoisonFactoryUsP4Unit.inc", void create__19StatusPoisonFactoryUsP4Unit());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__20DefaultStatusFactoryUsP4Unit.inc", void create__20DefaultStatusFactoryUsP4Unit());
StatusNoExp::StatusNoExp(u16 type, Unit* unit) : Status(type, unit) {}
StatusSmelly::StatusSmelly(u16 type, Unit* unit) : Status(type, unit) {}
StatusStrange::StatusStrange(u16 type, Unit* unit) : Status(type, unit) {}
StatusMonkeyDanceIQ2::StatusMonkeyDanceIQ2(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusMonkeyDanceSP2::StatusMonkeyDanceSP2(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusMonkeyDanceDef2::StatusMonkeyDanceDef2(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusMonkeyDanceOff2::StatusMonkeyDanceOff2(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusMonkeyDanceIQ::StatusMonkeyDanceIQ(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusMonkeyDanceSP::StatusMonkeyDanceSP(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusMonkeyDanceDef::StatusMonkeyDanceDef(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusMonkeyDanceOff::StatusMonkeyDanceOff(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusParamsDown::StatusParamsDown(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusParamsUp::StatusParamsUp(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusDefUpStrong::StatusDefUpStrong(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusDefUpMid::StatusDefUpMid(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusDefUpWeak::StatusDefUpWeak(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusOffUpStrong::StatusOffUpStrong(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusOffUpMid::StatusOffUpMid(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusOffUpWeak::StatusOffUpWeak(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusDefDownStrong::StatusDefDownStrong(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusDefDownMid::StatusDefDownMid(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusDefDownWeak::StatusDefDownWeak(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusOffDownStrong::StatusOffDownStrong(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusOffDownMid::StatusOffDownMid(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusOffDownWeak::StatusOffDownWeak(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusDefend::StatusDefend(u16 type, Unit* unit) : StatusParamMod(type, unit) { setRoundLimit(1); }
StatusFleas::StatusFleas(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusCrying::StatusCrying(u16 type, Unit* unit) : StatusParamMod(type, unit) {}
StatusNoBackSprite::StatusNoBackSprite(u16 type, Unit* unit) : Status(type, unit) { setRoundLimit(1); }
StatusStapled::StatusStapled(u16 type, Unit* unit) : Status(type, unit) {}
StatusFell::StatusFell(u16 type, Unit* unit) : Status(type, unit) { setTurnLimit(CAST_U16(randS32(1, 2))); }
StatusDCMC::StatusDCMC(u16 type, Unit* unit) : Status(type, unit) { setTurnLimit(CAST_U16(randS32(2, 3))); }
StatusDance::StatusDance(u16 type, Unit* unit) : Status(type, unit) {}
StatusLaughing::StatusLaughing(u16 type, Unit* unit) : Status(type, unit) {}
StatusApologetic::StatusApologetic(u16 type, Unit* unit) : Status(type, unit) {}
StatusFrozen::StatusFrozen(u16 type, Unit* unit) : Status(type, unit) {}
StatusNauseous::StatusNauseous(u16 type, Unit* unit) : Status(type, unit) {}
StatusForgetful::StatusForgetful(u16 type, Unit* unit) : Status(type, unit) { setRoundLimit(6); }
StatusSleep::StatusSleep(u16 type, Unit* unit) : Status(type, unit) { setTurnLimit(CAST_U16(randS32(2, 3))); }
StatusNumb::StatusNumb(u16 type, Unit* unit) : Status(type, unit) { setRoundLimit(6); }
StatusRefresh::StatusRefresh(u16 type, Unit* unit) : Status(type, unit) {}
StatusEndure::StatusEndure(u16 type, Unit* unit) : Status(type, unit) {}
StatusTimeBomb::StatusTimeBomb(u16 type, Unit* unit) : Status(type, unit) { mOffenseBase = randS32(2, 3); }
StatusPsiCounter::StatusPsiCounter(u16 type, Unit* unit) : Status(type, unit) {}
StatusPsiShield::StatusPsiShield(u16 type, Unit* unit) : Status(type, unit) {}
StatusElectrocuted::StatusElectrocuted(u16 type, Unit* unit) : Status(type, unit) {}
StatusCounter::StatusCounter(u16 type, Unit* unit) : Status(type, unit) {}
StatusShield::StatusShield(u16 type, Unit* unit) : Status(type, unit) {}
StatusOnFire::StatusOnFire(u16 type, Unit* unit) : Status(type, unit) { setTurnLimit(CAST_U16(randS32(1, 2))); }
StatusPoison::StatusPoison(u16 type, Unit* unit) : Status(type, unit) {}
DefaultStatus::DefaultStatus(u16 type, Unit* unit) : Status(type, unit) {}

bool StatusNoExp::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__11StatusNoExp.inc", void dt__11StatusNoExp());

bool StatusSmelly::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusSmelly.inc", void dt__12StatusSmelly());

bool StatusStrange::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->getStatusTypeCount(type()) <= 1) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__13StatusStrange.inc", void dt__13StatusStrange());

Msg StatusMonkeyDanceIQ2::fmtStatusMsg(u16 msg) {
    s32 val = this->iqChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusMonkeyDanceIQ2::iqMod() { return -sub_0807066C(this->unit()->iq() * 25, 100); }

bool StatusMonkeyDanceIQ2::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__20StatusMonkeyDanceIQ2.inc", void dt__20StatusMonkeyDanceIQ2());

Msg StatusMonkeyDanceSP2::fmtStatusMsg(u16 msg) {
    s32 val = this->speedChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusMonkeyDanceSP2::speedMod() { return -sub_0807066C(this->unit()->speed() * 25, 100); }

bool StatusMonkeyDanceSP2::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__20StatusMonkeyDanceSP2.inc", void dt__20StatusMonkeyDanceSP2());

Msg StatusMonkeyDanceDef2::fmtStatusMsg(u16 msg) {
    s32 val = this->defenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusMonkeyDanceDef2::defenseMod() { return -sub_0807066C(this->unit()->defense() * 20, 100); }

extern "C" ASM_FUNC("asm/non_matching/statusImpl/disableAllStatuses__21StatusMonkeyDanceDef2.inc", void disableAllStatuses__21StatusMonkeyDanceDef2());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__21StatusMonkeyDanceDef2.inc", void status_a0__21StatusMonkeyDanceDef2());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__21StatusMonkeyDanceDef2.inc", void status_98__21StatusMonkeyDanceDef2());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__21StatusMonkeyDanceDef2.inc", void dt__21StatusMonkeyDanceDef2());

Msg StatusMonkeyDanceOff2::fmtStatusMsg(u16 msg) {
    s32 val = this->offenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusMonkeyDanceOff2::offenseMod() { return -sub_0807066C(this->unit()->offense() * 20, 100); }

bool StatusMonkeyDanceOff2::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    Unit* u = unit();
    if (u->hasStatus(Status::MonkeyDanceOff2) == true) return true;
    if (u->hasStatus(Status::OffDownWeak) == true) return true;
    if (u->hasStatus(Status::OffDownMid) == true) return true;
    if (u->hasStatus(Status::OffDownStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__21StatusMonkeyDanceOff2.inc", void status_a0__21StatusMonkeyDanceOff2());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__21StatusMonkeyDanceOff2.inc", void status_98__21StatusMonkeyDanceOff2());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__21StatusMonkeyDanceOff2.inc", void dt__21StatusMonkeyDanceOff2());

Msg StatusMonkeyDanceIQ::fmtStatusMsg(u16 msg) {
    s32 val = this->iqChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusMonkeyDanceIQ::iqMod() { return sub_0807066C(this->unit()->iq() * 50, 100); }

bool StatusMonkeyDanceIQ::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__19StatusMonkeyDanceIQ.inc", void dt__19StatusMonkeyDanceIQ());

Msg StatusMonkeyDanceSP::fmtStatusMsg(u16 msg) {
    s32 val = this->speedChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusMonkeyDanceSP::speedMod() { return sub_0807066C(this->unit()->speed() * 150, 100); }

bool StatusMonkeyDanceSP::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__19StatusMonkeyDanceSP.inc", void dt__19StatusMonkeyDanceSP());

Msg StatusMonkeyDanceDef::fmtStatusMsg(u16 msg) {
    s32 val = this->defenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusMonkeyDanceDef::defenseMod() { return sub_0807066C(this->unit()->defense() * 20, 100); }

extern "C" ASM_FUNC("asm/non_matching/statusImpl/disableAllStatuses__20StatusMonkeyDanceDef.inc", void disableAllStatuses__20StatusMonkeyDanceDef());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__20StatusMonkeyDanceDef.inc", void status_a0__20StatusMonkeyDanceDef());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__20StatusMonkeyDanceDef.inc", void status_98__20StatusMonkeyDanceDef());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__20StatusMonkeyDanceDef.inc", void dt__20StatusMonkeyDanceDef());

Msg StatusMonkeyDanceOff::fmtStatusMsg(u16 msg) {
    s32 val = this->offenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusMonkeyDanceOff::offenseMod() { return sub_0807066C(this->unit()->offense() * 20, 100); }

bool StatusMonkeyDanceOff::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    Unit* u = unit();
    if (u->hasStatus(Status::MonkeyDanceOff) == true) return true;
    if (u->hasStatus(Status::OffUpWeak) == true) return true;
    if (u->hasStatus(Status::OffUpMid) == true) return true;
    if (u->hasStatus(Status::OffUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__20StatusMonkeyDanceOff.inc", void status_a0__20StatusMonkeyDanceOff());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__20StatusMonkeyDanceOff.inc", void status_98__20StatusMonkeyDanceOff());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__20StatusMonkeyDanceOff.inc", void dt__20StatusMonkeyDanceOff());

s32 StatusParamsDown::speedMod() { return -sub_0807066C(this->unit()->speed() * 30, 100); }
s32 StatusParamsDown::iqMod() { return -sub_0807066C(this->unit()->iq() * 30, 100); }
s32 StatusParamsDown::defenseMod() { return -sub_0807066C(this->unit()->defense() * 40, 100); }
s32 StatusParamsDown::offenseMod() { return -sub_0807066C(this->unit()->offense() * 40, 100); }

bool StatusParamsDown::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(type()) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__16StatusParamsDown.inc", void status_90__16StatusParamsDown());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__16StatusParamsDown.inc", void dt__16StatusParamsDown());

s32 StatusParamsUp::speedMod() { return sub_0807066C(this->unit()->speed() * 40, 100); }
s32 StatusParamsUp::iqMod() { return sub_0807066C(this->unit()->iq() * 40, 100); }
s32 StatusParamsUp::defenseMod() { return sub_0807066C(this->unit()->defense() * 50, 100); }
s32 StatusParamsUp::offenseMod() { return sub_0807066C(this->unit()->offense() * 50, 100); }

bool StatusParamsUp::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(type()) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__14StatusParamsUp.inc", void status_90__14StatusParamsUp());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusParamsUp.inc", void dt__14StatusParamsUp());

Msg StatusDefUpStrong::fmtStatusMsg(u16 msg) {
    s32 val = this->defenseChange();
    if (val < 0) {
        val = -val;
    }

    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusDefUpStrong::defenseMod() { return sub_0807066C(this->unit()->defense() * 40, 100); }

bool StatusDefUpStrong::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::DefUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

bool StatusDefUpStrong::status_a0() {
    if (Status::status_a0() == true) return true;
    if (_1c8(Status::DefDownStrong) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__17StatusDefUpStrong.inc", void status_98__17StatusDefUpStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__17StatusDefUpStrong.inc", void status_90__17StatusDefUpStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__17StatusDefUpStrong.inc", void dt__17StatusDefUpStrong());

Msg StatusDefUpMid::fmtStatusMsg(u16 msg) {
    s32 val = this->defenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusDefUpMid::defenseMod() { return sub_0807066C(this->unit()->defense() * 30, 100); }

bool StatusDefUpMid::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::DefUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__14StatusDefUpMid.inc", void status_a0__14StatusDefUpMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__14StatusDefUpMid.inc", void status_98__14StatusDefUpMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusDefUpMid.inc", void dt__14StatusDefUpMid());

Msg StatusDefUpWeak::fmtStatusMsg(u16 msg) {
    s32 val = this->defenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusDefUpWeak::defenseMod() { return sub_0807066C(this->unit()->defense() * 20, 100); }

bool StatusDefUpWeak::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::DefUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__15StatusDefUpWeak.inc", void status_a0__15StatusDefUpWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__15StatusDefUpWeak.inc", void status_98__15StatusDefUpWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__15StatusDefUpWeak.inc", void dt__15StatusDefUpWeak());

Msg StatusOffUpStrong::fmtStatusMsg(u16 msg) {
    s32 val = this->offenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusOffUpStrong::offenseMod() { return sub_0807066C(this->unit()->offense() * 40, 100); }

bool StatusOffUpStrong::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::OffUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__17StatusOffUpStrong.inc", void status_a0__17StatusOffUpStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__17StatusOffUpStrong.inc", void status_98__17StatusOffUpStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__17StatusOffUpStrong.inc", void status_90__17StatusOffUpStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__17StatusOffUpStrong.inc", void dt__17StatusOffUpStrong());

Msg StatusOffUpMid::fmtStatusMsg(u16 msg) {
    s32 val = this->offenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusOffUpMid::offenseMod() { return sub_0807066C(this->unit()->offense() * 30, 100); }

bool StatusOffUpMid::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::OffUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__14StatusOffUpMid.inc", void status_a0__14StatusOffUpMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__14StatusOffUpMid.inc", void status_98__14StatusOffUpMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusOffUpMid.inc", void dt__14StatusOffUpMid());

Msg StatusOffUpWeak::fmtStatusMsg(u16 msg) {
    s32 val = this->offenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusOffUpWeak::offenseMod() { return sub_0807066C(this->unit()->offense() * 20, 100); }

bool StatusOffUpWeak::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::OffUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__15StatusOffUpWeak.inc", void status_a0__15StatusOffUpWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__15StatusOffUpWeak.inc", void status_98__15StatusOffUpWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__15StatusOffUpWeak.inc", void dt__15StatusOffUpWeak());

Msg StatusDefDownStrong::fmtStatusMsg(u16 msg) {
    s32 val = this->defenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusDefDownStrong::defenseMod() { return -sub_0807066C(this->unit()->defense() * 40, 100); }

bool StatusDefDownStrong::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::DefDownStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__19StatusDefDownStrong.inc", void status_a0__19StatusDefDownStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__19StatusDefDownStrong.inc", void status_98__19StatusDefDownStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__19StatusDefDownStrong.inc", void status_90__19StatusDefDownStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__19StatusDefDownStrong.inc", void dt__19StatusDefDownStrong());

Msg StatusDefDownMid::fmtStatusMsg(u16 msg) {
    s32 val = this->defenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusDefDownMid::defenseMod() { return -sub_0807066C(this->unit()->defense() * 30, 100); }

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__16StatusDefDownMid.inc", void status_a0__16StatusDefDownMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__16StatusDefDownMid.inc", void status_98__16StatusDefDownMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__16StatusDefDownMid.inc", void status_90__16StatusDefDownMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__16StatusDefDownMid.inc", void dt__16StatusDefDownMid());

Msg StatusDefDownWeak::fmtStatusMsg(u16 msg) {
    s32 val = this->defenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusDefDownWeak::defenseMod() { return -sub_0807066C(this->unit()->defense() * 20, 100); }

bool StatusDefDownWeak::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::DefDownStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__17StatusDefDownWeak.inc", void status_a0__17StatusDefDownWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__17StatusDefDownWeak.inc", void status_98__17StatusDefDownWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__17StatusDefDownWeak.inc", void dt__17StatusDefDownWeak());

Msg StatusOffDownStrong::fmtStatusMsg(u16 msg) {
    s32 val = this->offenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusOffDownStrong::offenseMod() { return -sub_0807066C(this->unit()->offense() * 40, 100); }

bool StatusOffDownStrong::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::OffDownStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__19StatusOffDownStrong.inc", void status_a0__19StatusOffDownStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__19StatusOffDownStrong.inc", void status_98__19StatusOffDownStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__19StatusOffDownStrong.inc", void status_90__19StatusOffDownStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__19StatusOffDownStrong.inc", void dt__19StatusOffDownStrong());

Msg StatusOffDownMid::fmtStatusMsg(u16 msg) {
    s32 val = this->offenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusOffDownMid::offenseMod() { return -sub_0807066C(this->unit()->offense() * 30, 100); }

bool StatusOffDownMid::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::OffDownStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

bool StatusOffDownMid::status_a0() {
    if (Status::status_a0() == true) return true;
    Unit* unused = unit();
    if (_1c8(Status::OffUpMid) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__16StatusOffDownMid.inc", void status_98__16StatusOffDownMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__16StatusOffDownMid.inc", void dt__16StatusOffDownMid());

Msg StatusOffDownWeak::fmtStatusMsg(u16 msg) {
    s32 val = this->offenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusOffDownWeak::offenseMod() { return -sub_0807066C(this->unit()->offense() * 20, 100); }

bool StatusOffDownWeak::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    Unit* u = unit();
    if (unit()->hasStatus(Status::OffDownStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__17StatusOffDownWeak.inc", void status_a0__17StatusOffDownWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__17StatusOffDownWeak.inc", void status_98__17StatusOffDownWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__17StatusOffDownWeak.inc", void dt__17StatusOffDownWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/cleanup__12StatusDefend.inc", void cleanup__12StatusDefend());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_b0__12StatusDefend.inc", void status_b0__12StatusDefend());

bool StatusDefend::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusDefend.inc", void dt__12StatusDefend());

bool StatusFleas::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__11StatusFleas.inc", void dt__11StatusFleas());

bool StatusCrying::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusCrying.inc", void dt__12StatusCrying());

bool StatusParamMod::_1c8(u16 type) {
    Unit* unit = this->unit();
    if (statusWearOff(unit, type, false) != true) return false;
    
    PlayAnimation(status_data_2(), unit, unit);
    inflictedMsg().print(Color::Black(), true);
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_1c0__14StatusParamMod.inc", void _1c0__14StatusParamMod());

s32 StatusParamMod::kindnessChange() { return this->unit()->kindness() - this->mKindnessBase; }
s32 StatusParamMod::speedChange() { return this->unit()->speed() - this->mSpeedBase; }
s32 StatusParamMod::iqChange() { return this->unit()->iq() - this->mIQBase; }
s32 StatusParamMod::defenseChange() { return this->unit()->defense() - this->mDefenseBase; }
s32 StatusParamMod::offenseChange() { return this->unit()->offense() - this->mOffenseBase; }

s32 StatusParamMod::kindnessDelta() { return this->mKindnessDelta; }
s32 StatusParamMod::speedDelta() { return this->mSpeedDelta; }
s32 StatusParamMod::iqDelta() { return this->mIQDelta; }
s32 StatusParamMod::defenseDelta() { return this->mDefenseDelta; }
s32 StatusParamMod::offenseDelta() { return this->mOffenseDelta; }

extern "C" ASM_FUNC("asm/non_matching/statusImpl/cleanup__14StatusParamMod.inc", void cleanup__14StatusParamMod());

s32 StatusParamMod::kindnessMod() { return 0; }
s32 StatusParamMod::speedMod() { return 0; }
s32 StatusParamMod::iqMod() { return 0; }
s32 StatusParamMod::defenseMod() { return 0; }
s32 StatusParamMod::offenseMod() { return 0; }

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_b0__14StatusParamMod.inc", void status_b0__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusParamMod.inc", void dt__14StatusParamMod());

bool StatusNoBackSprite::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__18StatusNoBackSprite.inc", void dt__18StatusNoBackSprite());

bool StatusStapled::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__13StatusStapled.inc", void dt__13StatusStapled());

bool StatusFell::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__10StatusFell.inc", void dt__10StatusFell());

bool StatusDCMC::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__10StatusDCMC.inc", void dt__10StatusDCMC());

bool StatusDance::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__11StatusDance.inc", void dt__11StatusDance());

bool StatusLaughing::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusLaughing.inc", void dt__14StatusLaughing());

bool StatusApologetic::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__16StatusApologetic.inc", void dt__16StatusApologetic());

bool StatusFrozen::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusFrozen.inc", void dt__12StatusFrozen());

bool StatusNauseous::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusNauseous.inc", void dt__14StatusNauseous());

bool StatusForgetful::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__15StatusForgetful.inc", void dt__15StatusForgetful());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/cleanup__11StatusSleep.inc", void cleanup__11StatusSleep());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_b0__11StatusSleep.inc", void status_b0__11StatusSleep());

bool StatusSleep::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__11StatusSleep.inc", void dt__11StatusSleep());

bool StatusNumb::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__10StatusNumb.inc", void dt__10StatusNumb());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/onUnitTurnBegin__13StatusRefreshP4Unit.inc", void onUnitTurnBegin__13StatusRefreshP4Unit());

bool StatusRefresh::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__13StatusRefresh.inc", void dt__13StatusRefresh());

bool StatusEndure::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusEndure.inc", void dt__12StatusEndure());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/onUnitTurnEnd__14StatusTimeBombP4Unit.inc", void onUnitTurnEnd__14StatusTimeBombP4Unit());

bool StatusTimeBomb::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusTimeBomb.inc", void dt__14StatusTimeBomb());

bool StatusPsiCounter::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->getStatusTypeCount(type()) <= 2) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__16StatusPsiCounter.inc", void status_90__16StatusPsiCounter());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__16StatusPsiCounter.inc", void dt__16StatusPsiCounter());

bool StatusPsiShield::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->getStatusTypeCount(type()) <= 2) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__15StatusPsiShield.inc", void status_90__15StatusPsiShield());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__15StatusPsiShield.inc", void dt__15StatusPsiShield());

bool StatusElectrocuted::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__18StatusElectrocuted.inc", void dt__18StatusElectrocuted());

bool StatusCounter::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->getStatusTypeCount(type()) <= 2) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__13StatusCounter.inc", void status_90__13StatusCounter());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__13StatusCounter.inc", void dt__13StatusCounter());

bool StatusShield::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->getStatusTypeCount(type()) <= 2) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__12StatusShield.inc", void status_90__12StatusShield());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusShield.inc", void dt__12StatusShield());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/onUnitTurnBegin__12StatusOnFireP4Unit.inc", void onUnitTurnBegin__12StatusOnFireP4Unit());

bool StatusOnFire::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusOnFire.inc", void dt__12StatusOnFire());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/onUnitTurnBegin__12StatusPoisonP4Unit.inc", void onUnitTurnBegin__12StatusPoisonP4Unit());

bool StatusPoison::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusPoison.inc", void dt__12StatusPoison());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__13DefaultStatus.inc", void dt__13DefaultStatus());

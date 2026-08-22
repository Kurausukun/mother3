#include "battle/statusImpl.h"

#define CAST_U16(x)  ({u16 _r; asm("" : "=r"(_r) : "0"(x)); _r;}) // Workaround for strange bug with the compiler not casting u16

extern "C" s32 randS32(s32, s32);

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
StatusNoExp::StatusNoExp(u16 id, Unit* user) : Status(id, user) {}
StatusSmelly::StatusSmelly(u16 id, Unit* user) : Status(id, user) {}
StatusStrange::StatusStrange(u16 id, Unit* user) : Status(id, user) {}
StatusMonkeyDanceIQ2::StatusMonkeyDanceIQ2(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusMonkeyDanceSP2::StatusMonkeyDanceSP2(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusMonkeyDanceDef2::StatusMonkeyDanceDef2(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusMonkeyDanceOff2::StatusMonkeyDanceOff2(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusMonkeyDanceIQ::StatusMonkeyDanceIQ(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusMonkeyDanceSP::StatusMonkeyDanceSP(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusMonkeyDanceDef::StatusMonkeyDanceDef(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusMonkeyDanceOff::StatusMonkeyDanceOff(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusParamsDown::StatusParamsDown(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusParamsUp::StatusParamsUp(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusDefUpStrong::StatusDefUpStrong(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusDefUpMid::StatusDefUpMid(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusDefUpWeak::StatusDefUpWeak(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusOffUpStrong::StatusOffUpStrong(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusOffUpMid::StatusOffUpMid(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusOffUpWeak::StatusOffUpWeak(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusDefDownStrong::StatusDefDownStrong(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusDefDownMid::StatusDefDownMid(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusDefDownWeak::StatusDefDownWeak(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusOffDownStrong::StatusOffDownStrong(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusOffDownMid::StatusOffDownMid(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusOffDownWeak::StatusOffDownWeak(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusDefend::StatusDefend(u16 type, Unit* unit) : StatusParamMod(type, unit) { setRoundLimit(1); }
StatusFleas::StatusFleas(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusCrying::StatusCrying(u16 id, Unit* user) : StatusParamMod(id, user) {}
StatusNoBackSprite::StatusNoBackSprite(u16 type, Unit* unit) : Status(type, unit) { setRoundLimit(1); }
StatusStapled::StatusStapled(u16 id, Unit* user) : Status(id, user) {}
StatusFell::StatusFell(u16 type, Unit* unit) : Status(type, unit) { setTurnLimit(CAST_U16(randS32(1, 2))); }
StatusDCMC::StatusDCMC(u16 type, Unit* unit) : Status(type, unit) { setTurnLimit(CAST_U16(randS32(2, 3))); }
StatusDance::StatusDance(u16 id, Unit* user) : Status(id, user) {}
StatusLaughing::StatusLaughing(u16 id, Unit* user) : Status(id, user) {}
StatusApologetic::StatusApologetic(u16 id, Unit* user) : Status(id, user) {}
StatusFrozen::StatusFrozen(u16 id, Unit* user) : Status(id, user) {}
StatusNauseous::StatusNauseous(u16 id, Unit* user) : Status(id, user) {}
StatusForgetful::StatusForgetful(u16 type, Unit* unit) : Status(type, unit) { setRoundLimit(6); }
StatusSleep::StatusSleep(u16 type, Unit* unit) : Status(type, unit) { setTurnLimit(CAST_U16(randS32(2, 3))); }
StatusNumb::StatusNumb(u16 type, Unit* unit) : Status(type, unit) { setRoundLimit(6); }
StatusRefresh::StatusRefresh(u16 id, Unit* user) : Status(id, user) {}
StatusEndure::StatusEndure(u16 id, Unit* user) : Status(id, user) {}
StatusTimeBomb::StatusTimeBomb(u16 type, Unit* unit) : Status(type, unit) { _34 = randS32(2, 3); }
StatusPsiCounter::StatusPsiCounter(u16 id, Unit* user) : Status(id, user) {}
StatusPsiShield::StatusPsiShield(u16 id, Unit* user) : Status(id, user) {}
StatusElectrocuted::StatusElectrocuted(u16 id, Unit* user) : Status(id, user) {}
StatusCounter::StatusCounter(u16 id, Unit* user) : Status(id, user) {}
StatusShield::StatusShield(u16 id, Unit* user) : Status(id, user) {}
StatusOnFire::StatusOnFire(u16 type, Unit* unit) : Status(type, unit) { setTurnLimit(CAST_U16(randS32(1, 2))); }
StatusPoison::StatusPoison(u16 id, Unit* user) : Status(id, user) {}
DefaultStatus::DefaultStatus(u16 type, Unit* unit) : Status(type, unit) {}

bool StatusNoExp::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__11StatusNoExp.inc", void dt__11StatusNoExp());

bool StatusSmelly::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusSmelly.inc", void dt__12StatusSmelly());

bool StatusStrange::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->getStatusTypeCount(type()) <= 1) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__13StatusStrange.inc", void dt__13StatusStrange());

Msg StatusMonkeyDanceIQ2::fmtStatusMsg(u16 msg) {
    s32 val = this->_1a8();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_158__20StatusMonkeyDanceIQ2.inc", void _158__20StatusMonkeyDanceIQ2());

bool StatusMonkeyDanceIQ2::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__20StatusMonkeyDanceIQ2.inc", void dt__20StatusMonkeyDanceIQ2());

Msg StatusMonkeyDanceSP2::fmtStatusMsg(u16 msg) {
    s32 val = this->_1b0();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_160__20StatusMonkeyDanceSP2.inc", void _160__20StatusMonkeyDanceSP2());

bool StatusMonkeyDanceSP2::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__20StatusMonkeyDanceSP2.inc", void dt__20StatusMonkeyDanceSP2());

Msg StatusMonkeyDanceDef2::fmtStatusMsg(u16 msg) {
    s32 val = this->_1a0();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_150__21StatusMonkeyDanceDef2.inc", void _150__21StatusMonkeyDanceDef2());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/disableAllStatuses__21StatusMonkeyDanceDef2.inc", void disableAllStatuses__21StatusMonkeyDanceDef2());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__21StatusMonkeyDanceDef2.inc", void status_a0__21StatusMonkeyDanceDef2());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__21StatusMonkeyDanceDef2.inc", void status_98__21StatusMonkeyDanceDef2());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__21StatusMonkeyDanceDef2.inc", void dt__21StatusMonkeyDanceDef2());

Msg StatusMonkeyDanceOff2::fmtStatusMsg(u16 msg) {
    s32 val = this->_198();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_148__21StatusMonkeyDanceOff2.inc", void _148__21StatusMonkeyDanceOff2());

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
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__21StatusMonkeyDanceOff2.inc", void status_a0__21StatusMonkeyDanceOff2());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__21StatusMonkeyDanceOff2.inc", void status_98__21StatusMonkeyDanceOff2());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__21StatusMonkeyDanceOff2.inc", void dt__21StatusMonkeyDanceOff2());

Msg StatusMonkeyDanceIQ::fmtStatusMsg(u16 msg) {
    s32 val = this->_1a8();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_158__19StatusMonkeyDanceIQ.inc", void _158__19StatusMonkeyDanceIQ());

bool StatusMonkeyDanceIQ::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__19StatusMonkeyDanceIQ.inc", void dt__19StatusMonkeyDanceIQ());

Msg StatusMonkeyDanceSP::fmtStatusMsg(u16 msg) {
    s32 val = this->_1b0();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_160__19StatusMonkeyDanceSP.inc", void _160__19StatusMonkeyDanceSP());

bool StatusMonkeyDanceSP::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__19StatusMonkeyDanceSP.inc", void dt__19StatusMonkeyDanceSP());

Msg StatusMonkeyDanceDef::fmtStatusMsg(u16 msg) {
    s32 val = this->_1a0();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_150__20StatusMonkeyDanceDef.inc", void _150__20StatusMonkeyDanceDef());

extern "C" ASM_FUNC("asm/non_matching/statusImpl/disableAllStatuses__20StatusMonkeyDanceDef.inc", void disableAllStatuses__20StatusMonkeyDanceDef());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__20StatusMonkeyDanceDef.inc", void status_a0__20StatusMonkeyDanceDef());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__20StatusMonkeyDanceDef.inc", void status_98__20StatusMonkeyDanceDef());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__20StatusMonkeyDanceDef.inc", void dt__20StatusMonkeyDanceDef());

Msg StatusMonkeyDanceOff::fmtStatusMsg(u16 msg) {
    s32 val = this->_198();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_148__20StatusMonkeyDanceOff.inc", void _148__20StatusMonkeyDanceOff());

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
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__20StatusMonkeyDanceOff.inc", void status_a0__20StatusMonkeyDanceOff());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__20StatusMonkeyDanceOff.inc", void status_98__20StatusMonkeyDanceOff());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__20StatusMonkeyDanceOff.inc", void dt__20StatusMonkeyDanceOff());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_160__16StatusParamsDown.inc", void _160__16StatusParamsDown());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_158__16StatusParamsDown.inc", void _158__16StatusParamsDown());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_150__16StatusParamsDown.inc", void _150__16StatusParamsDown());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_148__16StatusParamsDown.inc", void _148__16StatusParamsDown());

bool StatusParamsDown::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(type()) == true) return true;
    return false;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__16StatusParamsDown.inc", void status_90__16StatusParamsDown());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__16StatusParamsDown.inc", void dt__16StatusParamsDown());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_160__14StatusParamsUp.inc", void _160__14StatusParamsUp());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_158__14StatusParamsUp.inc", void _158__14StatusParamsUp());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_150__14StatusParamsUp.inc", void _150__14StatusParamsUp());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_148__14StatusParamsUp.inc", void _148__14StatusParamsUp());

bool StatusParamsUp::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(type()) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__14StatusParamsUp.inc", void status_90__14StatusParamsUp());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusParamsUp.inc", void dt__14StatusParamsUp());

Msg StatusDefUpStrong::fmtStatusMsg(u16 msg) {
    s32 val = this->_1a0();
    if (val < 0) {
        val = -val;
    }

    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_150__17StatusDefUpStrong.inc", void _150__17StatusDefUpStrong());

bool StatusDefUpStrong::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::DefUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
};

bool StatusDefUpStrong::status_a0() {
    if (Status::status_a0() == true) return true;
    if (_1c8(Status::DefDownStrong) == true) return true;
    return false;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__17StatusDefUpStrong.inc", void status_98__17StatusDefUpStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__17StatusDefUpStrong.inc", void status_90__17StatusDefUpStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__17StatusDefUpStrong.inc", void dt__17StatusDefUpStrong());

Msg StatusDefUpMid::fmtStatusMsg(u16 msg) {
    s32 val = this->_1a0();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_150__14StatusDefUpMid.inc", void _150__14StatusDefUpMid());

bool StatusDefUpMid::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::DefUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__14StatusDefUpMid.inc", void status_a0__14StatusDefUpMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__14StatusDefUpMid.inc", void status_98__14StatusDefUpMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusDefUpMid.inc", void dt__14StatusDefUpMid());

Msg StatusDefUpWeak::fmtStatusMsg(u16 msg) {
    s32 val = this->_1a0();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_150__15StatusDefUpWeak.inc", void _150__15StatusDefUpWeak());

bool StatusDefUpWeak::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::DefUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__15StatusDefUpWeak.inc", void status_a0__15StatusDefUpWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__15StatusDefUpWeak.inc", void status_98__15StatusDefUpWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__15StatusDefUpWeak.inc", void dt__15StatusDefUpWeak());

Msg StatusOffUpStrong::fmtStatusMsg(u16 msg) {
    s32 val = this->_198();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_148__17StatusOffUpStrong.inc", void _148__17StatusOffUpStrong());

bool StatusOffUpStrong::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::OffUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__17StatusOffUpStrong.inc", void status_a0__17StatusOffUpStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__17StatusOffUpStrong.inc", void status_98__17StatusOffUpStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__17StatusOffUpStrong.inc", void status_90__17StatusOffUpStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__17StatusOffUpStrong.inc", void dt__17StatusOffUpStrong());

Msg StatusOffUpMid::fmtStatusMsg(u16 msg) {
    s32 val = this->_198();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_148__14StatusOffUpMid.inc", void _148__14StatusOffUpMid());

bool StatusOffUpMid::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::OffUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__14StatusOffUpMid.inc", void status_a0__14StatusOffUpMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__14StatusOffUpMid.inc", void status_98__14StatusOffUpMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusOffUpMid.inc", void dt__14StatusOffUpMid());

Msg StatusOffUpWeak::fmtStatusMsg(u16 msg) {
    s32 val = this->_198();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_148__15StatusOffUpWeak.inc", void _148__15StatusOffUpWeak());

bool StatusOffUpWeak::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::OffUpStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__15StatusOffUpWeak.inc", void status_a0__15StatusOffUpWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__15StatusOffUpWeak.inc", void status_98__15StatusOffUpWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__15StatusOffUpWeak.inc", void dt__15StatusOffUpWeak());

Msg StatusDefDownStrong::fmtStatusMsg(u16 msg) {
    s32 val = this->_1a0();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_150__19StatusDefDownStrong.inc", void _150__19StatusDefDownStrong());

bool StatusDefDownStrong::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::DefDownStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__19StatusDefDownStrong.inc", void status_a0__19StatusDefDownStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__19StatusDefDownStrong.inc", void status_98__19StatusDefDownStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__19StatusDefDownStrong.inc", void status_90__19StatusDefDownStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__19StatusDefDownStrong.inc", void dt__19StatusDefDownStrong());

Msg StatusDefDownMid::fmtStatusMsg(u16 msg) {
    s32 val = this->_1a0();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_150__16StatusDefDownMid.inc", void _150__16StatusDefDownMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__16StatusDefDownMid.inc", void status_a0__16StatusDefDownMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__16StatusDefDownMid.inc", void status_98__16StatusDefDownMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__16StatusDefDownMid.inc", void status_90__16StatusDefDownMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__16StatusDefDownMid.inc", void dt__16StatusDefDownMid());

Msg StatusDefDownWeak::fmtStatusMsg(u16 msg) {
    s32 val = this->_1a0();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_150__17StatusDefDownWeak.inc", void _150__17StatusDefDownWeak());

bool StatusDefDownWeak::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::DefDownStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__17StatusDefDownWeak.inc", void status_a0__17StatusDefDownWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__17StatusDefDownWeak.inc", void status_98__17StatusDefDownWeak());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__17StatusDefDownWeak.inc", void dt__17StatusDefDownWeak());

Msg StatusOffDownStrong::fmtStatusMsg(u16 msg) {
    s32 val = this->_198();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_148__19StatusOffDownStrong.inc", void _148__19StatusOffDownStrong());

bool StatusOffDownStrong::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::OffDownStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_a0__19StatusOffDownStrong.inc", void status_a0__19StatusOffDownStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__19StatusOffDownStrong.inc", void status_98__19StatusOffDownStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__19StatusOffDownStrong.inc", void status_90__19StatusOffDownStrong());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__19StatusOffDownStrong.inc", void dt__19StatusOffDownStrong());

Msg StatusOffDownMid::fmtStatusMsg(u16 msg) {
    s32 val = this->_198();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_148__16StatusOffDownMid.inc", void _148__16StatusOffDownMid());

bool StatusOffDownMid::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    if (unit()->hasStatus(Status::OffDownStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
};

bool StatusOffDownMid::status_a0() {
    if (Status::status_a0() == true) return true;
    Unit* unused = unit();
    if (_1c8(Status::OffUpMid) == true) return true;
    return false;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_98__16StatusOffDownMid.inc", void status_98__16StatusOffDownMid());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__16StatusOffDownMid.inc", void dt__16StatusOffDownMid());

Msg StatusOffDownWeak::fmtStatusMsg(u16 msg) {
    s32 val = this->_198();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_148__17StatusOffDownWeak.inc", void _148__17StatusOffDownWeak());

bool StatusOffDownWeak::disableAllStatuses() {
    if (Status::disableAllStatuses() == true) return true;
    Unit* u = unit();
    if (unit()->hasStatus(Status::OffDownStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
};

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
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusDefend.inc", void dt__12StatusDefend());

bool StatusFleas::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__11StatusFleas.inc", void dt__11StatusFleas());

bool StatusCrying::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusCrying.inc", void dt__12StatusCrying());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_1c8__14StatusParamMod.inc", void _1c8__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_1c0__14StatusParamMod.inc", void _1c0__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_1b8__14StatusParamMod.inc", void _1b8__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_1b0__14StatusParamMod.inc", void _1b0__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_1a8__14StatusParamMod.inc", void _1a8__14StatusParamMod());

s32 StatusParamMod::_1a0() {
    return this->unit()->defense() - this->_38;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/_198__14StatusParamMod.inc", void _198__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_190__14StatusParamMod.inc", void _190__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_188__14StatusParamMod.inc", void _188__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_180__14StatusParamMod.inc", void _180__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_178__14StatusParamMod.inc", void _178__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_170__14StatusParamMod.inc", void _170__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/cleanup__14StatusParamMod.inc", void cleanup__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_168__14StatusParamMod.inc", void _168__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_160__14StatusParamMod.inc", void _160__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_158__14StatusParamMod.inc", void _158__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_150__14StatusParamMod.inc", void _150__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/_148__14StatusParamMod.inc", void _148__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_b0__14StatusParamMod.inc", void status_b0__14StatusParamMod());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusParamMod.inc", void dt__14StatusParamMod());

bool StatusNoBackSprite::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__18StatusNoBackSprite.inc", void dt__18StatusNoBackSprite());

bool StatusStapled::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__13StatusStapled.inc", void dt__13StatusStapled());

bool StatusFell::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__10StatusFell.inc", void dt__10StatusFell());

bool StatusDCMC::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__10StatusDCMC.inc", void dt__10StatusDCMC());

bool StatusDance::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__11StatusDance.inc", void dt__11StatusDance());

bool StatusLaughing::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusLaughing.inc", void dt__14StatusLaughing());

bool StatusApologetic::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__16StatusApologetic.inc", void dt__16StatusApologetic());

bool StatusFrozen::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusFrozen.inc", void dt__12StatusFrozen());

bool StatusNauseous::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusNauseous.inc", void dt__14StatusNauseous());

bool StatusForgetful::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

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
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__11StatusSleep.inc", void dt__11StatusSleep());

bool StatusNumb::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__10StatusNumb.inc", void dt__10StatusNumb());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/onUnitTurnBegin__13StatusRefreshP4Unit.inc", void onUnitTurnBegin__13StatusRefreshP4Unit());

bool StatusRefresh::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__13StatusRefresh.inc", void dt__13StatusRefresh());

bool StatusEndure::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusEndure.inc", void dt__12StatusEndure());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/onUnitTurnEnd__14StatusTimeBombP4Unit.inc", void onUnitTurnEnd__14StatusTimeBombP4Unit());

bool StatusTimeBomb::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__14StatusTimeBomb.inc", void dt__14StatusTimeBomb());

bool StatusPsiCounter::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->getStatusTypeCount(type()) <= 2) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__16StatusPsiCounter.inc", void status_90__16StatusPsiCounter());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__16StatusPsiCounter.inc", void dt__16StatusPsiCounter());

bool StatusPsiShield::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->getStatusTypeCount(type()) <= 2) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__15StatusPsiShield.inc", void status_90__15StatusPsiShield());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__15StatusPsiShield.inc", void dt__15StatusPsiShield());

bool StatusElectrocuted::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__18StatusElectrocuted.inc", void dt__18StatusElectrocuted());

bool StatusCounter::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->getStatusTypeCount(type()) <= 2) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/status_90__13StatusCounter.inc", void status_90__13StatusCounter());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__13StatusCounter.inc", void dt__13StatusCounter());

bool StatusShield::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->getStatusTypeCount(type()) <= 2) {
            return false;
        }
    }
    return true;
};

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
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusOnFire.inc", void dt__12StatusOnFire());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/onUnitTurnBegin__12StatusPoisonP4Unit.inc", void onUnitTurnBegin__12StatusPoisonP4Unit());

bool StatusPoison::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
};

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusPoison.inc", void dt__12StatusPoison());
extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__13DefaultStatus.inc", void dt__13DefaultStatus());

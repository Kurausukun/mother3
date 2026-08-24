#include "battle/statusImpl.h"
#include "battle/player.h"
#include "battle/goods.h"
#include "enums.h"

#define CAST_U16(x)  ({u16 _r; asm("" : "=r"(_r) : "0"(x)); _r;}) // Workaround for strange bug with the compiler not casting u16

extern "C" s32 randS32(s32, s32);
bool statusWearOff(Unit*, Status::Type, bool);
extern "C" void PlayAnimation(u16, Unit*, Unit*);
extern "C" bool sub_08073E3C(Unit*, u32, u32);
extern "C" s32 sub_0807066C(s32, s32);
extern "C" void hitPlayer(Unit*, u32, u32);
extern "C" void InitHeal(Unit*, u32, bool);


void* StatusNoExpFactory::create(u16 type, Unit* unit) { return new StatusNoExp(type, unit); }
void* StatusSmellyFactory::create(u16 type, Unit* unit) { return new StatusSmelly(type, unit); }
void* StatusStrangeFactory::create(u16 type, Unit* unit) { return new StatusStrange(type, unit); }
void* StatusMonkeyDanceIQ2Factory::create(u16 type, Unit* unit) { return new StatusMonkeyDanceIQ2(type, unit); }
void* StatusMonkeyDanceSP2Factory::create(u16 type, Unit* unit) { return new StatusMonkeyDanceSP2(type, unit); }
void* StatusMonkeyDanceDef2Factory::create(u16 type, Unit* unit) { return new StatusMonkeyDanceDef2(type, unit); }
void* StatusMonkeyDanceOff2Factory::create(u16 type, Unit* unit) { return new StatusMonkeyDanceOff2(type, unit); }
void* StatusMonkeyDanceIQFactory::create(u16 type, Unit* unit) { return new StatusMonkeyDanceIQ(type, unit); }
void* StatusMonkeyDanceSPFactory::create(u16 type, Unit* unit) { return new StatusMonkeyDanceSP(type, unit); }
void* StatusMonkeyDanceDefFactory::create(u16 type, Unit* unit) { return new StatusMonkeyDanceDef(type, unit); }
void* StatusMonkeyDanceOffFactory::create(u16 type, Unit* unit) { return new StatusMonkeyDanceOff(type, unit); }
void* StatusParamsDownFactory::create(u16 type, Unit* unit) { return new StatusParamsDown(type, unit); }
void* StatusParamsUpFactory::create(u16 type, Unit* unit) { return new StatusParamsUp(type, unit); }
void* StatusDefUpStrongFactory::create(u16 type, Unit* unit) { return new StatusDefUpStrong(type, unit); }
void* StatusDefUpMidFactory::create(u16 type, Unit* unit) { return new StatusDefUpMid(type, unit); }
void* StatusDefUpWeakFactory::create(u16 type, Unit* unit) { return new StatusDefUpWeak(type, unit); }
void* StatusOffUpStrongFactory::create(u16 type, Unit* unit) { return new StatusOffUpStrong(type, unit); }
void* StatusOffUpMidFactory::create(u16 type, Unit* unit) { return new StatusOffUpMid(type, unit); }
void* StatusOffUpWeakFactory::create(u16 type, Unit* unit) { return new StatusOffUpWeak(type, unit); }
void* StatusDefDownStrongFactory::create(u16 type, Unit* unit) { return new StatusDefDownStrong(type, unit); }
void* StatusDefDownMidFactory::create(u16 type, Unit* unit) { return new StatusDefDownMid(type, unit); }
void* StatusDefDownWeakFactory::create(u16 type, Unit* unit) { return new StatusDefDownWeak(type, unit); }
void* StatusOffDownStrongFactory::create(u16 type, Unit* unit) { return new StatusOffDownStrong(type, unit); }
void* StatusOffDownMidFactory::create(u16 type, Unit* unit) { return new StatusOffDownMid(type, unit); }
void* StatusOffDownWeakFactory::create(u16 type, Unit* unit) { return new StatusOffDownWeak(type, unit); }
void* StatusDefendFactory::create(u16 type, Unit* unit) { return new StatusDefend(type, unit); }
void* StatusFleasFactory::create(u16 type, Unit* unit) { return new StatusFleas(type, unit); }
void* StatusCryingFactory::create(u16 type, Unit* unit) { return new StatusCrying(type, unit); }
void* StatusNoBackSpriteFactory::create(u16 type, Unit* unit) { return new StatusNoBackSprite(type, unit); }
void* StatusStapledFactory::create(u16 type, Unit* unit) { return new StatusStapled(type, unit); }
void* StatusFellFactory::create(u16 type, Unit* unit) { return new StatusFell(type, unit); }
void* StatusDCMCFactory::create(u16 type, Unit* unit) { return new StatusDCMC(type, unit); }
void* StatusDanceFactory::create(u16 type, Unit* unit) { return new StatusDance(type, unit); }
void* StatusLaughingFactory::create(u16 type, Unit* unit) { return new StatusLaughing(type, unit); }
void* StatusApologeticFactory::create(u16 type, Unit* unit) { return new StatusApologetic(type, unit); }
void* StatusFrozenFactory::create(u16 type, Unit* unit) { return new StatusFrozen(type, unit); }
void* StatusNauseousFactory::create(u16 type, Unit* unit) { return new StatusNauseous(type, unit); }
void* StatusForgetfulFactory::create(u16 type, Unit* unit) { return new StatusForgetful(type, unit); }
void* StatusSleepFactory::create(u16 type, Unit* unit) { return new StatusSleep(type, unit); }
void* StatusNumbFactory::create(u16 type, Unit* unit) { return new StatusNumb(type, unit); }
void* StatusRefreshFactory::create(u16 type, Unit* unit) { return new StatusRefresh(type, unit); }
void* StatusEndureFactory::create(u16 type, Unit* unit) { return new StatusEndure(type, unit); }
extern "C" ASM_FUNC("asm/non_matching/statusImpl/create__21StatusTimeBombFactory.inc", void create__21StatusTimeBombFactory());
void* StatusPsiCounterFactory::create(u16 type, Unit* unit) { return new StatusPsiCounter(type, unit); }
void* StatusPsiShieldFactory::create(u16 type, Unit* unit) { return new StatusPsiShield(type, unit); }
void* StatusElectrocutedFactory::create(u16 type, Unit* unit) { return new StatusElectrocuted(type, unit); }
void* StatusCounterFactory::create(u16 type, Unit* unit) { return new StatusCounter(type, unit); }
void* StatusShieldFactory::create(u16 type, Unit* unit) { return new StatusShield(type, unit); }
void* StatusOnFireFactory::create(u16 type, Unit* unit) { return new StatusOnFire(type, unit); }
void* StatusPoisonFactory::create(u16 type, Unit* unit) { return new StatusPoison(type, unit); }
void* DefaultStatusFactory::create(u16 type, Unit* unit) { return new DefaultStatus(type, unit); }

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
StatusTimeBomb::StatusTimeBomb(u16 type, Unit* unit) : Status(type, unit) { mDetonationTurns = randS32(2, 3); }
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

bool StatusMonkeyDanceOff2::status_a0() {
    if (Status::status_a0() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c8(Status::MonkeyDanceOff) == true) return true;
    if (this->_1c8(Status::OffUpWeak) == true) return true;
    return false;
}

bool StatusMonkeyDanceOff2::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c0(Status::OffUpMid, Status::OffUpWeak) == true) return true;
    if (this->_1c0(Status::OffUpStrong, Status::OffUpMid) == true) return true;

    return false;
}

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

bool StatusMonkeyDanceOff::status_a0() {
    if (Status::status_a0() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c8(Status::MonkeyDanceOff2) == true) return true;
    if (this->_1c8(Status::OffDownWeak) == true) return true;
    return false;
}

bool StatusMonkeyDanceOff::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c0(Status::OffDownMid, Status::OffDownWeak) == true) return true;
    if (this->_1c0(Status::OffDownStrong, Status::OffDownMid) == true) return true;

    return false;
}

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

bool StatusParamsDown::status_90() {
    if (Status::status_90() == true) return true;
    Unit* u = this->unit();
    
    if (u->hasStatus(Status::MonkeyDanceOff) == true) {
        u->removeStatus(Status::MonkeyDanceOff);
        return true;
    }
    if (u->hasStatus(Status::OffUpWeak) == true) {
        u->removeStatus(Status::OffUpWeak);
        return true;
    }
    if (u->hasStatus(Status::OffUpMid) == true) {
        u->removeStatus(Status::OffUpMid);
        return true;
    }
    if (u->hasStatus(Status::OffUpStrong) == true) {
        u->removeStatus(Status::OffUpStrong);
        return true;
    }
    
    if (u->hasStatus(Status::MonkeyDanceDef) == true) {
        u->removeStatus(Status::MonkeyDanceDef);
        return true;
    }
    if (u->hasStatus(Status::DefUpWeak) == true) {
        u->removeStatus(Status::DefUpWeak);
        return true;
    }
    if (u->hasStatus(Status::DefUpMid) == true) {
        u->removeStatus(Status::DefUpMid);
        return true;
    }
    if (u->hasStatus(Status::DefUpStrong) == true) {
        u->removeStatus(Status::DefUpStrong);
        return true;
    }
    
    if (u->hasStatus(Status::MonkeyDanceOff2) == true) {
        u->removeStatus(Status::MonkeyDanceOff2);
        return true;
    }
    if (u->hasStatus(Status::OffDownWeak) == true) {
        u->removeStatus(Status::OffDownWeak);
        return true;
    }
    if (u->hasStatus(Status::OffDownMid) == true) {
        u->removeStatus(Status::OffDownMid);
        return true;
    }
    if (u->hasStatus(Status::OffDownStrong) == true) {
        u->removeStatus(Status::OffDownStrong);
        return true;
    }
    
    if (u->hasStatus(Status::MonkeyDanceDef2) == true) {
        u->removeStatus(Status::MonkeyDanceDef2);
        return true;
    }
    if (u->hasStatus(Status::DefDownWeak) == true) {
        u->removeStatus(Status::DefDownWeak);
        return true;
    }
    if (u->hasStatus(Status::DefDownMid) == true) {
        u->removeStatus(Status::DefDownMid);
        return true;
    }
    if (u->hasStatus(Status::DefDownStrong) == true) {
        u->removeStatus(Status::DefDownStrong);
        return true;
    }

    return false;
}

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

bool StatusParamsUp::status_90() {
    if (Status::status_90() == true) return true;
    Unit* u = this->unit();
    
    if (u->hasStatus(Status::MonkeyDanceOff) == true) {
        u->removeStatus(Status::MonkeyDanceOff);
        return true;
    }
    if (u->hasStatus(Status::OffUpWeak) == true) {
        u->removeStatus(Status::OffUpWeak);
        return true;
    }
    if (u->hasStatus(Status::OffUpMid) == true) {
        u->removeStatus(Status::OffUpMid);
        return true;
    }
    if (u->hasStatus(Status::OffUpStrong) == true) {
        u->removeStatus(Status::OffUpStrong);
        return true;
    }
    
    if (u->hasStatus(Status::MonkeyDanceDef) == true) {
        u->removeStatus(Status::MonkeyDanceDef);
        return true;
    }
    if (u->hasStatus(Status::DefUpWeak) == true) {
        u->removeStatus(Status::DefUpWeak);
        return true;
    }
    if (u->hasStatus(Status::DefUpMid) == true) {
        u->removeStatus(Status::DefUpMid);
        return true;
    }
    if (u->hasStatus(Status::DefUpStrong) == true) {
        u->removeStatus(Status::DefUpStrong);
        return true;
    }
    
    if (u->hasStatus(Status::MonkeyDanceOff2) == true) {
        u->removeStatus(Status::MonkeyDanceOff2);
        return true;
    }
    if (u->hasStatus(Status::OffDownWeak) == true) {
        u->removeStatus(Status::OffDownWeak);
        return true;
    }
    if (u->hasStatus(Status::OffDownMid) == true) {
        u->removeStatus(Status::OffDownMid);
        return true;
    }
    if (u->hasStatus(Status::OffDownStrong) == true) {
        u->removeStatus(Status::OffDownStrong);
        return true;
    }
    
    if (u->hasStatus(Status::MonkeyDanceDef2) == true) {
        u->removeStatus(Status::MonkeyDanceDef2);
        return true;
    }
    if (u->hasStatus(Status::DefDownWeak) == true) {
        u->removeStatus(Status::DefDownWeak);
        return true;
    }
    if (u->hasStatus(Status::DefDownMid) == true) {
        u->removeStatus(Status::DefDownMid);
        return true;
    }
    if (u->hasStatus(Status::DefDownStrong) == true) {
        u->removeStatus(Status::DefDownStrong);
        return true;
    }

    return false;
}

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

bool StatusDefUpStrong::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c0(Status::MonkeyDanceDef, Status::DefUpMid) == true) return true;
    if (this->_1c0(Status::DefDownWeak, Status::DefUpMid) == true) return true;
    if (this->_1c0(Status::DefDownMid, Status::DefUpWeak) == true) return true;

    return false;
}

bool StatusDefUpStrong::status_90() {
    if (Status::status_90() == true) return true;
    Unit* u = this->unit();
    
    if (statusWearOff(u, Status::MonkeyDanceDef, false) == true) return false;
    if (statusWearOff(u, Status::DefUpWeak, false) == true) return true;
    if (statusWearOff(u, Status::DefUpMid, false) == true) return true;

    return false;
}

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

bool StatusDefUpMid::status_a0() {
    if (Status::status_a0() == true) return true;
    if (_1c8(Status::DefDownMid) == true) return true;
    return false;
}

bool StatusDefUpMid::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();
    
    if (this->_1c0(Status::MonkeyDanceDef, Status::DefUpStrong) == true) return true;
    if (this->_1c0(Status::DefUpWeak, Status::DefUpStrong) == true) return true;
    if (this->_1c0(Status::DefUpMid, Status::DefUpStrong) == true) return true;
    if (this->_1c0(Status::MonkeyDanceDef, Status::DefUpWeak) == true) return true;
    if (this->_1c0(Status::DefDownWeak, Status::DefUpWeak) == true) return true;
    if (this->_1c0(Status::DefDownStrong, Status::DefDownWeak) == true) return true;

    return false;
}

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

bool StatusDefUpWeak::status_a0() {
    if (Status::status_a0() == true) return true;
    Unit* unused = this->unit();
    if (this->_1c8(Status::MonkeyDanceDef2) == true) return true;
    if (this->_1c8(Status::DefDownWeak) == true) return true;
    return false;
}

bool StatusDefUpWeak::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c0(Status::MonkeyDanceDef, Status::DefUpMid) == true) return true;
    if (this->_1c0(Status::DefUpWeak, Status::DefUpMid) == true) return true;
    if (this->_1c0(Status::DefUpMid, Status::DefUpStrong) == true) return true;
    if (this->_1c0(Status::DefDownMid, Status::DefDownWeak) == true) return true;
    if (this->_1c0(Status::DefDownStrong, Status::DefDownMid) == true) return true;

    return false;
}

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

bool StatusOffUpStrong::status_a0() {
    if (Status::status_a0() == true) return true;
    if (_1c8(Status::OffDownStrong) == true) return true;
    return false;
}

bool StatusOffUpStrong::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c0(Status::MonkeyDanceOff2, Status::OffUpMid) == true) return true;
    if (this->_1c0(Status::OffDownWeak, Status::OffUpMid) == true) return true;
    if (this->_1c0(Status::OffDownMid, Status::OffUpWeak) == true) return true;

    return false;
}

bool StatusOffUpStrong::status_90() {
    if (Status::status_90() == true) return true;
    Unit* u = this->unit();
    
    if (statusWearOff(u, Status::MonkeyDanceOff, false) == true) return true;
    if (statusWearOff(u, Status::OffUpWeak, false) == true) return true;
    if (statusWearOff(u, Status::OffUpMid, false) == true) return true;

    return false;
}

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

bool StatusOffUpMid::status_a0() {
    if (Status::status_a0() == true) return true;
    if (_1c8(Status::OffDownMid) == true) return true;
    return false;
}

bool StatusOffUpMid::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c0(Status::MonkeyDanceOff, Status::OffUpStrong) == true) return true;
    if (this->_1c0(Status::OffUpWeak, Status::OffUpStrong) == true) return true;
    if (this->_1c0(Status::OffUpMid, Status::OffUpStrong) == true) return true;
    if (this->_1c0(Status::MonkeyDanceOff2, Status::OffUpWeak) == true) return true;
    if (this->_1c0(Status::OffDownWeak, Status::OffUpWeak) == true) return true;
    if (this->_1c0(Status::OffDownStrong, Status::OffDownWeak) == true) return true;

    return false;
}

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

bool StatusOffUpWeak::status_a0() {
    if (Status::status_a0() == true) return true;
    Unit* unused = this->unit();
    if (this->_1c8(Status::MonkeyDanceOff2) == true) return true;
    if (this->_1c8(Status::OffDownWeak) == true) return true;
    return false;
}

bool StatusOffUpWeak::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c0(Status::MonkeyDanceOff, Status::OffUpMid) == true) return true;
    if (this->_1c0(Status::OffUpWeak, Status::OffUpMid) == true) return true;
    if (this->_1c0(Status::OffUpMid, Status::OffUpStrong) == true) return true;
    if (this->_1c0(Status::OffDownMid, Status::OffDownWeak) == true) return true;
    if (this->_1c0(Status::OffDownStrong, Status::OffDownMid) == true) return true;

    return false;
}

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

bool StatusDefDownStrong::status_a0() {
    if (Status::status_a0() == true) return true;
    if (_1c8(Status::DefUpStrong) == true) return true;
    return false;
}

bool StatusDefDownStrong::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c0(Status::MonkeyDanceDef, Status::DefDownMid) == true) return true;
    if (this->_1c0(Status::DefUpWeak, Status::DefDownMid) == true) return true;
    if (this->_1c0(Status::DefUpMid, Status::DefDownWeak) == true) return true;

    return false;
}

bool StatusDefDownStrong::status_90() {
    if (Status::status_90() == true) return true;
    Unit* u = this->unit();
    
    if (statusWearOff(u, Status::MonkeyDanceDef2, false) == true) return true;
    if (statusWearOff(u, Status::DefDownWeak, false) == true) return true;
    if (statusWearOff(u, Status::DefDownMid, false) == true) return true;

    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__19StatusDefDownStrong.inc", void dt__19StatusDefDownStrong());

Msg StatusDefDownMid::fmtStatusMsg(u16 msg) {
    s32 val = this->defenseChange();
    if (val < 0) {
        val = -val;
    }
    return ROMStrFmt(msg, Msg::bcd(val), this->unit()->name(), Msg::Msg());
}

s32 StatusDefDownMid::defenseMod() { return -sub_0807066C(this->unit()->defense() * 30, 100); }

bool StatusDefDownMid::status_a0() {
    if (Status::disableAllStatuses() == true) return true;
    if (this->unit()->hasStatus(Status::DefDownStrong) == true) return true;
    if (this->unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (this->unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

bool StatusDefDownMid::status_98() {
    if (Status::status_a0() == true) return true;

    if (this->_1c8(Status::DefUpMid) == true) return true;

    return false;
}

bool StatusDefDownMid::status_90() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit(); 
    
    if (this->_1c0(Status::MonkeyDanceDef, Status::DefDownWeak) == true) return true;
    if (this->_1c0(Status::DefUpWeak, Status::DefDownWeak) == true) return true;
    if (this->_1c0(Status::DefUpStrong, Status::DefUpWeak) == true) return true;
    if (this->_1c0(Status::MonkeyDanceDef2, Status::DefDownStrong) == true) return true;
    if (this->_1c0(Status::DefDownWeak, Status::DefDownStrong) == true) return true;
    if (this->_1c0(Status::DefDownMid, Status::DefDownStrong) == true) return true;

    return false;
}

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

bool StatusDefDownWeak::status_a0() {
    if (Status::status_a0() == true) return true;
    Unit* unused = this->unit();
    if (this->_1c8(Status::MonkeyDanceDef) == true) return true;
    if (this->_1c8(Status::DefUpWeak) == true) return true;
    return false;
}

bool StatusDefDownWeak::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c0(Status::DefUpMid, Status::DefUpWeak) == true) return true;
    if (this->_1c0(Status::DefUpStrong, Status::DefUpMid) == true) return true;
    if (this->_1c0(Status::MonkeyDanceDef2, Status::DefDownMid) == true) return true;
    if (this->_1c0(Status::DefDownWeak, Status::DefDownMid) == true) return true;
    if (this->_1c0(Status::DefDownMid, Status::DefDownStrong) == true) return true;

    return false;
}

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

bool StatusOffDownStrong::status_a0() {
    if (Status::status_a0() == true) return true;
    if (_1c8(Status::OffUpStrong) == true) return true;
    return false;
}

bool StatusOffDownStrong::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c0(Status::MonkeyDanceOff, Status::OffDownMid) == true) return true;
    if (this->_1c0(Status::OffUpWeak, Status::OffDownMid) == true) return true;
    if (this->_1c0(Status::OffUpMid, Status::OffDownWeak) == true) return true;

    return false;
}

bool StatusOffDownStrong::status_90() {
    if (Status::status_90() == true) return true;
    Unit* u = this->unit();
    
    if (statusWearOff(u, Status::MonkeyDanceOff, false) == true) return true;
    if (statusWearOff(u, Status::OffDownWeak, false) == true) return true;
    if (statusWearOff(u, Status::OffDownMid, false) == true) return true;

    return false;
}

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

bool StatusOffDownMid::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c0(Status::MonkeyDanceOff, Status::OffDownWeak) == true) return true;
    if (this->_1c0(Status::OffUpWeak, Status::OffDownWeak) == true) return true;
    if (this->_1c0(Status::OffUpStrong, Status::OffUpWeak) == true) return true;
    if (this->_1c0(Status::MonkeyDanceOff, Status::OffDownStrong) == true) return true;
    if (this->_1c0(Status::OffDownWeak, Status::OffDownStrong) == true) return true;
    if (this->_1c0(Status::OffDownMid, Status::OffDownStrong) == true) return true;

    return false;
}

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
    Unit* unused = unit();
    if (unit()->hasStatus(Status::OffDownStrong) == true) return true;
    if (unit()->hasStatus(Status::ParamsUp) == true) return true;
    if (unit()->hasStatus(Status::ParamsDown) == true) return true;
    return false;
}

bool StatusOffDownWeak::status_a0() {
    if (Status::status_a0() == true) return true;
    Unit* unused = this->unit();
    if (this->_1c8(Status::MonkeyDanceOff) == true) return true;
    if (this->_1c8(Status::OffUpWeak) == true) return true;
    return false;
}

bool StatusOffDownWeak::status_98() {
    if (Status::status_98() == true) return true;
    Unit* unused = this->unit();

    if (this->_1c0(Status::OffUpMid, Status::OffUpWeak) == true) return true;
    if (this->_1c0(Status::OffUpStrong, Status::OffUpMid) == true) return true;
    if (this->_1c0(Status::MonkeyDanceOff, Status::OffDownMid) == true) return true;
    if (this->_1c0(Status::OffDownWeak, Status::OffDownMid) == true) return true;
    if (this->_1c0(Status::OffDownMid, Status::OffDownStrong) == true) return true;

    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__17StatusOffDownWeak.inc", void dt__17StatusOffDownWeak());

void StatusDefend::cleanup() {
    Player* player = (Player*)Goods::tryCastPlayer(this->unit());
    player->player_350(player->player_398() - this->_5c);

    Status::cleanup();
}

bool StatusDefend::status_b0() {
    if (Status::status_b0() != true) return false;

    Player* player = (Player*)Goods::tryCastPlayer(this->unit());
    s16 val = player->player_398();
    player->player_350(val >> 1);
    this->_5c = player->player_398() - val;

    return true;
}

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

void StatusParamMod::cleanup() {
    Unit* targetUnit = this->unit();
    
    targetUnit->setOffense(targetUnit->offense() - this->mOffenseDelta);
    targetUnit->setDefense(targetUnit->defense() - this->mDefenseDelta);
    targetUnit->setIQ(targetUnit->iq() - this->mIQDelta);
    targetUnit->setSpeed(targetUnit->speed() - this->mSpeedDelta);
    targetUnit->setKindness(targetUnit->kindness() - this->mKindnessDelta);
    
    Status::cleanup();
}

s32 StatusParamMod::kindnessMod() { return 0; }
s32 StatusParamMod::speedMod() { return 0; }
s32 StatusParamMod::iqMod() { return 0; }
s32 StatusParamMod::defenseMod() { return 0; }
s32 StatusParamMod::offenseMod() { return 0; }

bool StatusParamMod::status_b0() {
    if (Status::status_b0() != true) return false;
    Unit* u = this->unit();
    
    s32 oldOffense = u->offense();
    s32 oldDefense = u->defense();
    s32 oldIQ = u->iq();
    s32 oldSpeed = u->speed();
    s32 oldKindness = u->kindness();
    
    u->setOffense(oldOffense + this->offenseMod());
    u->setDefense(oldDefense + this->defenseMod());
    u->setIQ(oldIQ + this->iqMod());
    u->setSpeed(oldSpeed + this->speedMod());
    u->setKindness(oldKindness + this->kindnessMod());
    
    this->mOffenseDelta = u->offense() - oldOffense;
    this->mDefenseDelta = u->defense() - oldDefense;
    this->mIQDelta = u->iq() - oldIQ;
    this->mSpeedDelta = u->speed() - oldSpeed;
    this->mKindnessDelta = u->kindness() - oldKindness;

    return true;
}

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

bool StatusRefresh::onUnitTurnBegin(Unit* unit) {
    if (Status::onUnitTurnBegin(unit) != true) return false;
    
    if (unit == this->unit()) {
        this->activeMsg().print(Color::Black(), true);

        s32 healAmount = sub_0807066C(unit->maxHP(), 10);
        s32 finalHeal = 1;
        if (finalHeal < healAmount) finalHeal = healAmount;
        InitHeal(unit, finalHeal, true);
        
        PlayAnimation(Animation::LifeUpB, unit, unit);
    }
    
    return true;
}

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

void StatusTimeBomb::onUnitTurnEnd(Unit* unit) {
    Status::onUnitTurnEnd(unit);
    
    if (unit == this->unit()) {
        if (turns() >= mDetonationTurns) {
            activeMsg().print(Color::Black(), true);
            
            PlayAnimation(Animation::HardHit, unit, unit);
            
            hitPlayer(unit, randS32(130, 150), true);
            
            statusWearOff(unit, type(), false);
        }
    }
}

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

bool StatusPsiCounter::status_90() {
    if (Status::status_90() == true) return true;

    Unit* u = this->unit();

    if (u->hasStatus(Status::Shield) == true) {
        u->removeStatus(Status::Shield);
        return true;
    }
    
    if (u->hasStatus(Status::Counter) == true) {
        u->removeStatus(Status::Counter);
        return true;
    }
    
    if (u->hasStatus(Status::PsiShield) == true) {
        u->removeStatus(Status::PsiShield);
        return true;
    }
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__16StatusPsiCounter.inc", void dt__16StatusPsiCounter());

bool StatusPsiShield::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->getStatusTypeCount(type()) <= 2) {
            return false;
        }
    }
    return true;
}

bool StatusPsiShield::status_90() {
    if (Status::status_90() == true) return true;

    Unit* u = this->unit();

    if (u->hasStatus(Status::Shield) == true) {
        u->removeStatus(Status::Shield);
        return true;
    }
    
    if (u->hasStatus(Status::Counter) == true) {
        u->removeStatus(Status::Counter);
        return true;
    }
    
    if (u->hasStatus(Status::PsiCounter) == true) {
        u->removeStatus(Status::PsiCounter);
        return true;
    }
    return false;
}

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

bool StatusCounter::status_90() {
    if (Status::status_90() == true) return true;

    Unit* u = this->unit();

    if (u->hasStatus(Status::Shield) == true) {
        u->removeStatus(Status::Shield);
        return true;
    }
    
    if (u->hasStatus(Status::PsiShield) == true) {
        u->removeStatus(Status::PsiShield);
        return true;
    }
    
    if (u->hasStatus(Status::PsiCounter) == true) {
        u->removeStatus(Status::PsiCounter);
        return true;
    }
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__13StatusCounter.inc", void dt__13StatusCounter());

bool StatusShield::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->getStatusTypeCount(type()) <= 2) {
            return false;
        }
    }
    return true;
}

bool StatusShield::status_90() {
    if (Status::status_90() == true) return true;

    Unit* u = this->unit();

    if (u->hasStatus(Status::Counter) == true) {
        u->removeStatus(Status::Counter);
        return true;
    }
    
    if (u->hasStatus(Status::PsiShield) == true) {
        u->removeStatus(Status::PsiShield);
        return true;
    }
    
    if (u->hasStatus(Status::PsiCounter) == true) {
        u->removeStatus(Status::PsiCounter);
        return true;
    }
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusShield.inc", void dt__12StatusShield());

bool StatusOnFire::onUnitTurnBegin(Unit* unit) {
    if (Status::onUnitTurnBegin(unit) != true) return false;
    
    if (unit == this->unit()) {
        this->activeMsg().print(Color::Black(), true);
        
        hitPlayer(unit, sub_0807066C(unit->maxHP(), 20), true);
        
        PlayAnimation(Animation::Reject, unit, unit); 
    }
    return true;
}

bool StatusOnFire::disableAllStatuses() {
    if (Status::disableAllStatuses() != true) {
        if (unit()->hasStatus(type()) != true) {
            return false;
        }
    }
    return true;
}

extern "C" ASM_FUNC("asm/non_matching/statusImpl/dt__12StatusOnFire.inc", void dt__12StatusOnFire());

bool StatusPoison::onUnitTurnBegin(Unit* unit) {
    if (Status::onUnitTurnBegin(unit) != true) return false;
    
    if (unit == this->unit()) {
        this->activeMsg().print(Color::Black(), true);
        
        hitPlayer(unit, sub_0807066C(unit->maxHP(), 20), true);
        
        PlayAnimation(Animation::Reject, unit, unit); 
    }
    return true;
}

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

#ifndef GUESTSKILL_H
#define GUESTSKILL_H

#include "core/base.h"

class GuestSkill : public Base {
public:
    GuestSkill();
    virtual ~GuestSkill();
};

SINGLETON(GuestSkill);

#endif  // GUESTSKILL_H

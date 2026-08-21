#ifndef BATTLE_STATUS_IMPL_H
#define BATTLE_STATUS_IMPL_H

#include "battle/status.h"
#include "factory.h"

class DefaultStatus : public Status {
public:
    DefaultStatus(u16 type, Unit* unit);
    virtual ~DefaultStatus();
};

#endif  // BATTLE_STATUS_IMPL_H
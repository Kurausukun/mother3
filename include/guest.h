#ifndef GUEST_H
#define GUEST_H

#include "core/unit.h"

class Guest : public Unit {
public:
    Guest();
    virtual ~Guest();

    bool unit_178();
    u32 unit_180();
    Unit* unit_188(Unit* u);

    s32 getLevel() const;
    bool unit_208();
    bool unit_210();
    bool unit_218();

    virtual void guest_2c0();
    virtual void guest_2c8();
    virtual void guest_2d0();
    virtual void guest_2d8();
    virtual void guest_2e0();

    u16 _f8;
    u16 _fa;
    u8* _fc;
};

#endif  // GUEST_H

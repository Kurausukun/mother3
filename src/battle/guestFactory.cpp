#include "battle/guestFactory.h"

extern void* (*sGuestSpawners[])(u16 id);

void GuestFactory::init() {
    for (u32 i = 0; i < 16; i++) {
        put(i, DefaultGuestFactory::create);
    }
    put(PartyMemberID::Thomas, ThomasFactory::create);
    put(PartyMemberID::Fuel, FuelFactory::create);
    put(PartyMemberID::Alec, AlecFactory::create);
    put(PartyMemberID::Wess, WessFactory::create);
    put(PartyMemberID::Fassad, FassadFactory::create);
    put(PartyMemberID::Ionia, IoniaFactory::create);
}

void GuestFactory::put(u16 id, void* (*spawn)(u16 id)) {
    sGuestSpawners[id] = spawn;
}

void* GuestFactory::create(u16 id) {
    return sGuestSpawners[id](id);
}

#include "battle/guestFactory.h"

extern void* (*sGuestSpawners[])(u16 id);

void GuestFactory::init() {
    for (u32 i = 0; i < 16; i++) {
        put(i, DefaultGuestFactory::create);
    }
    put(GuestID::Thomas, ThomasFactory::create);
    put(GuestID::Fuel, FuelFactory::create);
    put(GuestID::Alec, AlecFactory::create);
    put(GuestID::Wess, WessFactory::create);
    put(GuestID::Fassad, FassadFactory::create);
    put(GuestID::Ionia, IoniaFactory::create);
}

void GuestFactory::put(u16 id, void* (*spawn)(u16 id)) {
    sGuestSpawners[id] = spawn;
}

void* GuestFactory::create(u16 id) {
    return sGuestSpawners[id](id);
}

#include "battle/guestFactory.h"

extern void* (*sGuestSpawners[])(u16 id);

void GuestFactory::init() {
    for (u32 i = 0; i < 16; i++) {
        put(i, DefaultGuestSingleton::init);
    }
    put(GuestID::Thomas, ThomasSingleton::init);
    put(GuestID::Fuel, FuelSingleton::init);
    put(GuestID::Alec, AlecSingleton::init);
    put(GuestID::Wess, WessSingleton::init);
    put(GuestID::Fassad, FassadSingleton::init);
    put(GuestID::Ionia, IoniaSingleton::init);
}

void GuestFactory::put(u16 id, void* (*spawn)(u16 id)) {
    sGuestSpawners[id] = spawn;
}

void* GuestFactory::create(u16 id) {
    return sGuestSpawners[id](id);
}

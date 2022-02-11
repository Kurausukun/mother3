#include "guestFactory.h"

extern void* (*sGuestSpawners[])(u16 id);

void GuestFactory::init() {
    for (u32 i = 0; i < 16; i++) {
        put(i, DefaultGuestSingleton::init);
    }
    put(8, ThomasSingleton::init);
    put(10, FuelSingleton::init);
    put(11, AlecSingleton::init);
    put(7, WessSingleton::init);
    put(12, FassadSingleton::init);
    put(9, IoniaSingleton::init);
}

void GuestFactory::put(u16 id, void* (*spawn)(u16 id)) {
    sGuestSpawners[id] = spawn;
}

void* GuestFactory::create(u16 id) {
    return sGuestSpawners[id](id);
}

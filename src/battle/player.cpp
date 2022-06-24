#include "battle/player.h"
#include "structs.h"

u32 gUnknown_020021AC;
void* gUnknown_02004EE2;

extern "C" void* getPlayerRTTI() {
    return &gUnknown_020021AC;
}

extern "C" void* sub_0807A8C0() {
    return getPlayerRTTI();
}

Msg createPlayerName(u16 pl) {
    if (pl == 14) {
        return Msg::genMisctextMsg(&gUnknown_02004EE2, 9);
    }
    return Msg::genMisctextMsg(gCharStats[pl].name, 8);
}

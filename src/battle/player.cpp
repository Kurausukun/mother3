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

extern "C" ASM_FUNC("asm/non_matching/player/sub_0807A904.inc", void sub_0807A904());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807AAEC.inc", void sub_0807AAEC());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807AC28.inc", void sub_0807AC28());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807AC60.inc", void sub_0807AC60());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807ACA0.inc", void sub_0807ACA0());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807ACF0.inc", void sub_0807ACF0());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807ADA4.inc", void sub_0807ADA4());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807AEC8.inc", void sub_0807AEC8());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807AF20.inc", void sub_0807AF20());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807AFC4.inc", void sub_0807AFC4());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807B040.inc", void sub_0807B040());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807B168.inc", void sub_0807B168());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807B418.inc", void sub_0807B418());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807B444.inc", void sub_0807B444());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807B450.inc", void sub_0807B450());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807B4B8.inc", void sub_0807B4B8());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807B4D8.inc", void sub_0807B4D8());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807B4F8.inc", void sub_0807B4F8());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807B528.inc", void sub_0807B528());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807B5D4.inc", void sub_0807B5D4());
extern "C" ASM_FUNC("asm/non_matching/player/levelUp.inc", void levelUp());
extern "C" ASM_FUNC("asm/non_matching/player/tellStatUpgrade.inc", void tellStatUpgrade());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BAE4.inc", void sub_0807BAE4());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BB1C.inc", void sub_0807BB1C());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BBA4.inc", void sub_0807BBA4());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BBD8.inc", void sub_0807BBD8());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BBE8.inc", void sub_0807BBE8());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BBF8.inc", void sub_0807BBF8());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BC18.inc", void sub_0807BC18());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BC4C.inc", void sub_0807BC4C());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BC5C.inc", void sub_0807BC5C());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BC6C.inc", void sub_0807BC6C());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BC74.inc", void sub_0807BC74());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BC80.inc", void sub_0807BC80());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BCB0.inc", void sub_0807BCB0());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BCC4.inc", void sub_0807BCC4());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BCCC.inc", void sub_0807BCCC());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BCF4.inc", void sub_0807BCF4());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BD04.inc", void sub_0807BD04());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BD14.inc", void sub_0807BD14());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BD24.inc", void sub_0807BD24());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BD34.inc", void sub_0807BD34());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BD44.inc", void sub_0807BD44());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BD54.inc", void sub_0807BD54());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BD64.inc", void sub_0807BD64());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BD74.inc", void sub_0807BD74());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BD98.inc", void sub_0807BD98());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BD9C.inc", void sub_0807BD9C());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BDB4.inc", void sub_0807BDB4());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BE24.inc", void sub_0807BE24());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BE84.inc", void sub_0807BE84());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BE90.inc", void sub_0807BE90());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BEA0.inc", void sub_0807BEA0());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BF10.inc", void sub_0807BF10());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BF70.inc", void sub_0807BF70());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BF7C.inc", void sub_0807BF7C());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BF8C.inc", void sub_0807BF8C());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807BFC8.inc", void sub_0807BFC8());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C030.inc", void sub_0807C030());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C09C.inc", void sub_0807C09C());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C108.inc", void sub_0807C108());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C114.inc", void sub_0807C114());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C124.inc", void sub_0807C124());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C134.inc", void sub_0807C134());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C144.inc", void sub_0807C144());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C188.inc", void sub_0807C188());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C1C8.inc", void sub_0807C1C8());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C1E4.inc", void sub_0807C1E4());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C244.inc", void sub_0807C244());
extern "C" ASM_FUNC("asm/non_matching/player/nullsub_31.inc", void nullsub_31());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C264.inc", void sub_0807C264());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C324.inc", void sub_0807C324());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C378.inc", void sub_0807C378());
extern "C" ASM_FUNC("asm/non_matching/player/sub_0807C4D4.inc", void sub_0807C4D4());

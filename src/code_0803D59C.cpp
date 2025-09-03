// Auto-generated source file
#include "global.h"
#include "gba/gba.h"
#include "battle/irc.h"

extern IrqTable gIntrHandlers;
extern const IrqTable gUnknown_080C7668;
extern const IrqTable gUnknown_080C7628;
extern const IrqTable gUnknown_080C7DB0;
extern const IrqTable gUnknown_080C5FA0;
extern u16 gUnknown_03004B00;

extern "C" void sub_0803E3D8();
extern "C" void sub_0805AFCC();
extern "C" void sub_080018F4();

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D59C.inc", void sub_0803D59C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D5EC.inc", void sub_0803D5EC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D61C.inc", void sub_0803D61C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D678.inc", void sub_0803D678());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D6C8.inc", void sub_0803D6C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D718.inc", void sub_0803D718());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D7CC.inc", void sub_0803D7CC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D878.inc", void sub_0803D878());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D9A8.inc", void sub_0803D9A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DAAC.inc", void sub_0803DAAC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DBB8.inc", void sub_0803DBB8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DCE4.inc", void sub_0803DCE4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DD1C.inc", void sub_0803DD1C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DD3C.inc", void sub_0803DD3C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DD5C.inc", void sub_0803DD5C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DDD8.inc", void sub_0803DDD8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DE08.inc", void sub_0803DE08());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DE38.inc", void sub_0803DE38());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DF48.inc", void sub_0803DF48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DF94.inc", void sub_0803DF94());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E0EC.inc", void sub_0803E0EC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E16C.inc", void sub_0803E16C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E260.inc", void sub_0803E260());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E2B0.inc", void sub_0803E2B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E2E4.inc", void sub_0803E2E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_75.inc", void nullsub_75());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_7.inc", void nullsub_7());

extern "C" void sub_0803E304(void) {
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
    REG_DISPSTAT &= ~(DISPSTAT_VBLANK_INTR | DISPSTAT_HBLANK_INTR);
    memcpy(&gIntrHandlers, &gUnknown_080C5FA0, sizeof(gUnknown_080C5FA0));
    gUnknown_03004B00 = 0;
    REG_IME = 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E358.inc", void sub_0803E358());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E3B4.inc", void sub_0803E3B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E3C0.inc", void sub_0803E3C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_76.inc", void nullsub_76());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E3D8.inc", void sub_0803E3D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E3EC.inc", void sub_0803E3EC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_77.inc", void nullsub_77());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E408.inc", void sub_0803E408());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E46C.inc", void sub_0803E46C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_78.inc", void nullsub_78());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_79.inc", void nullsub_79());

extern "C" void sub_0803E4B8(void) {
    REG_IME = 0;
    REG_IE |= INTR_FLAG_VCOUNT;
    REG_DISPSTAT |= DISPSTAT_VCOUNT_INTR;
    REG_DISPSTAT &= 0xFF;
    REG_DISPSTAT |= 0xA000;
    gIntrHandlers.vcount = sub_0803E3D8;
    REG_IME = 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E50C.inc", void sub_0803E50C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E578.inc", void sub_0803E578());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E6EC.inc", void sub_0803E6EC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E738.inc", void sub_0803E738());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E834.inc", void sub_0803E834());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E844.inc", void sub_0803E844());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E908.inc", void sub_0803E908());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EA4C.inc", void sub_0803EA4C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EAEC.inc", void sub_0803EAEC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EB78.inc", void sub_0803EB78());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EC28.inc", void sub_0803EC28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EC80.inc", void sub_0803EC80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803ECC0.inc", void sub_0803ECC0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EE20.inc", void sub_0803EE20());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EE34.inc", void sub_0803EE34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EE78.inc", void sub_0803EE78());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EEA0.inc", void sub_0803EEA0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F038.inc", void sub_0803F038());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F068.inc", void sub_0803F068());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F0A4.inc", void sub_0803F0A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F124.inc", void sub_0803F124());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F1A0.inc", void sub_0803F1A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F1AC.inc", void sub_0803F1AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F260.inc", void sub_0803F260());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F36C.inc", void sub_0803F36C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F3B0.inc", void sub_0803F3B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F424.inc", void sub_0803F424());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F5CC.inc", void sub_0803F5CC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F774.inc", void sub_0803F774());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F8F8.inc", void sub_0803F8F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FA8C.inc", void sub_0803FA8C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FAC8.inc", void sub_0803FAC8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FB60.inc", void sub_0803FB60());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FC74.inc", void sub_0803FC74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FC94.inc", void sub_0803FC94());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FCC4.inc", void sub_0803FCC4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FD14.inc", void sub_0803FD14());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FD48.inc", void sub_0803FD48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FE48.inc", void sub_0803FE48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FE7C.inc", void sub_0803FE7C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FEB0.inc", void sub_0803FEB0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FEF4.inc", void sub_0803FEF4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FF50.inc", void sub_0803FF50());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FFF4.inc", void sub_0803FFF4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040024.inc", void sub_08040024());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040090.inc", void sub_08040090());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080400D4.inc", void sub_080400D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040164.inc", void sub_08040164());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080401BC.inc", void sub_080401BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040298.inc", void sub_08040298());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804037C.inc", void sub_0804037C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080407AC.inc", void sub_080407AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080407E4.inc", void sub_080407E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080409B8.inc", void sub_080409B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040B20.inc", void sub_08040B20());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040B58.inc", void sub_08040B58());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040FAC.inc", void sub_08040FAC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040FE4.inc", void sub_08040FE4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08041118.inc", void sub_08041118());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08041150.inc", void sub_08041150());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080414E4.inc", void sub_080414E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804151C.inc", void sub_0804151C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080415E4.inc", void sub_080415E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804165C.inc", void sub_0804165C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080417F8.inc", void sub_080417F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08041864.inc", void sub_08041864());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080418F8.inc", void sub_080418F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08041C5C.inc", void sub_08041C5C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08041F14.inc", void sub_08041F14());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08041F80.inc", void sub_08041F80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08042014.inc", void sub_08042014());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080422B4.inc", void sub_080422B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804254C.inc", void sub_0804254C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08042838.inc", void sub_08042838());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08042A6C.inc", void sub_08042A6C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08042B88.inc", void sub_08042B88());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08042D48.inc", void sub_08042D48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08042F50.inc", void sub_08042F50());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080430B4.inc", void sub_080430B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080431FC.inc", void sub_080431FC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804337C.inc", void sub_0804337C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804389C.inc", void sub_0804389C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08043EB4.inc", void sub_08043EB4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080441BC.inc", void sub_080441BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080442D8.inc", void sub_080442D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080443A4.inc", void sub_080443A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044414.inc", void sub_08044414());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080444AC.inc", void sub_080444AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044560.inc", void sub_08044560());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044598.inc", void sub_08044598());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080445DC.inc", void sub_080445DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044614.inc", void sub_08044614());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080446E8.inc", void sub_080446E8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080447A4.inc", void sub_080447A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044860.inc", void sub_08044860());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080449C0.inc", void sub_080449C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044AD8.inc", void sub_08044AD8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044C8C.inc", void sub_08044C8C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044DA8.inc", void sub_08044DA8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044E84.inc", void sub_08044E84());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044F00.inc", void sub_08044F00());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045390.inc", void sub_08045390());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080453D4.inc", void sub_080453D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080454F0.inc", void sub_080454F0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804557C.inc", void sub_0804557C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080457D0.inc", void sub_080457D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045854.inc", void sub_08045854());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080458B8.inc", void sub_080458B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804598C.inc", void sub_0804598C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_080.inc", void nullsub_080());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_081.inc", void nullsub_081());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_082.inc", void nullsub_082());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045C34.inc", void sub_08045C34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045CD0.inc", void sub_08045CD0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045D50.inc", void sub_08045D50());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045E04.inc", void sub_08045E04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045EA8.inc", void sub_08045EA8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045F88.inc", void sub_08045F88());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080460C8.inc", void sub_080460C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080461DC.inc", void sub_080461DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804626C.inc", void sub_0804626C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804631C.inc", void sub_0804631C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080463F8.inc", void sub_080463F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080464A8.inc", void sub_080464A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046510.inc", void sub_08046510());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080465F8.inc", void sub_080465F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080467C0.inc", void sub_080467C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046974.inc", void sub_08046974());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080469CC.inc", void sub_080469CC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046A28.inc", void sub_08046A28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046A64.inc", void sub_08046A64());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046AF8.inc", void sub_08046AF8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046BA8.inc", void sub_08046BA8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046CE8.inc", void sub_08046CE8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046D0C.inc", void sub_08046D0C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046D2C.inc", void sub_08046D2C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046D90.inc", void sub_08046D90());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046EF0.inc", void sub_08046EF0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046FD8.inc", void sub_08046FD8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080470A8.inc", void sub_080470A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080471B4.inc", void sub_080471B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080472BC.inc", void sub_080472BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080473EC.inc", void sub_080473EC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080475A4.inc", void sub_080475A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080476A0.inc", void sub_080476A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080476C0.inc", void sub_080476C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_42.inc", void nullsub_42());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_43.inc", void nullsub_43());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804774C.inc", void sub_0804774C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080477BC.inc", void sub_080477BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_44.inc", void nullsub_44());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_45.inc", void nullsub_45());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047834.inc", void sub_08047834());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047900.inc", void sub_08047900());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080479DC.inc", void sub_080479DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047A28.inc", void sub_08047A28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_083.inc", void nullsub_083());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_084.inc", void nullsub_084());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047A78.inc", void sub_08047A78());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047B0C.inc", void sub_08047B0C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047B9C.inc", void sub_08047B9C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047C3C.inc", void sub_08047C3C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047CDC.inc", void sub_08047CDC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047D90.inc", void sub_08047D90());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047E04.inc", void sub_08047E04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047E48.inc", void sub_08047E48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047EA4.inc", void sub_08047EA4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047F28.inc", void sub_08047F28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047FD4.inc", void sub_08047FD4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048074.inc", void sub_08048074());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048108.inc", void sub_08048108());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048158.inc", void sub_08048158());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080481DC.inc", void sub_080481DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048214.inc", void sub_08048214());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048308.inc", void sub_08048308());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080483E0.inc", void sub_080483E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080484A8.inc", void sub_080484A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080484FC.inc", void sub_080484FC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048534.inc", void sub_08048534());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048550.inc", void sub_08048550());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080485C4.inc", void sub_080485C4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804863C.inc", void sub_0804863C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804865C.inc", void sub_0804865C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080486A0.inc", void sub_080486A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080486D8.inc", void sub_080486D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048710.inc", void sub_08048710());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048748.inc", void sub_08048748());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080487A0.inc", void sub_080487A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080487D4.inc", void sub_080487D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048878.inc", void sub_08048878());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080489F8.inc", void sub_080489F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048B58.inc", void sub_08048B58());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048C5C.inc", void sub_08048C5C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048CE4.inc", void sub_08048CE4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048EF8.inc", void sub_08048EF8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048F74.inc", void sub_08048F74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048FEC.inc", void sub_08048FEC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080490D0.inc", void sub_080490D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049160.inc", void sub_08049160());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080491F0.inc", void sub_080491F0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049280.inc", void sub_08049280());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080492D0.inc", void sub_080492D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080495C8.inc", void sub_080495C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080496F8.inc", void sub_080496F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049740.inc", void sub_08049740());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080497D0.inc", void sub_080497D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049838.inc", void sub_08049838());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049894.inc", void sub_08049894());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080498B0.inc", void sub_080498B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080498C4.inc", void sub_080498C4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080498E4.inc", void sub_080498E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049954.inc", void sub_08049954());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080499A4.inc", void sub_080499A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080499D0.inc", void sub_080499D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049AF8.inc", void sub_08049AF8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049B70.inc", void sub_08049B70());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049C70.inc", void sub_08049C70());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049D5C.inc", void sub_08049D5C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049DC4.inc", void sub_08049DC4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049DF8.inc", void sub_08049DF8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049E20.inc", void sub_08049E20());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049E48.inc", void sub_08049E48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049E70.inc", void sub_08049E70());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049E98.inc", void sub_08049E98());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049EC0.inc", void sub_08049EC0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049EE8.inc", void sub_08049EE8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049F10.inc", void sub_08049F10());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049F38.inc", void sub_08049F38());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049F60.inc", void sub_08049F60());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049F88.inc", void sub_08049F88());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049FB0.inc", void sub_08049FB0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049FD8.inc", void sub_08049FD8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A000.inc", void sub_0804A000());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A028.inc", void sub_0804A028());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A050.inc", void sub_0804A050());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A078.inc", void sub_0804A078());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A0A8.inc", void sub_0804A0A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A15C.inc", void sub_0804A15C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A188.inc", void sub_0804A188());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A1C0.inc", void sub_0804A1C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A218.inc", void sub_0804A218());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A2E0.inc", void sub_0804A2E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A398.inc", void sub_0804A398());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A3F0.inc", void sub_0804A3F0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A448.inc", void sub_0804A448());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A508.inc", void sub_0804A508());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A550.inc", void sub_0804A550());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A628.inc", void sub_0804A628());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A6F4.inc", void sub_0804A6F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A738.inc", void sub_0804A738());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A7B8.inc", void sub_0804A7B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A8B4.inc", void sub_0804A8B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804AA38.inc", void sub_0804AA38());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804AB00.inc", void sub_0804AB00());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804AB48.inc", void sub_0804AB48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804ADC8.inc", void sub_0804ADC8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804AE4C.inc", void sub_0804AE4C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804AFC8.inc", void sub_0804AFC8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B08C.inc", void sub_0804B08C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B218.inc", void sub_0804B218());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B334.inc", void sub_0804B334());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B3F8.inc", void sub_0804B3F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B4B0.inc", void sub_0804B4B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_085.inc", void nullsub_085());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B660.inc", void sub_0804B660());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B6E8.inc", void sub_0804B6E8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B744.inc", void sub_0804B744());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B790.inc", void sub_0804B790());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B804.inc", void sub_0804B804());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B84C.inc", void sub_0804B84C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B87C.inc", void sub_0804B87C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B940.inc", void sub_0804B940());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B97C.inc", void sub_0804B97C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BA28.inc", void sub_0804BA28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BA3C.inc", void sub_0804BA3C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BA60.inc", void sub_0804BA60());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BA6C.inc", void sub_0804BA6C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BB10.inc", void sub_0804BB10());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BB28.inc", void sub_0804BB28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BB58.inc", void sub_0804BB58());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BD34.inc", void sub_0804BD34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BD84.inc", void sub_0804BD84());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BE64.inc", void sub_0804BE64());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BEB4.inc", void sub_0804BEB4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BEFC.inc", void sub_0804BEFC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BF34.inc", void sub_0804BF34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BF7C.inc", void sub_0804BF7C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BFCC.inc", void sub_0804BFCC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C004.inc", void sub_0804C004());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C050.inc", void sub_0804C050());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C1E8.inc", void sub_0804C1E8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C228.inc", void sub_0804C228());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C254.inc", void sub_0804C254());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C2A4.inc", void sub_0804C2A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C2E0.inc", void sub_0804C2E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C330.inc", void sub_0804C330());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C35C.inc", void sub_0804C35C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C398.inc", void sub_0804C398());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C3E0.inc", void sub_0804C3E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C408.inc", void sub_0804C408());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C4B4.inc", void sub_0804C4B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C51C.inc", void sub_0804C51C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C5B0.inc", void sub_0804C5B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C68C.inc", void sub_0804C68C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_23.inc", void nullsub_23());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C8C0.inc", void sub_0804C8C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C944.inc", void sub_0804C944());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/exec_menu.inc", void exec_menu());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804CAB0.inc", void sub_0804CAB0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804CC48.inc", void sub_0804CC48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804CCF4.inc", void sub_0804CCF4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804CD04.inc", void sub_0804CD04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804CE5C.inc", void sub_0804CE5C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804CF20.inc", void sub_0804CF20());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804D070.inc", void sub_0804D070());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804D118.inc", void sub_0804D118());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804D18C.inc", void sub_0804D18C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804D394.inc", void sub_0804D394());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804D3F4.inc", void sub_0804D3F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804D474.inc", void sub_0804D474());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804D5E0.inc", void sub_0804D5E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804D704.inc", void sub_0804D704());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804D764.inc", void sub_0804D764());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804D7E4.inc", void sub_0804D7E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804D8D4.inc", void sub_0804D8D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804D9FC.inc", void sub_0804D9FC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804DB54.inc", void sub_0804DB54());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804DBE8.inc", void sub_0804DBE8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804DC5C.inc", void sub_0804DC5C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804DE00.inc", void sub_0804DE00());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804DECC.inc", void sub_0804DECC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804DF30.inc", void sub_0804DF30());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804DFE4.inc", void sub_0804DFE4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E078.inc", void sub_0804E078());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E118.inc", void sub_0804E118());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E16C.inc", void sub_0804E16C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E3AC.inc", void sub_0804E3AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E3E0.inc", void sub_0804E3E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E414.inc", void sub_0804E414());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E47C.inc", void sub_0804E47C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E558.inc", void sub_0804E558());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E5C4.inc", void sub_0804E5C4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E7D4.inc", void sub_0804E7D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E810.inc", void sub_0804E810());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E860.inc", void sub_0804E860());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E8B8.inc", void sub_0804E8B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E8E8.inc", void sub_0804E8E8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E938.inc", void sub_0804E938());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E968.inc", void sub_0804E968());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E998.inc", void sub_0804E998());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E9C8.inc", void sub_0804E9C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E9F8.inc", void sub_0804E9F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EA28.inc", void sub_0804EA28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EAA4.inc", void sub_0804EAA4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EB68.inc", void sub_0804EB68());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804ECC8.inc", void sub_0804ECC8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EDFC.inc", void sub_0804EDFC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_21.inc", void nullsub_21());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EE64.inc", void sub_0804EE64());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EEE8.inc", void sub_0804EEE8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EF38.inc", void sub_0804EF38());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EF9C.inc", void sub_0804EF9C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EFD4.inc", void sub_0804EFD4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F01C.inc", void sub_0804F01C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F0D4.inc", void sub_0804F0D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F158.inc", void sub_0804F158());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F190.inc", void sub_0804F190());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F1D8.inc", void sub_0804F1D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F294.inc", void sub_0804F294());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F334.inc", void sub_0804F334());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F3EC.inc", void sub_0804F3EC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F4E4.inc", void sub_0804F4E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F51C.inc", void sub_0804F51C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F6C8.inc", void sub_0804F6C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F7B0.inc", void sub_0804F7B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F890.inc", void sub_0804F890());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F968.inc", void sub_0804F968());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804FA5C.inc", void sub_0804FA5C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804FCB0.inc", void sub_0804FCB0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804FDE0.inc", void sub_0804FDE0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804FE84.inc", void sub_0804FE84());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804FF30.inc", void sub_0804FF30());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050008.inc", void sub_08050008());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080500D4.inc", void sub_080500D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050218.inc", void sub_08050218());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805030C.inc", void sub_0805030C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080503DC.inc", void sub_080503DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050458.inc", void sub_08050458());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080505D8.inc", void sub_080505D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050628.inc", void sub_08050628());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080506A4.inc", void sub_080506A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080506CC.inc", void sub_080506CC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050734.inc", void sub_08050734());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050738.inc", void sub_08050738());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050790.inc", void sub_08050790());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050948.inc", void sub_08050948());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080509B0.inc", void sub_080509B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050A74.inc", void sub_08050A74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050B60.inc", void sub_08050B60());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050C08.inc", void sub_08050C08());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050C68.inc", void sub_08050C68());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050D00.inc", void sub_08050D00());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050D64.inc", void sub_08050D64());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050D80.inc", void sub_08050D80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050DB4.inc", void sub_08050DB4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050DE0.inc", void sub_08050DE0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050E20.inc", void sub_08050E20());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050E64.inc", void sub_08050E64());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050E94.inc", void sub_08050E94());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050EEC.inc", void sub_08050EEC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050F2C.inc", void sub_08050F2C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050F88.inc", void sub_08050F88());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050FCC.inc", void sub_08050FCC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050FD8.inc", void sub_08050FD8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050FF0.inc", void sub_08050FF0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051058.inc", void sub_08051058());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051080.inc", void sub_08051080());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805108C.inc", void sub_0805108C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080510A4.inc", void sub_080510A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080510B8.inc", void sub_080510B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805111C.inc", void sub_0805111C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051144.inc", void sub_08051144());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080511B4.inc", void sub_080511B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080511F8.inc", void sub_080511F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051254.inc", void sub_08051254());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_22.inc", void nullsub_22());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080512B8.inc", void sub_080512B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080512CC.inc", void sub_080512CC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051448.inc", void sub_08051448());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805153C.inc", void sub_0805153C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080515DC.inc", void sub_080515DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051678.inc", void sub_08051678());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805173C.inc", void sub_0805173C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805179C.inc", void sub_0805179C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080517AC.inc", void sub_080517AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051840.inc", void sub_08051840());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051908.inc", void sub_08051908());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805191C.inc", void sub_0805191C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080519C4.inc", void sub_080519C4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051A08.inc", void sub_08051A08());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051A74.inc", void sub_08051A74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051B48.inc", void sub_08051B48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051BDC.inc", void sub_08051BDC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051C28.inc", void sub_08051C28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_24.inc", void nullsub_24());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051C38.inc", void sub_08051C38());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051C74.inc", void sub_08051C74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051CF4.inc", void sub_08051CF4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051F80.inc", void sub_08051F80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052054.inc", void sub_08052054());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052088.inc", void sub_08052088());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052094.inc", void sub_08052094());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080520A0.inc", void sub_080520A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052100.inc", void sub_08052100());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052128.inc", void sub_08052128());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805213C.inc", void sub_0805213C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805217C.inc", void sub_0805217C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052184.inc", void sub_08052184());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080521A4.inc", void sub_080521A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052208.inc", void sub_08052208());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080522A8.inc", void sub_080522A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052360.inc", void sub_08052360());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080523B8.inc", void sub_080523B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080523D4.inc", void sub_080523D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805244C.inc", void sub_0805244C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080524EC.inc", void sub_080524EC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805255C.inc", void sub_0805255C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052678.inc", void sub_08052678());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805270C.inc", void sub_0805270C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805280C.inc", void sub_0805280C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052864.inc", void sub_08052864());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080528A0.inc", void sub_080528A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052964.inc", void sub_08052964());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052A64.inc", void sub_08052A64());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052AFC.inc", void sub_08052AFC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052BE0.inc", void sub_08052BE0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052CC4.inc", void sub_08052CC4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052D1C.inc", void sub_08052D1C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052DBC.inc", void sub_08052DBC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052EA4.inc", void sub_08052EA4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052EC0.inc", void sub_08052EC0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052F74.inc", void sub_08052F74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052F80.inc", void sub_08052F80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052F9C.inc", void sub_08052F9C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052FC8.inc", void sub_08052FC8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053034.inc", void sub_08053034());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053148.inc", void sub_08053148());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080531C8.inc", void sub_080531C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053234.inc", void sub_08053234());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080532E0.inc", void sub_080532E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053384.inc", void sub_08053384());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080533F0.inc", void sub_080533F0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805345C.inc", void sub_0805345C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080534C8.inc", void sub_080534C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053598.inc", void sub_08053598());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053620.inc", void sub_08053620());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080536F8.inc", void sub_080536F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053754.inc", void sub_08053754());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053804.inc", void sub_08053804());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053968.inc", void sub_08053968());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053AC8.inc", void sub_08053AC8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053C34.inc", void sub_08053C34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053E98.inc", void sub_08053E98());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053EEC.inc", void sub_08053EEC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054108.inc", void sub_08054108());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054130.inc", void sub_08054130());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054200.inc", void sub_08054200());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054264.inc", void sub_08054264());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080542FC.inc", void sub_080542FC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054360.inc", void sub_08054360());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805438C.inc", void sub_0805438C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080543E8.inc", void sub_080543E8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080544F8.inc", void sub_080544F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054528.inc", void sub_08054528());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054558.inc", void sub_08054558());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805458C.inc", void sub_0805458C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080545C0.inc", void sub_080545C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054604.inc", void sub_08054604());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054640.inc", void sub_08054640());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054670.inc", void sub_08054670());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054694.inc", void sub_08054694());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080546B0.inc", void sub_080546B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080546D8.inc", void sub_080546D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054720.inc", void sub_08054720());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805476C.inc", void sub_0805476C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080547A4.inc", void sub_080547A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805486C.inc", void sub_0805486C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805493C.inc", void sub_0805493C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054A90.inc", void sub_08054A90());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054B30.inc", void sub_08054B30());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054B74.inc", void sub_08054B74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054BB8.inc", void sub_08054BB8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054BE0.inc", void sub_08054BE0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054CA4.inc", void sub_08054CA4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054CDC.inc", void sub_08054CDC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054EF4.inc", void sub_08054EF4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054F34.inc", void sub_08054F34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054F5C.inc", void sub_08054F5C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054FB8.inc", void sub_08054FB8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054FCC.inc", void sub_08054FCC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054FE0.inc", void sub_08054FE0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054FF0.inc", void sub_08054FF0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055008.inc", void sub_08055008());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055038.inc", void sub_08055038());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805504C.inc", void sub_0805504C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055068.inc", void sub_08055068());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055098.inc", void sub_08055098());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080550D8.inc", void sub_080550D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055104.inc", void sub_08055104());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055138.inc", void sub_08055138());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055180.inc", void sub_08055180());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055190.inc", void sub_08055190());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080551B0.inc", void sub_080551B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805521C.inc", void sub_0805521C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055254.inc", void sub_08055254());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080552B8.inc", void sub_080552B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080552E4.inc", void sub_080552E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805534C.inc", void sub_0805534C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805548C.inc", void sub_0805548C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055558.inc", void sub_08055558());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055594.inc", void sub_08055594());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055694.inc", void sub_08055694());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055750.inc", void sub_08055750());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055788.inc", void sub_08055788());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080557C0.inc", void sub_080557C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080557F4.inc", void sub_080557F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055828.inc", void sub_08055828());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805585C.inc", void sub_0805585C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055890.inc", void sub_08055890());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080558CC.inc", void sub_080558CC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805592C.inc", void sub_0805592C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805597C.inc", void sub_0805597C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055AB4.inc", void sub_08055AB4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055B50.inc", void sub_08055B50());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055BE0.inc", void sub_08055BE0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055C80.inc", void sub_08055C80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055D20.inc", void sub_08055D20());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055D3C.inc", void sub_08055D3C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055DA4.inc", void sub_08055DA4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055E00.inc", void sub_08055E00());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055F44.inc", void sub_08055F44());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055FD4.inc", void sub_08055FD4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805601C.inc", void sub_0805601C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080560AC.inc", void sub_080560AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080560F8.inc", void sub_080560F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805614C.inc", void sub_0805614C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056160.inc", void sub_08056160());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805629C.inc", void sub_0805629C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056334.inc", void sub_08056334());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056408.inc", void sub_08056408());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080564C0.inc", void sub_080564C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805650C.inc", void sub_0805650C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056534.inc", void sub_08056534());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805655C.inc", void sub_0805655C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056584.inc", void sub_08056584());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056620.inc", void sub_08056620());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056740.inc", void sub_08056740());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080567E0.inc", void sub_080567E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805685C.inc", void sub_0805685C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805689C.inc", void sub_0805689C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080568D0.inc", void sub_080568D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080568E0.inc", void sub_080568E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_08.inc", void nullsub_08());

extern "C" void sub_080568F4(void) {
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
    REG_DISPSTAT &= ~(DISPSTAT_VBLANK_INTR | DISPSTAT_HBLANK_INTR);
    memcpy(&gIntrHandlers, &gUnknown_080C7628, sizeof(gUnknown_080C7628));
    gUnknown_03004B00 = 0;
    REG_IME = 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056948.inc", void sub_08056948());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080569A8.inc", void sub_080569A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_086.inc", void nullsub_086());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_087.inc", void nullsub_087());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080569BC.inc", void sub_080569BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056A20.inc", void sub_08056A20());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056A4C.inc", void sub_08056A4C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056A80.inc", void sub_08056A80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056AF0.inc", void sub_08056AF0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056B18.inc", void sub_08056B18());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056C8C.inc", void sub_08056C8C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056CC0.inc", void sub_08056CC0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056D78.inc", void sub_08056D78());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056E28.inc", void sub_08056E28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056E68.inc", void sub_08056E68());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056F58.inc", void sub_08056F58());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056F6C.inc", void sub_08056F6C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056FB0.inc", void sub_08056FB0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056FBC.inc", void sub_08056FBC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057044.inc", void sub_08057044());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057050.inc", void sub_08057050());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805708C.inc", void sub_0805708C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080570F0.inc", void sub_080570F0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057110.inc", void sub_08057110());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057130.inc", void sub_08057130());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057150.inc", void sub_08057150());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057170.inc", void sub_08057170());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057204.inc", void sub_08057204());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057250.inc", void sub_08057250());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057290.inc", void sub_08057290());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080572F8.inc", void sub_080572F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805734C.inc", void sub_0805734C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057384.inc", void sub_08057384());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080573B8.inc", void sub_080573B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080573E4.inc", void sub_080573E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057424.inc", void sub_08057424());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_25.inc", void nullsub_25());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057580.inc", void sub_08057580());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057668.inc", void sub_08057668());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057728.inc", void sub_08057728());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057760.inc", void sub_08057760());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057788.inc", void sub_08057788());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080577B8.inc", void sub_080577B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080577E8.inc", void sub_080577E8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080578B4.inc", void sub_080578B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080578D0.inc", void sub_080578D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080578F8.inc", void sub_080578F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805791C.inc", void sub_0805791C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_088.inc", void nullsub_088());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080579E8.inc", void sub_080579E8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057A14.inc", void sub_08057A14());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057A8C.inc", void sub_08057A8C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_089.inc", void nullsub_089());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057B30.inc", void sub_08057B30());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057B54.inc", void sub_08057B54());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057BDC.inc", void sub_08057BDC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057C6C.inc", void sub_08057C6C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057CB4.inc", void sub_08057CB4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057D04.inc", void sub_08057D04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_90.inc", void nullsub_90());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057D4C.inc", void sub_08057D4C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057D8C.inc", void sub_08057D8C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057DA0.inc", void sub_08057DA0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057E08.inc", void sub_08057E08());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057E3C.inc", void sub_08057E3C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057E70.inc", void sub_08057E70());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057ED0.inc", void sub_08057ED0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_46.inc", void nullsub_46());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057F74.inc", void sub_08057F74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057F98.inc", void sub_08057F98());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057FB0.inc", void sub_08057FB0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058068.inc", void sub_08058068());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805813C.inc", void sub_0805813C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080581F4.inc", void sub_080581F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080582DC.inc", void sub_080582DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080583A0.inc", void sub_080583A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058468.inc", void sub_08058468());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080584AC.inc", void sub_080584AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805850C.inc", void sub_0805850C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058538.inc", void sub_08058538());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058548.inc", void sub_08058548());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080585C4.inc", void sub_080585C4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_9.inc", void nullsub_9());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_10.inc", void nullsub_10());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080585F8.inc", void sub_080585F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058614.inc", void sub_08058614());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058630.inc", void sub_08058630());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_11.inc", void nullsub_11());

extern "C" void sub_08058644(void) {
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
    REG_DISPSTAT &= ~(DISPSTAT_VBLANK_INTR | DISPSTAT_HBLANK_INTR);
    memcpy(&gIntrHandlers, &gUnknown_080C7668, sizeof(gUnknown_080C7668));
    gUnknown_03004B00 = 0;
    REG_IME = 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058698.inc", void sub_08058698());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080586C8.inc", void sub_080586C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_91.inc", void nullsub_91());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_92.inc", void nullsub_92());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058718.inc", void sub_08058718());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805875C.inc", void sub_0805875C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058790.inc", void sub_08058790());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058804.inc", void sub_08058804());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058810.inc", void sub_08058810());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058884.inc", void sub_08058884());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058A48.inc", void sub_08058A48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058A80.inc", void sub_08058A80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058B04.inc", void sub_08058B04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058B14.inc", void sub_08058B14());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058BCC.inc", void sub_08058BCC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058C54.inc", void sub_08058C54());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058CE4.inc", void sub_08058CE4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058D08.inc", void sub_08058D08());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058D4C.inc", void sub_08058D4C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058D74.inc", void sub_08058D74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058D94.inc", void sub_08058D94());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058DA0.inc", void sub_08058DA0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058E04.inc", void sub_08058E04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058E34.inc", void sub_08058E34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058FAC.inc", void sub_08058FAC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058FE4.inc", void sub_08058FE4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059094.inc", void sub_08059094());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080590E4.inc", void sub_080590E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059128.inc", void sub_08059128());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080591BC.inc", void sub_080591BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080592A8.inc", void sub_080592A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805931C.inc", void sub_0805931C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059358.inc", void sub_08059358());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080593B8.inc", void sub_080593B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059404.inc", void sub_08059404());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059500.inc", void sub_08059500());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059548.inc", void sub_08059548());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059594.inc", void sub_08059594());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080595D8.inc", void sub_080595D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059608.inc", void sub_08059608());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080596A0.inc", void sub_080596A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805980C.inc", void sub_0805980C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059828.inc", void sub_08059828());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059840.inc", void sub_08059840());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059898.inc", void sub_08059898());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059940.inc", void sub_08059940());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080599A8.inc", void sub_080599A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080599F4.inc", void sub_080599F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059A8C.inc", void sub_08059A8C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_12.inc", void nullsub_12());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059B04.inc", void sub_08059B04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059B10.inc", void sub_08059B10());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059B30.inc", void sub_08059B30());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059B88.inc", void sub_08059B88());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059BE4.inc", void sub_08059BE4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059C34.inc", void sub_08059C34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059C50.inc", void sub_08059C50());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059D80.inc", void sub_08059D80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059E18.inc", void sub_08059E18());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059E44.inc", void sub_08059E44());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059F6C.inc", void sub_08059F6C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059FD8.inc", void sub_08059FD8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A0A0.inc", void sub_0805A0A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A1A0.inc", void sub_0805A1A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A200.inc", void sub_0805A200());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A2A0.inc", void sub_0805A2A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A2C8.inc", void sub_0805A2C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A2DC.inc", void sub_0805A2DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A2F4.inc", void sub_0805A2F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A310.inc", void sub_0805A310());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A378.inc", void sub_0805A378());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A408.inc", void sub_0805A408());

extern "C" void sub_0805A418(void) {
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
    REG_DISPSTAT &= ~(DISPSTAT_VBLANK_INTR | DISPSTAT_HBLANK_INTR);
    memcpy(&gIntrHandlers, &gUnknown_080C7DB0, sizeof(gUnknown_080C7DB0));
    REG_IME = 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A464.inc", void sub_0805A464());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_93.inc", void nullsub_93());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A488.inc", void sub_0805A488());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A4BC.inc", void sub_0805A4BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A508.inc", void sub_0805A508());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A520.inc", void sub_0805A520());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A568.inc", void sub_0805A568());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A638.inc", void sub_0805A638());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A778.inc", void sub_0805A778());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A800.inc", void sub_0805A800());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A844.inc", void sub_0805A844());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A904.inc", void sub_0805A904());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A9BC.inc", void sub_0805A9BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805AA90.inc", void sub_0805AA90());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805AB48.inc", void sub_0805AB48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805AC30.inc", void sub_0805AC30());


typedef struct Struct_02015E00 {
    u8 _0; /* 0x00 */
    u8 _1; /* 0x01 */
    s16 _2; /* 0x02 */
    s16 _4; /* 0x04 */
    u8 _6[0x8-0x6]; /* 0x06 */
    u32 _8; /* 0x08 */
    u8 _c_0 : 1; /* 0x0c */
    u8 _c_1 : 1;
} Struct_02015E00;

extern Struct_02015E00 gUnknown_02015E00;


typedef struct Unknown_02016078 {
    u8 _pad_0[0x2700]; /* 0x0000 */
    u8 _2700[0x400]; /* 0x2700 first palette? */
    u8 pad_2B00[0x2C00-0x2B00]; /* 0x2B00 */
    u8 _pad_2C00[0x2C50-0x2C00]; /* 0x2C00 */
    u8 _2C50[0x10]; /* 0x2C50 */
    u8 _2C60[0x400]; /* 0x2C60 second palette? */
} Unknown_02016078;

typedef struct Unk_02016028 {
    vu16 bldcnt; /* 0x00 */
    vu16 bldalpha; /* 0x02 */
    vu16 bldy; /* 0x04 */
    u8 pad_6[0x8-0x6]; /* 0x06 */
    vu16 dispcnt; /* 0x08 */
    vu16 bg0cnt; /* 0x0A */
    vu16 bg1cnt; /* 0x0C */
    vu16 bg2cnt; /* 0x0E */
    vu16 bg3cnt; /* 0x10 */
    u8 pad_12[0x12-0x12]; /* 0x12 */
} Unk_02016028;


typedef struct SomeBlend {
    Unk_02016028 _0; /* 0x00 */
    u8 pad_14[0x50-0x14]; /* 0x14 */
    Unknown_02016078 _50; /* 0x50 */
} SomeBlend;

extern SomeBlend gSomeBlend;
extern const u8 gGBPlayerLogoPalette[0x200];
extern const u8 gGBPlayerLogoGfx[0x4000];
extern const u8 gGBPlayerLogoLayout[0x500];
extern u8 gUnknown_020050B0;
extern s8 gUnknown_020051E0;


extern "C" void sub_0805AEEC();
extern "C" void setup_vectors();
extern "C" void sub_0805ADBC();
extern "C" void sub_0805AD24();
extern "C" void sub_0805AD48();
extern "C" void sub_0805AF34(); 
extern "C" void sub_0805AD54();
extern "C" void sub_08001960();
extern "C" void sub_0805AE64();
extern "C" void sub_08001778(void* arg1, u16 arg2, u16 arg3, u16 arg4);
extern "C" void sub_08001A14(void* src, void* dest, u32 size);
extern "C" void sub_0800160C(Unknown_02016078* dest, void* src, int index, u32 size);
extern "C" void sub_08001A38(void* dest, u32 size, int value);
extern "C" void sub_080013D0(void* );
extern "C" void sub_08001454(void* );
extern "C" void sub_08001630(void* , int);
extern "C" void sub_080019A4(void*);

extern "C" void sub_0805AE94(SomeBlend*, void*);
    extern "C" void sub_0805AEE0(void* arg1, void* arg2);


// calls  sub_0805AD24. maybe gbplayer entry?
extern "C" void sub_0805ACF4(void) {
    sub_0805AEEC();
    switch (gUnknown_020050B0) {           
    case 0:
        setup_vectors();
        sub_0805ADBC();
        sub_0805AD24();
        return;
    case 1:
        sub_0805AD48();
        return;
    }
}


// call gb player init
extern "C" void sub_0805AD24() {
    gUnknown_02015E00._0 = 0;
    sub_0805AF34();
    gUnknown_02015E00._c_1 = 1;
    sub_0805AD54();
}

extern "C" void sub_0805AD48(void) {
    gUnknown_02015E00._0 = 1;
}

extern "C" void sub_0805AD54(void) {
    REG_IME = 0;
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    REG_IME = 1;
    
    sub_0805AFCC();
    
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
    REG_DISPSTAT &= ~(DISPSTAT_VBLANK_INTR | DISPSTAT_HBLANK_INTR);
    REG_IME = 1;
    sub_080018F4();
}

extern "C" void sub_0805ADBC(void) {
    REG_IME = 0;
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    REG_IME = 1;
    
    gUnknown_02015E00._2 = 0x3F;
    
    for(gUnknown_02015E00._4 = 0x1E; gUnknown_02015E00._4 != -1; gUnknown_02015E00._4--) {
        sub_08001960();
        sub_0805AE64();
        sub_08001778(&gSomeBlend, gUnknown_02015E00._4, 0x1E, gUnknown_02015E00._2);
    }
    
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
    REG_DISPSTAT &= ~(DISPSTAT_VBLANK_INTR | DISPSTAT_HBLANK_INTR);
    REG_IME = 1;
}

extern "C" void sub_0805AE4C(s8 arg0) {
    gUnknown_02015E00._c_0 = 1;
    gUnknown_020051E0 = arg0;
}

extern "C" void sub_0805AE64(void) {
    gUnknown_02015E00._8++;
    sub_0805AE94(&gSomeBlend, &gSomeBlend._50);
    sub_0805AEE0(&gSomeBlend, &gSomeBlend._50);
}

extern "C" void sub_0805AE94(SomeBlend* arg0, void*) {
    if (gUnknown_02015E00._c_1 & 1) {
        REG_DISPCNT = arg0->_0.dispcnt;
        REG_BG0CNT = arg0->_0.bg0cnt;
        REG_BG1CNT = arg0->_0.bg1cnt;
        REG_BG2CNT = arg0->_0.bg2cnt;
        REG_BG3CNT = arg0->_0.bg3cnt;
    }

    REG_BLDCNT = arg0->_0.bldcnt;
    REG_BLDALPHA = arg0->_0.bldalpha;
    REG_BLDY = arg0->_0.bldy;
}

extern "C" void sub_0805AEE0(void* arg1, void* arg2) {
    sub_080019A4(arg2);
}
extern "C" void sub_0805AEEC(void) {
    gUnknown_02015E00._c_0 = 0;
    gUnknown_02015E00._c_1 = 0;
    gUnknown_02015E00._8 = 0;
    sub_080013D0(&gSomeBlend);
    sub_08001454(&gSomeBlend._50);
    sub_08001630(&gSomeBlend._50._2C50, 2);
}

// GB player logo init
extern "C" void sub_0805AF34(void) {
    Unk_02016028* temp_r4;

    sub_08001A14((void *)gGBPlayerLogoGfx, (void *)0x06008000, 0x4000);
    sub_08001A14((void *)gGBPlayerLogoLayout, (void *)0x06000000, 0x500);
    sub_0800160C(&gSomeBlend._50, (void *)gGBPlayerLogoPalette, 0, 0x200);
    sub_08001A14(gSomeBlend._50._2700, gSomeBlend._50._2C60, 0x400);
    sub_08001A38(gSomeBlend._50._2700, 0x400, -1);

    gSomeBlend._0.dispcnt = DISPCNT_BG0_ON;
    gSomeBlend._0.bg0cnt = BGCNT_256COLOR | BGCNT_CHARBASE(2);
    gSomeBlend._0.bg1cnt = 0; 
    gSomeBlend._0.bg2cnt = 0;
    gSomeBlend._0.bg3cnt = 0;
    gSomeBlend._0.bldcnt = 0;
    gSomeBlend._0.bldalpha = 0;
    gSomeBlend._0.bldy = 0;
}


extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805AFCC.inc", void sub_0805AFCC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B0DC.inc", void sub_0805B0DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B138.inc", void sub_0805B138());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B1F0.inc", void sub_0805B1F0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B2C4.inc", void sub_0805B2C4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B37C.inc", void sub_0805B37C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B464.inc", void sub_0805B464());


// ----- end GB player -----

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B528.inc", void sub_0805B528());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B5F4.inc", void sub_0805B5F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B640.inc", void sub_0805B640());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B648.inc", void sub_0805B648());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B65C.inc", void sub_0805B65C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B670.inc", void sub_0805B670());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B6BC.inc", void sub_0805B6BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B708.inc", void sub_0805B708());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B714.inc", void sub_0805B714());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B740.inc", void sub_0805B740());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B76C.inc", void sub_0805B76C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B79C.inc", void sub_0805B79C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_94.inc", void nullsub_94());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_13.inc", void nullsub_13());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B7D4.inc", void sub_0805B7D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B810.inc", void sub_0805B810());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B8D0.inc", void sub_0805B8D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B99C.inc", void sub_0805B99C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/init_battle.inc", void init_battle());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B9F4.inc", void sub_0805B9F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805BA98.inc", void sub_0805BA98());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805BAD4.inc", void sub_0805BAD4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805BAF4.inc", void sub_0805BAF4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805BB14.inc", void sub_0805BB14());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805BB34.inc", void sub_0805BB34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805BC8C.inc", void sub_0805BC8C());

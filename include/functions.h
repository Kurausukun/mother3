#ifndef FUNCTIONS_H
#define FUNCTIONS_H

#include "structs.h"

extern "C" {

void scriptstack_push(u32);
s32 scriptstack_peek(s32* sp, u16 idx);
void scriptstack_set(s32* sp, s32 offset, s32 value);
Sprite* sub_0802718C(s32);
void sub_0800AD6C();
void sub_08023EF8();
u16 sub_0801BF18();
s32 sub_08036BD8(s32);
void sub_08025620(u32, u32, u32);
void sub_08024744();
void sub_08005BFC();
void sub_0801B5E8(u32);
void sub_08005C14();
void sub_08001B18(u32*, u32*, u32);
void sub_08013D38();
void sub_0802610C(u32);
void set_event_flag(u32, u32);
void sub_08002938(u32, u32);
void sub_08002950(u32, u32);
u16 get_flag(u32);
u32 sub_080029BC(u32);
u32 sub_080029D4(u32);
void sub_080218B0(u32, u32);
void sub_080028F4(u32, u32);
u32 sub_08002998(u32);
void sub_0802A038(s32);
void sub_0802A0F8(u32, u32);
u32 sub_0802B8C4(u32);
void sub_0802AA78(u32);
void sub_08033BCC(u32);
void sub_0802B4D8();
void sub_08028040();
void sub_080029F8(u32, u32);
u32 sub_08002A30(u32);
void sub_0802AF24(u32);
void sub_0802A05C(s32);
u32 sub_0802B954(u32);
void sub_0802AD88(u32, u32);
void set_ailment(u32, u32, u32);
u16 sub_0802A124(u16);
void sub_0802B094(u16, s16);
void sub_0802B0D0(u32, u32, s16);
u16 sub_08001D2C(u32);
void sub_0805BC8C(u64*, u32, u32);
u32 sub_0802AFF0(u32, s16);
u32 sub_0802AF88(s16);
void sub_0802AFBC(s16);
void sub_0802B048(u32, s16);
void sub_08001ACC(void*, u32);
u16 sub_0802A98C();
void sub_0800A240(u8*);
void sub_08009E38(u8*, u32);
void sub_0800ACA0(u32);
void sub_08018910(u32, u32, u32, u32);
void sub_08010528(u16*, u16, u16);
void sub_08036BEC(Sprite*, u16*);
void sub_0801059C(u16*);
u32 sub_0801A218(u16*);
void sub_0801084C();
void sub_08018988(u32, u32, u16*);
void sub_0801263C(u32, u32, u32, u32);
void sub_080127BC(s16, s16);
void sub_08013CC8(s16, s16);
u32 sub_08013998(u16);
void sub_08012830(u16, u16, s32, u32);
void sub_08012210();
void sub_080133D8(u32, u32, u32, u32, u32, u32, u32, u32);
void sub_0801A3AC(u32, u32, s16);
void sub_0801A3D8(u16, u32, u32, s16);
void sub_08013578(u32, u32, u32, u32);
void sub_08012C48(u32);
void sub_08012D50(s16);
void sub_08012CEC(s16);
void sub_08012830(u16, u16, s32, u32);
void sub_08011564(u32);
void sub_0801A594(u32, u16*);
void sub_0801097C(u32, u32, u32);
}

#endif  // FUNCTIONS_H

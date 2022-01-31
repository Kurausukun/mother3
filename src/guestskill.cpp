#include "guestskill.h"

NAKED void guestskill_sinit() {
    asm_unified("\n\
    push {r4, lr}\n\
	ldr r4, _080809B0 @ =gUnknown_02002368\n\
	adds r0, r4, #0\n\
	bl __9Singleton\n\
	ldr r0, _080809B4 @ =vt_09F82F80\n\
	str r0, [r4, #8]\n\
	pop {r4}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080809B0: .4byte gUnknown_02002368\n\
_080809B4: .4byte vt_09F82F80");
}

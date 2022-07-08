.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start get__11MonsterRTTI
get__11MonsterRTTI: @ 0x080809E4
	ldr r0, _080809E8 @ =gUnknown_02002520
	bx lr
	.align 2, 0
_080809E8: .4byte gUnknown_02002520

	thumb_func_start sub_080809EC
sub_080809EC: @ 0x080809EC
	push {lr}
	bl get__11MonsterRTTI
	pop {r1}
	bx r1
	.align 2, 0

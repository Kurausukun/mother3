	.syntax unified
sub_080717F8:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08071824
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #2
	bl sub_0806D580
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071824: .4byte vt_09F80C88
	.syntax divided

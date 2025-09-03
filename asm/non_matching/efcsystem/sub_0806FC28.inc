	.syntax unified
sub_0806FC28:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806FC50
	str r0, [r4, #0x1c]
	bl sub_0806B07C
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #2
	bl sub_0805D2B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806FC50: .4byte vt_09F80508
	.syntax divided

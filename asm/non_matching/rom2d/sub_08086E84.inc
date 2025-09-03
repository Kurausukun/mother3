	.syntax unified
sub_08086E84:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08086EB0
	str r0, [r4, #0x20]
	ldr r0, _08086EB4
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #2
	bl sub_0806D9A4
	ldr r0, _08086EB8
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086EB0: .4byte vt_09F84BE8
_08086EB4: .4byte vt_09F84C40
_08086EB8: .4byte vt_09F84CA8
	.syntax divided

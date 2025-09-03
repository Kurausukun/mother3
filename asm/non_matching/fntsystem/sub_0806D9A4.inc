	.syntax unified
sub_0806D9A4:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0806D9F0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x7c
	movs r1, #2
	bl sub_080888D4
	adds r0, r5, #0
	adds r0, #0x74
	movs r1, #2
	bl sub_08088638
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r5, #0
	adds r0, #0x54
	movs r1, #2
	bl sub_0806D580
	adds r0, r5, #0
	adds r0, #0x38
	movs r1, #2
	bl sub_080887CC
	adds r0, r5, #0
	adds r1, r4, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D9F0: .4byte vt_09F7FD18
	.syntax divided

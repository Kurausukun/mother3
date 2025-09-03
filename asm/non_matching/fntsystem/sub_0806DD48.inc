	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0806DD9C
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x90
	movs r1, #2
	bl sub_080888D4
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #2
	bl sub_08088638
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #2
	bl sub_080886F0
	adds r0, r5, #0
	adds r0, #0x6c
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r5, #0
	adds r0, #0x58
	movs r1, #2
	bl sub_0806D580
	adds r0, r5, #0
	adds r0, #0x3c
	movs r1, #2
	bl sub_080887CC
	adds r0, r5, #0
	adds r1, r4, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806DD9C: .4byte vt_09F7FE10
	.syntax divided

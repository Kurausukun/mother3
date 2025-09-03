	.syntax unified
sub_08052864:
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08054FE0
	adds r5, r0, #0
	lsls r1, r4, #7
	ldr r0, _0805289C
	adds r1, r1, r0
	lsls r2, r4, #1
	movs r3, #0xd7
	lsls r3, r3, #4
	adds r0, r0, r3
	adds r2, r2, r0
	adds r0, r5, #0
	bl sub_080528A0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08052D1C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805289C: .4byte gUnknown_02019528
	.syntax divided

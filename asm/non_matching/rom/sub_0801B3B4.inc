	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0801B3D4
	movs r1, #0
	bl sub_0800289C
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801B3D4: .4byte gUnknown_08D2E1D8
	.syntax divided

	.syntax unified
sub_0801B3D8:
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0801B3F4
	movs r1, #0
	bl sub_0800289C
	movs r1, #0x1a
	muls r1, r4, r1
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801B3F4: .4byte gUnknown_08D34F44
	.syntax divided

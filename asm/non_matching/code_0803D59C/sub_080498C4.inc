	.syntax unified
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, _080498E0
	movs r1, #1
	bl sub_08001378
	pop {r1}
	bx r1
	.align 2, 0
_080498E0: .4byte gUnknown_02016078
	.syntax divided

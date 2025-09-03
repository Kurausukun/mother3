	.syntax unified
sub_08058FAC:
	push {r4, lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08058FDC
	bl sub_0800289C
	adds r4, r0, #0
	ldr r0, _08058FE0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_08001B18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058FDC: .4byte gUnknown_09C5FD2C
_08058FE0: .4byte gUnknown_02016078
	.syntax divided

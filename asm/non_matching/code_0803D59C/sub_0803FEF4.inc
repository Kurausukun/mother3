	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	bl sub_08036E70
	adds r5, r0, #0
	ldr r4, _0803FF48
	movs r6, #0
_0803FF06:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x60
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #0x20
	bl sub_080019DC
	adds r5, #0x60
	adds r4, #0x80
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #2
	bls _0803FF06
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_080019DC
	adds r0, r7, #0
	bl sub_08036E90
	adds r1, r0, #0
	ldr r0, _0803FF4C
	movs r2, #0x11
	movs r3, #0x20
	bl sub_0800160C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803FF48: .4byte 0x06017C00
_0803FF4C: .4byte gUnknown_02016078
	.syntax divided

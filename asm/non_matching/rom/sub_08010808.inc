	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801B3D8
	adds r6, r0, #0
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #0
	ldr r7, _08010848
_0801081C:
	lsls r0, r4, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	bl sub_0801B3FC
	lsls r1, r4, #2
	adds r1, r1, r7
	str r0, [r1]
	adds r1, r5, #0
	bl sub_08090F88
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xb
	bls _0801081C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010848: .4byte gUnknown_02005C2C
	.syntax divided

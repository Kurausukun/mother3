	.syntax unified
sub_0806E6D8:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	movs r4, #1
	ldr r0, [r5, #0x20]
	cmp r4, r0
	bge _0806E71A
	ldr r6, _0806E70C
	ldr r1, [r7]
	ands r1, r6
	adds r2, r5, #0
	adds r2, #0x2c
_0806E6F0:
	movs r3, #0
	ldr r0, [r2]
	ands r0, r6
	cmp r0, r1
	bne _0806E6FC
	movs r3, #1
_0806E6FC:
	cmp r3, #0
	beq _0806E710
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	b _0806E746
	.align 2, 0
_0806E70C: .4byte 0x00FFFFFF
_0806E710:
	adds r2, #8
	adds r4, #1
	ldr r0, [r5, #0x20]
	cmp r4, r0
	blt _0806E6F0
_0806E71A:
	movs r3, #1
	ldr r0, [r5, #0x20]
	cmp r3, r0
	bge _0806E744
	movs r1, #1
	adds r2, r5, #0
	adds r2, #0x2c
	adds r4, r0, #0
_0806E72A:
	ldrh r0, [r2, #4]
	cmp r0, #0
	bne _0806E73C
	ldr r0, [r7]
	str r0, [r2]
	strh r1, [r2, #4]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	b _0806E746
_0806E73C:
	adds r2, #8
	adds r3, #1
	cmp r3, r4
	blt _0806E72A
_0806E744:
	movs r0, #0x10
_0806E746:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided

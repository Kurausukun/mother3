	.syntax unified
sub_08012F2C:
	push {r4, r5, r6, r7, lr}
	ldr r1, _08012FB0
	ldr r2, _08012FB4
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08012FA8
	adds r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	movs r2, #0
	cmp r0, #0
	beq _08012F4E
	movs r2, #0xf0
	lsls r2, r2, #2
_08012F4E:
	adds r7, r2, #0
	ldr r0, _08012FB8
	adds r5, r1, r0
	movs r6, #0
_08012F56:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08012F9C
	ldr r4, [r5, #8]
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0x12]
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08013748
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r7, #0
	bl sub_080131B0
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_080133A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08012F9C
	ldrb r0, [r5, #0x14]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5, #0x14]
_08012F9C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #0x18
	cmp r6, #0x13
	bls _08012F56
_08012FA8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012FB0: .4byte gGame
_08012FB4: .4byte 0x000067C4
_08012FB8: .4byte 0x00006170
	.syntax divided

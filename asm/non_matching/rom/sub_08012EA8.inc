	.syntax unified
sub_08012EA8:
	push {r4, r5, r6, lr}
	ldr r1, _08012F20
	ldr r2, _08012F24
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08012F1A
	ldr r0, _08012F28
	adds r5, r1, r0
	movs r6, #0
_08012EBE:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08012F0E
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
	bl sub_08012FBC
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_080133A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08012F0E
	ldrb r0, [r5, #0x14]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5, #0x14]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08012F0E
	movs r0, #0
	bl sub_0802610C
_08012F0E:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #0x18
	cmp r6, #0x13
	bls _08012EBE
_08012F1A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012F20: .4byte gGame
_08012F24: .4byte 0x000067C4
_08012F28: .4byte 0x00005D60
	.syntax divided

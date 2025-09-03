	.syntax unified
sub_08059D80:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r0, _08059DE4
	ldr r1, _08059DE8
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r6, r0, #0
	ldrh r3, [r5, #0x3e]
	cmp r1, r3
	beq _08059E0A
	adds r1, r2, #0
_08059D98:
	lsls r0, r4, #1
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #0
	bne _08059DF4
	movs r0, #0xb5
	lsls r0, r0, #6
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r5, #0x3e]
	strh r0, [r2]
	ldr r1, _08059DEC
	adds r0, r1, #0
	ldrh r2, [r5, #0x3e]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036DDC
	adds r1, r0, #0
	lsls r0, r4, #2
	ldr r3, _08059DF0
	adds r2, r6, r3
	adds r0, r0, r2
	str r1, [r0]
	adds r2, r4, #0
	adds r2, #0x17
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	adds r0, #0x50
	movs r3, #0x20
	bl sub_0800160C
	b _08059E0A
	.align 2, 0
_08059DE4: .4byte gSomeBlend
_08059DE8: .4byte 0x00002D42
_08059DEC: .4byte 0x0000FF01
_08059DF0: .4byte 0x00002D2C
_08059DF4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bhi _08059E0A
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r2, [r5, #0x3e]
	cmp r0, r2
	bne _08059D98
_08059E0A:
	adds r1, r4, #7
	adds r0, r5, #0
	adds r0, #0x40
	strb r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided

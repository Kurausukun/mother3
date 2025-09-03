	.syntax unified
sub_0806DFF0:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806E08E
	ldr r1, [r5, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806E08E
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _0806E08E
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0806E05C
	movs r0, #0x80
	lsls r0, r0, #1
	movs r2, #0x34
	ldrsh r1, [r5, r2]
	cmp r1, r0
	bne _0806E05C
	movs r2, #0x36
	ldrsh r0, [r5, r2]
	cmp r0, r1
	bne _0806E05C
	adds r0, r5, #0
	adds r0, #0x90
	adds r1, r5, #0
	adds r1, #0x28
	ldr r2, [r5, #0x2c]
	bl sub_08088930
	b _0806E074
_0806E05C:
	adds r0, r5, #0
	adds r0, #0x90
	adds r1, r5, #0
	adds r1, #0x28
	ldr r2, [r5, #0x2c]
	adds r3, r5, #0
	adds r3, #0x30
	adds r4, r5, #0
	adds r4, #0x34
	str r4, [sp]
	bl sub_080889F0
_0806E074:
	ldrh r4, [r5, #0x24]
	movs r0, #0x22
	ldrsh r1, [r5, r0]
	adds r1, r4, r1
	adds r0, r5, #0
	bl sub_0806E0FC
	ldrh r0, [r5, #0x24]
	cmp r0, r4
	beq _0806E08E
	adds r0, r5, #0
	bl sub_0806E150
_0806E08E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

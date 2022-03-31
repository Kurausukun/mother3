    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #0xc]
	mov sb, r1
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0801B9B8 @ =gScript
	ldr r1, _0801B9BC @ =0x00009480
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801B9C0
	bl sub_08027E60
	str r0, [sp, #0xc]
	b _0801B9C8
	.align 2, 0
_0801B9B8: .4byte gScript
_0801B9BC: .4byte 0x00009480
_0801B9C0:
	ldr r3, _0801BA0C @ =0x000084C0
	adds r0, r2, r3
	ldr r1, [sp, #0xc]
	str r1, [r0]
_0801B9C8:
	ldr r1, _0801BA10 @ =gScript
	ldr r2, _0801BA14 @ =0x00009470
	adds r0, r1, r2
	mov r3, sb
	str r3, [r0]
	adds r2, #4
	adds r0, r1, r2
	ldrh r5, [r0]
	ldr r3, _0801BA18 @ =0x000084C4
	adds r6, r1, r3
	mov r1, sp
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	add r0, sp, #8
	mov sl, r0
_0801B9E8:
	ldr r0, [sp, #0xc]
	mov r1, sl
	mov r2, sb
	bl sub_08021878
	ldr r1, _0801BA10 @ =gScript
	ldr r2, _0801BA1C @ =0x000084BC
	adds r1, r1, r2
	str r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0801BA02
	b _0801BEB4
_0801BA02:
	lsls r0, r0, #2
	ldr r1, _0801BA20 @ =_0801BA24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BA0C: .4byte 0x000084C0
_0801BA10: .4byte gScript
_0801BA14: .4byte 0x00009470
_0801BA18: .4byte 0x000084C4
_0801BA1C: .4byte 0x000084BC
_0801BA20: .4byte _0801BA24
_0801BA24: @ jump table
	.4byte _0801BA60 @ case 0
	.4byte _0801BA88 @ case 1
	.4byte _0801BA94 @ case 2
	.4byte _0801BAB8 @ case 3
	.4byte _0801BAE4 @ case 4
	.4byte _0801BB82 @ case 5
	.4byte _0801BBB4 @ case 6
	.4byte _0801BC18 @ case 7
	.4byte _0801BC40 @ case 8
	.4byte _0801BC94 @ case 9
	.4byte _0801BCA0 @ case 10
	.4byte _0801BCAC @ case 11
	.4byte _0801BCB2 @ case 12
	.4byte _0801BCBC @ case 13
	.4byte _0801BCD8 @ case 14
_0801BA60:
	lsls r2, r5, #2
	adds r2, r2, r6
	mov r3, sl
	ldrb r1, [r3]
	lsls r1, r1, #1
	ldr r0, _0801BA84 @ =gUnknown_0200F064
	adds r1, r1, r0
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r2]
	adds r0, r5, #1
	b _0801BEB0
	.align 2, 0
_0801BA84: .4byte gUnknown_0200F064
_0801BA88:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r1, [sp, #8]
	str r1, [r0]
	adds r0, r5, #1
	b _0801BEB0
_0801BA94:
	lsls r2, r5, #2
	adds r2, r2, r6
	mov r3, sl
	ldrb r1, [r3]
	lsls r1, r1, #1
	ldr r0, _0801BAB4 @ =gUnknown_0200F064
	adds r1, r1, r0
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r5, #1
	b _0801BEB0
	.align 2, 0
_0801BAB4: .4byte gUnknown_0200F064
_0801BAB8:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #1
	ldr r2, _0801BAE0 @ =gUnknown_0200F064
	adds r0, r0, r2
	ldr r1, [sp, #8]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r1]
	b _0801BEB4
	.align 2, 0
_0801BAE0: .4byte gUnknown_0200F064
_0801BAE4:
	ldr r4, _0801BB54 @ =gScript
	ldr r3, _0801BB58 @ =0x00009474
	adds r7, r4, r3
	strh r5, [r7]
	ldr r0, _0801BB5C @ =0x00009480
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	bl sub_08021920
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	lsls r1, r5, #2
	subs r1, #4
	adds r1, r6, r1
	bl exec_extended
	mov r1, sp
	strh r0, [r1, #2]
	ldrb r4, [r4]
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0801BB2A
	b _0801BEC6
_0801BB2A:
	movs r0, #0x40
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0801BB38
	b _0801BEB4
_0801BB38:
	ldrh r0, [r7]
	cmp r0, r5
	beq _0801BB60
	adds r5, r0, #0
	add r1, sp, #4
	movs r0, #1
	strh r0, [r1]
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r4, [r0]
	b _0801BB68
	.align 2, 0
_0801BB54: .4byte gScript
_0801BB58: .4byte 0x00009474
_0801BB5C: .4byte 0x00009480
_0801BB60:
	add r0, sp, #4
	strh r1, [r0]
	movs r4, #0
	adds r1, r0, #0
_0801BB68:
	mov r2, r8
	subs r0, r5, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r1]
	cmp r0, #0
	bne _0801BB78
	b _0801BEB4
_0801BB78:
	lsls r0, r5, #2
	adds r0, r0, r6
	str r4, [r0]
	adds r0, r5, #1
	b _0801BEB0
_0801BB82:
	ldr r2, _0801BBA8 @ =gScript
	ldr r3, _0801BBAC @ =0x00009480
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	bl sub_08027E60
	str r0, [sp, #0xc]
	mov r1, sl
	ldrb r0, [r1]
	adds r4, r0, #1
	lsls r2, r5, #2
	adds r2, r2, r6
	lsls r1, r4, #1
	ldr r3, _0801BBB0 @ =gUnknown_0200F064
	adds r1, r1, r3
	b _0801BC28
	.align 2, 0
_0801BBA8: .4byte gScript
_0801BBAC: .4byte 0x00009480
_0801BBB0: .4byte gUnknown_0200F064
_0801BBB4:
	ldr r3, _0801BC08 @ =gScript
	ldr r0, _0801BC0C @ =0x00009480
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r4, [r0]
	mov r1, sl
	ldrb r2, [r1]
	lsls r2, r2, #1
	ldr r0, _0801BC10 @ =gUnknown_0200F064
	adds r2, r2, r0
	ldrh r5, [r2]
	lsls r1, r5, #2
	adds r1, r1, r6
	ldr r0, [r1]
	strh r0, [r2]
	ldr r0, [r1, #4]
	mov r1, sb
	strh r0, [r1]
	ldr r0, [sp, #8]
	lsrs r0, r0, #8
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	str r4, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _0801BC14 @ =0x000084C0
	adds r3, r3, r2
	ldr r3, [r3]
	str r3, [sp, #0xc]
	b _0801BEB4
	.align 2, 0
_0801BC08: .4byte gScript
_0801BC0C: .4byte 0x00009480
_0801BC10: .4byte gUnknown_0200F064
_0801BC14: .4byte 0x000084C0
_0801BC18:
	mov r3, sl
	ldrb r0, [r3]
	adds r4, r0, #1
	lsls r2, r5, #2
	adds r2, r2, r6
	lsls r1, r4, #1
	ldr r0, _0801BC3C @ =gUnknown_0200F064
	adds r1, r1, r0
_0801BC28:
	ldrh r0, [r1]
	str r0, [r2]
	mov r3, sb
	ldrh r0, [r3]
	str r0, [r2, #4]
	strh r5, [r1]
	ldr r0, [sp, #8]
	lsrs r0, r0, #8
	strh r0, [r3]
	b _0801BEB4
	.align 2, 0
_0801BC3C: .4byte gUnknown_0200F064
_0801BC40:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r4, [r0]
	mov r0, sl
	ldrb r2, [r0]
	lsls r2, r2, #1
	ldr r1, _0801BC90 @ =gUnknown_0200F064
	adds r2, r2, r1
	ldrh r5, [r2]
	lsls r1, r5, #2
	adds r1, r1, r6
	ldr r0, [r1]
	strh r0, [r2]
	ldr r1, [r1, #4]
	mov r2, sb
	strh r1, [r2]
	ldr r0, [sp, #8]
	lsrs r0, r0, #8
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	str r4, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _0801BC82
	b _0801BEB4
_0801BC82:
	movs r0, #1
	mov r3, sp
	strh r0, [r3, #2]
	bl sub_0801BF18
	b _0801BEB4
	.align 2, 0
_0801BC90: .4byte gUnknown_0200F064
_0801BC94:
	movs r0, #1
	mov r1, sp
	strh r0, [r1, #2]
	bl sub_0801BF18
	b _0801BEB4
_0801BCA0:
	ldr r0, [sp, #8]
	ldr r2, _0801BCA8 @ =gUnknown_0200F064
	strh r0, [r2, #2]
	b _0801BEB4
	.align 2, 0
_0801BCA8: .4byte gUnknown_0200F064
_0801BCAC:
	ldr r0, [sp, #8]
	adds r0, r5, r0
	b _0801BEB0
_0801BCB2:
	ldr r0, [sp, #8]
	lsrs r0, r0, #8
	mov r3, sb
	strh r0, [r3]
	b _0801BEB4
_0801BCBC:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _0801BCCE
	b _0801BEB4
_0801BCCE:
	ldr r0, [sp, #8]
	lsrs r0, r0, #8
	mov r1, sb
	strh r0, [r1]
	b _0801BEB4
_0801BCD8:
	ldr r0, [sp, #8]
	cmp r0, #0x13
	bls _0801BCE0
	b _0801BEB4
_0801BCE0:
	lsls r0, r0, #2
	ldr r1, _0801BCEC @ =_0801BCF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BCEC: .4byte _0801BCF0
_0801BCF0: @ jump table
	.4byte _0801BD40 @ case 0
	.4byte _0801BD4E @ case 1
	.4byte _0801BD64 @ case 2
	.4byte _0801BD7A @ case 3
	.4byte _0801BD90 @ case 4
	.4byte _0801BDD4 @ case 5
	.4byte _0801BDEC @ case 6
	.4byte _0801BDFA @ case 7
	.4byte _0801BDA8 @ case 8
	.4byte _0801BDBE @ case 9
	.4byte _0801BE08 @ case 10
	.4byte _0801BE20 @ case 11
	.4byte _0801BE3C @ case 12
	.4byte _0801BE54 @ case 13
	.4byte _0801BE6C @ case 14
	.4byte _0801BE84 @ case 15
	.4byte _0801BEA0 @ case 16
	.4byte _0801BEAE @ case 17
	.4byte _0801BEAE @ case 18
	.4byte _0801BEB4 @ case 19
_0801BD40:
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r1, #4
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	b _0801BEB4
_0801BD4E:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r2, r1, #4
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	b _0801BEB4
_0801BD64:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r2, r1, #4
	ldr r0, [r2]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r2]
	b _0801BEB4
_0801BD7A:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	ldr r1, [r2]
	ldr r0, [r0]
	muls r0, r1, r0
	str r0, [r2]
	b _0801BEB4
_0801BD90:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r4, r1, #4
	ldr r0, [r4]
	ldr r1, [r1]
	bl __divsi3
	str r0, [r4]
	b _0801BEB4
_0801BDA8:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r2, r1, #4
	ldr r0, [r2]
	ldr r1, [r1]
	ands r0, r1
	str r0, [r2]
	b _0801BEB4
_0801BDBE:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r2, r1, #4
	ldr r0, [r2]
	ldr r1, [r1]
	orrs r0, r1
	str r0, [r2]
	b _0801BEB4
_0801BDD4:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r4, r1, #4
	ldr r0, [r4]
	ldr r1, [r1]
	bl __modsi3
	str r0, [r4]
	b _0801BEB4
_0801BDEC:
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r1, #4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _0801BEB4
_0801BDFA:
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r1, #4
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	b _0801BEB4
_0801BE08:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	movs r3, #0
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0801BE9C
	b _0801BE9A
_0801BE20:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	ldr r1, [r2]
	ldr r0, [r0]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [r2]
	b _0801BEB4
_0801BE3C:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	movs r3, #0
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bge _0801BE9C
	b _0801BE9A
_0801BE54:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	movs r3, #0
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	ble _0801BE9C
	b _0801BE9A
_0801BE6C:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	movs r3, #0
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bgt _0801BE9C
	b _0801BE9A
_0801BE84:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	movs r3, #0
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	blt _0801BE9C
_0801BE9A:
	movs r3, #1
_0801BE9C:
	str r3, [r2]
	b _0801BEB4
_0801BEA0:
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r0, r1, #4
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r5, #1
	b _0801BEB0
_0801BEAE:
	subs r0, r5, #1
_0801BEB0:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801BEB4:
	mov r2, sp
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _0801BEBE
	b _0801B9E8
_0801BEBE:
	ldr r0, _0801BED8 @ =gScript
	ldr r3, _0801BEDC @ =0x00009474
	adds r0, r0, r3
	strh r5, [r0]
_0801BEC6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BED8: .4byte gScript
_0801BEDC: .4byte 0x00009474
    .syntax divided

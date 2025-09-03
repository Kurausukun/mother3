	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x34
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r5, r6, #0
	adds r5, #0x35
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r2, #1
	adds r7, r6, #0
	adds r7, #0x36
	movs r3, #0
	ldrsb r3, [r7, r3]
	bl sub_0807E994
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807DF8C
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _0807DFD2
_0807DF8C:
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, #1
	movs r2, #0
	ldrsb r2, [r5, r2]
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0807E994
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0807DFB0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _0807DFD2
_0807DFB0:
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, #1
	adds r0, r6, #0
	movs r2, #2
	movs r3, #0
	bl sub_0807E994
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807DFCA
	movs r0, #0
	b _0807DFD4
_0807DFCA:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	strb r5, [r7]
_0807DFD2:
	movs r0, #1
_0807DFD4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

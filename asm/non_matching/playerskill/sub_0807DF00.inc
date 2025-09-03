	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x34
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r5, r4, #0
	adds r5, #0x35
	movs r2, #0
	ldrsb r2, [r5, r2]
	subs r2, #1
	adds r7, r4, #0
	adds r7, #0x36
	movs r3, #0
	ldrsb r3, [r7, r3]
	bl sub_0807E994
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807DF30
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	b _0807DF54
_0807DF30:
	movs r1, #0
	ldrsb r1, [r6, r1]
	subs r1, #1
	movs r2, #0
	ldrsb r2, [r5, r2]
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r4, #0
	bl sub_0807E994
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807DF4E
	movs r0, #0
	b _0807DF56
_0807DF4E:
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
_0807DF54:
	movs r0, #1
_0807DF56:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided

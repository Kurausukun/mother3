	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0xc5
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0x13
	bne _0802DBB2
	movs r0, #0
	b _0802DC24
_0802DBB2:
	ldr r7, _0802DBD0
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r0, #0
	bne _0802DBD4
	adds r2, r5, #0
	adds r2, #0xc4
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	b _0802DC24
	.align 2, 0
_0802DBD0: .4byte gUnknown_08D2DF14
_0802DBD4:
	adds r0, r5, #0
	bl sub_0802DD04
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802DBE4
	movs r0, #1
	b _0802DC24
_0802DBE4:
	adds r4, r5, #0
	adds r4, #0xc4
	ldrh r0, [r4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	ldrb r1, [r6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	bl sub_08027DC4
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0802DC0E
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
	b _0802DC24
_0802DC0E:
	ldrb r1, [r6]
	movs r0, #0x7c
	ands r0, r1
	adds r0, r0, r7
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r3, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0802DC24:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

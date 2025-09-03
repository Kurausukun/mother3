	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #3
	bl sub_0802B8C4
	movs r3, #1
	movs r7, #0x6c
	ldr r6, _080524E4
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sb, r0
	subs r1, #0x20
	mov r8, r1
_0805247C:
	ldr r0, _080524E8
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0x62
	bls _08052488
	movs r0, #0x63
_08052488:
	adds r1, r0, #0
	cmp r1, #0
	beq _080524CC
	adds r0, r3, #0
	muls r0, r7, r0
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #8
	bne _080524CC
	cmp r3, #0xdb
	bgt _080524A6
	cmp r3, #0xd6
	blt _080524A6
	cmp ip, sl
	beq _080524CC
_080524A6:
	strb r3, [r4]
	strb r1, [r4, #1]
	adds r0, r3, #0
	muls r0, r7, r0
	adds r0, r0, r6
	ldr r1, [r0]
	movs r0, #0x1f
	ands r1, r0
	ldrb r2, [r4, #2]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	ands r0, r1
	strb r0, [r4, #2]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	adds r4, #4
_080524CC:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xff
	bls _0805247C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080524E4: .4byte gUnknown_080E510C
_080524E8: .4byte gUnknown_02004870
	.syntax divided

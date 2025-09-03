	.syntax unified
sub_0801856C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	movs r1, #0
	mov ip, r1
	cmp r0, #1
	beq _08018620
	cmp r0, #1
	bgt _0801859E
	cmp r0, #0
	beq _080185A8
	b _08018620
_0801859E:
	cmp r6, #2
	beq _080185B2
	cmp r6, #3
	beq _080185CC
	b _08018620
_080185A8:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	b _080185C2
_080185B2:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	asrs r1, r1, #4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
_080185C2:
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	b _08018620
_080185CC:
	ldr r2, _08018610
	ldr r1, _08018614
	adds r0, r2, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080185DC
	movs r7, #0
_080185DC:
	ldrh r1, [r2, #0x10]
	ldr r0, _08018618
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2, #0x10]
	ldr r1, _0801861C
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1b
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _08018620
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	mov r1, r8
	bl _call_via_r4
	lsls r0, r0, #0x10
	b _08018624
	.align 2, 0
_08018610: .4byte gGame
_08018614: .4byte 0x000067C4
_08018618: .4byte 0xFFFFF83F
_0801861C: .4byte gUnknown_08D2D608
_08018620:
	mov r1, ip
	lsls r0, r1, #0x10
_08018624:
	asrs r0, r0, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided

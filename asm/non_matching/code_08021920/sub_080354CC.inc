	.syntax unified
sub_080354CC:
	push {r4, r5, r6, r7, lr}
	movs r0, #0
	movs r7, #7
_080354D2:
	adds r4, r0, #1
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	adds r6, r4, #0
	cmp r0, #0
	beq _0803559E
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08035502
	adds r0, r5, #0
	adds r0, #0xca
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _0803559E
_08035502:
	adds r0, r5, #0
	adds r0, #0x9e
	ldrh r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _08035576
	ldr r0, _0803554C
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08035598
	adds r2, r5, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _08035550
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	adds r2, r7, #0
	ands r2, r1
	movs r1, #0
	bl sub_080332AC
	b _08035598
	.align 2, 0
_0803554C: .4byte gGame
_08035550:
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080355CC
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	adds r2, r7, #0
	ands r2, r1
	movs r1, #9
	bl sub_080332AC
	b _08035598
_08035576:
	adds r0, r5, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08035598
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	adds r2, r7, #0
	ands r2, r1
	movs r1, #0
	bl sub_080332AC
_08035598:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_0803559E:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _080354D2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

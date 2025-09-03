	.syntax unified
	push {r4, r5, lr}
	movs r0, #0
	bl get_obj_direct
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08035436
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _080354C6
_08035436:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080354A2
	ldr r0, _0803547C
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _080354C0
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _08035480
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r0, #0
	movs r1, #0
	bl sub_080332AC
	b _080354C0
	.align 2, 0
_0803547C: .4byte gGame
_08035480:
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080355CC
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r0, #0
	movs r1, #9
	bl sub_080332AC
	b _080354C0
_080354A2:
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080354C0
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r0, #0
	movs r1, #0
	bl sub_080332AC
_080354C0:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
_080354C6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided

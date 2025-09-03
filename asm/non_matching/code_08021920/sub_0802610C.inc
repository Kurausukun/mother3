	.syntax unified
sub_0802610C:
	push {r4, r5, lr}
	ldr r3, _080261B4
	strb r0, [r3]
	ldr r0, _080261B8
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080261BC
	adds r2, r3, r1
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _080261C0
	adds r5, r3, r2
	movs r0, #0xc
	strh r0, [r5]
	ldr r1, _080261C4
	adds r0, r3, r1
	ldr r4, [r0]
	cmp r4, #0
	bne _08026188
	subs r2, #0x32
	adds r0, r3, r2
	ldrh r0, [r0]
	cmp r0, #5
	bne _08026188
	ldr r0, _080261C8
	adds r2, r3, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08026188
	ldrh r0, [r2]
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	subs r0, #4
	cmp r0, #1
	bhi _08026188
	adds r0, r1, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	subs r0, #4
	cmp r0, #1
	bhi _08026188
	strh r4, [r5]
_08026188:
	ldr r1, _080261B4
	ldr r2, _080261CC
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #9
	bne _080261A2
	adds r2, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0x16
	bne _080261A2
	bl sub_0800272C
_080261A2:
	bl sub_08005C38
	movs r0, #0xf7
	lsls r0, r0, #2
	bl sub_080038A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080261B4: .4byte gGame
_080261B8: .4byte 0x00008494
_080261BC: .4byte 0x00008496
_080261C0: .4byte 0x0000848C
_080261C4: .4byte 0x00008484
_080261C8: .4byte 0x00008450
_080261CC: .4byte 0x0000845A
	.syntax divided

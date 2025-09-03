	.syntax unified
sub_0800164C:
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08001674
	ldrh r0, [r0]
	mvns r0, r0
	lsls r0, r0, #0x16
	lsrs r4, r0, #0x16
	ldrb r1, [r3, #0xe]
	movs r0, #1
	orrs r1, r0
	strb r1, [r3, #0xe]
	cmp r4, #0
	bne _08001678
	strh r4, [r3, #4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r3, #0xe]
	strh r4, [r3, #0xc]
	b _0800169C
	.align 2, 0
_08001674: .4byte 0x04000130
_08001678:
	ldrh r0, [r3, #4]
	cmp r0, #0
	bne _08001684
	movs r0, #0x14
	strh r0, [r3, #4]
	b _0800169C
_08001684:
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08001694
	movs r0, #6
	strh r0, [r3, #4]
	b _0800169C
_08001694:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r3, #0xe]
_0800169C:
	ldrb r1, [r3, #0xe]
	movs r0, #1
	ands r0, r1
	adds r5, r1, #0
	ldrh r1, [r3, #2]
	cmp r0, #0
	beq _080016BC
	ldrh r0, [r3, #0xa]
	cmp r1, r0
	bne _080016B6
	ldrh r0, [r3, #0xc]
	adds r0, #1
	b _080016B8
_080016B6:
	movs r0, #0
_080016B8:
	strh r0, [r3, #0xc]
	strh r1, [r3, #0xa]
_080016BC:
	adds r2, r4, #0
	bics r2, r1
	strh r2, [r3]
	strh r4, [r3, #2]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080016D8
	ldrh r0, [r3, #8]
	orrs r2, r0
	strh r2, [r3]
	movs r0, #0
	strh r0, [r3, #8]
	b _080016DE
_080016D8:
	ldrh r0, [r3, #8]
	orrs r2, r0
	strh r2, [r3, #8]
_080016DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided

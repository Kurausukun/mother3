	.syntax unified
sub_08017584:
	push {r4, r5, r6, r7, lr}
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r3, r0, #0
	adds r5, r1, #0
	movs r6, #0
	movs r7, #0x1f
	movs r0, #0x20
	rsbs r0, r0, #0
	mov ip, r0
_08017598:
	ldr r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bhi _080175C6
	ldr r0, [r5]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	adds r0, r0, r4
	cmp r0, #0x1e
	bgt _080175C0
	lsrs r0, r1, #0x1b
	adds r0, r4, r0
	ands r0, r7
	ldrb r2, [r3]
	mov r1, ip
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _080175C6
_080175C0:
	ldrb r0, [r3]
	orrs r0, r7
	strb r0, [r3]
_080175C6:
	ldr r0, [r3]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bhi _08017600
	ldr r0, [r5]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	adds r0, r0, r4
	cmp r0, #0x1e
	bgt _080175F4
	lsrs r1, r1, #0x1b
	adds r1, r4, r1
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _080175F0
	ands r0, r2
	b _080175FC
	.align 2, 0
_080175F0: .4byte 0xFFFFFC1F
_080175F4:
	ldrh r0, [r3]
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
_080175FC:
	orrs r0, r1
	strh r0, [r3]
_08017600:
	ldr r0, [r3]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bhi _08017634
	ldr r0, [r5]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	adds r0, r0, r4
	cmp r0, #0x1e
	bgt _0801762C
	lsrs r0, r1, #0x1b
	adds r0, r4, r0
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _08017634
_0801762C:
	ldrb r0, [r3, #1]
	movs r1, #0x7c
	orrs r0, r1
	strb r0, [r3, #1]
_08017634:
	adds r3, #2
	adds r5, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xf
	bls _08017598
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

	.syntax unified
sub_080137A8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _080137E4
	movs r5, #0
	ldrb r1, [r3, #2]
	movs r0, #1
	ands r0, r1
	adds r6, r3, #0
	cmp r0, #0
	beq _080137FE
_080137BC:
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #3
	ldr r2, [r3]
	lsls r0, r2, #8
	lsrs r0, r0, #0x1b
	cmp r1, r0
	bne _080137E8
	ldrb r1, [r4, #0x15]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r2, #4
	lsrs r0, r0, #0x1c
	cmp r1, r0
	bne _080137E8
	adds r0, r3, #0
	adds r1, r5, #0
	bl sub_08013880
	b _0801387A
	.align 2, 0
_080137E4: .4byte gUnknown_0200BB40
_080137E8:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #4
	cmp r5, #0x27
	bhi _080137FE
	ldrb r1, [r3, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080137BC
_080137FE:
	adds r3, r6, #0
	movs r5, #0
	movs r6, #1
	movs r2, #3
	rsbs r2, r2, #0
	movs r7, #5
	rsbs r7, r7, #0
	movs r0, #0x10
	rsbs r0, r0, #0
	mov ip, r0
_08013812:
	ldrb r1, [r3, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08013868
	orrs r1, r6
	strb r1, [r3, #2]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #1
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #2]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #2
	adds r1, r7, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #2]
	ldrb r2, [r4, #0x14]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #2]
	ldrb r1, [r4, #0x15]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r3, #3]
	mov r0, ip
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r0, [r4, #0x12]
	subs r0, #1
	strh r0, [r3]
	b _0801387A
_08013868:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #4
	cmp r5, #0x27
	bls _08013812
	adds r0, r4, #0
	bl sub_080138FC
_0801387A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

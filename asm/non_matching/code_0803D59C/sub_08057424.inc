	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _08057468
	ldr r0, _0805746C
	adds r4, r5, r0
	ldr r0, [r4]
	bl sub_08002C4C
	adds r6, r0, #0
	ldr r0, [r4]
	bl sub_08002C54
	ldr r1, _08057470
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805753A
	ldr r3, _08057474
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #3
	bne _0805747C
	movs r2, #0x58
	ldr r1, _08057478
	ldr r0, [sp, #8]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	add r0, sp, #8
	strh r2, [r0, #2]
	b _08057498
	.align 2, 0
_08057468: .4byte gSomeBlend
_0805746C: .4byte 0x00002CEC
_08057470: .4byte 0x00002CF0
_08057474: .4byte 0x00002CE8
_08057478: .4byte 0xFFFF0000
_0805747C:
	cmp r0, #2
	bne _0805748C
	movs r1, #0x58
	add r0, sp, #8
	strh r1, [r0]
	adds r1, r0, #0
	movs r0, #0x5e
	b _08057496
_0805748C:
	movs r1, #0x58
	add r0, sp, #8
	strh r1, [r0]
	adds r1, r0, #0
	movs r0, #0x66
_08057496:
	strh r0, [r1, #2]
_08057498:
	bl sub_08058468
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, r5, #0
	adds r0, r6, #0
	movs r1, #1
	bl sub_08002ABC
	adds r1, r0, #0
	rsbs r2, r5, #0
	orrs r2, r5
	lsrs r2, r2, #0x1f
	add r0, sp, #8
	movs r3, #0
	ldrsh r0, [r0, r3]
	str r0, [sp]
	add r4, sp, #8
	movs r3, #2
	ldrsh r0, [r4, r3]
	str r0, [sp, #4]
	adds r0, r1, #0
	movs r1, #0
	movs r3, #0
	bl sub_08057668
	ldrh r0, [r4, #2]
	adds r0, #0xe
	strh r0, [r4, #2]
	ldr r0, _08057570
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0805750E
	adds r0, r6, #0
	movs r1, #2
	bl sub_08002ABC
	adds r1, r0, #0
	movs r0, #1
	eors r0, r5
	rsbs r2, r0, #0
	orrs r2, r0
	lsrs r2, r2, #0x1f
	add r0, sp, #8
	movs r3, #0
	ldrsh r0, [r0, r3]
	str r0, [sp]
	movs r3, #2
	ldrsh r0, [r4, r3]
	str r0, [sp, #4]
	adds r0, r1, #0
	movs r1, #0
	movs r3, #0
	bl sub_08057668
	ldrh r0, [r4, #2]
	adds r0, #0xe
	strh r0, [r4, #2]
_0805750E:
	adds r0, r6, #0
	movs r1, #3
	bl sub_08002ABC
	adds r1, r0, #0
	movs r0, #2
	eors r0, r7
	rsbs r2, r0, #0
	orrs r2, r0
	lsrs r2, r2, #0x1f
	add r0, sp, #8
	movs r3, #0
	ldrsh r0, [r0, r3]
	str r0, [sp]
	movs r3, #2
	ldrsh r0, [r4, r3]
	str r0, [sp, #4]
	adds r0, r1, #0
	movs r1, #0
	movs r3, #0
	bl sub_08057668
_0805753A:
	ldr r0, _08057574
	ldr r1, _08057578
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08057568
	adds r0, r6, #0
	movs r1, #0
	bl sub_08002ABC
	adds r1, r0, #0
	movs r0, #0x78
	str r0, [sp]
	movs r0, #0x9c
	str r0, [sp, #4]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08057668
_08057568:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057570: .4byte gUnknown_02015DA0
_08057574: .4byte gSomeBlend
_08057578: .4byte 0x00002CF0
	.syntax divided

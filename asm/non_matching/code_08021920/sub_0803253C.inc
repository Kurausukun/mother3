	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	ldr r2, _08032580
	ldr r1, _08032584
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _0803256C
	b _08032738
_0803256C:
	adds r0, r6, #0
	adds r0, #0x48
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08032588
	adds r5, r6, #0
	adds r5, #0x44
	b _080325FC
	.align 2, 0
_08032580: .4byte gSomeBlend
_08032584: .4byte 0x000035BA
_08032588:
	adds r0, r6, #0
	adds r0, #0x50
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08032598
	b _08032738
_08032598:
	ldr r1, _08032624
	ldr r2, _08032628
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #6
	bne _080325A6
	b _08032738
_080325A6:
	ldrb r0, [r1]
	cmp r0, #5
	bgt _080325B2
	cmp r0, #3
	blt _080325B2
	b _08032738
_080325B2:
	ldr r4, _0803262C
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080325E2
	ldr r2, _08032630
	adds r0, r1, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080325E2
	add r1, sp, #4
	ldr r0, _08032634
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r1, #0
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080325E2
	b _08032738
_080325E2:
	adds r5, r6, #0
	adds r5, #0x4c
	adds r1, r6, #0
	adds r1, #0xb9
	movs r0, #3
	ldrb r1, [r1]
	ands r1, r0
	ldrb r2, [r5, #5]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
_080325FC:
	ldrb r0, [r5, #4]
	lsrs r0, r0, #3
	cmp r0, #0x1f
	bne _0803263C
	ldr r4, _08032638
	add r4, sb
	ldr r0, [r4]
	bl sub_08002C4C
	mov sl, r0
	ldr r0, [r4]
	bl sub_08002C54
	adds r4, r0, #0
	movs r7, #0
	movs r0, #0x80
	lsls r0, r0, #2
	mov r8, r0
	movs r6, #8
	b _080326AE
	.align 2, 0
_08032624: .4byte gGame
_08032628: .4byte 0x0000829B
_0803262C: .4byte 0x00008494
_08032630: .4byte 0x00009486
_08032634: .4byte 0x04000200
_08032638: .4byte 0x000121A4
_0803263C:
	ldr r4, _08032694
	add r4, sb
	ldr r0, [r4]
	bl sub_08002C4C
	mov sl, r0
	ldr r0, [r4]
	bl sub_08002C54
	adds r4, r0, #0
	ldrb r0, [r5, #4]
	lsrs r7, r0, #3
	movs r1, #0xc0
	lsls r1, r1, #2
	mov r8, r1
	ldr r0, _08032698
	add r0, sb
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803266E
	movs r2, #0xd0
	lsls r2, r2, #2
	mov r8, r2
_0803266E:
	adds r0, r6, #0
	adds r0, #0xa8
	ldrh r1, [r0]
	subs r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032682
	subs r0, r1, #4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08032682:
	cmp r1, #7
	bls _080326A0
	ldr r2, _0803269C
	adds r0, r2, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080326A2
	.align 2, 0
_08032694: .4byte 0x000121A0
_08032698: .4byte 0x0000566C
_0803269C: .4byte 0x0000FFEC
_080326A0:
	ldr r6, _080326D4
_080326A2:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080326AE:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08002BA4
	bl sub_08002BF4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	ldrh r0, [r5]
	cmp r0, r2
	blo _080326F8
	ldrb r1, [r5, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080326D8
	movs r0, #0
	b _080326F6
	.align 2, 0
_080326D4: .4byte 0x0000FFEC
_080326D8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080326F4
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #2
	ands r0, r1
	strb r0, [r5, #4]
	b _08032738
_080326F4:
	subs r0, r2, #1
_080326F6:
	strh r0, [r5]
_080326F8:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08002B1C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	bl sub_08002ABC
	ldrb r2, [r5, #5]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1e
	ldr r4, [sp, #8]
	lsls r3, r4, #0x10
	asrs r3, r3, #0x10
	ldr r4, [sp, #0xc]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp]
	mov r1, r8
	bl sub_08032748
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_08032738:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

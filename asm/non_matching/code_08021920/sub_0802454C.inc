	.syntax unified
sub_0802454C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r2, _08024614
	ldr r1, _08024618
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08024606
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0802461C
	ldr r1, _08024620
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08024580
	add r0, sp, #8
	strh r3, [r0]
_08024580:
	ldr r0, _08024624
	adds r5, r2, r0
	movs r6, #0
	movs r1, #0x10
	rsbs r1, r1, #0
	mov r8, r1
	adds r0, #4
	adds r4, r2, r0
	adds r1, #0xe
	adds r7, r1, #0
_08024594:
	ldrb r1, [r4, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080245F8
	ldrb r0, [r5, #2]
	cmp r0, #0x9f
	bhi _080245B8
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	movs r0, #0xf
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r3, #0xd
	bl draw_ui_text
_080245B8:
	ldrb r1, [r4, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080245CA
	movs r0, #0
	movs r1, #1
	bl sub_080225B4
_080245CA:
	add r0, sp, #8
	ldrh r0, [r0]
	cmp r0, #0
	beq _080245D8
	ldrh r0, [r5, #2]
	subs r0, #1
	strh r0, [r5, #2]
_080245D8:
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, r8
	bge _080245E6
	ldrb r0, [r4, #0x1e]
	ands r0, r7
	strb r0, [r4, #0x1e]
_080245E6:
	ldrh r0, [r4, #0x1c]
	subs r0, #1
	strh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080245F8
	ldrb r0, [r4, #0x1e]
	ands r0, r7
	strb r0, [r4, #0x1e]
_080245F8:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #0x24
	adds r5, #0x24
	cmp r6, #7
	bls _08024594
_08024606:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024614: .4byte gSomeBlend
_08024618: .4byte 0x0000566C
_0802461C: .4byte gGame
_08024620: .4byte 0x00009D10
_08024624: .4byte 0x0000554C
	.syntax divided

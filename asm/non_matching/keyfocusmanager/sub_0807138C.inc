	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, r1, #0
	ldr r2, _080713F0
	movs r1, #0
	cmp r0, #0
	blt _080713AA
	adds r1, r0, #0
	cmp r1, r2
	ble _080713AA
	adds r1, r2, #0
_080713AA:
	str r1, [r7, #0x24]
	ldr r0, _080713F4
	cmp r1, r0
	bgt _080713FC
	adds r4, r7, #0
	adds r4, #0x2a
	movs r3, #7
	mov sl, r4
	lsls r0, r1, #1
	movs r2, #0x28
	adds r2, r2, r7
	mov r8, r2
	movs r2, #0x29
	adds r2, r2, r7
	mov sb, r2
	ldr r2, _080713F8
	subs r1, #5
	adds r0, r0, r1
	adds r0, r0, r2
	adds r2, r0, #7
_080713D2:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	subs r2, #1
	subs r3, #1
	cmp r3, #5
	bge _080713D2
	movs r1, #4
	movs r2, #0
_080713E4:
	adds r0, r4, r1
	strb r2, [r0]
	subs r1, #1
	cmp r1, #0
	bge _080713E4
	b _0807142E
	.align 2, 0
_080713F0: .4byte 0x05F5E0FF
_080713F4: .4byte 0x000003E7
_080713F8: .4byte gUnknown_080F0C80
_080713FC:
	adds r4, r1, #0
	adds r6, r7, #0
	adds r6, #0x2a
	movs r5, #7
	mov sl, r6
	movs r0, #0x28
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0x29
	adds r1, r1, r7
	mov sb, r1
_08071412:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08090F80
	adds r1, r6, r5
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #1
	cmp r5, #0
	bge _08071412
_0807142E:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08071454
	mov r3, sl
_0807143E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r2]
	adds r0, r1, #1
	cmp r0, #7
	bgt _08071454
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807143E
_08071454:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #8
	subs r0, r0, r1
	movs r1, #0
	mov r2, sb
	strb r0, [r2]
	strh r1, [r7, #0x32]
	mov r0, r8
	ldrb r4, [r0]
	ldrb r0, [r2]
	adds r0, r4, r0
	cmp r4, r0
	bge _08071492
_08071470:
	mov r1, sl
	adds r0, r1, r4
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_0807163C
	ldrh r1, [r7, #0x32]
	adds r1, r1, r0
	strh r1, [r7, #0x32]
	adds r4, #1
	mov r2, r8
	ldrb r0, [r2]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r0, r1
	cmp r4, r0
	blt _08071470
_08071492:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

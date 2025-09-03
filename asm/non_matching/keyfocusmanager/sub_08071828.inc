	.syntax unified
sub_08071828:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	ldr r0, [r3, #0x24]
	cmp r0, r1
	beq _080718B2
	str r1, [r3, #0x24]
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	movs r5, #1
	movs r4, #2
	movs r0, #0x28
	adds r0, r0, r3
	mov ip, r0
	adds r7, r3, #0
	adds r7, #0x34
	movs r0, #0x40
	adds r0, r0, r3
	mov r8, r0
	asrs r1, r1, #0x10
	ldr r2, _080718BC
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	adds r1, r0, #2
	adds r2, r3, #0
	adds r2, #0x30
_08071860:
	ldrb r3, [r1]
	lsls r0, r3, #0x10
	str r0, [r2]
	cmp r5, #1
	bne _08071874
	adds r0, r0, r6
	str r0, [r2]
	cmp r3, #9
	beq _08071874
	movs r5, #0
_08071874:
	subs r1, #1
	subs r2, #4
	subs r4, #1
	cmp r4, #0
	bge _08071860
	movs r0, #0
	strb r0, [r7]
	mov r1, ip
	ldr r0, [r1]
	cmp r0, #0
	bne _080718A6
	adds r2, r7, #0
	mov r3, ip
_0807188E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r2]
	adds r0, r1, #1
	cmp r0, #2
	bgt _080718A6
	lsls r0, r1, #2
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0807188E
_080718A6:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #4
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
_080718B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080718BC: .4byte gUnknown_080F0C80
	.syntax divided

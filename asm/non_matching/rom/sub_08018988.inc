	.syntax unified
sub_08018988:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r0, r5, #2
	ldr r1, _08018AB4
	adds r4, r0, r1
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	ldr r2, _08018AB8
	adds r1, r1, r2
	adds r6, r0, r1
	movs r0, #0xf9
	lsls r0, r0, #2
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080189C4
	cmp r5, #2
	beq _080189D8
_080189C4:
	ldrb r1, [r4]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0xc0
	beq _08018AA4
	ldrb r1, [r4, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	beq _08018AA4
_080189D8:
	ldr r0, _08018ABC
	ldr r1, _08018AC0
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #0x44
	beq _080189F6
	cmp r1, #0x44
	blt _08018A0A
	movs r0, #0xe8
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08018A0A
	subs r0, #2
	cmp r1, r0
	blt _08018A0A
_080189F6:
	ldrb r1, [r4]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x40
	beq _08018AA4
	ldrb r1, [r4, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _08018AA4
_08018A0A:
	mov sl, sp
	adds r0, r5, #0
	mov r1, sp
	bl sub_0801A548
	ldr r2, _08018ABC
	mov sb, r2
	ldrb r0, [r2, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08018A44
	adds r0, r5, #0
	bl sub_0801A61C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl Divide
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r4, r0
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r7]
_08018A44:
	mov r1, sb
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08018A72
	adds r0, r5, #0
	bl sub_0801A638
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r2, sl
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r1, r4, #0
	bl Divide
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r4, r0
	ldrh r2, [r7, #2]
	adds r0, r0, r2
	strh r0, [r7, #2]
_08018A72:
	mov r0, r8
	cmp r0, #0
	bne _08018A7C
	movs r1, #1
	mov r8, r1
_08018A7C:
	adds r2, r6, #0
	adds r2, #0x35
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	mov r2, r8
	strh r2, [r6, #0x18]
	strh r0, [r6, #0x30]
	ldrh r0, [r7]
	lsls r0, r0, #4
	strh r0, [r6, #0x20]
	ldrh r0, [r7, #2]
	lsls r0, r0, #4
	strh r0, [r6, #0x22]
	ldrh r0, [r6, #4]
	strh r0, [r6, #0x24]
	ldrh r0, [r6, #6]
	strh r0, [r6, #0x26]
_08018AA4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018AB4: .4byte gUnknown_02005C1C
_08018AB8: .4byte 0x00005894
_08018ABC: .4byte gGame
_08018AC0: .4byte 0x000067AC
	.syntax divided

	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	adds r0, r4, #0
	movs r1, #0x80
	bl memclear
	movs r0, #0
	strh r0, [r7]
	adds r0, r6, #0
	bl ch_has_psi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08052956
	movs r5, #0
	ldr r0, _080528D4
	mov sb, r0
	movs r1, #0x21
	rsbs r1, r1, #0
	mov r8, r1
	b _0805294C
	.align 2, 0
_080528D4: .4byte gUnknown_080E1910
_080528D8:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0805C364
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08052946
	cmp r5, #0
	beq _08052946
	strb r5, [r4]
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #1]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldr r0, [r0]
	cmp r0, #1
	beq _08052906
	cmp r0, #3
	bne _0805291A
_08052906:
	ldrb r0, [r4, #2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #2]
	ldrb r0, [r4, #3]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	b _08052926
_0805291A:
	ldrb r0, [r4, #2]
	mov r1, r8
	ands r0, r1
	strb r0, [r4, #2]
	ldrb r0, [r4, #3]
	orrs r0, r2
_08052926:
	strb r0, [r4, #3]
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805293E
	ldrb r0, [r4, #2]
	mov r2, r8
	ands r0, r2
	strb r0, [r4, #2]
_0805293E:
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	adds r4, #4
_08052946:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0805294C:
	adds r0, r6, #0
	bl sub_0805C21C
	cmp r5, r0
	blt _080528D8
_08052956:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

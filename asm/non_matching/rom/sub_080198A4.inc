	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080198E8
	movs r1, #0
	ldr r2, _080198E4
	ldr r0, [sp, #0x54]
	ands r0, r2
	orrs r0, r3
	str r0, [sp, #0x54]
	add r3, sp, #0x54
	strh r1, [r3, #2]
	movs r1, #0x78
	ldr r0, [sp, #0x58]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x58]
	add r1, sp, #0x58
	movs r0, #0x14
	strh r0, [r1, #2]
	adds r5, r3, #0
	b _080198F8
	.align 2, 0
_080198E4: .4byte 0xFFFF0000
_080198E8:
	add r2, sp, #0x54
	strh r0, [r2]
	strh r0, [r2, #2]
	add r1, sp, #0x58
	strh r3, [r1]
	movs r0, #0x14
	strh r0, [r1, #2]
	adds r5, r2, #0
_080198F8:
	adds r4, r1, #0
	movs r6, #0
	add r0, sp, #4
	mov r8, r0
	add r1, sp, #0x2c
	mov sb, r1
_08019904:
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r2, r6, #0
	movs r3, #0x13
	bl sub_08002E60
	mov r2, r8
	adds r1, r2, r6
	strb r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x13
	bls _08019904
	movs r6, #0
	movs r3, #0x13
_08019928:
	adds r1, r6, #0
	adds r1, #0x14
	adds r1, r2, r1
	subs r0, r3, r6
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x13
	bls _08019928
	movs r6, #0
	mov r3, sb
	mov r2, r8
	movs r4, #0xf0
_08019948:
	adds r1, r3, r6
	adds r0, r2, r6
	ldrb r0, [r0]
	subs r0, r4, r0
	strb r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x27
	bls _08019948
	movs r6, #0
	ldr r7, _080199C0
	ldr r5, _080199C4
	mov ip, r5
_08019964:
	lsls r5, r6, #1
	adds r5, r5, r7
	mov sl, r5
	adds r4, r6, #0
	adds r4, #0x28
	lsls r4, r4, #1
	adds r4, r4, r7
	adds r3, r6, #0
	adds r3, #0x50
	lsls r3, r3, #1
	adds r3, r3, r7
	adds r2, r6, #0
	adds r2, #0x78
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r1, r8
	adds r0, r1, r6
	ldrb r1, [r0]
	lsls r1, r1, #8
	mov r5, sb
	adds r0, r5, r6
	ldrb r0, [r0]
	orrs r0, r1
	strh r0, [r2]
	mov r1, ip
	ands r0, r1
	strh r0, [r3]
	ands r0, r1
	strh r0, [r4]
	ands r0, r1
	mov r2, sl
	strh r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x27
	bls _08019964
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080199C0: .4byte gUnknown_02029238
_080199C4: .4byte 0x0000FFFF
	.syntax divided

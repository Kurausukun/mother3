	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	mov r8, r0
	bl sub_0807C96C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, sp
	adds r1, r4, #0
	bl sub_0806D48C
	ldr r0, _0807CC74
	str r0, [sp, #0x14]
	mov r0, sp
	bl sub_0806D53C
	movs r7, #0
	add r4, sp, #0x18
	adds r5, r4, #0
	adds r6, r0, #0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
_0807CBF4:
	lsls r3, r7, #1
	ldrh r1, [r6]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r5]
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	lsrs r0, r0, #5
	strb r0, [r4, #1]
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r1, r0
	lsrs r1, r1, #0xa
	strb r1, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #3
	strb r0, [r5]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	strb r0, [r4, #1]
	ldrb r0, [r4, #2]
	lsls r0, r0, #3
	strb r0, [r4, #2]
	ldrb r0, [r5]
	lsrs r1, r0, #2
	subs r0, r0, r1
	strb r0, [r5]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	strb r0, [r4, #1]
	ldrb r1, [r4, #2]
	lsrs r1, r1, #1
	strb r1, [r4, #2]
	ldrb r2, [r5]
	lsrs r2, r2, #3
	lsrs r0, r0, #3
	lsls r0, r0, #5
	orrs r2, r0
	lsrs r1, r1, #3
	lsls r1, r1, #0xa
	orrs r2, r1
	mov r0, r8
	adds r0, #0x28
	adds r0, r0, r3
	strh r2, [r0]
	mov r0, r8
	adds r0, #0x48
	adds r0, r0, r3
	strh r2, [r0]
	adds r6, #2
	adds r7, #1
	cmp r7, #0xf
	bls _0807CBF4
	mov r0, sp
	movs r1, #2
	bl sub_0806D4B0
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807CC74: .4byte _vt.1D
	.syntax divided

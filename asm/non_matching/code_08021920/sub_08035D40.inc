	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r0, sb
	bl sub_08035FE4
	ldr r0, _08035DF8
	adds r4, r4, r0
	ldrb r7, [r4]
	movs r0, #0x30
	bl sub_0803B800
	adds r6, r0, #0
	ldrb r1, [r6, #0x14]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	movs r1, #0xf
	ands r5, r1
	lsls r5, r5, #3
	movs r1, #0x79
	rsbs r1, r1, #0
	mov sl, r1
	ands r0, r1
	orrs r0, r5
	strb r0, [r6, #0x14]
	movs r5, #0
	strh r7, [r6, #2]
	mov r0, r8
	lsls r0, r0, #4
	mov r8, r0
	adds r1, r7, #0
	bl __divsi3
	strh r0, [r6]
	strh r5, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	ands r4, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r4, r0
	subs r0, #2
	ands r4, r0
	mov r0, sl
	ands r4, r0
	strb r4, [r1]
	strh r5, [r6, #0x1a]
	strh r5, [r6, #0x18]
	strh r5, [r6, #0x22]
	mov r1, sb
	str r6, [r1, #0x34]
	str r6, [r1, #0x30]
	movs r0, #0xc7
	add sb, r0
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035DF8: .4byte gUnknown_08D2E0DC
	.syntax divided

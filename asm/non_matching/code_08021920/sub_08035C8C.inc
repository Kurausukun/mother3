	.syntax unified
sub_08035C8C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
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
	adds r0, r6, #0
	bl sub_08035FE4
	ldr r0, _08035D38
	adds r0, r4, r0
	ldrb r7, [r0]
	ldr r0, _08035D3C
	adds r4, r4, r0
	ldrb r4, [r4]
	movs r0, #0x30
	bl sub_0803B800
	ldrb r2, [r0, #0x14]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	mov ip, r2
	ands r1, r2
	subs r2, #2
	mov sl, r2
	ands r1, r2
	movs r2, #0xf
	ands r5, r2
	lsls r5, r5, #3
	movs r2, #0x79
	rsbs r2, r2, #0
	mov sb, r2
	ands r1, r2
	orrs r1, r5
	strb r1, [r0, #0x14]
	movs r2, #0
	strh r7, [r0, #2]
	mov r1, r8
	muls r1, r4, r1
	strh r1, [r0]
	strh r2, [r0, #0xa]
	adds r4, r0, #0
	adds r4, #0x2c
	ldrb r1, [r4]
	ands r3, r1
	mov r1, ip
	ands r3, r1
	mov r1, sl
	ands r3, r1
	mov r1, sb
	ands r3, r1
	strb r3, [r4]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x22]
	str r0, [r6, #0x34]
	str r0, [r6, #0x30]
	adds r6, #0xc7
	ldrb r1, [r6]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r6]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035D38: .4byte gUnknown_08D2E0DC
_08035D3C: .4byte gUnknown_08D2E0E2
	.syntax divided

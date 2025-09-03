	.syntax unified
sub_08035DFC:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	bl sub_08035FE4
	movs r0, #0x30
	bl sub_0803B800
	adds r7, r0, #0
	cmp r5, #0
	bne _08035E1E
	movs r5, #1
_08035E1E:
	ldrb r0, [r7, #0x14]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	mov r8, r1
	ands r0, r1
	subs r1, #2
	mov ip, r1
	ands r0, r1
	movs r4, #0x79
	rsbs r4, r4, #0
	ands r0, r4
	strb r0, [r7, #0x14]
	movs r2, #0
	strh r2, [r7, #2]
	strh r5, [r7]
	movs r0, #1
	strh r0, [r7, #0xa]
	adds r3, r7, #0
	adds r3, #0x2c
	ldrb r1, [r3]
	subs r0, #3
	ands r0, r1
	mov r1, r8
	ands r0, r1
	mov r1, ip
	ands r0, r1
	ands r0, r4
	strb r0, [r3]
	strh r2, [r7, #0x1a]
	strh r2, [r7, #0x18]
	strh r2, [r7, #0x22]
	str r7, [r6, #0x34]
	str r7, [r6, #0x30]
	adds r2, r6, #0
	adds r2, #0xc7
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	mov r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #4
	strh r0, [r6, #0x10]
	ldrh r0, [r1, #2]
	lsls r0, r0, #4
	strh r0, [r6, #0x12]
	ldrh r0, [r6]
	strh r0, [r6, #8]
	ldrh r0, [r6, #2]
	strh r0, [r6, #0xa]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

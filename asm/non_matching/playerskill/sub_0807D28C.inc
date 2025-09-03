	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	bl sub_0806BE14
	adds r4, r0, #0
	mov r0, r8
	ldr r5, [r0, #0x2c]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806C010
	mov sb, r0
	mov r0, r8
	bl sub_0807D360
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	bl sub_0807D3A8
	lsls r0, r0, #0x10
	mov r1, r8
	ldr r3, [r1, #0x2c]
	lsls r3, r3, #0xf
	lsrs r3, r3, #0x10
	movs r4, #0x28
	ldrsh r2, [r1, r4]
	movs r7, #0x30
	add r7, r8
	mov ip, r7
	ldrb r1, [r7]
	lsrs r1, r1, #1
	subs r2, r2, r1
	lsls r2, r2, #0x10
	ldr r1, _0807D35C
	ands r2, r1
	mov r4, sb
	str r2, [r4]
	mov r7, r8
	ldrh r4, [r7, #0x2a]
	movs r5, #0xff
	adds r1, r5, #0
	ands r1, r4
	orrs r2, r1
	movs r1, #0x80
	lsls r1, r1, #7
	mov sl, r1
	orrs r2, r1
	movs r4, #0x80
	lsls r4, r4, #0x17
	orrs r2, r4
	mov r7, sb
	str r2, [r7]
	lsls r3, r3, #0xa
	adds r1, r6, #0
	orrs r1, r3
	lsrs r0, r0, #4
	orrs r1, r0
	strh r1, [r7, #4]
	mov r2, r8
	movs r7, #0x28
	ldrsh r1, [r2, r7]
	mov r7, ip
	ldrb r2, [r7]
	lsrs r2, r2, #1
	subs r1, r1, r2
	adds r1, #0x20
	lsls r1, r1, #0x10
	ldr r2, _0807D35C
	ands r1, r2
	mov r7, sb
	str r1, [r7, #8]
	mov r7, r8
	ldrh r2, [r7, #0x2a]
	ands r5, r2
	orrs r1, r5
	mov r2, sl
	orrs r1, r2
	orrs r1, r4
	mov r4, sb
	str r1, [r4, #8]
	adds r6, #4
	orrs r3, r6
	orrs r3, r0
	strh r3, [r4, #0xc]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D35C: .4byte 0x01FF0000
	.syntax divided

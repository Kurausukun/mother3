	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	adds r4, r0, #0
	adds r6, r1, #0
	movs r0, #0
	mov r8, r0
	ldr r0, _08056450
	mov sl, r0
	movs r0, #0x7d
	rsbs r0, r0, #0
	mov sb, r0
	movs r7, #0x1f
	subs r5, r7, r2
_0805642E:
	mov r0, ip
	cmp r0, #0x1f
	bne _08056454
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldrh r1, [r4]
	mov r0, sl
	ands r0, r1
	strh r0, [r4]
	ldrb r1, [r4, #1]
	mov r0, sb
	ands r0, r1
	b _0805649C
	.align 2, 0
_08056450: .4byte 0xFFFFFC1F
_08056454:
	ldr r3, [r6]
	lsls r0, r3, #0x1b
	lsrs r0, r0, #0x1b
	adds r1, r5, #0
	muls r1, r0, r1
	asrs r1, r1, #5
	ands r1, r7
	ldrb r2, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsls r0, r3, #0x16
	lsrs r0, r0, #0x1b
	adds r1, r5, #0
	muls r1, r0, r1
	asrs r1, r1, #5
	ands r1, r7
	lsls r1, r1, #5
	ldrh r2, [r4]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	lsls r3, r3, #0x11
	lsrs r3, r3, #0x1b
	adds r1, r5, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	ands r1, r7
	lsls r1, r1, #2
	ldrb r2, [r4, #1]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
_0805649C:
	strb r0, [r4, #1]
	adds r4, #2
	adds r6, #2
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _0805642E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

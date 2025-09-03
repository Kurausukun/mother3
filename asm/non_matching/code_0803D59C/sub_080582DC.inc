	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r4, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov ip, r0
	movs r1, #0x1f
	mov r8, r1
	movs r6, #0x1f
	movs r2, #0x20
	rsbs r2, r2, #0
	mov sl, r2
	ldr r0, _08058320
	mov sb, r0
_08058302:
	cmp r5, #0x1f
	bne _08058324
	ldrb r0, [r4]
	mov r1, r8
	orrs r0, r1
	strb r0, [r4]
	ldrh r0, [r4]
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r4, #1]
	movs r1, #0x7c
	b _0805837C
	.align 2, 0
_08058320: .4byte 0xFFFFFC1F
_08058324:
	ldr r3, [r7]
	lsls r0, r3, #0x1b
	lsrs r2, r0, #0x1b
	adds r0, r2, #0
	subs r0, r6, r0
	muls r0, r5, r0
	asrs r0, r0, #5
	adds r2, r2, r0
	mov r0, r8
	ands r2, r0
	ldrb r1, [r4]
	mov r0, sl
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	lsls r0, r3, #0x16
	lsrs r1, r0, #0x1b
	adds r0, r1, #0
	subs r0, r6, r0
	muls r0, r5, r0
	asrs r0, r0, #5
	adds r1, r1, r0
	ands r1, r6
	lsls r1, r1, #5
	ldrh r2, [r4]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	lsls r3, r3, #0x11
	lsrs r1, r3, #0x1b
	adds r3, r1, #0
	subs r3, r6, r3
	adds r0, r5, #0
	muls r0, r3, r0
	asrs r0, r0, #5
	adds r1, r1, r0
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r4, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r2
_0805837C:
	orrs r0, r1
	strb r0, [r4, #1]
	adds r4, #2
	adds r7, #2
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	cmp r0, #0xf
	bls _08058302
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

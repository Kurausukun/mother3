	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	movs r7, #0
	movs r0, #0x1f
	mov ip, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sl, r0
	ldr r0, _080179DC
	mov sb, r0
	movs r0, #0x7d
	rsbs r0, r0, #0
	mov r8, r0
_080179D0:
	cmp r6, #0x1f
	bne _080179E0
	ldrh r0, [r5]
	strh r0, [r4]
	b _08017A2E
	.align 2, 0
_080179DC: .4byte 0xFFFFFC1F
_080179E0:
	ldr r3, [r5]
	lsls r0, r3, #0x1b
	lsrs r0, r0, #0x1b
	adds r1, r6, #0
	muls r1, r0, r1
	asrs r1, r1, #5
	mov r0, ip
	ands r1, r0
	ldrb r2, [r4]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsls r0, r3, #0x16
	lsrs r0, r0, #0x1b
	adds r1, r6, #0
	muls r1, r0, r1
	asrs r1, r1, #5
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r4]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	lsls r3, r3, #0x11
	lsrs r3, r3, #0x1b
	adds r1, r6, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	mov r0, ip
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r4, #1]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #1]
_08017A2E:
	adds r4, #2
	adds r5, #2
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xf
	bls _080179D0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

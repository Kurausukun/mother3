	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #2
	rsbs r7, r7, #0
	movs r6, #0xf
	rsbs r6, r6, #0
	movs r0, #7
	mov ip, r0
_08024B52:
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r5, r1
	ldrb r2, [r1, #8]
	adds r0, r7, #0
	ands r0, r2
	adds r3, r4, #0
	mov r2, ip
	ands r3, r2
	lsls r3, r3, #1
	ands r0, r6
	orrs r0, r3
	strb r0, [r1, #8]
	adds r1, #0x80
	ldrb r2, [r1]
	adds r0, r7, #0
	ands r0, r2
	ands r0, r6
	orrs r0, r3
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #9
	bls _08024B52
	adds r2, r5, #0
	adds r2, #0xf8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

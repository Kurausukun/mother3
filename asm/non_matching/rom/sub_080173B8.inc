	.syntax unified
sub_080173B8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r2, r0, #0
	adds r5, r1, #0
	movs r6, #0
	movs r0, #0x1f
	mov r8, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sl, r0
	ldr r0, _08017408
	mov sb, r0
	movs r0, #0x7d
	rsbs r0, r0, #0
	mov ip, r0
	movs r7, #0x1f
_080173E2:
	ldrb r3, [r2]
	adds r0, r7, #0
	ands r0, r3
	cmp r0, #0
	beq _08017412
	ldr r0, [r5]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, r4
	bls _0801740C
	adds r1, r0, #0
	subs r1, r1, r4
	mov r0, r8
	ands r1, r0
	mov r0, sl
	ands r0, r3
	orrs r0, r1
	b _08017410
	.align 2, 0
_08017408: .4byte 0xFFFFFC1F
_0801740C:
	mov r0, sl
	ands r0, r3
_08017410:
	strb r0, [r2]
_08017412:
	ldrh r3, [r2]
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0801743E
	ldr r0, [r5]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, r4
	bls _08017438
	adds r1, r0, #0
	subs r1, r1, r4
	ands r1, r7
	lsls r1, r1, #5
	mov r0, sb
	ands r0, r3
	orrs r0, r1
	b _0801743C
_08017438:
	mov r0, sb
	ands r0, r3
_0801743C:
	strh r0, [r2]
_0801743E:
	ldrb r3, [r2, #1]
	movs r0, #0x7c
	ands r0, r3
	cmp r0, #0
	beq _0801746A
	ldr r0, [r5]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, r4
	bls _08017464
	adds r1, r0, #0
	subs r1, r1, r4
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #2
	mov r0, ip
	ands r0, r3
	orrs r0, r1
	b _08017468
_08017464:
	mov r0, ip
	ands r0, r3
_08017468:
	strb r0, [r2, #1]
_0801746A:
	adds r2, #2
	adds r5, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xf
	bls _080173E2
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

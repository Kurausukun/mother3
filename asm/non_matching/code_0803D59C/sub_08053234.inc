	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r4, _080532D0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl memclear
	ldr r0, _080532D4
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r3, #1
	ldr r0, _080532D8
	mov sl, r0
	ldr r0, _080532DC
	mov sb, r0
	adds r5, r1, #0
	movs r1, #0x20
	rsbs r1, r1, #0
	mov r8, r1
	movs r0, #0x96
	lsls r0, r0, #3
	adds r0, r0, r4
	mov ip, r0
	movs r7, #0x21
	rsbs r7, r7, #0
_08053272:
	mov r0, sl
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0x62
	bls _0805327E
	movs r0, #0x63
_0805327E:
	cmp r0, #0
	beq _080532B8
	strb r3, [r4]
	strb r0, [r4, #1]
	movs r0, #0x6c
	muls r0, r3, r0
	add r0, sb
	ldr r1, [r0]
	movs r0, #0x1f
	ands r1, r0
	ldrb r0, [r4, #2]
	mov r2, r8
	ands r2, r0
	orrs r2, r1
	movs r0, #0x20
	orrs r2, r0
	strb r2, [r4, #2]
	cmp r6, #0
	beq _080532B0
	mov r1, ip
	ldrh r0, [r1]
	cmp r0, #0xf
	bls _080532B0
	ands r2, r7
	strb r2, [r4, #2]
_080532B0:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	adds r4, #4
_080532B8:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xff
	bls _08053272
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080532D0: .4byte gUnknown_02019DE4
_080532D4: .4byte 0x000004C6
_080532D8: .4byte gUnknown_02004970
_080532DC: .4byte gUnknown_080E510C
	.syntax divided

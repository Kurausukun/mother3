	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _0804BCF0
	adds r0, r0, r7
	mov sb, r0
	ldrb r1, [r0]
	movs r5, #2
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	mov sl, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	movs r2, #9
	rsbs r2, r2, #0
	mov ip, r2
	ands r0, r2
	movs r4, #0x11
	rsbs r4, r4, #0
	ands r0, r4
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r0, r3
	subs r2, #0x38
	ands r0, r2
	mov r6, sb
	strb r0, [r6]
	ldr r0, _0804BCF4
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0]
	ands r1, r0
	mov r6, ip
	ands r1, r6
	ands r1, r4
	ands r1, r3
	ands r1, r2
	movs r4, #0x7f
	ands r1, r4
	mov r0, r8
	strb r1, [r0]
	ldr r1, _0804BCF8
	adds r2, r7, r1
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	mov r6, sl
	ands r0, r6
	strb r0, [r2]
	movs r1, #0xa3
	lsls r1, r1, #5
	adds r0, r7, r1
	movs r3, #0
	strb r3, [r0]
	ldr r2, _0804BCFC
	adds r1, r7, r2
	movs r0, #0x14
	strb r0, [r1]
	ldr r6, _0804BD00
	adds r1, r7, r6
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0804BD04
	adds r0, r7, r1
	strb r3, [r0]
	adds r2, #3
	adds r0, r7, r2
	strb r3, [r0]
	adds r6, #4
	adds r0, r7, r6
	strb r3, [r0]
	ldr r1, _0804BD08
	adds r0, r7, r1
	movs r6, #0
	strh r3, [r0]
	ldr r2, _0804BD0C
	adds r0, r7, r2
	strh r3, [r0]
	adds r1, #4
	adds r0, r7, r1
	strh r3, [r0]
	mov r2, sb
	ldrb r0, [r2]
	ands r4, r0
	strb r4, [r2]
	mov r4, r8
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	mov r1, sl
	ands r0, r1
	strb r0, [r4]
	ldr r2, _0804BD10
	adds r0, r7, r2
	strb r6, [r0]
	ldr r4, _0804BD14
	adds r2, r7, r4
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0804BD18
	adds r0, r7, r1
	strb r6, [r0]
	adds r4, #0x14
	adds r2, r7, r4
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	mov r6, sl
	ands r0, r6
	strb r0, [r2]
	ldr r1, _0804BD1C
	adds r0, r7, r1
	strh r3, [r0]
	ldr r2, _0804BD20
	adds r1, r7, r2
	ldrb r0, [r1]
	ands r5, r0
	strb r5, [r1]
	adds r4, #0x52
	adds r1, r7, r4
	strh r3, [r1]
	strh r3, [r1, #2]
	movs r2, #0xf0
	strh r2, [r1, #4]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldr r5, _0804BD24
	adds r0, r7, r5
	strh r3, [r0]
	movs r1, #0x20
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	movs r2, #0x80
	strh r2, [r0, #6]
	ldr r6, _0804BD28
	adds r0, r7, r6
	strh r2, [r0]
	strh r1, [r0, #2]
	movs r1, #0x70
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, _0804BD2C
	adds r1, r7, r0
	movs r0, #8
	strh r0, [r1]
	movs r2, #0x18
	strh r2, [r1, #2]
	movs r0, #0xe0
	strh r0, [r1, #4]
	movs r0, #0x88
	strh r0, [r1, #6]
	adds r4, #0x28
	adds r1, r7, r4
	movs r0, #0x58
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #0x98
	strh r0, [r1, #4]
	movs r0, #0x68
	strh r0, [r1, #6]
	adds r5, #0x20
	adds r0, r7, r5
	strh r3, [r0]
	strh r3, [r0, #2]
	subs r6, #0x5c
	adds r0, r7, r6
	bl sub_0804BD34
	movs r2, #0
	ldr r3, _0804BD30
_0804BCBE:
	lsls r0, r2, #5
	adds r1, r0, r7
	adds r0, r0, r3
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x12
	bls _0804BCBE
	bl sub_080523D4
	bl sub_0805280C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BCF0: .4byte 0x000016F2
_0804BCF4: .4byte 0x000016F3
_0804BCF8: .4byte 0x000016F4
_0804BCFC: .4byte 0x00001461
_0804BD00: .4byte 0x00001462
_0804BD04: .4byte 0x00001463
_0804BD08: .4byte 0x000016EC
_0804BD0C: .4byte 0x000016EE
_0804BD10: .4byte 0x00001465
_0804BD14: .4byte 0x000013C6
_0804BD18: .4byte 0x000013C2
_0804BD1C: .4byte 0x0000026A
_0804BD20: .4byte 0x000013E6
_0804BD24: .4byte 0x0000143C
_0804BD28: .4byte 0x00001444
_0804BD2C: .4byte 0x0000144C
_0804BD30: .4byte gOverworldMenuScrollTable
	.syntax divided

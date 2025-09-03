	.syntax unified
sub_0805255C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r4, _0805262C
	adds r0, r4, #0
	movs r1, #0x40
	bl memclear
	ldr r0, _08052630
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r6, #0
	mov sl, r1
_08052580:
	mov r0, r8
	adds r0, #0x3c
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805265E
	adds r2, r0, #0
	movs r0, #0x6c
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r3, _08052634
	adds r5, r1, r3
	ldrh r7, [r5, #0xa]
	str r7, [sp]
	strb r2, [r4]
	movs r0, #1
	mov sb, r0
	movs r0, #1
	strb r0, [r4, #1]
	ldr r2, _08052638
	adds r1, r1, r2
	ldr r2, [r1]
	movs r3, #0x1f
	ands r2, r3
	ldrb r0, [r4, #2]
	movs r7, #0x20
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	movs r2, #0x41
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r4, #2]
	mov r0, r8
	adds r1, r6, #0
	bl sub_08055180
	lsls r0, r0, #0x10
	lsrs r0, r0, #9
	ldrb r1, [r4, #2]
	movs r3, #0x7f
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #2]
	adds r2, r6, #0
	movs r7, #0x1f
	ands r2, r7
	lsls r2, r2, #1
	ldrb r0, [r4, #3]
	subs r7, #0x5e
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #3]
	ldr r1, _0805263C
	ldr r2, _08052640
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xb
	bgt _0805264C
	cmp r0, #8
	blt _0805264C
	ldrb r0, [r5, #8]
	mov r7, sb
	ands r0, r7
	lsls r0, r0, #5
	movs r5, #0x21
	rsbs r5, r5, #0
	adds r2, r5, #0
	ands r2, r3
	orrs r2, r0
	strb r2, [r4, #2]
	ldr r3, _08052644
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r7, [sp]
	adds r0, r0, r7
	ldr r1, _08052648
	cmp r0, r1
	bls _08052654
	ands r2, r5
	strb r2, [r4, #2]
	b _08052654
	.align 2, 0
_0805262C: .4byte gUnknown_020194A8
_08052630: .4byte 0x00000DEC
_08052634: .4byte gGoodsInfo
_08052638: .4byte gUnknown_080E510C
_0805263C: .4byte gSomeBlend
_08052640: .4byte 0x00004260
_08052644: .4byte 0x00002DF0
_08052648: .4byte 0x000F423E
_0805264C:
	ldrb r0, [r4, #2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #2]
_08052654:
	mov r1, sl
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r4, #4
_0805265E:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xf
	bls _08052580
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

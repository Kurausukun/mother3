	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0803023C
	ldr r0, _08030240
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08030244
	adds r0, r4, r1
	movs r1, #0xa
	bl memclear
	ldr r2, _08030248
	adds r0, r4, r2
	ldr r0, [r0]
	mov r8, r0
	ldr r3, _0803024C
	adds r4, r4, r3
	ldrh r7, [r4]
	movs r0, #0
	mov sl, r0
_080301C0:
	mov r0, sl
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080301D4
	b _08030316
_080301D4:
	adds r4, r5, #0
	adds r4, #0x88
	ldrh r0, [r4]
	bl sub_08036D18
	adds r6, r0, #0
	ldrh r0, [r4]
	bl sub_08036D3C
	mov sb, r0
	adds r1, r5, #0
	adds r1, #0x8c
	ldr r0, _08030250
	strh r0, [r1]
	movs r0, #0
	str r0, [r5, #0x1c]
	adds r2, r5, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r3, #9
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r1, r0
	subs r3, #8
	adds r0, r3, #0
	ands r1, r0
	strb r1, [r2]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r1, r5, #0
	adds r1, #0x8a
	strb r0, [r1]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08030258
	ldrh r1, [r4]
	cmp r1, #0xff
	bls _08030258
	ldr r0, _08030254
	cmp r1, r0
	bhi _08030258
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_08030354
	b _08030270
	.align 2, 0
_0803023C: .4byte gGame
_08030240: .4byte 0x00008376
_08030244: .4byte 0x00008378
_08030248: .4byte 0x00009D08
_0803024C: .4byte 0x00009D0C
_08030250: .4byte 0x0000FFFF
_08030254: .4byte 0x0000026B
_08030258:
	ldr r1, _08030344
	adds r0, r1, #0
	ldrh r3, [r4]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bhi _08030270
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
_08030270:
	adds r1, r5, #0
	adds r1, #0x90
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4]
	bl sub_08036D60
	str r0, [r5, #0x24]
	mov r0, r8
	str r0, [r5, #0x28]
	adds r0, r5, #0
	adds r0, #0x94
	strh r7, [r0]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r3, r5, #0
	adds r3, #0xc9
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r3]
	movs r2, #7
	rsbs r2, r2, #0
	mov sb, r2
	mov r2, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r2, [r6, #1]
	lsrs r2, r2, #7
	lsls r2, r2, #3
	mov sb, r2
	movs r2, #9
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	mov r0, sb
	orrs r1, r0
	strb r1, [r3]
	ldrh r1, [r4]
	movs r0, #0x9b
	lsls r0, r0, #2
	cmp r1, r0
	bne _080302D8
	adds r2, r5, #0
	adds r2, #0xcd
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080302D8:
	ldrb r1, [r6, #4]
	adds r0, r5, #0
	adds r0, #0x81
	strb r1, [r0]
	ldrb r0, [r6, #5]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x82
	strb r1, [r0]
	ldrb r0, [r6, #6]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x83
	strb r1, [r0]
	ldrb r0, [r6, #7]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x84
	strb r1, [r0]
	ldrb r1, [r6]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, #1
	lsrs r1, r1, #4
	adds r1, #1
	muls r0, r1, r0
	lsls r1, r0, #5
	add r8, r1
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08030316:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0x18
	bhi _08030326
	b _080301C0
_08030326:
	ldr r0, _08030348
	ldr r2, _0803034C
	adds r1, r0, r2
	mov r3, r8
	str r3, [r1]
	ldr r1, _08030350
	adds r0, r0, r1
	strh r7, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030344: .4byte 0xFFFFFD30
_08030348: .4byte gGame
_0803034C: .4byte 0x00009D08
_08030350: .4byte 0x00009D0C
	.syntax divided

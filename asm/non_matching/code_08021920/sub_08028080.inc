	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08028138
	adds r4, r6, r0
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r5, #9
	rsbs r5, r5, #0
	ands r0, r5
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r3, #0x41
	rsbs r3, r3, #0
	ands r0, r3
	movs r2, #0x7f
	ands r0, r2
	strb r0, [r4]
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r4, r6, r0
	ldrb r0, [r4]
	ands r1, r0
	ands r1, r3
	ands r1, r2
	strb r1, [r4]
	ldr r1, _0802813C
	adds r2, r6, r1
	ldrb r1, [r2]
	adds r3, #0x3f
	adds r0, r3, #0
	ands r0, r1
	ands r0, r5
	strb r0, [r2]
	ldr r2, _08028140
	adds r0, r6, r2
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	ldr r5, _08028144
	adds r0, r6, r5
	strh r1, [r0]
	adds r5, #2
	adds r0, r6, r5
	strh r1, [r0]
	adds r5, #2
	adds r0, r6, r5
	strh r1, [r0]
	ldr r0, _08028148
	adds r1, r6, r0
	ldr r0, _0802814C
	strh r0, [r1]
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r5, #6
	adds r1, r6, r5
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08028150
	adds r0, r6, r1
	strb r2, [r0]
	ldr r0, _08028154
	ldr r2, _08028158
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08028128
	adds r5, #8
	adds r2, r6, r5
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
_08028128:
	ldr r1, _0802815C
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r2, r1, #0
	cmp r2, #6
	bne _08028164
	ldr r2, _08028160
	b _0802818A
	.align 2, 0
_08028138: .4byte 0x0000069F
_0802813C: .4byte 0x000006A1
_08028140: .4byte 0x00000686
_08028144: .4byte 0x0000068C
_08028148: .4byte 0x00000692
_0802814C: .4byte 0x0000FFFF
_08028150: .4byte 0x00000697
_08028154: .4byte gGame
_08028158: .4byte 0x00008494
_0802815C: .4byte 0x00000683
_08028160: .4byte 0x00000684
_08028164:
	ldr r0, _08028178
	ldrb r0, [r0]
	cmp r0, #4
	bne _08028180
	cmp r2, #3
	bne _08028180
	ldr r5, _0802817C
	adds r0, r6, r5
	b _0802818C
	.align 2, 0
_08028178: .4byte gUnknown_02005080
_0802817C: .4byte 0x00000684
_08028180:
	ldr r1, _08028214
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08028218
_0802818A:
	adds r0, r6, r2
_0802818C:
	strb r1, [r0]
	ldr r5, _0802821C
	adds r0, r6, r5
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08028220
	adds r0, r6, r2
	strb r1, [r0]
	adds r5, #0x17
	adds r0, r6, r5
	strh r1, [r0]
	adds r2, #0x18
	adds r0, r6, r2
	strh r1, [r0]
	adds r0, r6, #0
	bl sub_08028264
	bl sub_0802B4D8
	movs r4, #0
	subs r5, #0x30
	adds r1, r6, r5
	movs r2, #0
_080281BA:
	lsls r0, r4, #2
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _080281BA
	ldr r1, _0802821C
	adds r0, r6, r1
	ldrb r4, [r0]
	cmp r4, #4
	bhi _08028200
	movs r2, #2
	rsbs r2, r2, #0
	adds r6, r2, #0
	movs r0, #3
	rsbs r0, r0, #0
	adds r5, r0, #0
_080281E0:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r1, #0x85
	strb r4, [r1]
	adds r0, #0xbc
	ldrb r1, [r0]
	ands r1, r6
	ands r1, r5
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _080281E0
_08028200:
	ldr r0, _08028224
	ldrb r0, [r0]
	cmp r0, #5
	bhi _0802825C
	lsls r0, r0, #2
	ldr r1, _08028228
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08028214: .4byte 0x00000684
_08028218: .4byte 0x00000683
_0802821C: .4byte 0x00000681
_08028220: .4byte 0x00000682
_08028224: .4byte gUnknown_02005080
_08028228: .4byte _0802822C
_0802822C:
	.4byte _08028244
	.4byte _0802825C
	.4byte _08028244
	.4byte _0802824A
	.4byte _0802824A
	.4byte _0802824E
_08028244:
	bl sub_08034FFC
	b _0802825C
_0802824A:
	bl sub_08035114
_0802824E:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	movs r3, #1
	bl sub_08035384
_0802825C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

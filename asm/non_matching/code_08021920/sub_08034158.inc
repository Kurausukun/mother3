	.syntax unified
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
_0803415E:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080341B2
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034190
	adds r2, r1, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0803419E
	movs r0, #6
	orrs r0, r1
	strb r0, [r2]
	b _080341B2
_08034190:
	adds r0, r1, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _080341A4
_0803419E:
	cmp r0, #3
	beq _080341AC
	b _080341B2
_080341A4:
	adds r0, r1, #0
	bl sub_08034260
	b _080341B2
_080341AC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080341B2:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0803415E
	ldr r3, _080341EC
	ldr r0, _080341F0
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	ldr r1, _080341F4
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08034208
	ldr r0, _080341F8
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #1
	bne _080341FC
	movs r1, #0
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _0803424A
	b _08034248
	.align 2, 0
_080341EC: .4byte gGame
_080341F0: .4byte 0x000082A2
_080341F4: .4byte 0x000082B7
_080341F8: .4byte 0x00008299
_080341FC:
	movs r0, #0
	ldrb r1, [r1]
	cmp r5, r1
	bne _0803425A
	movs r0, #1
	b _0803425A
_08034208:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08034258
	cmp r0, #3
	bne _0803423A
	movs r0, #0
	bl get_obj_direct
	adds r1, r0, #0
	ldr r0, [r1, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0803423A
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, #0x8b
	ldrb r1, [r1]
	movs r2, #7
	ands r2, r1
	movs r1, #0
	bl sub_080332AC
_0803423A:
	movs r1, #0
	ldr r0, _08034250
	ldr r2, _08034254
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r5, r0
	bne _0803424A
_08034248:
	movs r1, #1
_0803424A:
	adds r0, r1, #0
	b _0803425A
	.align 2, 0
_08034250: .4byte gGame
_08034254: .4byte 0x00008299
_08034258:
	movs r0, #0
_0803425A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided

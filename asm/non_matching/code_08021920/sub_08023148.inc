	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r0, _08023160
	ldr r1, _08023164
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08023168
	bl sub_0802337C
	b _08023366
	.align 2, 0
_08023160: .4byte gSomeBlend
_08023164: .4byte 0x0000566C
_08023168:
	bl sub_0802ABCC
	ldr r4, _08023218
	ldr r2, _0802321C
	adds r5, r4, r2
	ldrb r1, [r5]
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _080231B8
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _08023198
	ldr r3, _08023220
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r7, _08023224
	adds r1, r4, r7
	ldrh r1, [r1]
	subs r3, #2
	adds r2, r4, r3
	ldrh r2, [r2]
	bl sub_080187C4
_08023198:
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _080231B8
	ldr r7, _08023220
	adds r0, r4, r7
	ldrh r0, [r0]
	ldr r2, _08023224
	adds r1, r4, r2
	ldrh r1, [r1]
	ldr r3, _08023228
	adds r2, r4, r3
	ldrh r2, [r2]
	bl sub_08036904
_080231B8:
	ldr r5, _08023218
	ldr r7, _0802321C
	adds r6, r5, r7
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08023200
	ldr r1, _0802322C
	adds r0, r5, r1
	ldrh r0, [r0]
	ldr r2, _08023230
	adds r4, r5, r2
	ldrh r1, [r4]
	ldr r3, _08023234
	adds r2, r5, r3
	ldrh r2, [r2]
	subs r7, #0xc3
	adds r3, r5, r7
	ldrh r3, [r3]
	bl sub_08018880
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r2, _08023238
	adds r1, r5, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	blo _08023200
	ldrb r1, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
_08023200:
	ldr r1, _08023218
	ldrb r0, [r1]
	subs r0, #3
	adds r6, r1, #0
	cmp r0, #0xc
	bhi _080232A8
	lsls r0, r0, #2
	ldr r1, _0802323C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023218: .4byte gGame
_0802321C: .4byte 0x00008495
_08023220: .4byte 0x000083C8
_08023224: .4byte 0x000083C4
_08023228: .4byte 0x000083C6
_0802322C: .4byte 0x000083CA
_08023230: .4byte 0x000083CC
_08023234: .4byte 0x000083D0
_08023238: .4byte 0x000083CE
_0802323C: .4byte _08023240
_08023240:
	.4byte _08023366
	.4byte _08023366
	.4byte _08023366
	.4byte _08023274
	.4byte _08023274
	.4byte _08023366
	.4byte _0802329C
	.4byte _08023280
	.4byte _08023366
	.4byte _08023366
	.4byte _080232A8
	.4byte _08023280
	.4byte _08023280
_08023274:
	ldr r0, _0802327C
	bl sub_0802D618
	b _08023366
	.align 2, 0
_0802327C: .4byte gUnknown_0200DEBC
_08023280:
	ldr r4, _08023298
	adds r0, r4, #0
	bl sub_0802D618
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r4, r4, r3
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	b _08023366
	.align 2, 0
_08023298: .4byte gUnknown_0200DEBC
_0802329C:
	ldr r0, _080232A4
	bl sub_0802D458
	b _08023366
	.align 2, 0
_080232A4: .4byte gUnknown_0200DEBC
_080232A8:
	adds r5, r6, #0
	ldr r0, [r5]
	ldr r1, _080232E8
	ands r0, r1
	cmp r0, #0
	beq _080232B8
	bl sub_0802406C
_080232B8:
	ldr r7, _080232EC
	adds r4, r5, r7
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08023314
	bl sub_0800AE2C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080232F8
	ldr r1, _080232F0
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080232DC
	cmp r0, #6
	bne _08023366
_080232DC:
	ldr r2, _080232F4
	adds r0, r6, r2
	bl sub_0802D5D0
	b _08023366
	.align 2, 0
_080232E8: .4byte 0x00103000
_080232EC: .4byte 0x00008494
_080232F0: .4byte 0x0000829B
_080232F4: .4byte 0x000082BC
_080232F8:
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08023304
	bl sub_08023414
_08023304:
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0802331E
	movs r0, #0
	bl sub_0801B5E8
	b _0802331E
_08023314:
	bl sub_0800AE2C
	movs r0, #0
	bl sub_0801B5E8
_0802331E:
	ldr r1, _08023334
	ldr r3, _08023338
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #4
	bne _08023340
	ldr r7, _0802333C
	adds r0, r1, r7
	bl sub_0802D5D0
	b _08023348
	.align 2, 0
_08023334: .4byte gGame
_08023338: .4byte 0x0000829B
_0802333C: .4byte 0x000082BC
_08023340:
	ldr r2, _0802336C
	adds r0, r1, r2
	bl sub_0802D458
_08023348:
	bl sub_0802454C
	ldr r1, _08023370
	ldr r7, _08023374
	adds r3, r1, r7
	ldrb r2, [r3]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldr r0, _08023378
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08023366:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802336C: .4byte 0x000082BC
_08023370: .4byte gGame
_08023374: .4byte 0x00008495
_08023378: .4byte 0x00008488
	.syntax divided

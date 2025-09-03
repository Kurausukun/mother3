	.syntax unified
sub_0800F314:
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	ldr r1, _0800F350
	ldr r4, _0800F354
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800F32A
	b _0800F44C
_0800F32A:
	ldrb r1, [r1, #8]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0800F338
	b _0800F44C
_0800F338:
	ldr r0, [r3]
	lsls r1, r0, #0x18
	adds r4, r0, #0
	cmp r1, #0
	bge _0800F37E
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #1
	ble _0800F358
	strh r5, [r2]
	b _0800F364
	.align 2, 0
_0800F350: .4byte gGame
_0800F354: .4byte 0x00008494
_0800F358:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0800F364
	orrs r0, r3
	strh r0, [r2]
_0800F364:
	ldrh r3, [r2, #2]
	movs r0, #2
	ldrsh r1, [r2, r0]
	cmp r1, #1
	ble _0800F372
	movs r0, #1
	b _0800F37C
_0800F372:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0800F37E
	orrs r0, r3
_0800F37C:
	strh r0, [r2, #2]
_0800F37E:
	lsls r0, r4, #0x17
	cmp r0, #0
	bge _0800F39C
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _0800F396
	ldrh r0, [r2, #2]
	rsbs r0, r0, #0
	strh r0, [r2]
	b _0800F3B4
_0800F396:
	rsbs r0, r1, #0
	strh r0, [r2, #2]
	b _0800F3B4
_0800F39C:
	lsls r0, r4, #0x16
	cmp r0, #0
	bge _0800F3F4
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _0800F3B2
	ldrh r0, [r2, #2]
	strh r0, [r2]
	b _0800F3B4
_0800F3B2:
	strh r1, [r2, #2]
_0800F3B4:
	lsls r0, r4, #9
	cmp r0, #0
	bge _0800F3F4
	movs r0, #0
	ldrsh r3, [r2, r0]
	adds r0, r3, #0
	cmp r3, #0
	bge _0800F3C6
	rsbs r0, r3, #0
_0800F3C6:
	cmp r0, #1
	bgt _0800F3D4
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800F3F4
_0800F3D4:
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, _0800F400
	cmp r0, #0
	ble _0800F3E0
	movs r1, #1
_0800F3E0:
	adds r0, r3, #0
	cmp r0, #0
	bge _0800F3E8
	rsbs r0, r0, #0
_0800F3E8:
	asrs r0, r0, #1
	strh r0, [r2, #2]
	movs r3, #2
	ldrsh r0, [r2, r3]
	muls r0, r1, r0
	strh r0, [r2, #2]
_0800F3F4:
	lsls r0, r4, #6
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _0800F404
	movs r3, #1
	b _0800F406
	.align 2, 0
_0800F400: .4byte 0x0000FFFF
_0800F404:
	lsls r3, r0, #1
_0800F406:
	lsls r0, r4, #0x13
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bhi _0800F44C
	lsls r0, r0, #2
	ldr r1, _0800F418
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F418: .4byte _0800F41C
_0800F41C:
	.4byte _0800F44C
	.4byte _0800F430
	.4byte _0800F438
	.4byte _0800F440
	.4byte _0800F446
_0800F430:
	ldrh r0, [r2, #2]
	subs r0, r0, r3
	strh r0, [r2, #2]
	b _0800F44C
_0800F438:
	ldrh r0, [r2, #2]
	adds r0, r3, r0
	strh r0, [r2, #2]
	b _0800F44C
_0800F440:
	ldrh r0, [r2]
	subs r0, r0, r3
	b _0800F44A
_0800F446:
	ldrh r0, [r2]
	adds r0, r3, r0
_0800F44A:
	strh r0, [r2]
_0800F44C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

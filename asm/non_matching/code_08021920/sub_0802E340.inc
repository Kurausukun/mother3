	.syntax unified
sub_0802E340:
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _0802E366
	adds r1, r3, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	movs r4, #4
	ldrsh r0, [r2, r4]
	cmp r1, r0
	ble _0802E366
	movs r0, #1
	b _0802E386
_0802E366:
	ldr r4, _0802E38C
	ldr r0, _0802E390
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	adds r0, r3, #0
	bl sub_0802F774
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
_0802E386:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802E38C: .4byte gGame
_0802E390: .4byte 0x00008382
	.syntax divided

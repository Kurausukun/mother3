	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r1, [r3, #0x2c]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0802E7DC
	ldrh r0, [r4, #4]
	strh r0, [r1]
	ldr r1, [r3, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
	b _0802E80A
_0802E7DC:
	adds r2, r3, #0
	adds r2, #0x9a
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, [r3, #0x2c]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	ble _0802E828
	movs r0, #0
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802E818
	ldr r1, [r3, #0x2c]
	ldrh r0, [r4, #4]
	strh r0, [r1]
_0802E80A:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrh r1, [r4, #2]
	bl sub_080334D0
	b _0802E828
_0802E818:
	ldr r1, [r3, #0x2c]
	ldrh r0, [r4, #6]
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033548
_0802E828:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided

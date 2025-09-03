	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r1, #0
	ldr r1, [r5, #0x2c]
	movs r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0802E2D6
	ldrh r0, [r2, #4]
	strh r0, [r1, #2]
	ldr r1, [r5, #0x2c]
	movs r0, #1
	strh r0, [r1, #4]
_0802E2D6:
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _0802E2F4
	adds r1, r5, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	ldr r0, [r5, #0x2c]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _0802E30C
_0802E2F4:
	movs r0, #2
	ldrsh r4, [r2, r0]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036734
	cmp r0, r4
	blo _0802E310
_0802E30C:
	movs r0, #1
	b _0802E330
_0802E310:
	ldr r4, _0802E338
	ldr r1, _0802E33C
	adds r4, r4, r1
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0802F650
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
_0802E330:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802E338: .4byte gGame
_0802E33C: .4byte 0x00008382
	.syntax divided

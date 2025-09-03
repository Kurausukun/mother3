	.syntax unified
sub_0802E25C:
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x2c]
	movs r4, #4
	ldrsh r0, [r3, r4]
	cmp r0, #0
	bne _0802E274
	ldrh r0, [r1, #2]
	strh r0, [r3, #2]
	ldr r1, [r2, #0x2c]
	movs r0, #1
	strh r0, [r1, #4]
_0802E274:
	adds r1, r2, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	ldr r0, [r2, #0x2c]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _0802E2B4
	ldr r4, _0802E2AC
	ldr r0, _0802E2B0
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r2, #0
	bl sub_0802F650
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
	b _0802E2B6
	.align 2, 0
_0802E2AC: .4byte gGame
_0802E2B0: .4byte 0x00008382
_0802E2B4:
	movs r0, #1
_0802E2B6:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided

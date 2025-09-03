	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x2c]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0802E6E8
	movs r4, #1
	strh r4, [r1, #2]
	bl sub_080030A4
	ands r0, r4
	movs r2, #6
	cmp r0, #0
	beq _0802E6DC
	movs r2, #2
_0802E6DC:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080332AC
_0802E6E8:
	adds r1, r5, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r1]
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E71E
	adds r0, r5, #0
	adds r0, #0x8b
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	movs r2, #2
	cmp r0, #2
	bne _0802E712
	movs r2, #6
_0802E712:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080332AC
_0802E71E:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

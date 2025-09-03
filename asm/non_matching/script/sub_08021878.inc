	.syntax unified
sub_08021878:
	push {r4, lr}
	adds r3, r1, #0
	adds r4, r2, #0
	ldrh r1, [r4]
	lsls r1, r1, #2
	adds r2, r0, r1
	ldrb r0, [r2, #1]
	strb r0, [r3]
	ldrb r0, [r2, #2]
	strb r0, [r3, #1]
	ldrb r1, [r2, #3]
	strb r1, [r3, #2]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802189E
	movs r0, #0xff
_0802189E:
	strb r0, [r3, #3]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

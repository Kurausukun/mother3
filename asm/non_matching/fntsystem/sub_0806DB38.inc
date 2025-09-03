	.syntax unified
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0806DB4E
	adds r2, r0, #0
	adds r2, #0x34
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _0806DB58
_0806DB4E:
	adds r2, r0, #0
	adds r2, #0x34
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_0806DB58:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

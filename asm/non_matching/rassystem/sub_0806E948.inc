	.syntax unified
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0806E960
	adds r2, r0, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #8
	b _0806E970
_0806E960:
	adds r2, r0, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0xf7
	ands r0, r1
	movs r1, #4
_0806E970:
	orrs r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0
	.syntax divided

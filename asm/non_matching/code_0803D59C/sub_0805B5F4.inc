	.syntax unified
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r0, #0x34
	adds r0, r0, r1
	strb r4, [r0]
	movs r2, #0
	adds r1, r3, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	cmp r0, #0
	bne _0805B618
	strb r4, [r1]
	movs r1, #1
	b _0805B634
_0805B618:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x13
	bhi _0805B63A
	adds r0, r3, #0
	adds r0, #0x3c
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _0805B618
	strb r4, [r1]
	movs r1, #1
	lsls r1, r2
_0805B634:
	ldr r0, [r3, #0x38]
	orrs r0, r1
	str r0, [r3, #0x38]
_0805B63A:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided

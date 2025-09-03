	.syntax unified
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	adds r1, #0x3c
_0805464E:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, r4
	bne _0805465C
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0805465C:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0805464E
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

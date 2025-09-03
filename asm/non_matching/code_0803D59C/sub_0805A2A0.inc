	.syntax unified
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	adds r3, r0, #0
	adds r3, #0x38
_0805A2AC:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r1, r0
	bhs _0805A2B8
	adds r0, r2, #0
	b _0805A2C4
_0805A2B8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _0805A2AC
	movs r0, #0
_0805A2C4:
	pop {r1}
	bx r1
	.syntax divided

	.syntax unified
	push {lr}
	adds r2, r0, #0
	adds r2, #0x5c
	ldrb r3, [r2]
	lsrs r3, r3, #3
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	adds r1, r3, #0
	bl sub_08050F2C
	pop {r0}
	bx r0
	.syntax divided

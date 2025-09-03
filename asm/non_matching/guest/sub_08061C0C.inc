	.syntax unified
	push {lr}
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r0, #0
	pop {r1}
	bx r1
	.syntax divided

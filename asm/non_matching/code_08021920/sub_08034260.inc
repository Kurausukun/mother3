	.syntax unified
sub_08034260:
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xc8
	ldrb r0, [r2]
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r3, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08034284
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_08034284:
	pop {r0}
	bx r0
	.syntax divided

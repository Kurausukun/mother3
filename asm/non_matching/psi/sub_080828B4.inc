	.syntax unified
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #4]
	cmp r0, #1
	bne _080828C2
	movs r1, #1
_080828C2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided

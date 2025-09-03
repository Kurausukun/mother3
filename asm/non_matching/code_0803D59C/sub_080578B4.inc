	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x24]
	cmp r0, #0x3c
	bne _080578CA
	adds r0, r1, #0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_080578CA:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

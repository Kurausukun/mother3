	.syntax unified
sub_080828C8:
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #5]
	cmp r0, #1
	bne _080828D6
	movs r1, #1
_080828D6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided

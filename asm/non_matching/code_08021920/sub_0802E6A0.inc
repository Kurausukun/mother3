	.syntax unified
sub_0802E6A0:
	push {lr}
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033548
	ldr r1, _0802E6B8
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802E6B8: .4byte gObjectContinue
	.syntax divided

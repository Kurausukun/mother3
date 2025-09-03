	.syntax unified
sub_0802E410:
	push {lr}
	ldrh r1, [r1, #2]
	bl sub_0802FA9C
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

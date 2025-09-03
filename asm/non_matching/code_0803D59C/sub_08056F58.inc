	.syntax unified
sub_08056F58:
	push {lr}
	ldrh r1, [r0, #8]
	movs r1, #0x40
	strh r1, [r0, #8]
	movs r1, #0
	bl sub_08056F6C
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

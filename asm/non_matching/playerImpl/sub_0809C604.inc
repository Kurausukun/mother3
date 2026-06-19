	.syntax unified
sub_0809C604:
	push {r4, lr}
	adds r4, r0, #0
	bl nullsub_31
	movs r0, #0x88
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided

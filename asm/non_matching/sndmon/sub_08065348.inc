	.syntax unified
sub_08065348:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x22
	strh r0, [r4, #0x30]
	movs r5, #0x13
_08065352:
	ldrh r0, [r4, #0x2c]
	adds r0, #6
	strh r0, [r4, #0x2c]
	movs r0, #1
	bl setsleep
	subs r5, #1
	cmp r5, #0
	bge _08065352
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

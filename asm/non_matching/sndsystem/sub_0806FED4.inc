	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	strh r1, [r4, #0x20]
	bl get__10IrcManager
	ldrh r2, [r4, #0x20]
	movs r1, #0xa0
	subs r1, r1, r2
	bl sub_08069AF8__3IrcUi
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

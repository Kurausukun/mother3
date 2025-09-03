	.syntax unified
	push {lr}
	subs r0, #8
	ldr r1, _08034FF8
	cmp r0, r1
	bhs _08034FF4
	movs r2, #0x9f
	lsls r2, r2, #3
	adds r0, r1, r2
_08034FF4:
	pop {r1}
	bx r1
	.align 2, 0
_08034FF8: .4byte gUnknown_0200D908
	.syntax divided

	.syntax unified
	push {lr}
	adds r1, r0, #0
	adds r1, #0x20
	ldr r0, [r1, #4]
	cmp r0, #0
	bgt _08072508
	movs r0, #0
	b _08072512
_08072508:
	subs r0, #1
	lsls r0, r0, #2
	ldr r1, [r1, #8]
	adds r1, r1, r0
	ldr r0, [r1]
_08072512:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

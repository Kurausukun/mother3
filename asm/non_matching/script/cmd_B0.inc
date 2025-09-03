	.syntax unified
	push {lr}
	ldr r1, _08021854
	ldr r2, _08021858
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #3
	adds r1, r1, r2
	ldrb r1, [r1]
	subs r0, r0, r1
	bl scriptstack_push
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08021854: .4byte gGame
_08021858: .4byte 0x00008370
	.syntax divided

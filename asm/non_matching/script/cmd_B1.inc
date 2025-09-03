	.syntax unified
	push {lr}
	ldr r0, _08021870
	ldr r1, _08021874
	adds r0, r0, r1
	ldrb r0, [r0]
	bl scriptstack_push
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08021870: .4byte gGame
_08021874: .4byte 0x00008373
	.syntax divided

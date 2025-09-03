	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #1
	bgt _08003DF0
	cmp r2, #0
	blt _08003DF0
	ldr r0, _08003DEC
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08003DF2
	.align 2, 0
_08003DEC: .4byte gMPlayTable
_08003DF0:
	movs r0, #0
_08003DF2:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

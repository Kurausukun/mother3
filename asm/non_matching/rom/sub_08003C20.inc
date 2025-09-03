	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #1
	bgt _08003C3E
	cmp r2, #0
	blt _08003C3E
	ldr r0, _08003C44
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl m4aMPlayContinue
_08003C3E:
	pop {r0}
	bx r0
	.align 2, 0
_08003C44: .4byte gMPlayTable
	.syntax divided

	.syntax unified
	push {lr}
	ldr r1, _08037C9C
	ldr r2, _08037CA0
	adds r1, r1, r2
	movs r2, #3
	strb r2, [r1]
	movs r1, #1
	bl sub_08037CA4
	pop {r0}
	bx r0
	.align 2, 0
_08037C9C: .4byte gSomeBlend
_08037CA0: .4byte 0x00003530
	.syntax divided

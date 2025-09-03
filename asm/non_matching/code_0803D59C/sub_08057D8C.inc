	.syntax unified
	push {lr}
	ldr r0, _08057D9C
	ldrb r0, [r0, #1]
	bl sub_08057F98
	pop {r0}
	bx r0
	.align 2, 0
_08057D9C: .4byte gUnknown_02015DA0
	.syntax divided

	.syntax unified
	push {lr}
	sub sp, #0x10
	ldr r1, _08057B50
	movs r2, #3
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r3, #0x20
	bl sub_080031F0
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_08057B50: .4byte gUnknown_02018D24
	.syntax divided

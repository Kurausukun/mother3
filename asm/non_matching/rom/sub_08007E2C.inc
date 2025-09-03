	.syntax unified
	push {lr}
	ldr r1, _08007E50
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	stm r1!, {r0}
	stm r1!, {r0}
	stm r1!, {r0}
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	bl sub_08007E54
	bl sub_08007F18
	pop {r0}
	bx r0
	.align 2, 0
_08007E50: .4byte 0x06008000
	.syntax divided

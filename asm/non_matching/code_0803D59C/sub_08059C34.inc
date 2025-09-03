	.syntax unified
	push {lr}
	ldr r0, _08059C48
	ldr r1, _08059C4C
	str r1, [r0, #0xc]
	movs r1, #0
	strh r1, [r0, #0x10]
	bl sub_08059C50
	pop {r0}
	bx r0
	.align 2, 0
_08059C48: .4byte gUnknown_02015DC0
_08059C4C: .4byte 0x06010000
	.syntax divided

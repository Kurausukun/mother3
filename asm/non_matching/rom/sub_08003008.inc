	.syntax unified
	ldr r1, _08003018
	str r0, [r1]
	ldr r0, _0800301C
	str r0, [r1, #4]
	ldr r0, _08003020
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08003018: .4byte gUnknown_02015EB0
_0800301C: .4byte 0x5D588B65
_08003020: .4byte 0x00269EC3
	.syntax divided

	.syntax unified
	ldr r0, _08005C44
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08005C48
	strh r1, [r0]
	bx lr
	.align 2, 0
_08005C44: .4byte gUnknown_03004B00
_08005C48: .4byte gUnknown_03004B02
	.syntax divided

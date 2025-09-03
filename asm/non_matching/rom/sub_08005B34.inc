	.syntax unified
	ldr r3, _08005B54
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08005B58
	ldrh r1, [r2]
	ldr r0, _08005B5C
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08005B60
	ldrh r1, [r2]
	ldr r0, _08005B64
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08005B54: .4byte 0x04000208
_08005B58: .4byte 0x04000200
_08005B5C: .4byte 0x0000FFFB
_08005B60: .4byte 0x04000004
_08005B64: .4byte 0x0000FFDF
	.syntax divided

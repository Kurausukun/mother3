	.syntax unified
	ldr r3, _08005A5C
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08005A60
	ldrh r1, [r2]
	ldr r0, _08005A64
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08005A68
	ldrh r1, [r2]
	ldr r0, _08005A6C
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08005A5C: .4byte 0x04000208
_08005A60: .4byte 0x04000200
_08005A64: .4byte 0x0000FFFD
_08005A68: .4byte 0x04000004
_08005A6C: .4byte 0x0000FFEF
	.syntax divided

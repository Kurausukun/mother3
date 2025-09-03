	.syntax unified
	ldr r1, _08005874
	ldrh r2, [r1, #0xa]
	ldr r0, _08005878
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0800587C
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r2, _08005880
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08005884
	str r0, [r1]
	ldr r0, _08005888
	str r0, [r1, #4]
	ldr r0, _0800588C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_08005874: .4byte 0x040000B0
_08005878: .4byte 0x0000C5FF
_0800587C: .4byte 0x00007FFF
_08005880: .4byte 0x040000BA
_08005884: .4byte gUnknown_030040F0
_08005888: .4byte 0x04000040
_0800588C: .4byte 0xA2600001
	.syntax divided

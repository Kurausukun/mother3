	.syntax unified
sub_08056A4C:
	ldr r3, _08056A6C
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08056A70
	ldrh r1, [r2]
	ldr r0, _08056A74
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08056A78
	ldrh r1, [r2]
	ldr r0, _08056A7C
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08056A6C: .4byte 0x04000208
_08056A70: .4byte 0x04000200
_08056A74: .4byte 0x0000FFFD
_08056A78: .4byte 0x04000004
_08056A7C: .4byte 0x0000FFEF
	.syntax divided

	.syntax unified
sub_0805875C:
	ldr r3, _0805877C
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08058780
	ldrh r1, [r2]
	ldr r0, _08058784
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08058788
	ldrh r1, [r2]
	ldr r0, _0805878C
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_0805877C: .4byte 0x04000208
_08058780: .4byte 0x04000200
_08058784: .4byte 0x0000FFFD
_08058788: .4byte 0x04000004
_0805878C: .4byte 0x0000FFEF
	.syntax divided

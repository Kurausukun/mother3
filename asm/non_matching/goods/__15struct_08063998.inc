    .syntax unified
    .global __15struct_08063998
__15struct_08063998:
	ldr r1, _080639A4
	str r1, [r0, #4]
	movs r1, #5
	strh r1, [r0]
	bx lr
	.align 2, 0
_080639A4: .4byte _vt.15struct_08063998
    .syntax divided
	.syntax unified
	ldr r1, _08087ADC
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08087ADC: .4byte 0x0000042C
	.syntax divided

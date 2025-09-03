	.syntax unified
sub_08087348:
	push {lr}
	ldr r2, _08087358
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_08087358: .4byte vt_09F84F00
	.syntax divided

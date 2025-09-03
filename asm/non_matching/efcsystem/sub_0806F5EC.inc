	.syntax unified
sub_0806F5EC:
	push {lr}
	ldr r2, _0806F5FC
	str r2, [r0, #0x1c]
	bl sub_080894DC
	pop {r0}
	bx r0
	.align 2, 0
_0806F5FC: .4byte vt_09F80340
	.syntax divided

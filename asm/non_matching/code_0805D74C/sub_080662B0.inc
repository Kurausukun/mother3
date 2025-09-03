	.syntax unified
sub_080662B0:
	push {lr}
	ldr r2, _080662C0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080662C0: .4byte vt_09F7E328
	.syntax divided

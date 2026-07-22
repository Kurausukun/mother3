	.syntax unified
dt__14StatusOffUpMid:
	push {lr}
	ldr r2, _080B9654
	str r2, [r0, #0x1c]
	bl _._6Status
	pop {r0}
	bx r0
	.align 2, 0
_080B9654: .4byte _vt.13DefaultStatus
	.syntax divided

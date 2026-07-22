	.syntax unified
dt__13StatusStrange:
	push {lr}
	ldr r2, _080B6DC0
	str r2, [r0, #0x1c]
	bl _._6Status
	pop {r0}
	bx r0
	.align 2, 0
_080B6DC0: .4byte _vt.13DefaultStatus
	.syntax divided

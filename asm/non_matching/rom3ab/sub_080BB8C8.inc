	.syntax unified
dt__12StatusEndure:
	push {lr}
	ldr r2, _080BB8D8
	str r2, [r0, #0x1c]
	bl _._6Status
	pop {r0}
	bx r0
	.align 2, 0
_080BB8D8: .4byte _vt.13DefaultStatus
	.syntax divided

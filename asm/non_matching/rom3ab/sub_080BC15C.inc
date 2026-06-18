	.syntax unified
dt__12StatusPoison:
	push {lr}
	ldr r2, _080BC16C
	str r2, [r0, #0x1c]
	bl _._6Status
	pop {r0}
	bx r0
	.align 2, 0
_080BC16C: .4byte _vt.13DefaultStatus
	.syntax divided

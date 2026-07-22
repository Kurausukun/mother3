	.syntax unified
dt__17StatusDefDownWeak:
	push {lr}
	ldr r2, _080BA0F0
	str r2, [r0, #0x1c]
	bl _._6Status
	pop {r0}
	bx r0
	.align 2, 0
_080BA0F0: .4byte _vt.13DefaultStatus
	.syntax divided

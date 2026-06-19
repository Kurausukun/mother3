	.syntax unified
dt__15StatusPsiShield:
	push {lr}
	ldr r2, _080BBC6C
	str r2, [r0, #0x1c]
	bl _._6Status
	pop {r0}
	bx r0
	.align 2, 0
_080BBC6C: .4byte _vt.13DefaultStatus
	.syntax divided

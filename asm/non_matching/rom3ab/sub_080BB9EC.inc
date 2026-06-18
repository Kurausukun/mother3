	.syntax unified
dt__14StatusTimeBomb:
	push {lr}
	ldr r2, _080BB9FC
	str r2, [r0, #0x1c]
	bl _._6Status
	pop {r0}
	bx r0
	.align 2, 0
_080BB9FC: .4byte _vt.13DefaultStatus
	.syntax divided

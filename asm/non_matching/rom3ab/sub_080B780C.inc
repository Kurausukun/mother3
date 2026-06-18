	.syntax unified
dt__19StatusMonkeyDanceIQ:
	push {lr}
	ldr r2, _080B781C
	str r2, [r0, #0x1c]
	bl _._6Status
	pop {r0}
	bx r0
	.align 2, 0
_080B781C: .4byte _vt.13DefaultStatus
	.syntax divided

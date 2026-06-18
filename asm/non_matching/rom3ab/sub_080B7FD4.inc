	.syntax unified
dt__20StatusMonkeyDanceOff:
	push {lr}
	ldr r2, _080B7FE4
	str r2, [r0, #0x1c]
	bl _._6Status
	pop {r0}
	bx r0
	.align 2, 0
_080B7FE4: .4byte _vt.13DefaultStatus
	.syntax divided

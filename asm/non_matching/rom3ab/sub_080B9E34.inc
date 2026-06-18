	.syntax unified
dt__16StatusDefDownMid:
	push {lr}
	ldr r2, _080B9E44
	str r2, [r0, #0x1c]
	bl _._6Status
	pop {r0}
	bx r0
	.align 2, 0
_080B9E44: .4byte _vt.13DefaultStatus
	.syntax divided

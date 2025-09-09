	.syntax unified
sub_0809C5E8:
	push {lr}
	ldr r2, _0809C5FC
	str r2, [r0, #0x20]
	ldr r2, _0809C600
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809C5FC: .4byte vt_09F48BF8
_0809C600: .4byte vt_09F48C70
	.syntax divided

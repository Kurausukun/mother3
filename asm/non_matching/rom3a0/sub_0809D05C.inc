	.syntax unified
sub_0809D05C:
	push {lr}
	ldr r2, _0809D070
	str r2, [r0, #0x20]
	ldr r2, _0809D074
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809D070: .4byte vt_09F48BF8
_0809D074: .4byte vt_09F48C70
	.syntax divided

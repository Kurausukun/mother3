	.syntax unified
sub_0809D4FC:
	push {lr}
	ldr r2, _0809D510
	str r2, [r0, #0x20]
	ldr r2, _0809D514
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809D510: .4byte vt_09F48BF8
_0809D514: .4byte vt_09F48C70
	.syntax divided

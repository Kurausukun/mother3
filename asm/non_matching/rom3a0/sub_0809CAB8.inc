	.syntax unified
sub_0809CAB8:
	push {lr}
	ldr r2, _0809CACC
	str r2, [r0, #0x20]
	ldr r2, _0809CAD0
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809CACC: .4byte vt_09F48BF8
_0809CAD0: .4byte vt_09F48C70
	.syntax divided

	.syntax unified
sub_080A095C:
	push {lr}
	ldr r2, _080A0970
	str r2, [r0, #0x20]
	ldr r2, _080A0974
	str r2, [r0, #0x1c]
	bl _._5Guest
	pop {r0}
	bx r0
	.align 2, 0
_080A0970: .4byte vt_09F4D280
_080A0974: .4byte vt_09F4D2F8
	.syntax divided

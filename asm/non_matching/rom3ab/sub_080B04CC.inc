	.syntax unified
sub_080B04CC:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B04E4
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B04E4: .4byte vt_09F6FE28
	.syntax divided

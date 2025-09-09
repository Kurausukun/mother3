	.syntax unified
sub_0809D8BC:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D8D4
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D8D4: .4byte vt_09F493F8
	.syntax divided

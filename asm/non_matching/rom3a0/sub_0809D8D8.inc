	.syntax unified
sub_0809D8D8:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D8F0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D8F0: .4byte vt_09F496A0
	.syntax divided

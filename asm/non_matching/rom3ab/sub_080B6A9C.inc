	.syntax unified
sub_080B6A9C:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6ABC
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08082678
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6ABC: .4byte vt_09F76250
	.syntax divided

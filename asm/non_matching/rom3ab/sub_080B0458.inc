	.syntax unified
sub_080B0458:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0474
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0474: .4byte vt_09F6F368
	.syntax divided

	.syntax unified
sub_080B6B48:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6B6C
	str r0, [r4, #0x1c]
	movs r0, #2
	movs r1, #3
	bl randS32
	str r0, [r4, #0x34]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6B6C: .4byte vt_09F768B8
	.syntax divided

	.syntax unified
sub_080B69B8:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B69E0
	str r0, [r4, #0x1c]
	movs r0, #1
	movs r1, #2
	bl randS32
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08082680
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B69E0: .4byte vt_09F75958
	.syntax divided

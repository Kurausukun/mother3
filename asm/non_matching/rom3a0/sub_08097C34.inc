	.syntax unified
sub_08097C34:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097C88
	str r0, [r4, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r2, _08097C8C
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0xc
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0xc
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, r4, #0
	bl sub_08097CB4
	adds r0, r4, #0
	bl sub_08097C94
	ldr r0, _08097C90
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097C88: .4byte vt_09F46450
_08097C8C: .4byte 0x00000F6C
_08097C90: .4byte vt_09F461B0
	.syntax divided

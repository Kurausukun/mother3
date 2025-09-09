	.syntax unified
sub_08097BC8:
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097C2C
	str r0, [r5, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r0, r5, #0
	bl sub_08097CB4
	adds r0, r5, #0
	bl sub_08097C94
	ldr r0, _08097C30
	str r0, [r5, #0x1c]
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	strb r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08097C2C: .4byte vt_09F46450
_08097C30: .4byte vt_09F45ED0
	.syntax divided

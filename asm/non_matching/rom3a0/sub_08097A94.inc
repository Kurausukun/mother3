	.syntax unified
sub_08097A94:
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097B44
	str r0, [r5, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	ldr r3, _08097B48
	adds r0, r5, r3
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0x18
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r3, #0x18
	adds r0, r5, r3
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r0, r5, #0
	bl sub_08097CB4
	adds r0, r5, #0
	bl sub_08097C94
	ldr r0, _08097B4C
	str r0, [r5, #0x1c]
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	str r4, [r0]
	ldr r3, _08097B50
	adds r0, r5, r3
	str r4, [r0]
	movs r1, #0
	ldr r0, _08097B54
	movs r2, #0
	adds r0, #0x18
_08097AF6:
	cmp r1, #2
	beq _08097AFC
	str r2, [r0]
_08097AFC:
	adds r0, #0x6c
	adds r1, #1
	cmp r1, #0xf
	ble _08097AF6
	ldr r0, _08097B58
	adds r4, r5, r0
	movs r0, #0x38
	bl __builtin_new
	movs r1, #0xa3
	bl __5SoundUs
	str r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08097B44: .4byte vt_09F46450
_08097B48: .4byte 0x00000F6C
_08097B4C: .4byte vt_09F458E8
_08097B50: .4byte 0x00000F94
_08097B54: .4byte gCharStats
_08097B58: .4byte 0x00000F98
	.syntax divided

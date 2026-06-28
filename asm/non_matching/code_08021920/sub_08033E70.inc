	.syntax unified
sub_08033E70:
	push {r4, r5, r6, lr}
	movs r0, #0
	bl get_obj_direct
	adds r6, r0, #0
	ldr r0, [r6, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x1f
	cmp r3, #0
	beq _08033E8A
	movs r0, #0
	b _08033FE4
_08033E8A:
	ldr r2, _08033EE8
	ldr r0, _08033EEC
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08033EF0
	adds r0, r2, r1
	strh r3, [r0]
	adds r5, r6, #0
	adds r5, #0x8f
	ldrb r0, [r5]
	cmp r0, #0
	beq _08033F14
	adds r3, r6, #0
	adds r3, #0xbc
	ldrb r1, [r3]
	lsls r1, r1, #0x1b
	ldr r0, _08033EF4
	adds r4, r2, r0
	lsrs r1, r1, #0x1d
	lsls r1, r1, #1
	ldrb r2, [r4]
	movs r0, #0x1f
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	bl sub_080270C8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r2, [r5]
	cmp r2, r1
	beq _08033EFC
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r4]
	ldr r0, _08033EF8
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	b _08033F4E
	.align 2, 0
_08033EE8: .4byte gGame
_08033EEC: .4byte 0x0000829B
_08033EF0: .4byte 0x0000829E
_08033EF4: .4byte 0x000082B6
_08033EF8: .4byte 0xFFFFFE1F
_08033EFC:
	movs r0, #0xf
	ands r2, r0
	lsls r2, r2, #5
	ldrh r1, [r4]
	ldr r0, _08033F10
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	b _08033F4E
	.align 2, 0
_08033F10: .4byte 0xFFFFFE1F
_08033F14:
	adds r3, r6, #0
	adds r3, #0xbc
	ldrb r1, [r3]
	lsls r1, r1, #0x1b
	ldr r0, _08033F98
	adds r4, r2, r0
	lsrs r1, r1, #0x1d
	lsls r1, r1, #1
	ldrb r2, [r4]
	movs r0, #0x1f
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	bl sub_080270C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #5
	ldrh r2, [r4]
	ldr r1, _08033F9C
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
_08033F4E:
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	ldr r4, _08033FA0
	ldr r1, _08033F98
	adds r0, r4, r1
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1c
	movs r0, #0
	movs r1, #4
	bl sub_080332AC
	movs r0, #0
	bl sub_08033484
	ldr r0, _08033FA4
	adds r4, r4, r0
	ldrh r1, [r4]
	ldr r0, _08033FA8
	cmp r1, r0
	bgt _08033FAC
	subs r0, #1
	cmp r1, r0
	bge _08033FC0
	subs r0, #0x67
	cmp r1, r0
	blt _08033FE2
	adds r0, #3
	cmp r1, r0
	ble _08033FC0
	adds r0, #0x5d
	cmp r1, r0
	beq _08033FC0
	b _08033FE2
	.align 2, 0
_08033F98: .4byte 0x000082B6
_08033F9C: .4byte 0xFFFFFE1F
_08033FA0: .4byte gGame
_08033FA4: .4byte 0x000067AC
_08033FA8: .4byte 0x0000032A
_08033FAC:
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r1, r0
	blt _08033FE2
	adds r0, #1
	cmp r1, r0
	ble _08033FC0
	adds r0, #2
	cmp r1, r0
	bne _08033FE2
_08033FC0:
	ldr r0, [r6, #0x18]
	bl sub_0801A6D8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08033FE2
	movs r0, #5
	bl getCurrentTrack
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _08033FE2
	movs r0, #5
	bl musicPlayerStop_sfx
_08033FE2:
	movs r0, #1
_08033FE4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

	.syntax unified
	push {r4, r5, lr}
	ldr r0, _0803FB80
	movs r1, #0x19
	bl sub_0800289C
	adds r3, r0, #0
	ldr r0, _0803FB84
	ldrb r0, [r0]
	cmp r0, #0xb
	blt _0803FBB0
	cmp r0, #0xc
	ble _0803FB88
	cmp r0, #0xd
	beq _0803FB9C
	b _0803FBB0
	.align 2, 0
_0803FB80: .4byte gMenuData
_0803FB84: .4byte gUnknown_02004100
_0803FB88:
	ldr r1, _0803FB98
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r3, #0
	bl sub_08001A14
	b _0803FBBC
	.align 2, 0
_0803FB98: .4byte 0x06013000
_0803FB9C:
	ldr r1, _0803FBAC
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r3, #0
	bl sub_08001B18
	b _0803FBBC
	.align 2, 0
_0803FBAC: .4byte 0x06013000
_0803FBB0:
	ldr r1, _0803FC54
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	bl sub_08001A14
_0803FBBC:
	ldr r0, _0803FC58
	ldrb r0, [r0]
	cmp r0, #0xa
	bgt _0803FBD8
	cmp r0, #0
	blt _0803FBD8
	ldr r0, _0803FC5C
	movs r1, #0x1a
	bl sub_0800289C
	adds r3, r0, #0
	ldr r1, _0803FC60
	bl sub_08090F88
_0803FBD8:
	ldr r5, _0803FC5C
	ldr r0, _0803FC64
	ldr r1, _0803FC68
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #0x1c
	adds r0, r5, #0
	bl sub_0800289C
	adds r1, r0, #0
	ldr r4, _0803FC6C
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r4, #0
	movs r2, #0x15
	bl sub_0800160C
	ldr r0, _0803FC58
	ldrb r0, [r0]
	cmp r0, #0xa
	bgt _0803FC1C
	cmp r0, #7
	blt _0803FC1C
	adds r0, r5, #0
	movs r1, #0x23
	bl sub_0800289C
	adds r1, r0, #0
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #0x14
	movs r3, #0x20
	bl sub_0800160C
_0803FC1C:
	ldr r0, _0803FC58
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _0803FC4E
	ldr r4, _0803FC5C
	adds r0, r4, #0
	movs r1, #0x56
	bl sub_0800289C
	adds r3, r0, #0
	ldr r1, _0803FC70
	movs r2, #0xa0
	lsls r2, r2, #1
	bl sub_08001A14
	adds r0, r4, #0
	movs r1, #0x57
	bl sub_0800289C
	adds r1, r0, #0
	ldr r0, _0803FC6C
	movs r2, #0x1f
	movs r3, #0x20
	bl sub_0800160C
_0803FC4E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FC54: .4byte 0x06013000
_0803FC58: .4byte gUnknown_02004100
_0803FC5C: .4byte gMenuData
_0803FC60: .4byte 0x06017000
_0803FC64: .4byte gSave
_0803FC68: .4byte 0x0000081E
_0803FC6C: .4byte gUnknown_02016078
_0803FC70: .4byte 0x06017EC0
	.syntax divided

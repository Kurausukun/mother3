	.syntax unified
	push {r4, r5, lr}
	ldr r5, _0803FB48
	ldrb r0, [r5]
	cmp r0, #0xd
	beq _0803FB04
	ldr r4, _0803FB4C
	adds r0, r4, #0
	movs r1, #0x25
	bl sub_0800289C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001A14
	adds r0, r4, #0
	movs r1, #0x26
	bl sub_0800289C
	adds r1, r0, #0
	ldr r0, _0803FB50
	movs r2, #1
	movs r3, #0x20
	bl sub_0800160C
	movs r0, #1
	movs r1, #1
	bl sub_08056584
_0803FB04:
	ldrb r0, [r5]
	cmp r0, #6
	bgt _0803FB42
	cmp r0, #0
	blt _0803FB42
	ldr r4, _0803FB4C
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800289C
	ldr r1, _0803FB54
	bl sub_08090F88
	ldr r0, _0803FB58
	ldr r1, _0803FB5C
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	adds r0, r4, #0
	bl sub_0800289C
	adds r1, r0, #0
	ldr r0, _0803FB50
	movs r2, #2
	movs r3, #0xc0
	bl sub_0800160C
	movs r0, #2
	movs r1, #6
	bl sub_08056584
_0803FB42:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FB48: .4byte gUnknown_02004100
_0803FB4C: .4byte gMenuData
_0803FB50: .4byte gUnknown_02016078
_0803FB54: .4byte 0x06001000
_0803FB58: .4byte gSave
_0803FB5C: .4byte 0x0000081E
	.syntax divided

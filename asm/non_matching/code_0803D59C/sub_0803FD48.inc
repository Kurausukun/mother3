	.syntax unified
	push {r4, r5, lr}
	ldr r4, _0803FD78
	ldrb r0, [r4]
	cmp r0, #0xc
	bne _0803FDF4
	ldr r5, _0803FD7C
	ldrb r1, [r4, #1]
	adds r1, #0x36
	adds r0, r5, #0
	bl sub_0800289C
	adds r3, r0, #0
	ldr r1, _0803FD80
	movs r2, #0x80
	lsls r2, r2, #6
	bl sub_08001B18
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0803FD84
	adds r0, r5, #0
	movs r1, #0x35
	b _0803FD88
	.align 2, 0
_0803FD78: .4byte gUnknown_02004100
_0803FD7C: .4byte gMenuData
_0803FD80: .4byte 0x06001000
_0803FD84:
	adds r0, r5, #0
	movs r1, #0x33
_0803FD88:
	bl sub_0800289C
	adds r3, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r3, r3, r0
	ldr r1, _0803FDCC
	adds r1, r1, r0
	movs r2, #0xd0
	lsls r2, r2, #6
	adds r0, r3, #0
	bl sub_08001B18
	ldr r0, _0803FDD0
	ldr r4, _0803FDD4
	ldrb r1, [r4, #1]
	adds r1, #0x42
	bl sub_0800289C
	adds r1, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #3
	bne _0803FDDC
	ldr r0, _0803FDD8
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #2
	bl sub_0800160C
	movs r0, #2
	movs r1, #8
	bl sub_08056584
	b _0803FE2E
	.align 2, 0
_0803FDCC: .4byte 0x06001000
_0803FDD0: .4byte gMenuData
_0803FDD4: .4byte gUnknown_02004100
_0803FDD8: .4byte gUnknown_02016078
_0803FDDC:
	ldr r0, _0803FDF0
	movs r2, #2
	movs r3, #0xa0
	bl sub_0800160C
	movs r0, #2
	movs r1, #5
	bl sub_08056584
	b _0803FE2E
	.align 2, 0
_0803FDF0: .4byte gUnknown_02016078
_0803FDF4:
	ldr r4, _0803FE34
	adds r0, r4, #0
	movs r1, #0x33
	bl sub_0800289C
	adds r3, r0, #0
	ldr r1, _0803FE38
	movs r2, #0xa8
	lsls r2, r2, #7
	bl sub_08001B18
	ldr r0, _0803FE3C
	ldr r1, _0803FE40
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #0x3b
	adds r0, r4, #0
	bl sub_0800289C
	adds r1, r0, #0
	ldr r0, _0803FE44
	movs r2, #2
	movs r3, #0x60
	bl sub_0800160C
	movs r0, #2
	movs r1, #3
	bl sub_08056584
_0803FE2E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FE34: .4byte gMenuData
_0803FE38: .4byte 0x06001000
_0803FE3C: .4byte gSave
_0803FE40: .4byte 0x0000081E
_0803FE44: .4byte gUnknown_02016078
	.syntax divided

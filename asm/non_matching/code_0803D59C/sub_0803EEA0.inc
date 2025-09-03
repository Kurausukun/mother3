	.syntax unified
	push {r4, lr}
	ldr r3, _0803EEC4
	ldr r0, _0803EEC8
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803EECC
	ldrb r0, [r0]
	cmp r0, #0xd
	bls _0803EEBA
	b _0803F024
_0803EEBA:
	lsls r0, r0, #2
	ldr r1, _0803EED0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803EEC4: .4byte gSomeBlend
_0803EEC8: .4byte 0x0000C5B4
_0803EECC: .4byte gUnknown_02004100
_0803EED0: .4byte _0803EED4
_0803EED4:
	.4byte _0803EF0C
	.4byte _0803EF48
	.4byte _0803F024
	.4byte _0803EF48
	.4byte _0803EF78
	.4byte _0803F024
	.4byte _0803F024
	.4byte _0803EF8C
	.4byte _0803EF8C
	.4byte _0803EF8C
	.4byte _0803EF8C
	.4byte _0803F000
	.4byte _0803F000
	.4byte _0803F018
_0803EF0C:
	movs r0, #0
	bl sub_08054FE0
	bl sub_080524EC
	ldr r3, _0803EF3C
	movs r1, #0xd2
	lsls r1, r1, #6
	adds r0, r3, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne _0803EF26
	b _0803F024
_0803EF26:
	ldr r0, _0803EF40
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0803EF44
	adds r0, r3, r1
	strh r4, [r0]
	b _0803F024
	.align 2, 0
_0803EF3C: .4byte gSomeBlend
_0803EF40: .4byte 0x0000C5B5
_0803EF44: .4byte 0x0000C5BC
_0803EF48:
	movs r0, #0
	bl sub_08054FE0
	adds r0, #0x34
	ldrb r4, [r0]
	cmp r4, #0
	beq _0803F024
	ldr r2, _0803EF6C
	ldr r0, _0803EF70
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _0803EF74
	adds r2, r2, r1
	strh r4, [r2]
	b _0803F024
	.align 2, 0
_0803EF6C: .4byte gSomeBlend
_0803EF70: .4byte 0x0000C5B5
_0803EF74: .4byte 0x0000C5BC
_0803EF78:
	ldr r0, _0803EF84
	ldr r1, _0803EF88
	movs r2, #0x20
	bl sub_08001A14
	b _0803F024
	.align 2, 0
_0803EF84: .4byte gUnknown_0200F98E
_0803EF88: .4byte gUnknown_020189B8
_0803EF8C:
	ldr r0, _0803EFCC
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0803EFD0
	adds r2, r3, r1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0803EFD4
	mov ip, r2
	ldrh r0, [r2, #4]
	cmp r0, #0
	bne _0803EFE0
	mov r0, ip
	adds r0, #0x29
	ldrb r1, [r0]
	ldr r2, _0803EFD8
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _0803EFDC
	adds r1, r3, r0
	mov r0, ip
	adds r0, #0x6c
	str r0, [r1]
	b _0803F024
	.align 2, 0
_0803EFCC: .4byte 0x0000C5B4
_0803EFD0: .4byte 0x0000C5B5
_0803EFD4: .4byte gUnknown_020050C0
_0803EFD8: .4byte 0x0000C5C0
_0803EFDC: .4byte 0x0000C5B8
_0803EFE0:
	mov r0, ip
	adds r0, #0x8d
	ldrb r1, [r0]
	ldr r2, _0803EFF8
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _0803EFFC
	adds r1, r3, r0
	mov r0, ip
	adds r0, #8
	str r0, [r1]
	b _0803F024
	.align 2, 0
_0803EFF8: .4byte 0x0000C5C0
_0803EFFC: .4byte 0x0000C5B8
_0803F000:
	ldr r1, _0803F014
	adds r2, r3, r1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	b _0803F024
	.align 2, 0
_0803F014: .4byte 0x0000C5B4
_0803F018:
	ldr r2, _0803F030
	adds r0, r3, r2
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
_0803F024:
	ldr r0, _0803F034
	bl sub_0803E738
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F030: .4byte 0x0000C5B4
_0803F034: .4byte gUnknown_020225DC
	.syntax divided

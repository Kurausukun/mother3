	.syntax unified
sub_0803DE38:
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _0803DE7C
	movs r0, #0
	strh r0, [r1]
	mov r1, sp
	ldr r2, _0803DE80
	ldrh r0, [r2]
	strh r0, [r1]
	mov r3, sp
	adds r3, #2
	ldr r0, _0803DE84
	ldrh r0, [r0]
	strh r0, [r3]
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0803DE88
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803DE8C
	ldrb r0, [r0]
	adds r5, r3, #0
	cmp r0, #0
	blt _0803DE98
	cmp r0, #6
	bgt _0803DE90
	movs r0, #0xbe
	bl sub_0803E46C
	b _0803DE98
	.align 2, 0
_0803DE7C: .4byte 0x04000208
_0803DE80: .4byte 0x04000200
_0803DE84: .4byte 0x04000006
_0803DE88: .4byte 0x04000004
_0803DE8C: .4byte gUnknown_02004100
_0803DE90:
	cmp r0, #8
	bgt _0803DE98
	bl sub_0803E4B8
_0803DE98:
	ldr r0, _0803DEBC
	movs r1, #1
	strh r1, [r0]
	bl sub_080401BC
	bl sub_0803E0EC
	bl sub_0803DF48
	bl sub_0803E16C
	ldr r0, _0803DEC0
	ldrb r0, [r0]
	cmp r0, #3
	beq _0803DEC4
	cmp r0, #4
	beq _0803DECA
	b _0803DED0
	.align 2, 0
_0803DEBC: .4byte 0x04000208
_0803DEC0: .4byte gUnknown_0200F920
_0803DEC4:
	bl snd_restart
	b _0803DED0
_0803DECA:
	movs r0, #0
	bl startSong
_0803DED0:
	bl snd_vsync_off
	ldr r4, _0803DF2C
	movs r0, #0
	strh r0, [r4]
	ldr r3, _0803DF30
	ldrh r1, [r3]
	ldr r0, _0803DF34
	ands r0, r1
	strh r0, [r3]
	ldr r2, _0803DF38
	ldrh r1, [r2]
	ldr r0, _0803DF3C
	ands r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803DF0A
	ldrh r1, [r3]
	ldr r0, _0803DF40
	ands r0, r1
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r0, _0803DF44
	ands r0, r1
	strh r0, [r2]
_0803DF0A:
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r5]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r4]
	bl sub_080018E4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DF2C: .4byte 0x04000208
_0803DF30: .4byte 0x04000200
_0803DF34: .4byte 0x0000FFFC
_0803DF38: .4byte 0x04000004
_0803DF3C: .4byte 0x0000FFE7
_0803DF40: .4byte 0x0000FFFB
_0803DF44: .4byte 0x0000FFDF
	.syntax divided

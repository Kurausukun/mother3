	.syntax unified
sub_0803DBB8:
	push {r4, r5, lr}
	bl sub_0803E304
	ldr r5, _0803DC0C
	ldrb r0, [r5]
	cmp r0, #0xd
	bne _0803DBF2
	ldr r3, _0803DC10
	movs r0, #0
	strh r0, [r3]
	ldr r1, _0803DC14
	ldrh r0, [r1]
	movs r4, #1
	orrs r0, r4
	strh r0, [r1]
	ldr r2, _0803DC18
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	bl snd_vsync_on
	bl snd_vsync
	bl snd_main
	ldr r0, _0803DC1C
	strh r4, [r0]
_0803DBF2:
	bl clear_gfx
	bl sub_0803ECC0
	ldrb r0, [r5]
	cmp r0, #0xd
	bhi _0803DC90
	lsls r0, r0, #2
	ldr r1, _0803DC20
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DC0C: .4byte gUnknown_02004100
_0803DC10: .4byte 0x04000208
_0803DC14: .4byte 0x04000200
_0803DC18: .4byte 0x04000004
_0803DC1C: .4byte gUnknown_03004B00
_0803DC20: .4byte _0803DC24
_0803DC24:
	.4byte _0803DC5C
	.4byte _0803DC5C
	.4byte _0803DC5C
	.4byte _0803DC5C
	.4byte _0803DC5C
	.4byte _0803DC74
	.4byte _0803DC7A
	.4byte _0803DC80
	.4byte _0803DC80
	.4byte _0803DC80
	.4byte _0803DC80
	.4byte _0803DC86
	.4byte _0803DC86
	.4byte _0803DC8C
_0803DC5C:
	bl sub_0803DCE4
	ldr r1, _0803DC70
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _0803DC90
	movs r0, #1
	strb r0, [r1, #3]
	b _0803DC90
	.align 2, 0
_0803DC70: .4byte gUnknown_020051E8
_0803DC74:
	bl sub_0803DD1C
	b _0803DC90
_0803DC7A:
	bl sub_0803DD3C
	b _0803DC90
_0803DC80:
	bl sub_0803DD5C
	b _0803DC90
_0803DC86:
	bl sub_0803DDD8
	b _0803DC90
_0803DC8C:
	bl sub_0803DE08
_0803DC90:
	ldr r0, _0803DCCC
	ldrb r0, [r0]
	cmp r0, #3
	beq _0803DC9C
	cmp r0, #5
	bne _0803DCA0
_0803DC9C:
	bl sub_0803F36C
_0803DCA0:
	ldr r1, _0803DCD0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0803DCD4
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0803DCC4
	ldr r1, _0803DCD8
	ldrh r2, [r1, #0xa]
	ldr r0, _0803DCDC
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0803DCE0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
_0803DCC4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DCCC: .4byte gUnknown_02004100
_0803DCD0: .4byte gUnknown_03004B00
_0803DCD4: .4byte gUnknown_0200F920
_0803DCD8: .4byte 0x040000B0
_0803DCDC: .4byte 0x0000C5FF
_0803DCE0: .4byte 0x00007FFF
	.syntax divided

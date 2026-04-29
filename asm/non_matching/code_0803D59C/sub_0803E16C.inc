	.syntax unified
sub_0803E16C:
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, _0803E180
	ldrb r0, [r0]
	cmp r0, #6
	bne _0803E184
	bl sub_08055E00
	b _0803E24C
	.align 2, 0
_0803E180: .4byte gUnknown_020051E8
_0803E184:
	ldr r0, _0803E198
	ldrb r1, [r0]
	cmp r1, #5
	bgt _0803E19C
	cmp r1, #4
	bge _0803E1A6
	cmp r1, #3
	beq _0803E1A2
	b _0803E1AA
	.align 2, 0
_0803E198: .4byte gUnknown_0200F920
_0803E19C:
	cmp r1, #6
	beq _0803E1A6
	b _0803E1AA
_0803E1A2:
	movs r6, #0x20
	b _0803E1AC
_0803E1A6:
	movs r6, #0x78
	b _0803E1AC
_0803E1AA:
	movs r6, #0xf
_0803E1AC:
	ldrb r0, [r0]
	cmp r0, #6
	bhi _0803E1F8
	lsls r0, r0, #2
	ldr r1, _0803E1BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803E1BC: .4byte _0803E1C0
_0803E1C0:
	.4byte _0803E1DC
	.4byte _0803E1DC
	.4byte _0803E1F8
	.4byte _0803E1DC
	.4byte _0803E1F0
	.4byte _0803E1F0
	.4byte _0803E1E6
_0803E1DC:
	movs r0, #1
	movs r1, #2
	bl musicPlayerFadeOutTemp_bgm
	b _0803E1F8
_0803E1E6:
	movs r0, #0
	movs r1, #7
	bl musicPlayerFadeOutTemp_bgm
	b _0803E1F8
_0803E1F0:
	movs r0, #0
	movs r1, #7
	bl musicPlayerFadeOutTemp_bgm
_0803E1F8:
	ldr r4, _0803E254
	ldr r0, _0803E258
	adds r5, r4, r0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	adds r1, r5, #0
	bl CpuSmartSet
	ldr r0, _0803E25C
	adds r4, r4, r0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_080031F0
_0803E226:
	bl sub_0803E260
	bl sub_08001960
	bl sub_0803E50C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_0805629C
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803E226
	movs r0, #0x8b
	bl startSong
_0803E24C:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803E254: .4byte gUnknown_02018778
_0803E258: .4byte 0x00009ED4
_0803E25C: .4byte 0x00001ABC
	.syntax divided

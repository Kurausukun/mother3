	.syntax unified
	push {r4, r5, r6, lr}
	ldr r6, _0804F8E4
	ldr r0, _0804F8E8
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0804F8EC
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804F900
	ldr r3, _0804F8F0
	ldr r5, _0804F8F4
	ldr r2, _0804F8F8
	adds r0, r6, r2
	ldrh r4, [r0]
	movs r0, #3
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r5, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	movs r0, #3
	ands r0, r4
	movs r2, #0x90
	lsls r2, r2, #3
	adds r3, r3, r2
	strb r0, [r3]
	ldr r0, _0804F8FC
	adds r3, r6, r0
	ldrb r0, [r3]
	movs r2, #0x40
	b _0804F92E
	.align 2, 0
_0804F8E4: .4byte gSomeBlend
_0804F8E8: .4byte 0x000041DA
_0804F8EC: .4byte 0x00003004
_0804F8F0: .4byte gSave
_0804F8F4: .4byte gUnknown_0200F920
_0804F8F8: .4byte 0x000041CA
_0804F8FC: .4byte 0x000044F3
_0804F900:
	ldr r3, _0804F950
	ldr r5, _0804F954
	ldr r1, _0804F958
	adds r0, r6, r1
	ldrh r4, [r0]
	movs r0, #3
	ands r0, r4
	lsls r0, r0, #4
	ldrb r2, [r5, #0xc]
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	movs r0, #3
	ands r0, r4
	movs r2, #0x90
	lsls r2, r2, #3
	adds r3, r3, r2
	strb r0, [r3]
	ldr r0, _0804F95C
	adds r3, r6, r0
	ldrb r0, [r3]
	movs r2, #0x80
_0804F92E:
	orrs r0, r2
	strb r0, [r3]
	orrs r1, r2
	strb r1, [r5, #0xc]
	ldr r4, _0804F960
	adds r0, r4, #0
	movs r1, #0
	bl sub_08053EEC
	ldr r1, _0804F964
	adds r4, r4, r1
	movs r0, #3
	strh r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F950: .4byte gSave
_0804F954: .4byte gUnknown_0200F920
_0804F958: .4byte 0x000041CA
_0804F95C: .4byte 0x000044F3
_0804F960: .4byte gUnknown_02019028
_0804F964: .4byte 0x000011CA
	.syntax divided

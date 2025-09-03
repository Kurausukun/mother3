	.syntax unified
sub_08053EEC:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r2, _08053F90
	adds r4, r0, r2
	ldr r2, _08053F94
	ldr r0, _08053F98
	adds r0, r0, r2
	mov ip, r0
	movs r3, #0
	strh r1, [r0]
	ldr r1, _08053F9C
	adds r0, r2, r1
	strh r3, [r0]
	ldr r0, _08053FA0
	adds r5, r2, r0
	ldrb r0, [r5]
	movs r7, #1
	orrs r0, r7
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #6
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r5]
	ldr r1, _08053FA4
	adds r0, r2, r1
	strh r3, [r0]
	adds r3, r2, #0
	cmp r6, #0
	beq _08053F42
	ldrh r1, [r6]
	ldr r2, _08053FA8
	adds r0, r3, r2
	strb r1, [r0]
_08053F42:
	ldrb r1, [r4, #0x10]
	ldr r2, _08053FAC
	adds r0, r3, r2
	strb r1, [r0]
	ldrh r1, [r4, #0x12]
	subs r2, #8
	adds r0, r3, r2
	strh r1, [r0]
	ldrh r0, [r4, #0x14]
	adds r1, r7, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldr r0, _08053FB0
	adds r1, r3, r0
	ldrh r0, [r4]
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	ldrh r0, [r4, #6]
	strh r0, [r1, #6]
	mov r1, ip
	ldrh r0, [r1]
	subs r0, #1
	cmp r0, #4
	bls _08053F86
	b _080540F6
_08053F86:
	lsls r0, r0, #2
	ldr r1, _08053FB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08053F90: .4byte gUnknown_080C67B0
_08053F94: .4byte gSomeBlend
_08053F98: .4byte 0x000041C8
_08053F9C: .4byte 0x000041CE
_08053FA0: .4byte 0x000041DA
_08053FA4: .4byte 0x000041D8
_08053FA8: .4byte 0x000041D4
_08053FAC: .4byte 0x000041D2
_08053FB0: .4byte 0x00004234
_08053FB4: .4byte _08053FB8
_08053FB8:
	.4byte _08053FCC
	.4byte _08054044
	.4byte _080540C8
	.4byte _080540D8
	.4byte _080540F6
_08053FCC:
	ldr r2, _08053FE8
	adds r0, r3, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _0805400C
	ldr r1, _08053FEC
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08053FF4
	ldr r0, _08053FF0
	adds r0, #0x20
	b _08054098
	.align 2, 0
_08053FE8: .4byte 0x00003004
_08053FEC: .4byte 0x000044F3
_08053FF0: .4byte gUnknown_020050C0
_08053FF4:
	ldr r0, _08054004
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	ldr r2, _08054008
	adds r1, r3, r2
	b _080540F4
	.align 2, 0
_08054004: .4byte gUnknown_0200F920
_08054008: .4byte 0x000041CA
_0805400C:
	cmp r0, #1
	bne _080540F6
	ldr r1, _08054024
	adds r0, r3, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0805402C
	ldr r0, _08054028
	adds r0, #0x84
	b _08054098
	.align 2, 0
_08054024: .4byte 0x000044F3
_08054028: .4byte gUnknown_020050C0
_0805402C:
	ldr r0, _0805403C
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r2, _08054040
	adds r1, r3, r2
	b _080540F4
	.align 2, 0
_0805403C: .4byte gUnknown_0200F920
_08054040: .4byte 0x000041CA
_08054044:
	ldr r1, _08054060
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08054084
	ldr r2, _08054064
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0805406C
	ldr r0, _08054068
	adds r0, #0x29
	b _08054098
	.align 2, 0
_08054060: .4byte 0x00003004
_08054064: .4byte 0x000044F4
_08054068: .4byte gUnknown_020050C0
_0805406C:
	ldr r0, _0805407C
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	ldr r2, _08054080
	adds r1, r3, r2
	b _080540F4
	.align 2, 0
_0805407C: .4byte gUnknown_0200F920
_08054080: .4byte 0x000041CA
_08054084:
	cmp r0, #1
	bne _080540F6
	ldr r1, _080540A4
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080540B0
	ldr r0, _080540A8
	adds r0, #0x8d
_08054098:
	ldrb r1, [r0]
	ldr r2, _080540AC
	adds r0, r3, r2
	strh r1, [r0]
	b _080540F6
	.align 2, 0
_080540A4: .4byte 0x000044F4
_080540A8: .4byte gUnknown_020050C0
_080540AC: .4byte 0x000041CA
_080540B0:
	ldr r0, _080540C0
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	ldr r2, _080540C4
	adds r1, r3, r2
	b _080540F4
	.align 2, 0
_080540C0: .4byte gUnknown_0200F920
_080540C4: .4byte 0x000041CA
_080540C8:
	ldrh r1, [r6, #4]
	ldr r2, _080540D4
	adds r0, r3, r2
	strb r1, [r0]
	b _080540F6
	.align 2, 0
_080540D4: .4byte 0x000041D3
_080540D8:
	ldr r1, _080540FC
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0x20
	bne _080540F6
	ldr r2, _08054100
	adds r1, r3, r2
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	ldr r0, _08054104
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #0x20
_080540F4:
	strh r0, [r1]
_080540F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080540FC: .4byte 0x000041CC
_08054100: .4byte 0x00004234
_08054104: .4byte 0x00004238
	.syntax divided

	.syntax unified
	push {r4, lr}
	bl sub_08005364
	ldr r0, _08003F40
	ldrb r0, [r0]
	cmp r0, #3
	bne _08003F48
	ldr r1, _08003F44
	ldrb r0, [r1]
	cmp r0, #1
	bne _08003F48
	ldrh r0, [r1, #0xa]
	cmp r0, #0x39
	bne _08003F48
	movs r0, #0xa0
	lsls r0, r0, #0x13
	movs r4, #0x80
	lsls r4, r4, #3
	movs r2, #1
	rsbs r2, r2, #0
	adds r1, r4, #0
	bl sub_08001B54
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #9
	bl memclear
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	bl memclear
	b _08003F4C
	.align 2, 0
_08003F40: .4byte gUnknown_02005080
_08003F44: .4byte gEncounter
_08003F48:
	bl clear_gfx
_08003F4C:
	bl sub_080030A4
	bl sub_08003008
	bl sub_0803B7CC
	ldr r0, _08003F6C
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08004028
	lsls r0, r0, #2
	ldr r1, _08003F70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003F6C: .4byte gUnknown_02005080
_08003F70: .4byte _08003F74
_08003F74:
	.4byte _08003F94
	.4byte _08003F9E
	.4byte _08003F94
	.4byte _08003F94
	.4byte _08003F94
	.4byte _08003F94
	.4byte _08003FA8
	.4byte _08003FFC
_08003F94:
	bl sub_08007398
	bl sub_08004044
	b _08004028
_08003F9E:
	bl sub_08007AD4
	bl sub_08004044
	b _08004028
_08003FA8:
	bl sub_08007398
	ldr r4, _08003FE4
	ldr r1, _08003FE8
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08003FEC
	adds r0, r4, r2
	strb r1, [r0]
	ldr r3, _08003FF0
	adds r2, r4, r3
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_0802462C
	movs r0, #0
	bl sub_08023118
	ldr r0, _08003FF4
	ldr r1, _08003FF8
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0x80
	bl sub_08001B18
	b _08004028
	.align 2, 0
_08003FE4: .4byte gGame
_08003FE8: .4byte 0x00008299
_08003FEC: .4byte 0x00008370
_08003FF0: .4byte 0x00008494
_08003FF4: .4byte gUnknown_02004CE2
_08003FF8: .4byte 0x00009C88
_08003FFC:
	bl sub_08007398
	ldr r1, _08004034
	ldr r2, _08004038
	adds r0, r1, r2
	movs r2, #0
	strb r2, [r0]
	ldr r3, _0800403C
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _08004040
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	bl sub_0802462C
	movs r0, #1
	bl sub_08023118
_08004028:
	bl sub_08005C38
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004034: .4byte gGame
_08004038: .4byte 0x00008299
_0800403C: .4byte 0x00008370
_08004040: .4byte 0x00008494
	.syntax divided

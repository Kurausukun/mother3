	.syntax unified
	push {r4, lr}
	ldr r3, _08046DBC
	ldr r0, _08046DC0
	adds r2, r3, r0
	ldrb r1, [r2]
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _08046DA2
	b _08046EE0
_08046DA2:
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08046DC4
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0x10
	bhi _08046E6E
	lsls r0, r0, #2
	ldr r1, _08046DC8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08046DBC: .4byte gSomeBlend
_08046DC0: .4byte 0x000044F2
_08046DC4: .4byte 0x00004260
_08046DC8: .4byte _08046DCC
_08046DCC:
	.4byte _08046E40
	.4byte _08046E10
	.4byte _08046E40
	.4byte _08046E10
	.4byte _08046E40
	.4byte _08046E20
	.4byte _08046E20
	.4byte _08046E20
	.4byte _08046E30
	.4byte _08046E30
	.4byte _08046E30
	.4byte _08046E30
	.4byte _08046E40
	.4byte _08046E40
	.4byte _08046E40
	.4byte _08046E40
	.4byte _08046E58
_08046E10:
	ldr r0, _08046E18
	ldr r4, _08046E1C
	adds r1, r0, r4
	b _08046E46
	.align 2, 0
_08046E18: .4byte gUnknown_02016078
_08046E1C: .4byte 0x000041F4
_08046E20:
	ldr r0, _08046E28
	ldr r2, _08046E2C
	b _08046E44
	.align 2, 0
_08046E28: .4byte gUnknown_02016078
_08046E2C: .4byte 0x000041FC
_08046E30:
	ldr r0, _08046E38
	ldr r4, _08046E3C
	adds r1, r0, r4
	b _08046E46
	.align 2, 0
_08046E38: .4byte gUnknown_02016078
_08046E3C: .4byte 0x00004204
_08046E40:
	ldr r0, _08046E50
	ldr r2, _08046E54
_08046E44:
	adds r1, r0, r2
_08046E46:
	movs r2, #1
	movs r3, #0
	bl sub_080012BC
	b _08046E6E
	.align 2, 0
_08046E50: .4byte gUnknown_02016078
_08046E54: .4byte 0x000041EC
_08046E58:
	ldr r0, _08046EA0
	ldrb r0, [r0]
	cmp r0, #8
	bne _08046E6E
	ldr r0, _08046EA4
	ldr r4, _08046EA8
	adds r1, r0, r4
	movs r2, #1
	movs r3, #0
	bl sub_080012BC
_08046E6E:
	bl sub_08049D5C
	ldr r3, _08046EAC
	ldr r1, _08046EB0
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08046EC0
	ldr r2, _08046EB4
	adds r1, r3, r2
	ldrh r0, [r1]
	cmp r0, #3
	bhi _08046EE0
	ldr r0, _08046EB8
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r4, _08046EBC
	adds r0, r3, r4
	ldr r1, [r1]
	bl _call_via_r1
	b _08046EE0
	.align 2, 0
_08046EA0: .4byte gUnknown_02004100
_08046EA4: .4byte gUnknown_02016078
_08046EA8: .4byte 0x000041EC
_08046EAC: .4byte gSomeBlend
_08046EB0: .4byte 0x000041C6
_08046EB4: .4byte 0x000041BC
_08046EB8: .4byte gUnknown_09B8FD74
_08046EBC: .4byte 0x00003060
_08046EC0:
	ldr r0, _08046EE8
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0x12
	bhi _08046EE0
	ldr r1, _08046EEC
	lsls r2, r0, #2
	adds r2, r2, r1
	lsls r0, r0, #5
	movs r4, #0xb8
	lsls r4, r4, #6
	adds r1, r3, r4
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_08046EE0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046EE8: .4byte 0x00004260
_08046EEC: .4byte gUnknown_09B8FD28
	.syntax divided

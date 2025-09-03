	.syntax unified
sub_08005C4C:
	push {r4, r5, lr}
	ldr r2, _08005D20
	ldr r0, _08005D24
	adds r1, r2, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08005D28
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r2, #2]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08005C76
	ldr r3, _08005D2C
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0x19
	bne _08005C76
	movs r0, #1
	strh r0, [r1]
_08005C76:
	ldr r4, _08005D30
	movs r0, #0
	strh r0, [r4]
	ldrb r3, [r2]
	cmp r3, #1
	bne _08005C8E
	ldrb r1, [r2, #1]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08005C8E
	strh r3, [r4]
_08005C8E:
	ldr r2, _08005D34
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08005D20
	ldr r1, _08005D38
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08005CC0
	movs r0, #1
	strh r0, [r2]
	ldr r2, _08005D3C
	ldrh r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08005CC0
	ldrh r0, [r2, #8]
	ldr r1, _08005D40
	ands r1, r0
	ldrh r0, [r2, #8]
	strh r1, [r2, #8]
_08005CC0:
	bl sub_080026C0
	bl sub_08003024
	bl sub_08019E40
	bl sub_08005D54
	ldr r4, _08005D3C
	adds r5, r4, #0
	adds r5, #0x50
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08005FB4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080061CC
	ldr r3, _08005D44
	adds r4, r4, r3
	adds r0, r4, #0
	bl sub_08027C40
	ldr r0, _08005D48
	ldrh r0, [r0]
	cmp r0, #0
	bne _08005CFC
	bl snd_main
_08005CFC:
	ldr r2, _08005D20
	ldr r0, _08005D4C
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08005D0C
	subs r0, #1
	strh r0, [r1]
_08005D0C:
	ldr r3, _08005D50
	adds r1, r2, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _08005D1A
	subs r0, #1
	strh r0, [r1]
_08005D1A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005D20: .4byte gGame
_08005D24: .4byte 0x00009D10
_08005D28: .4byte gUnknown_02000000
_08005D2C: .4byte 0x0000595B
_08005D30: .4byte gUnknown_02000002
_08005D34: .4byte gUnknown_02000004
_08005D38: .4byte 0x0000598C
_08005D3C: .4byte gSomeBlend
_08005D40: .4byte 0x0000EFFF
_08005D44: .4byte 0x0000567C
_08005D48: .4byte gUnknown_03004B00
_08005D4C: .4byte 0x000082A4
_08005D50: .4byte 0x000082A6
	.syntax divided

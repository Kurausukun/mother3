	.syntax unified
sub_08037CA4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r6, _08037CE8
	ldr r0, _08037CEC
	adds r3, r6, r0
	lsls r4, r1, #7
	ldrb r0, [r3]
	movs r2, #0x7f
	ands r2, r0
	orrs r2, r4
	strb r2, [r3]
	ldr r3, _08037CF0
	adds r0, r6, r3
	movs r3, #0
	str r3, [r0]
	ldr r0, _08037CF4
	adds r4, r6, r0
	ldr r0, _08037CF8
	strh r0, [r4]
	ldr r4, _08037CFC
	adds r0, r6, r4
	strh r3, [r0]
	strh r3, [r5, #4]
	strh r1, [r5, #0xa]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1f
	cmp r2, #0
	beq _08037D00
	cmp r2, #1
	beq _08037D34
	b _08037DA8
	.align 2, 0
_08037CE8: .4byte gSomeBlend
_08037CEC: .4byte 0x000035BA
_08037CF0: .4byte 0x0000351C
_08037CF4: .4byte 0x00003524
_08037CF8: .4byte 0x0000FFFF
_08037CFC: .4byte 0x00003526
_08037D00:
	ldr r0, _08037D18
	ldr r2, [r0, #0xc]
	ldr r1, _08037D1C
	subs r1, r1, r2
	ldr r2, [r0, #8]
	adds r3, r0, #0
	cmp r2, r1
	bls _08037D24
	ldr r2, _08037D20
	adds r0, r6, r2
	str r1, [r0]
	b _08037D2A
	.align 2, 0
_08037D18: .4byte gSave
_08037D1C: .4byte 0x000F423F
_08037D20: .4byte 0x00003520
_08037D24:
	ldr r4, _08037D30
	adds r0, r6, r4
	str r2, [r0]
_08037D2A:
	ldr r1, [r3, #8]
	b _08037D60
	.align 2, 0
_08037D30: .4byte 0x00003520
_08037D34:
	ldr r0, _08037D4C
	ldr r2, [r0, #8]
	ldr r1, _08037D50
	subs r1, r1, r2
	ldr r2, [r0, #0xc]
	adds r3, r0, #0
	cmp r2, r1
	bls _08037D58
	ldr r2, _08037D54
	adds r0, r6, r2
	str r1, [r0]
	b _08037D5E
	.align 2, 0
_08037D4C: .4byte gSave
_08037D50: .4byte 0x000F423F
_08037D54: .4byte 0x00003520
_08037D58:
	ldr r4, _08037D6C
	adds r0, r6, r4
	str r2, [r0]
_08037D5E:
	ldr r1, [r3, #0xc]
_08037D60:
	ldr r0, _08037D70
	cmp r1, r0
	bls _08037D74
	movs r0, #6
	b _08037DA6
	.align 2, 0
_08037D6C: .4byte 0x00003520
_08037D70: .4byte 0x0001869F
_08037D74:
	ldr r0, _08037D80
	cmp r1, r0
	bls _08037D84
	movs r0, #5
	b _08037DA6
	.align 2, 0
_08037D80: .4byte 0x0000270F
_08037D84:
	ldr r0, _08037D90
	cmp r1, r0
	bls _08037D94
	movs r0, #4
	b _08037DA6
	.align 2, 0
_08037D90: .4byte 0x000003E7
_08037D94:
	cmp r1, #0x63
	bls _08037D9C
	movs r0, #3
	b _08037DA6
_08037D9C:
	cmp r1, #9
	bls _08037DA4
	movs r0, #2
	b _08037DA6
_08037DA4:
	movs r0, #1
_08037DA6:
	strh r0, [r5, #2]
_08037DA8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

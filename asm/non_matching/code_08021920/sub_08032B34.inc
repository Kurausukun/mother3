	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r1, _08032B60
	ldr r2, _08032B64
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	adds r4, r1, #0
	cmp r0, #0
	bge _08032B4A
	b _08032CB8
_08032B4A:
	adds r2, r3, #0
	adds r2, #0xca
	ldrb r1, [r2]
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _08032B68
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08032CB8
	.align 2, 0
_08032B60: .4byte gGame
_08032B64: .4byte 0x00008496
_08032B68:
	ldr r5, _08032C04
	ldr r1, _08032C08
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08032B7C
	b _08032CB8
_08032B7C:
	ldr r1, _08032C0C
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08032B8C
	b _08032CB8
_08032B8C:
	ldr r2, _08032C10
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08032BAE
	ldr r1, _08032C14
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #9
	bne _08032BAE
	subs r2, #0x38
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, #0x14
	bne _08032BAE
	b _08032CB8
_08032BAE:
	ldrb r0, [r4]
	cmp r0, #5
	bne _08032BB6
	b _08032CB8
_08032BB6:
	cmp r0, #5
	blt _08032BDC
	cmp r0, #9
	bgt _08032BDC
	cmp r0, #8
	blt _08032BDC
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08032CB8
	cmp r1, #4
	bls _08032BDC
	ldr r0, [r3, #0x34]
	cmp r0, #0
	beq _08032CB8
_08032BDC:
	adds r2, r3, #0
	adds r2, #0x8e
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _08032C2A
	cmp r0, #4
	ble _08032C1C
	adds r1, r3, #0
	adds r1, #0x92
	ldrh r3, [r1]
	adds r2, r0, #0
	movs r0, #6
	subs r0, r0, r2
	cmp r3, r0
	blt _08032CB0
	ldr r4, _08032C18
	adds r0, r2, r4
	adds r0, r3, r0
	b _08032CB6
	.align 2, 0
_08032C04: .4byte gSomeBlend
_08032C08: .4byte 0x000035BA
_08032C0C: .4byte 0x00003668
_08032C10: .4byte 0x00008494
_08032C14: .4byte 0x0000845A
_08032C18: .4byte 0x0000FFFA
_08032C1C:
	adds r1, r3, #0
	adds r1, #0x92
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	b _08032CB6
_08032C2A:
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08032C88
	cmp r1, r0
	bgt _08032C42
	subs r0, #1
	cmp r1, r0
	beq _08032C98
	b _08032CB8
_08032C42:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08032C6C
	adds r0, #1
	cmp r1, r0
	bne _08032CB8
	ldr r1, _08032C68
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08032CB8
	adds r1, r3, #0
	adds r1, #0x92
	ldrh r0, [r1]
	adds r0, #1
	b _08032CB6
	.align 2, 0
_08032C68: .4byte 0x00009D10
_08032C6C:
	ldr r2, _08032C84
	adds r0, r4, r2
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08032CB8
	adds r1, r3, #0
	adds r1, #0x92
	ldrh r0, [r1]
	adds r0, #1
	b _08032CB6
	.align 2, 0
_08032C84: .4byte 0x00009D10
_08032C88:
	ldr r1, _08032C94
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #1
	b _08032CA0
	.align 2, 0
_08032C94: .4byte 0x00009D10
_08032C98:
	ldr r2, _08032CC0
	adds r0, r4, r2
	ldr r0, [r0]
	movs r1, #3
_08032CA0:
	ands r0, r1
	cmp r0, #0
	bne _08032CB8
	adds r1, r3, #0
	adds r1, #0x92
	ldrh r0, [r1]
	cmp r0, #0
	bne _08032CB4
_08032CB0:
	ldr r0, _08032CC4
	ldrh r0, [r0]
_08032CB4:
	subs r0, #1
_08032CB6:
	strh r0, [r1]
_08032CB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032CC0: .4byte 0x00009D10
_08032CC4: .4byte gUnknown_02001002
	.syntax divided

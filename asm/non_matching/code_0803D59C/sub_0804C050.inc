	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r1, _0804C100
	ldr r0, _0804C104
	adds r2, r1, r0
	movs r4, #0
	movs r0, #7
	strb r0, [r2]
	ldr r2, _0804C108
	adds r3, r1, r2
	strh r4, [r3, #0xa]
	ldr r6, _0804C10C
	adds r0, r1, r6
	ldrh r0, [r0]
	strh r0, [r3, #2]
	ldr r0, _0804C110
	adds r5, r1, r0
	ldrb r0, [r5]
	movs r7, #0x40
	orrs r0, r7
	strb r0, [r5]
	ldr r2, _0804C114
	strh r4, [r2]
	strh r4, [r2, #2]
	movs r0, #2
	strh r0, [r2, #6]
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r2, #4]
	movs r0, #1
	strh r0, [r2, #8]
	movs r0, #0xb0
	strh r0, [r2, #0xa]
	movs r0, #0x60
	strh r0, [r2, #0xc]
	ldr r6, _0804C118
	adds r0, r1, r6
	str r0, [r2, #0x14]
	ldr r6, _0804C11C
	adds r0, r1, r6
	str r0, [r2, #0x18]
	adds r6, #0x20
	adds r0, r1, r6
	str r0, [r2, #0x1c]
	ldr r0, _0804C120
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #4
	bne _0804C144
	ldr r1, _0804C124
	adds r0, r1, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r3, #4]
	adds r0, r1, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r3, #8]
	adds r0, r1, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r2]
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r2, #2]
	ldr r1, _0804C128
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x60
	strh r0, [r2, #0xc]
	bl sub_0805CE74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804C130
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	ldr r0, _0804C12C
	adds r1, r6, r0
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	b _0804C1D0
	.align 2, 0
_0804C100: .4byte gSomeBlend
_0804C104: .4byte 0x00004260
_0804C108: .4byte 0x00002EE0
_0804C10C: .4byte 0x0000427C
_0804C110: .4byte 0x0000C5B5
_0804C114: .4byte gUnknown_02005090
_0804C118: .4byte 0x0000CA24
_0804C11C: .4byte 0x00012A24
_0804C120: .4byte gUnknown_02004100
_0804C124: .4byte gUnknown_0200F920
_0804C128: .4byte gBattleMemoryEnemyHeight
_0804C12C: .4byte 0x000044F2
_0804C130:
	ldr r1, _0804C140
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0804C1D0
	.align 2, 0
_0804C140: .4byte 0x000044F2
_0804C144:
	ldr r3, _0804C190
	adds r0, r6, r3
	ldrh r0, [r0]
	lsls r0, r0, #2
	movs r3, #0xe0
	lsls r3, r3, #6
	adds r1, r6, r3
	adds r1, r0, r1
	ldr r0, [r1]
	lsls r0, r0, #0xa
	cmp r0, #0
	bge _0804C1AA
	ldrb r0, [r1]
	strh r0, [r2]
	strh r4, [r2, #2]
	ldr r1, _0804C194
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x60
	strh r0, [r2, #0xc]
	bl sub_0805CE74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804C19C
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	ldr r0, _0804C198
	adds r1, r6, r0
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	b _0804C1AA
	.align 2, 0
_0804C190: .4byte 0x00002EE4
_0804C194: .4byte gBattleMemoryEnemyHeight
_0804C198: .4byte 0x000044F2
_0804C19C:
	ldr r1, _0804C1D8
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0804C1AA:
	ldr r3, _0804C1DC
	ldr r2, _0804C1E0
	adds r0, r6, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x60
	strh r1, [r0]
	ldr r1, _0804C1E4
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	strh r1, [r0]
	adds r2, #6
	adds r0, r6, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0]
_0804C1D0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C1D8: .4byte 0x000044F2
_0804C1DC: .4byte gUnknown_0200F920
_0804C1E0: .4byte 0x00002E04
_0804C1E4: .4byte 0x00002E08
	.syntax divided

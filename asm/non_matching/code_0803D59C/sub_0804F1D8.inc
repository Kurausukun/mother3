	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	bl sub_08054FE0
	adds r5, r0, #0
	ldrh r0, [r4, #0xa]
	bl sub_08054FF0
	mov r8, r0
	adds r0, r5, #0
	bl sub_08055038
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804F226
	adds r0, r5, #0
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804F226
	ldrh r0, [r4, #4]
	lsls r0, r0, #2
	ldr r7, _0804F230
	adds r6, r0, r7
	ldr r0, _0804F234
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r2, [r6]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _0804F226
	cmp r0, #0x62
	ble _0804F238
_0804F226:
	movs r0, #0xd6
	bl play_sound
	b _0804F288
	.align 2, 0
_0804F230: .4byte gUnknown_020194A8
_0804F234: .4byte gSave
_0804F238:
	movs r0, #0xd2
	bl play_sound
	ldrb r2, [r6]
	ldrh r3, [r4, #4]
	adds r0, r5, #0
	mov r1, r8
	bl sub_08054BE0
	adds r0, r5, #0
	bl sub_08053148
	ldr r1, _0804F278
	adds r0, r7, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804F284
	bl sub_0804C330
	ldr r2, _0804F27C
	adds r0, r7, r2
	ldr r2, _0804F280
	adds r1, r7, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08049DC4
	bl sub_08046D90
	b _0804F288
	.align 2, 0
_0804F278: .4byte 0x00000DEC
_0804F27C: .4byte 0xFFFFCBD0
_0804F280: .4byte 0x00000DBC
_0804F284:
	bl sub_08046D90
_0804F288:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

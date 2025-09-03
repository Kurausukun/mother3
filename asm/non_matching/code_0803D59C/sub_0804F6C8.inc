	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	lsls r0, r0, #2
	ldr r1, _0804F6EC
	adds r6, r0, r1
	ldr r0, [r6]
	lsls r0, r0, #9
	cmp r0, #0
	blt _0804F6F0
	movs r0, #0xd6
	bl play_sound
	b _0804F78C
	.align 2, 0
_0804F6EC: .4byte gUnknown_020194E8
_0804F6F0:
	ldrb r0, [r6]
	cmp r0, #0
	bne _0804F6FE
	movs r0, #0xd2
	bl play_sound
	b _0804F704
_0804F6FE:
	ldr r0, _0804F798
	bl play_sound
_0804F704:
	ldr r7, _0804F79C
	ldr r0, _0804F7A0
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0xa]
	bl sub_08054FE0
	adds r5, r0, #0
	ldrh r0, [r4, #0xa]
	bl sub_08054FF0
	adds r4, r0, #0
	ldr r1, _0804F7A4
	adds r0, r7, r1
	ldrh r2, [r0]
	mov r8, r2
	adds r0, r5, #0
	adds r0, #0x34
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804F74E
	adds r1, #0xb
	adds r0, r7, r1
	ldrb r3, [r0]
	lsls r3, r3, #0x1b
	lsrs r3, r3, #0x1b
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08054200
_0804F74E:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0804F766
	ldr r3, [r6]
	lsls r3, r3, #2
	lsrs r3, r3, #0x1b
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl sub_08054200
_0804F766:
	adds r0, r5, #0
	bl sub_080524EC
	adds r0, r7, #0
	adds r0, #0x50
	ldr r2, _0804F7A8
	adds r1, r7, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08049DC4
	bl sub_08046D90
	ldr r1, _0804F7AC
	adds r0, r7, r1
	bl sub_08049AF8
_0804F78C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F798: .4byte 0x00000429
_0804F79C: .4byte gSomeBlend
_0804F7A0: .4byte 0x000041C6
_0804F7A4: .4byte 0x000041BC
_0804F7A8: .4byte 0x00004244
_0804F7AC: .4byte 0x00004ED0
	.syntax divided

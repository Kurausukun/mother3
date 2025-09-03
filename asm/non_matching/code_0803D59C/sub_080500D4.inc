	.syntax unified
sub_080500D4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r5, _08050104
	ldr r0, _08050108
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0805010C
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #1
	bne _08050110
	movs r0, #0xdd
	bl play_sound
	b _080501E6
	.align 2, 0
_08050104: .4byte gSomeBlend
_08050108: .4byte 0x000041DA
_0805010C: .4byte 0x000041CA
_08050110:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	movs r2, #0
	mov r8, r2
	ldr r0, _080501F8
	mov sl, r0
	movs r1, #0xbd
	lsls r1, r1, #6
	adds r1, r1, r5
	mov sb, r1
	ldrh r0, [r1, #0xa]
	bl sub_08054FE0
	adds r6, r0, #0
	mov r2, sb
	ldrh r0, [r2, #0xa]
	bl sub_08054FF0
	adds r7, r0, #0
	ldr r0, _080501FC
	bl play_sound
	ldr r0, _08050200
	adds r4, r5, r0
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r1, [r4]
	adds r0, r0, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _08050184
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08055098
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08050184
	ldrb r2, [r4]
	lsls r4, r3, #0x10
	asrs r3, r4, #0x10
	mov r0, r8
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08054200
	add r1, sp, #4
	movs r0, #1
	strh r0, [r1]
	mov r8, r5
	lsrs r4, r4, #0x10
	mov sl, r4
_08050184:
	ldr r5, _08050204
	ldr r1, _08050208
	adds r4, r5, r1
	ldrb r1, [r4]
	adds r0, r6, #0
	bl sub_08055104
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080501B6
	ldr r2, _08050200
	adds r0, r5, r2
	ldrb r2, [r0]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldrb r0, [r4]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08054200
_080501B6:
	ldr r1, _0805020C
	adds r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _08050210
	adds r0, r5, r2
	strh r1, [r0]
	ldrb r1, [r4]
	adds r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	beq _080501E6
	mov r0, sb
	movs r1, #0xf
	bl sub_08053EEC
	mov r0, r8
	strb r0, [r4]
	ldr r1, _08050214
	adds r0, r5, r1
	mov r2, sl
	strb r2, [r0]
_080501E6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080501F8: .4byte 0x0000FFFF
_080501FC: .4byte 0x00000429
_08050200: .4byte 0x000041D6
_08050204: .4byte gSomeBlend
_08050208: .4byte 0x000041D5
_0805020C: .4byte 0x000041C2
_08050210: .4byte 0x000044EC
_08050214: .4byte 0x000041D7
	.syntax divided

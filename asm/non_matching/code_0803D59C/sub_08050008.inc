	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _08050030
	ldr r0, _08050034
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08050038
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #1
	bne _0805003C
	movs r0, #0xdd
	bl play_sound
	b _080500BC
	.align 2, 0
_08050030: .4byte gSomeBlend
_08050034: .4byte 0x000041DA
_08050038: .4byte 0x000041CA
_0805003C:
	movs r0, #0xbd
	lsls r0, r0, #6
	adds r0, r0, r6
	mov r8, r0
	ldrh r0, [r0, #0xa]
	bl sub_08054FE0
	adds r4, r0, #0
	mov r1, r8
	ldrh r0, [r1, #0xa]
	bl sub_08054FF0
	ldr r1, _080500C8
	adds r0, r6, r1
	ldrb r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ldrb r1, [r4]
	lsls r0, r1
	lsrs r7, r0, #0x10
	movs r0, #0xe7
	bl play_sound
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08054B30
	adds r0, r4, #0
	bl sub_080524EC
	adds r0, r4, #0
	bl sub_08052F9C
	bl sub_08046D90
	bl nullsub_22
	adds r0, r5, #0
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080500BC
	ldr r1, _080500CC
	movs r0, #0x6c
	muls r0, r5, r0
	adds r0, r0, r1
	ldrh r0, [r0, #0xc]
	ands r0, r7
	cmp r0, #0
	beq _080500BC
	ldr r1, _080500D0
	adds r0, r6, r1
	adds r1, r4, #0
	adds r1, #0x34
	ldrb r0, [r0]
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, r5
	beq _080500BC
	mov r0, r8
	movs r1, #0xc
	bl sub_08053EEC
_080500BC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080500C8: .4byte 0x000041D5
_080500CC: .4byte gGoodsInfo
_080500D0: .4byte 0x000041D6
	.syntax divided

	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _08020D5C
	ldr r2, _08020D60
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bgt _08020D6C
	cmp r0, #2
	blt _08020D6C
	ldr r2, _08020D64
	adds r0, r1, r2
	mov r2, r8
	strh r2, [r0]
	ldr r2, _08020D68
	adds r0, r1, r2
	strh r7, [r0]
	movs r0, #0x82
	lsls r0, r0, #3
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08020DEE
	mov r0, r8
	bl sub_080038A4
	b _08020DEE
	.align 2, 0
_08020D5C: .4byte gGame
_08020D60: .4byte 0x00009480
_08020D64: .4byte 0x0000847A
_08020D68: .4byte 0x0000847C
_08020D6C:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, r6
	bne _08020D94
	ldr r0, _08020D8C
	ldr r1, _08020D90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_080083B8
	b _08020DEE
	.align 2, 0
_08020D8C: .4byte gGame
_08020D90: .4byte 0x000067AC
_08020D94:
	lsrs r4, r1, #0x10
	adds r0, r4, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	beq _08020DEE
	adds r0, r4, #0
	bl sub_080038A4
	lsls r1, r7, #0x10
	asrs r0, r1, #0x10
	lsls r5, r5, #0x10
	cmp r0, r6
	beq _08020DCA
	lsrs r4, r5, #0x10
	lsrs r0, r1, #0x10
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_08020DCA:
	asrs r0, r5, #0x10
	cmp r0, #0
	beq _08020DD6
	cmp r0, #1
	beq _08020DE4
	b _08020DEE
_08020DD6:
	ldr r0, _08020DDC
	ldr r2, _08020DE0
	b _08020DE8
	.align 2, 0
_08020DDC: .4byte gGame
_08020DE0: .4byte 0x000067AE
_08020DE4:
	ldr r0, _08020DFC
	ldr r2, _08020E00
_08020DE8:
	adds r0, r0, r2
	mov r1, r8
	strh r1, [r0]
_08020DEE:
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020DFC: .4byte gGame
_08020E00: .4byte 0x000067B0
	.syntax divided

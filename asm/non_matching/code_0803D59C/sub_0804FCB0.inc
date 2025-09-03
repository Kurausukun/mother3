	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r5, _0804FD28
	ldrh r0, [r5, #0xa]
	bl sub_08054FE0
	mov sb, r0
	ldr r0, _0804FD2C
	adds r4, r5, r0
	ldrh r0, [r4]
	bl sub_08054FE0
	adds r7, r0, #0
	ldrh r0, [r4]
	bl sub_08054FF0
	mov r8, r0
	ldr r1, _0804FD30
	adds r4, r5, r1
	ldrb r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4]
	ldr r0, _0804FD34
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0804FD38
	adds r6, r5, r1
	ldrb r1, [r6]
	adds r0, r7, #0
	bl sub_080542FC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804FD40
	ldr r2, _0804FD3C
	adds r0, r5, r2
	ldrb r3, [r0]
	ldrb r0, [r6]
	str r0, [sp]
	mov r0, sb
	adds r1, r7, #0
	mov r2, r8
	bl sub_08054264
	movs r0, #0
	bl sub_08055694
	b _0804FD4E
	.align 2, 0
_0804FD28: .4byte gUnknown_02018E28
_0804FD2C: .4byte 0x000013D0
_0804FD30: .4byte 0x000016F2
_0804FD34: .4byte 0x000016F3
_0804FD38: .4byte 0x000013D5
_0804FD3C: .4byte 0x000013D7
_0804FD40:
	movs r0, #0xd6
	bl play_sound
	ldrb r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
_0804FD4E:
	ldr r4, _0804FD94
	ldr r1, _0804FD98
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0804FD9C
	adds r0, r4, r2
	strh r1, [r0]
	ldr r1, _0804FDA0
	adds r0, r4, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0804FD72
	mov r0, sb
	bl sub_080524EC
	bl sub_08046D90
_0804FD72:
	ldr r0, _0804FDA4
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0804FDA8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x69
	bne _0804FDB0
	ldr r0, _0804FDAC
	bl sub_0803DF94
	b _0804FDB6
	.align 2, 0
_0804FD94: .4byte gSomeBlend
_0804FD98: .4byte 0x000041D0
_0804FD9C: .4byte 0x000044EC
_0804FDA0: .4byte 0x000044F2
_0804FDA4: .4byte 0x000041DA
_0804FDA8: .4byte 0x000041D5
_0804FDAC: .4byte 0x0000FFFE
_0804FDB0:
	ldr r0, _0804FDD4
	bl sub_0803DF94
_0804FDB6:
	ldr r0, _0804FDD8
	ldr r2, _0804FDDC
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FDD4: .4byte 0x0000FFFF
_0804FDD8: .4byte gSomeBlend
_0804FDDC: .4byte 0x000041DA
	.syntax divided

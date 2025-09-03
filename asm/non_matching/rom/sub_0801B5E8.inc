	.syntax unified
sub_0801B5E8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0801B78C
	add sp, r4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #5
	bls _0801B600
	b _0801B776
_0801B600:
	ldr r7, _0801B790
	ldr r1, _0801B794
	adds r0, r7, r1
	ldrh r0, [r0]
	lsls r2, r6, #2
	mov r8, r2
	ldr r3, _0801B798
	adds r4, r7, r3
	add r4, r8
	lsls r5, r6, #1
	ldr r1, _0801B79C
	add r1, sp
	str r5, [r1]
	ldr r2, _0801B7A0
	adds r1, r7, r2
	adds r5, r5, r1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08027E74
	ldr r0, [r4]
	mov r4, r8
	ldr r1, _0801B7A4
	add r1, sp
	str r4, [r1]
	ldr r2, _0801B79C
	add r2, sp
	ldr r2, [r2]
	ldr r3, _0801B7A8
	add r3, sp
	str r2, [r3]
	cmp r0, #0
	bne _0801B646
	b _0801B776
_0801B646:
	ldrh r5, [r5]
	ldr r3, _0801B7AC
	add r3, sp
	str r5, [r3]
	ldr r4, _0801B7B0
	adds r0, r7, r4
	ldrh r0, [r0]
	ldr r5, _0801B7B4
	add r5, sp
	str r0, [r5]
	ldr r1, _0801B7B8
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	mov sl, r0
	ldr r2, _0801B7BC
	adds r0, r7, r2
	ldr r0, [r0]
	movs r3, #0xfb
	lsls r3, r3, #4
	add r3, sp
	str r0, [r3]
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	cmp r6, #0
	bne _0801B68A
	ldr r4, _0801B7C0
	adds r0, r7, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0801B69E
_0801B68A:
	cmp r6, #2
	bne _0801B6A2
	ldr r0, _0801B790
	ldr r5, _0801B7C0
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801B6A2
	mov r1, sp
_0801B69E:
	movs r0, #1
	strh r0, [r1]
_0801B6A2:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801B6C6
	ldr r4, _0801B7C4
	add r1, sp, #4
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_08001B18
	ldr r0, _0801B7C8
	adds r4, r4, r0
	add r1, sp, #0x10
	movs r2, #0xfa
	lsls r2, r2, #4
	adds r0, r4, #0
	bl sub_08001B18
_0801B6C6:
	ldr r7, _0801B790
	ldr r1, _0801B7B8
	adds r3, r7, r1
	movs r0, #7
	adds r1, r6, #0
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	ldr r2, _0801B7B0
	adds r2, r2, r7
	mov r8, r2
	movs r1, #0
	strh r1, [r2]
	movs r4, #0x11
	rsbs r4, r4, #0
	mov sb, r4
	ands r0, r4
	subs r1, #0x21
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r3]
	ldr r5, _0801B798
	adds r0, r7, r5
	ldr r1, _0801B7A4
	add r1, sp
	ldr r1, [r1]
	adds r0, r1, r0
	ldr r0, [r0]
	ldr r2, _0801B7A0
	adds r4, r7, r2
	ldr r5, _0801B7A8
	add r5, sp
	ldr r5, [r5]
	adds r4, r5, r4
	adds r1, r4, #0
	movs r2, #1
	ldr r5, _0801B7CC
	add r5, sp
	str r3, [r5]
	bl exec_cmd
	ldr r0, _0801B7AC
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r1, _0801B7B4
	add r1, sp
	ldrh r2, [r1]
	mov r1, r8
	strh r2, [r1]
	mov r2, sl
	lsls r1, r2, #4
	ldr r4, _0801B7CC
	add r4, sp
	ldr r3, [r4]
	ldrb r0, [r3]
	mov r5, sb
	ands r5, r0
	orrs r5, r1
	strb r5, [r3]
	ldr r3, _0801B7BC
	adds r0, r7, r3
	movs r4, #0xfb
	lsls r4, r4, #4
	add r4, sp
	ldr r4, [r4]
	str r4, [r0]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801B776
	add r0, sp, #4
	ldr r5, _0801B7D0
	adds r1, r7, r5
	movs r2, #0xa
	bl sub_08001B18
	add r0, sp, #0x10
	ldr r2, _0801B7D4
	adds r1, r7, r2
	movs r2, #0xfa
	lsls r2, r2, #4
	bl sub_08001B18
_0801B776:
	movs r3, #0xfd
	lsls r3, r3, #4
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B78C: .4byte 0xFFFFF030
_0801B790: .4byte gGame
_0801B794: .4byte 0x000067AC
_0801B798: .4byte 0x00008498
_0801B79C: .4byte 0x00000FBC
_0801B7A0: .4byte 0x000084AC
_0801B7A4: .4byte 0x00000FC8
_0801B7A8: .4byte 0x00000FC4
_0801B7AC: .4byte 0x00000FB4
_0801B7B0: .4byte 0x00009474
_0801B7B4: .4byte 0x00000FB8
_0801B7B8: .4byte 0x00009480
_0801B7BC: .4byte 0x000084C0
_0801B7C0: .4byte 0x00008494
_0801B7C4: .4byte gUnknown_0200F064
_0801B7C8: .4byte 0xFFFFF060
_0801B7CC: .4byte 0x00000FCC
_0801B7D0: .4byte 0x00009464
_0801B7D4: .4byte 0x000084C4
	.syntax divided

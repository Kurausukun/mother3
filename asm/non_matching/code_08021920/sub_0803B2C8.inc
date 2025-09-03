	.syntax unified
sub_0803B2C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r5, _0803B3AC
	ldr r0, _0803B3B0
	adds r4, r5, r0
	ldrh r0, [r4]
	movs r7, #7
	str r7, [sp]
	movs r1, #1
	mov r8, r1
	str r1, [sp, #4]
	movs r1, #3
	movs r2, #0
	movs r3, #3
	bl sub_08039A74
	ldrh r0, [r4]
	bl sub_08001B9C
	adds r4, r0, #0
	ldr r0, _0803B3B4
	adds r6, r5, r0
	ldr r2, _0803B3B8
	adds r0, r6, #0
	movs r1, #0x1c
	bl sub_08001B54
	ldr r1, _0803B3BC
	adds r5, r1, #0
	strh r5, [r6, #0x1a]
	adds r0, r4, #0
	bl sub_080025D8
	adds r2, r0, #0
	subs r2, r2, r4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08001B18
	ldrh r0, [r6]
	cmp r0, r5
	beq _0803B334
	movs r3, #1
	rsbs r3, r3, #0
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #7
	movs r2, #0
	bl sub_08039A18
_0803B334:
	movs r0, #0
	bl sub_08039B24
	movs r4, #1
	rsbs r4, r4, #0
	str r7, [sp]
	movs r1, #3
	movs r2, #1
	adds r3, r4, #0
	bl sub_08039A18
	ldr r5, _0803B3C0
	ldrb r1, [r5, #8]
	mov r0, r8
	ands r0, r1
	movs r1, #0x11
	cmp r0, #0
	bne _0803B35A
	movs r1, #0x12
_0803B35A:
	adds r0, r1, #0
	bl sub_08039B24
	str r7, [sp]
	movs r1, #9
	movs r2, #1
	adds r3, r4, #0
	bl sub_08039A18
	movs r0, #1
	bl sub_08039B24
	str r7, [sp]
	movs r1, #3
	movs r2, #2
	adds r3, r4, #0
	bl sub_08039A18
	ldrb r1, [r5, #8]
	movs r0, #4
	ands r0, r1
	movs r1, #0x13
	cmp r0, #0
	bne _0803B38C
	movs r1, #0x14
_0803B38C:
	adds r0, r1, #0
	bl sub_08039B24
	str r7, [sp]
	movs r1, #9
	movs r2, #2
	adds r3, r4, #0
	bl sub_08039A18
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B3AC: .4byte gSomeBlend
_0803B3B0: .4byte 0x00003614
_0803B3B4: .4byte 0x00003628
_0803B3B8: .4byte 0x00AC00AC
_0803B3BC: .4byte 0x0000FFFF
_0803B3C0: .4byte gGame
	.syntax divided

	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r8, r4
	mov r0, sp
	strh r2, [r0]
	adds r7, r5, #0
	adds r7, #0x88
	ldrh r0, [r7]
	cmp r0, r4
	bne _08030572
	b _08030696
_08030572:
	adds r0, r4, #0
	bl sub_08036D18
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_08036D3C
	ldrb r2, [r6, #1]
	lsls r2, r2, #0x1a
	adds r4, r5, #0
	adds r4, #0xc7
	lsrs r2, r2, #0x1f
	lsls r2, r2, #3
	ldrb r3, [r4]
	movs r1, #9
	rsbs r1, r1, #0
	mov sb, r1
	ands r1, r3
	orrs r1, r2
	strb r1, [r4]
	ldrb r1, [r0]
	lsls r1, r1, #0x1a
	adds r4, #2
	lsrs r1, r1, #0x1d
	lsls r1, r1, #4
	ldrb r3, [r4]
	movs r2, #0x71
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r4]
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	lsls r1, r1, #7
	movs r3, #0x7f
	ands r2, r3
	orrs r2, r1
	strb r2, [r4]
	ldrb r2, [r0, #1]
	lsls r2, r2, #0x1e
	adds r4, #2
	lsrs r2, r2, #0x1f
	lsls r2, r2, #5
	ldrb r3, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4]
	ldrb r1, [r0, #2]
	lsrs r1, r1, #1
	adds r3, r5, #0
	adds r3, #0xa6
	movs r4, #0
	strh r1, [r3]
	ldrb r0, [r0, #3]
	lsrs r1, r0, #1
	adds r2, r5, #0
	adds r2, #0xa8
	strh r1, [r2]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080305FA
	adds r0, r1, #4
	strh r0, [r2]
_080305FA:
	ldrh r0, [r3]
	lsls r0, r0, #4
	adds r1, r5, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, #2
	strh r0, [r1]
	strh r4, [r5, #4]
	strh r4, [r5, #6]
	ldrb r0, [r6]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x19
	adds r0, #8
	strh r0, [r5, #0x14]
	ldrb r0, [r6]
	lsrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #3
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	adds r0, #0x74
	movs r2, #1
	rsbs r2, r2, #0
	movs r1, #0xd
	bl sub_08001B54
	mov r0, r8
	strh r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08030696
	ldr r0, _080306A4
	ldr r1, _080306A8
	adds r4, r0, r1
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _080306AC
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08030670
	ldr r0, _080306B0
	ldr r1, _080306B4
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xdd
	lsls r0, r0, #1
	cmp r1, r0
	bne _08030670
	ldrb r1, [r4]
	mov r0, sb
	ands r0, r1
	strb r0, [r4]
_08030670:
	ldr r1, _080306B0
	ldr r0, _080306B8
	adds r2, r1, r0
	ldr r0, _080306BC
	str r0, [r2]
	ldr r0, _080306C0
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	bl sub_08030180
	ldr r1, _080306A4
	ldr r0, _080306A8
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_08030696:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080306A4: .4byte gSomeBlend
_080306A8: .4byte 0x000121B8
_080306AC: .4byte 0x000002DE
_080306B0: .4byte gGame
_080306B4: .4byte 0x000067AC
_080306B8: .4byte 0x00009D08
_080306BC: .4byte 0x06010000
_080306C0: .4byte 0x00009D0C
	.syntax divided

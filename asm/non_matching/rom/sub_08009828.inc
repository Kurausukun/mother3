	.syntax unified
sub_08009828:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	ldr r0, _08009854
	add r0, r8
	movs r1, #0
	str r1, [r0]
	ldr r0, _08009858
	ldrb r0, [r0]
	cmp r0, #5
	bgt _08009864
	cmp r0, #4
	blt _08009864
	ldr r5, _0800985C
	add r5, r8
	ldr r7, _08009860
	add r7, r8
	b _0800986C
	.align 2, 0
_08009854: .4byte 0x0000322C
_08009858: .4byte gGame
_0800985C: .4byte 0x00003230
_08009860: .4byte 0x00003670
_08009864:
	mov r5, r8
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r7, r5, r0
_0800986C:
	str r5, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, _080098CC
	add r0, r8
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #0
	bne _0800987E
	b _08009A10
_0800987E:
	mov sb, sp
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0x14]
	adds r6, r7, #0
	adds r6, #0xc8
_0800988A:
	ldr r0, [r5]
	lsls r0, r0, #0x14
	lsrs r1, r0, #0x14
	cmp r1, #0
	bne _08009896
	b _08009A00
_08009896:
	movs r0, #0xfe
	lsls r0, r0, #4
	cmp r1, r0
	bne _080098DC
	ldrh r0, [r5]
	ldr r2, _080098D0
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5]
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r5]
	lsls r0, r0, #6
	lsrs r0, r0, #0x18
	ldr r1, _080098D4
	add r1, r8
	movs r2, #0
	strh r0, [r1]
	adds r6, #0xcc
	adds r7, #0xcc
	ldr r0, _080098D8
	add r0, r8
	str r2, [r0]
	b _08009A08
	.align 2, 0
_080098CC: .4byte 0x0000C513
_080098D0: .4byte 0xFFFFF000
_080098D4: .4byte 0x0000C518
_080098D8: .4byte 0x0000322C
_080098DC:
	ldr r3, _08009A20
	add r3, r8
	str r3, [sp, #0x10]
	ldr r0, [r3]
	adds r0, #4
	cmp r5, r0
	beq _08009904
	ldr r0, [sp, #8]
	adds r1, r5, #0
	mov r2, sp
	bl sub_08008ECC
	ldr r0, _08009A24
	add r0, r8
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2]
_08009904:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08009910
	adds r0, #7
_08009910:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _08009A28
	ldr r1, [sp, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	mov r2, sb
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0800992A
	adds r0, #7
_0800992A:
	asrs r0, r0, #3
	ldr r1, [sp, #0x14]
	strh r0, [r1, #2]
	ldr r2, _08009A2C
	ldr r3, _08009A30
	adds r0, r2, r3
	ldr r4, [r0]
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r1, r1, #5
	ldr r2, [sp, #0x14]
	movs r3, #2
	ldrsh r0, [r2, r3]
	lsls r0, r0, #0xa
	adds r1, r1, r0
	adds r4, r4, r1
	ldr r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	ldrb r1, [r6]
	movs r3, #0x79
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	str r4, [r7]
	ldr r0, [sp, #0x14]
	ldrh r2, [r0]
	ldrh r3, [r0, #2]
	ldr r0, _08009A2C
	adds r0, #0x50
	movs r1, #0
	bl sub_08001378
	str r0, [r7, #4]
	lsls r4, r4, #0x11
	lsrs r4, r4, #0x16
	lsls r4, r4, #7
	ldr r0, [r6]
	ldr r1, _08009A34
	ands r0, r1
	orrs r0, r4
	str r0, [r6]
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #7
	ands r2, r0
	ldrb r0, [r6]
	movs r3, #8
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	ldr r1, [r5]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	adds r0, r7, #0
	bl sub_08008C28
	ldr r0, [r5]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	bl sub_08009DDC
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2]
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, _08009A38
	add r2, r8
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	ldr r1, _08009A3C
	add r1, r8
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _08009A40
	add r1, r8
	movs r2, #0x60
	bl sub_08001B18
	adds r0, r7, #0
	adds r0, #0x68
	ldr r1, _08009A44
	add r1, r8
	movs r2, #0x60
	bl sub_08001B18
	adds r6, #0xcc
	adds r7, #0xcc
	ldr r3, [sp, #0x10]
	str r5, [r3]
_08009A00:
	adds r5, #4
	ldr r0, [sp, #0xc]
	cmp r5, r0
	bhs _08009A10
_08009A08:
	mov r1, sl
	cmp r1, #0
	beq _08009A10
	b _0800988A
_08009A10:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009A20: .4byte 0x0000322C
_08009A24: .4byte 0x0000C518
_08009A28: .4byte 0xFFFF0000
_08009A2C: .4byte gSomeBlend
_08009A30: .4byte 0x000053B0
_08009A34: .4byte 0xFFFE007F
_08009A38: .4byte 0x0000322A
_08009A3C: .4byte 0x00003228
_08009A40: .4byte 0x00003168
_08009A44: .4byte 0x000031C8
	.syntax divided

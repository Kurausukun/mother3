	.syntax unified
sub_0800946C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r1, _080094E8
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009550
	ldr r2, _080094EC
	adds r0, r7, r2
	ldr r0, [r0]
	ldr r5, [r0, #4]
	ldrh r0, [r5, #8]
	str r0, [sp, #0xc]
	add r4, sp, #0xc
	ldrh r0, [r4]
	movs r1, #0
	bl sub_08009C4C
	str r0, [sp, #4]
	ldr r0, [r5]
	str r0, [sp, #8]
	movs r3, #0xc
	ldrsh r1, [r5, r3]
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r6, #0
	mov sb, r4
	cmp r6, r8
	bhs _08009550
	ldr r0, _080094F0
	adds r4, r0, #0
_080094B8:
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	adds r3, r0, #0
	ldr r0, _080094F4
	cmp r3, r0
	bls _080094F8
	ldr r2, [sp, #4]
	ldrh r0, [r2]
	ands r0, r4
	strh r0, [r2]
	ldrb r0, [r2, #2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #2]
	mov r1, sb
	str r1, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	add r3, sp, #8
	bl sub_08009AF4
	b _08009540
	.align 2, 0
_080094E8: .4byte 0x0000C516
_080094EC: .4byte 0x0000C1E8
_080094F0: .4byte 0xFFFFF000
_080094F4: .4byte 0x0000FEFF
_080094F8:
	ldr r2, [sp, #4]
	ldr r0, [r2]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _0800950C
	ldr r0, _08009560
	adds r1, r7, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0800950C:
	ldr r1, _08009564
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r2]
	ands r0, r4
	orrs r0, r3
	strh r0, [r2]
	ldr r3, [sp, #4]
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	ldrb r2, [r3, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r0, [sp, #4]
	adds r0, #4
	str r0, [sp, #4]
_08009540:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
	cmp r6, r8
	blo _080094B8
_08009550:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009560: .4byte 0x0000C514
_08009564: .4byte 0x00000FFF
	.syntax divided

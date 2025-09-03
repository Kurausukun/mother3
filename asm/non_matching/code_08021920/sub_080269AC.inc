	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	ldr r0, _08026A10
	ldrb r1, [r0, #5]
	mov ip, r0
	cmp r1, #1
	bne _080269C4
	b _08026ADC
_080269C4:
	movs r5, #1
	ldrb r0, [r0, #5]
	cmp r5, r0
	bhs _08026A4A
	mov r6, sp
	mov sl, ip
	movs r1, #0x52
	add r1, sl
	mov sb, r1
_080269D6:
	movs r0, #0
	strh r0, [r6]
	movs r4, #0
	adds r2, r5, #1
	mov r8, r2
	mov r0, sb
	adds r7, r5, r0
_080269E4:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08026A14
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, #0x85
	ldrb r1, [r1]
	bl sub_08036734
	cmp r0, #0x2f
	bhi _08026A14
	movs r0, #1
	strh r0, [r6]
	b _08026A1E
	.align 2, 0
_08026A10: .4byte gEncounter
_08026A14:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _080269E4
_08026A1E:
	ldrh r0, [r6]
	ldr r1, _08026AEC
	mov ip, r1
	cmp r0, #0
	bne _08026A3C
	lsls r1, r5, #1
	mov r0, sl
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, _08026AF0
	strh r0, [r1]
	mov r2, sb
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_08026A3C:
	mov r7, r8
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	mov r0, ip
	ldrb r0, [r0, #5]
	cmp r5, r0
	blo _080269D6
_08026A4A:
	movs r3, #0
	movs r5, #1
	mov r1, ip
	ldrb r2, [r1, #5]
	cmp r5, r2
	bhs _08026AA0
	movs r7, #0xc
	add r7, ip
	mov r8, r7
	movs r4, #1
	rsbs r4, r4, #0
	add r6, sp, #0x18
_08026A62:
	lsls r0, r5, #1
	add r0, r8
	ldrh r2, [r0]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, r4
	beq _08026A92
	adds r0, r1, #0
	adds r0, #0x52
	adds r1, r5, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r4
	beq _08026A92
	lsls r0, r3, #1
	adds r0, r6, r0
	strh r2, [r0]
	add r0, sp, #4
	adds r0, r0, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08026A92:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r1, ip
	ldrb r0, [r1, #5]
	cmp r5, r0
	blo _08026A62
_08026AA0:
	movs r5, #0
	adds r1, r3, #1
	mov sb, r1
	cmp r5, r3
	bhs _08026AD6
	ldr r4, _08026AF4
	add r7, sp, #0x18
	movs r2, #0x46
	adds r2, r2, r4
	mov r8, r2
	add r6, sp, #4
_08026AB6:
	adds r2, r5, #1
	lsls r1, r2, #1
	adds r1, r1, r4
	lsls r0, r5, #1
	adds r0, r7, r0
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, r8
	adds r1, r2, r0
	adds r0, r6, r5
	ldrb r0, [r0]
	strb r0, [r1]
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	cmp r5, r3
	blo _08026AB6
_08026AD6:
	mov r2, sb
	mov r1, ip
	strb r2, [r1, #5]
_08026ADC:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026AEC: .4byte gEncounter
_08026AF0: .4byte 0x0000FFFF
_08026AF4: .4byte gUnknown_020047EC
	.syntax divided

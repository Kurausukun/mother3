	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	mov r4, sp
	mov r0, sp
	bl sub_0801A530
	mov r0, sp
	ldrh r1, [r0]
	ldr r3, _08030BB8
	ldr r0, [sp, #4]
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #4]
	ldrh r0, [r4, #2]
	add r2, sp, #4
	strh r0, [r2, #2]
	movs r0, #0xf0
	strh r0, [r2, #4]
	movs r0, #0xa0
	strh r0, [r2, #6]
	movs r1, #0x20
	ldr r0, [sp, #0xc]
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #0xc]
	add r3, sp, #0xc
	strh r1, [r3, #2]
	movs r0, #0
	str r0, [sp, #0x10]
	b _08030D12
	.align 2, 0
_08030BB8: .4byte 0xFFFF0000
_08030BBC:
	ldr r0, _08030BD8
	ldrb r1, [r0, #0x11]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08030BDC
	adds r4, r6, #4
	add r0, sp, #4
	adds r1, r4, #0
	add r2, sp, #0xc
	movs r3, #0
	bl sub_08035820
	b _08030BE8
	.align 2, 0
_08030BD8: .4byte gGame
_08030BDC:
	adds r4, r6, #4
	add r0, sp, #4
	adds r1, r4, #0
	add r2, sp, #0xc
	bl sub_080357D0
_08030BE8:
	lsls r0, r0, #0x10
	mov sb, r4
	cmp r0, #0
	bne _08030BF2
	b _08030D02
_08030BF2:
	ldrb r2, [r6, #0xa]
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08030CC0
	ldr r0, [r6]
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	movs r1, #0xa8
	muls r0, r1, r0
	ldr r1, _08030CB8
	mov sl, r1
	adds r5, r0, r1
	ldrh r0, [r5, #0x2c]
	bl sub_08036DF4
	adds r4, r0, #0
	bl sub_08002C4C
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_08002C54
	mov r8, r0
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r1, [r4]
	adds r2, r6, #0
	adds r2, #8
	bl sub_08002B1C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	cmp r0, r1
	beq _08030C52
	strh r1, [r5, #0x30]
	adds r0, r7, #0
	bl sub_08002ABC
	str r0, [r5, #0x20]
	adds r1, r5, #0
	bl sub_08032ADC
_08030C52:
	ldr r0, [r6]
	ldrb r2, [r0]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1e
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031730
	ldrb r1, [r4]
	mov r0, r8
	bl sub_08002BA4
	bl sub_08002BF4
	lsls r0, r0, #0x10
	ldrh r1, [r6, #8]
	adds r1, #1
	strh r1, [r6, #8]
	lsls r1, r1, #0x10
	cmp r1, r0
	blo _08030D02
	ldr r2, _08030CBC
	add r2, sl
	ldrb r1, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0xa]
	movs r2, #5
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	strb r1, [r6, #0xa]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08030D02
	adds r0, r1, #0
	ands r0, r3
	subs r2, #4
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r6, #0xa]
	ldr r0, [r6]
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl sub_080029F8
	b _08030D02
	.align 2, 0
_08030CB8: .4byte gUnknown_0200B6F0
_08030CBC: .4byte 0x000029A4
_08030CC0:
	ldr r0, [r6]
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08030D30
	adds r5, r0, r1
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08030CF2
	strh r3, [r5, #0x30]
	ldr r0, [r5, #0x20]
	adds r1, r5, #0
	bl sub_08032ADC
_08030CF2:
	ldr r0, [r6]
	ldrb r2, [r0]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1e
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031730
_08030D02:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r6, #0xc
	cmp r0, #0x13
	bhi _08030D1E
_08030D12:
	ldrb r1, [r6, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08030D1E
	b _08030BBC
_08030D1E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030D30: .4byte gUnknown_0200B680
	.syntax divided

	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r5, _08012A20
	movs r0, #0
	mov r8, r0
	movs r7, #0x1f
	ldr r3, _08012A24
	adds r3, r3, r5
	mov sb, r3
_080129D2:
	ldrb r1, [r5, #0x14]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _08012AAE
	lsrs r0, r1, #3
	lsls r0, r0, #4
	ldr r1, _08012A28
	adds r6, r0, r1
	ldr r4, [r6]
	ldr r0, [r6, #8]
	ldrb r1, [r4, #9]
	bl sub_08013778
	movs r2, #0
	strh r0, [r5, #0x12]
	ldrh r1, [r5, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _080129FC
	strh r2, [r5, #0x10]
_080129FC:
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08012A30
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	ands r0, r7
	lsls r0, r0, #0xc
	ldr r1, [r5, #0x14]
	ldr r2, _08012A2C
	ands r1, r2
	orrs r1, r0
	str r1, [r5, #0x14]
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	b _08012A4A
	.align 2, 0
_08012A20: .4byte gUnknown_0200B960
_08012A24: .4byte 0xFFFFA2FC
_08012A28: .4byte gUnknown_0200B7D0
_08012A2C: .4byte 0xFFFE0FFF
_08012A30:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	ands r0, r7
	lsls r0, r0, #0xc
	ldr r1, [r5, #0x14]
	ldr r2, _08012ACC
	ands r1, r2
	orrs r1, r0
	str r1, [r5, #0x14]
	ldrh r0, [r4]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1d
_08012A4A:
	ands r0, r7
	lsls r0, r0, #1
	ldrb r1, [r5, #0x16]
	movs r3, #0x3f
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x16]
	str r4, [r5]
	ldrb r1, [r5, #0x15]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1a
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	str r0, [r5, #8]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	ldrb r1, [r4]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	add r1, sb
	ldr r3, [r1]
	ldr r2, [r5, #4]
	ldrb r1, [r2, #1]
	lsls r1, r1, #1
	ldrb r2, [r2, #2]
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, r3, r1
	str r3, [r5, #0xc]
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #3
	ldrb r1, [r5, #0x15]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	movs r3, #0x10
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_08012830
_08012AAE:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r5, #0x18
	cmp r0, #0x13
	bls _080129D2
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012ACC: .4byte 0xFFFE0FFF
	.syntax divided

	.syntax unified
sub_08034EB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x8b
	ldrb r4, [r6]
	movs r0, #0x86
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #0x88
	ldrh r1, [r7]
	movs r2, #4
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _08034F08
	ldr r2, [r5, #0x40]
	ldrh r1, [r2, #4]
	ldr r0, _08034F04
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #4]
	ldr r2, [r5, #0x40]
	ldrb r1, [r2, #4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #4]
	b _08034F90
	.align 2, 0
_08034F04: .4byte 0xFFFFC01F
_08034F08:
	ldrb r4, [r6]
	mov r1, r8
	ldrb r0, [r1]
	ldrh r1, [r7]
	movs r2, #0
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _08034F40
	ldr r2, [r5, #0x40]
	ldrh r1, [r2, #4]
	ldr r0, _08034F3C
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #4]
	ldr r2, [r5, #0x40]
	ldrb r1, [r2, #4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #4]
	b _08034F90
	.align 2, 0
_08034F3C: .4byte 0xFFFFC01F
_08034F40:
	ldr r3, [r5, #0x40]
	ldrb r1, [r6]
	lsrs r1, r1, #3
	lsls r1, r1, #5
	ldrh r2, [r3, #4]
	ldr r4, _08034F7C
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r6]
	movs r1, #7
	ands r1, r0
	ldrb r2, [r3, #4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	ldr r2, [r5, #0x40]
	ldrh r1, [r2, #4]
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x17
	cmp r0, #0xa
	beq _08034F80
	cmp r0, #0xb
	beq _08034F86
	b _08034F90
	.align 2, 0
_08034F7C: .4byte 0xFFFFC01F
_08034F80:
	adds r0, r4, #0
	ands r0, r1
	b _08034F8E
_08034F86:
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
_08034F8E:
	strh r0, [r2, #4]
_08034F90:
	ldr r3, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	lsls r1, r1, #6
	ldrb r2, [r3, #5]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, [r5, #0x40]
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, [r5, #0x40]
	ldrh r0, [r5, #2]
	strh r0, [r1, #2]
	ldr r0, [r5, #0x40]
	bl sub_08034FC8
	str r0, [r5, #0x40]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

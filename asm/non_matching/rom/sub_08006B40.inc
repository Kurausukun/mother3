	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldr r0, _08006C28
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006B5E
	movs r0, #0
	strh r0, [r1]
_08006B5E:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08006B68
	b _08006CE0
_08006B68:
	movs r4, #0xcc
	lsls r4, r4, #1
	add r4, sb
	ldr r0, _08006C2C
	add r0, sb
	ldrb r6, [r0]
	cmp r6, #0
	beq _08006BB8
	ldr r5, _08006C30
	add r5, sb
_08006B7C:
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08006BB0
	adds r0, r4, #0
	adds r0, #8
	ldr r1, [r4]
	movs r2, #0x60
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0x60
	bl sub_08001A14
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08006BB0:
	adds r5, #0xcc
	adds r4, #0xcc
	cmp r6, #0
	bne _08006B7C
_08006BB8:
	ldr r0, _08006C34
	add r0, sb
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08006C48
	ldr r2, _08006C38
	ldr r3, _08006C3C
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08006BDA
	movs r1, #0
_08006BDA:
	ldr r3, _08006C40
	adds r0, r2, r3
	lsls r1, r1, #0xa
	ldr r0, [r0]
	adds r0, r0, r1
	adds r0, #0x20
	mov r8, r0
	movs r1, #0
	ldr r0, _08006C44
	adds r7, r2, r0
_08006BEE:
	lsls r0, r1, #0xb
	mov r2, r8
	adds r4, r2, r0
	movs r5, #0
	adds r6, r1, #1
_08006BF8:
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_08001A14
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r4, r3
	adds r0, r7, #0
	movs r2, #0x20
	bl sub_08001A14
	adds r4, #0x20
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x1b
	bls _08006BF8
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bls _08006BEE
	b _08006E3E
	.align 2, 0
_08006C28: .4byte gUnknown_02000000
_08006C2C: .4byte 0x0000C513
_08006C30: .4byte 0x00000262
_08006C34: .4byte 0x0000C51A
_08006C38: .4byte gSomeBlend
_08006C3C: .4byte 0x00011D16
_08006C40: .4byte 0x00011D0C
_08006C44: .4byte 0x00011CA4
_08006C48:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08006C52
	b _08006E3E
_08006C52:
	ldr r2, _08006CD0
	ldr r1, _08006CD4
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08006C66
	movs r1, #0
_08006C66:
	ldr r3, _08006CD8
	adds r0, r2, r3
	lsls r1, r1, #0xa
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0x82
	lsls r2, r2, #4
	adds r5, r0, r2
	mov r4, r8
	movs r6, #0
	movs r7, #0x80
	lsls r7, r7, #3
_08006C84:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #2
	bl sub_08001A14
	adds r5, r5, r7
	adds r4, r4, r7
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _08006C84
	movs r4, #0x80
	lsls r4, r4, #4
	add r4, r8
	movs r6, #0
	ldr r5, _08006CDC
_08006CA8:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_08001A14
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r4, r3
	adds r0, r5, #0
	movs r2, #0x20
	bl sub_08001A14
	adds r4, #0x20
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1b
	bls _08006CA8
	b _08006E3E
	.align 2, 0
_08006CD0: .4byte gSomeBlend
_08006CD4: .4byte 0x00011D16
_08006CD8: .4byte 0x00011D0C
_08006CDC: .4byte gUnknown_02027CCC
_08006CE0:
	movs r4, #0xcc
	lsls r4, r4, #1
	add r4, sb
	ldr r0, _08006DA0
	add r0, sb
	ldrb r6, [r0]
	cmp r6, #0
	beq _08006D30
	ldr r5, _08006DA4
	add r5, sb
_08006CF4:
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08006D28
	adds r0, r4, #0
	adds r0, #8
	ldr r1, [r4]
	movs r2, #0x60
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0x60
	bl sub_08001B18
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08006D28:
	adds r5, #0xcc
	adds r4, #0xcc
	cmp r6, #0
	bne _08006CF4
_08006D30:
	ldr r0, _08006DA8
	add r0, sb
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08006DBC
	ldr r2, _08006DAC
	ldr r3, _08006DB0
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08006D52
	movs r1, #0
_08006D52:
	ldr r3, _08006DB4
	adds r0, r2, r3
	lsls r1, r1, #0xa
	ldr r0, [r0]
	adds r0, r0, r1
	adds r0, #0x20
	mov r8, r0
	movs r1, #0
	ldr r0, _08006DB8
	adds r7, r2, r0
_08006D66:
	lsls r0, r1, #0xb
	mov r2, r8
	adds r4, r2, r0
	movs r5, #0
	adds r6, r1, #1
_08006D70:
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_08001B18
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r4, r3
	adds r0, r7, #0
	movs r2, #0x20
	bl sub_08001B18
	adds r4, #0x20
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x1b
	bls _08006D70
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bls _08006D66
	b _08006E3E
	.align 2, 0
_08006DA0: .4byte 0x0000C513
_08006DA4: .4byte 0x00000262
_08006DA8: .4byte 0x0000C51A
_08006DAC: .4byte gSomeBlend
_08006DB0: .4byte 0x00011D16
_08006DB4: .4byte 0x00011D0C
_08006DB8: .4byte 0x00011CA4
_08006DBC:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08006E3E
	ldr r2, _08006E68
	ldr r1, _08006E6C
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08006DD8
	movs r1, #0
_08006DD8:
	ldr r3, _08006E70
	adds r0, r2, r3
	lsls r1, r1, #0xa
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0x82
	lsls r2, r2, #4
	adds r5, r0, r2
	mov r4, r8
	movs r6, #0
	movs r7, #0x80
	lsls r7, r7, #3
_08006DF6:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #2
	bl sub_08001B18
	adds r5, r5, r7
	adds r4, r4, r7
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _08006DF6
	movs r4, #0x80
	lsls r4, r4, #4
	add r4, r8
	movs r6, #0
	ldr r5, _08006E74
_08006E1A:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_08001B18
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r4, r3
	adds r0, r5, #0
	movs r2, #0x20
	bl sub_08001B18
	adds r4, #0x20
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1b
	bls _08006E1A
_08006E3E:
	ldr r1, _08006E78
	add r1, sb
	movs r0, #0
	strb r0, [r1]
	ldr r2, _08006E7C
	add r2, sb
	ldrb r1, [r2]
	subs r0, #0x11
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006E68: .4byte gSomeBlend
_08006E6C: .4byte 0x00011D16
_08006E70: .4byte 0x00011D0C
_08006E74: .4byte gUnknown_02027CCC
_08006E78: .4byte 0x0000C513
_08006E7C: .4byte 0x0000C51A
	.syntax divided

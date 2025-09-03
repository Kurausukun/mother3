	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	add r1, sp, #0xc
	strh r0, [r1]
	ldr r5, _08013AC4
	ldr r1, _08013AC8
	adds r0, r5, r1
	ldrh r0, [r0]
	bl sub_0801B558
	adds r4, r0, #0
	ldr r2, _08013ACC
	adds r6, r5, r2
	movs r7, #0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08013B5A
	movs r3, #1
	mov sb, r3
	mov r8, r5
	ldr r5, _08013AD0
	add r5, r8
_08013A74:
	str r4, [r5]
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	bne _08013AAE
	ldrb r2, [r5, #4]
	mov r0, sb
	orrs r2, r0
	movs r0, #0xf
	adds r1, r7, #0
	ands r1, r0
	lsls r1, r1, #2
	movs r3, #0x3d
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r2, r0
	orrs r2, r1
	strb r2, [r5, #4]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #1
	adds r3, #0x3a
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #4]
_08013AAE:
	ldrb r2, [r4]
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08013B08
	cmp r0, #1
	bgt _08013AD4
	cmp r0, #0
	beq _08013ADA
	b _08013B42
	.align 2, 0
_08013AC4: .4byte gGame
_08013AC8: .4byte 0x000067AC
_08013ACC: .4byte 0x000065BC
_08013AD0: .4byte 0x000065DC
_08013AD4:
	cmp r0, #2
	beq _08013B2C
	b _08013B42
_08013ADA:
	lsls r3, r2, #0x19
	lsrs r3, r3, #0x1c
	lsls r0, r3, #5
	mov r2, r8
	ldr r1, [r2, #0x28]
	adds r1, r1, r0
	ldrb r0, [r4, #8]
	str r0, [sp]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	str r0, [sp, #4]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	str r0, [sp, #8]
	adds r0, r6, #0
	ldr r2, _08013B04
	bl sub_08003278
	b _08013B42
	.align 2, 0
_08013B04: .4byte gUnknown_03005314
_08013B08:
	lsls r3, r2, #0x19
	lsrs r3, r3, #0x1c
	lsls r0, r3, #5
	mov r2, r8
	ldr r1, [r2, #0x28]
	adds r1, r1, r0
	ldrb r0, [r4, #8]
	str r0, [sp]
	ldrb r0, [r4, #9]
	str r0, [sp, #4]
	adds r0, r6, #0
	ldr r2, _08013B28
	bl sub_08003314
	b _08013B42
	.align 2, 0
_08013B28: .4byte gUnknown_03005314
_08013B2C:
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	ldrb r3, [r4, #0xc]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	str r0, [sp]
	adds r0, r6, #0
	ldr r1, _08013B68
	bl sub_08003394
_08013B42:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #0x28
	adds r6, #0x28
	adds r4, #0x1c
	cmp r7, #0xb
	bhi _08013B5A
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08013A74
_08013B5A:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013B68: .4byte gUnknown_03005314
	.syntax divided

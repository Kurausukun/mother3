	.syntax unified
sub_08006E80:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldr r0, _08006EE4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006E98
	movs r0, #0
	strh r0, [r1]
_08006E98:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006EF0
	ldr r0, _08006EE8
	adds r4, r6, r0
	ldr r1, _08006EEC
	adds r0, r6, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _08006F30
_08006EAE:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08006ED4
	adds r0, r4, #4
	ldr r1, [r4]
	movs r2, #0x40
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x44
	ldr r1, [r4]
	adds r1, #0x40
	movs r2, #0x40
	bl sub_08001A14
_08006ED4:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x8c
	cmp r5, #0
	bne _08006EAE
	b _08006F30
	.align 2, 0
_08006EE4: .4byte gUnknown_02000000
_08006EE8: .4byte 0x00009610
_08006EEC: .4byte 0x0000C515
_08006EF0:
	ldr r2, _08006F44
	adds r4, r6, r2
	ldr r1, _08006F48
	adds r0, r6, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _08006F30
_08006EFE:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08006F24
	adds r0, r4, #4
	ldr r1, [r4]
	movs r2, #0x40
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x44
	ldr r1, [r4]
	adds r1, #0x40
	movs r2, #0x40
	bl sub_08001A14
_08006F24:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x8c
	cmp r5, #0
	bne _08006EFE
_08006F30:
	ldr r0, _08006F4C
	adds r2, r6, r0
	subs r0, #0x18
	adds r1, r6, r0
	ldr r0, [r2]
	cmp r0, r1
	bne _08006F54
	ldr r1, _08006F50
	adds r0, r6, r1
	b _08006F56
	.align 2, 0
_08006F44: .4byte 0x00009610
_08006F48: .4byte 0x0000C515
_08006F4C: .4byte 0x0000C204
_08006F50: .4byte 0x0000C1F8
_08006F54:
	adds r0, r1, #0
_08006F56:
	str r0, [r2]
	ldr r2, _08006F70
	adds r0, r6, r2
	ldr r0, [r0]
	movs r1, #0
	strb r1, [r0, #9]
	ldr r2, _08006F74
	adds r0, r6, r2
	strb r1, [r0]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006F70: .4byte 0x0000C204
_08006F74: .4byte 0x0000C515
	.syntax divided

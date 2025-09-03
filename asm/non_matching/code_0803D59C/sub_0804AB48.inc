	.syntax unified
sub_0804AB48:
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r5, _0804AB88
	adds r7, r5, #0
	adds r7, #0x74
	adds r2, r5, #0
	adds r2, #0x6f
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x74
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, [r6, #4]
	cmp r2, #0
	bne _0804AB78
	ldr r0, _0804AB8C
	ldrh r1, [r0]
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
_0804AB78:
	ldr r1, [r6, #4]
	cmp r1, #0x58
	bne _0804AB90
	adds r0, r5, #0
	movs r1, #0x8d
	bl sub_08050F88
	b _0804AC26
	.align 2, 0
_0804AB88: .4byte gUnknown_0201A55C
_0804AB8C: .4byte gUnknown_02001048
_0804AB90:
	cmp r1, #0xda
	bne _0804ABA0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #6
	bl sub_08050F2C
	b _0804AC26
_0804ABA0:
	movs r0, #0x89
	lsls r0, r0, #1
	cmp r1, r0
	bne _0804ABB4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	b _0804AC26
_0804ABB4:
	movs r0, #0x8b
	lsls r0, r0, #1
	cmp r1, r0
	bne _0804ABD0
	ldrb r0, [r6, #9]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6, #9]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	bl sub_08050F2C
	b _0804AC26
_0804ABD0:
	movs r0, #0xa9
	lsls r0, r0, #1
	cmp r1, r0
	bne _0804ABE8
	adds r0, r5, #0
	movs r1, #0x8d
	bl sub_08050F88
	adds r0, r5, #0
	bl sub_08050FCC
	b _0804AC26
_0804ABE8:
	movs r0, #0xea
	lsls r0, r0, #1
	cmp r1, r0
	bne _0804ABFE
	adds r0, r7, #0
	movs r1, #7
	movs r2, #1
	movs r3, #0x58
	bl sub_080511F8
	b _0804AC26
_0804ABFE:
	movs r0, #0x84
	lsls r0, r0, #2
	cmp r1, r0
	bne _0804AC14
	ldr r0, _0804AC10
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	b _0804AC26
	.align 2, 0
_0804AC10: .4byte gUnknown_02001048
_0804AC14:
	movs r0, #0xa1
	lsls r0, r0, #2
	cmp r1, r0
	bne _0804AC26
	adds r0, r7, #0
	movs r1, #0
	movs r2, #6
	bl sub_08050F2C
_0804AC26:
	ldr r1, [r6, #4]
	ldr r0, _0804AC6C
	cmp r1, r0
	bls _0804ACA0
	adds r0, r5, #0
	mov r1, sp
	bl sub_080512B8
	add r4, sp, #4
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080512B8
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0804AC70
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #4
	ble _0804AC70
	adds r0, r7, #0
	movs r1, #0
	movs r2, #6
	bl sub_08050F2C
	b _0804ACA0
	.align 2, 0
_0804AC6C: .4byte 0x000002AB
_0804AC70:
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bge _0804AC96
	mov r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #4
	ble _0804AC96
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	bl sub_08050F2C
	b _0804ACA0
_0804AC96:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
_0804ACA0:
	ldr r1, _0804ACC0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804AD8A
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _0804AD82
	ldrh r0, [r1, #4]
	cmp r0, #5
	bhi _0804AD82
	lsls r0, r0, #2
	ldr r1, _0804ACC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804ACC0: .4byte gUnknown_02001048
_0804ACC4: .4byte _0804ACC8
_0804ACC8:
	.4byte _0804ACE0
	.4byte _0804AD00
	.4byte _0804AD14
	.4byte _0804AD34
	.4byte _0804AD48
	.4byte _0804AD70
_0804ACE0:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #6
	bl sub_08050F2C
	adds r0, r5, #0
	movs r1, #7
	movs r2, #2
	movs r3, #0x20
	bl sub_080511F8
	ldr r1, _0804ACFC
	movs r0, #0x20
	b _0804AD62
	.align 2, 0
_0804ACFC: .4byte gUnknown_02001048
_0804AD00:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #6
	bl sub_08050F2C
	ldr r1, _0804AD10
	movs r0, #0x1e
	b _0804AD62
	.align 2, 0
_0804AD10: .4byte gUnknown_02001048
_0804AD14:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #2
	bl sub_08050F2C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0x50
	bl sub_080511F8
	ldr r1, _0804AD30
	movs r0, #0x50
	b _0804AD62
	.align 2, 0
_0804AD30: .4byte gUnknown_02001048
_0804AD34:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	bl sub_08050F2C
	ldr r1, _0804AD44
	movs r0, #0x1e
	b _0804AD62
	.align 2, 0
_0804AD44: .4byte gUnknown_02001048
_0804AD48:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #6
	bl sub_08050F2C
	adds r0, r5, #0
	movs r1, #7
	movs r2, #2
	movs r3, #0x30
	bl sub_080511F8
	ldr r1, _0804AD6C
	movs r0, #0x30
_0804AD62:
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	b _0804AD82
	.align 2, 0
_0804AD6C: .4byte gUnknown_02001048
_0804AD70:
	adds r0, r5, #0
	movs r1, #0x8d
	bl sub_08050F88
	ldr r0, _0804ADB8
	movs r2, #0
	movs r1, #0x82
	strh r1, [r0, #2]
	strh r2, [r0, #4]
_0804AD82:
	ldr r1, _0804ADB8
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
_0804AD8A:
	ldr r1, [r6, #4]
	ldr r0, _0804ADBC
	cmp r1, r0
	bls _0804ADA4
	ldr r0, _0804ADC0
	ldr r1, _0804ADC4
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804ADA4
	movs r0, #1
	bl sub_0804B6E8
_0804ADA4:
	adds r0, r5, #0
	bl sub_08050D80
	adds r0, r7, #0
	bl sub_08050D80
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ADB8: .4byte gUnknown_02001048
_0804ADBC: .4byte 0x00000283
_0804ADC0: .4byte gSomeBlend
_0804ADC4: .4byte 0x00004A30
	.syntax divided

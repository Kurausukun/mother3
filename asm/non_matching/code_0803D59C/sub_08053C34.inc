	.syntax unified
sub_08053C34:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	mov r2, sp
	adds r2, #2
	movs r1, #0
	strh r1, [r2]
	mov r0, sp
	strh r1, [r0]
	ldr r0, _08053CB0
	ldr r1, _08053CB4
	adds r0, r0, r1
	ldrb r0, [r0]
	mov sl, r2
	cmp r0, #0xd
	beq _08053C70
	cmp r0, #0xe
	bne _08053C76
	movs r0, #1
	strh r0, [r2]
_08053C70:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08053C76:
	ldrh r4, [r6]
	adds r0, r4, #0
	adds r1, r7, #0
	bl __umodsi3
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	str r5, [sp, #4]
	mov r2, r8
	ldrh r1, [r2, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08053D28
	movs r0, #0xd0
	bl play_sound
	ldrh r5, [r6]
	adds r0, r5, #0
	adds r1, r7, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053CB8
	subs r0, r5, r7
	strh r0, [r6]
	b _08053CC8
	.align 2, 0
_08053CB0: .4byte gSomeBlend
_08053CB4: .4byte 0x00004A30
_08053CB8:
	mov r0, sb
	subs r4, r0, r7
	adds r0, r5, #0
	adds r1, r7, #0
	bl __umodsi3
	adds r4, r4, r0
	strh r4, [r6]
_08053CC8:
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	beq _08053D08
	ldrh r1, [r6]
	adds r0, r1, #0
	subs r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _08053CF4
	adds r0, r1, #0
	cmp r0, #0x63
	bhi _08053CE8
	subs r0, #0x4b
	b _08053E80
_08053CE8:
	cmp r0, #0x66
	bhi _08053CF0
	movs r0, #0x64
	b _08053E80
_08053CF0:
	movs r0, #0x67
	b _08053E80
_08053CF4:
	adds r0, r1, #0
	subs r0, #0x4b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08053D02
	b _08053E82
_08053D02:
	adds r0, r1, #0
	subs r0, #0x3c
	b _08053E80
_08053D08:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08053D12
	b _08053E82
_08053D12:
	ldrh r1, [r6]
	adds r0, r1, #0
	subs r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08053D22
	b _08053E82
_08053D22:
	adds r0, r1, #0
	subs r0, #0xf
	b _08053E80
_08053D28:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08053D94
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r6]
	adds r1, r0, r7
	cmp r1, sb
	bge _08053D42
	strh r1, [r6]
	b _08053D4A
_08053D42:
	adds r1, r7, #0
	bl __umodsi3
	strh r0, [r6]
_08053D4A:
	mov r2, sl
	ldrh r0, [r2]
	cmp r0, #0
	beq _08053D78
	ldrh r1, [r6]
	adds r2, r1, #0
	subs r2, #0x1e
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08053D62
	b _08053E82
_08053D62:
	adds r0, r1, #0
	cmp r0, #0x27
	bhi _08053D6C
	strh r2, [r6]
	b _08053E82
_08053D6C:
	cmp r0, #0x2a
	bhi _08053D74
	movs r0, #0x64
	b _08053E80
_08053D74:
	movs r0, #0x67
	b _08053E80
_08053D78:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08053D82
	b _08053E82
_08053D82:
	ldrh r0, [r6]
	adds r1, r0, #0
	subs r1, #0x5a
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08053E82
	strh r1, [r6]
	b _08053E82
_08053D94:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08053E0C
	movs r0, #0xd1
	bl play_sound
	ldrh r4, [r6]
	adds r0, r4, #0
	adds r1, r7, #0
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053DF8
	cmp r4, #0x59
	bls _08053DF4
	ldr r1, _08053DDC
	adds r0, r4, #0
	subs r0, #0x5a
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x5a
	strh r0, [r6]
	mov r2, sl
	ldrh r0, [r2]
	cmp r0, #0
	beq _08053DE0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _08053E82
	movs r0, #0x67
	b _08053E80
	.align 2, 0
_08053DDC: .4byte gUnknown_09B8FF74
_08053DE0:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08053E82
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08053E82
	movs r0, #0x67
	b _08053E80
_08053DF4:
	subs r0, r4, #1
	b _08053E80
_08053DF8:
	cmp r4, #0x59
	bls _08053E00
	movs r0, #0x67
	b _08053E80
_08053E00:
	ldr r1, _08053E08
	adds r0, r5, r1
	adds r0, r7, r0
	b _08053E80
	.align 2, 0
_08053E08: .4byte 0x0000FFFF
_08053E0C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08053E86
	movs r0, #0xd1
	bl play_sound
	ldrh r4, [r6]
	adds r0, r4, #0
	adds r1, r7, #0
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, r7, #1
	cmp r0, r1
	bge _08053E74
	cmp r4, #0x59
	bls _08053E70
	ldr r1, _08053E58
	adds r0, r4, #0
	subs r0, #0x5a
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x5a
	strh r0, [r6]
	mov r2, sl
	ldrh r0, [r2]
	cmp r0, #0
	beq _08053E5C
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _08053E82
	movs r0, #0x66
	b _08053E80
	.align 2, 0
_08053E58: .4byte gUnknown_09B8FF92
_08053E5C:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08053E82
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08053E82
	movs r0, #0x5d
	b _08053E80
_08053E70:
	adds r0, r4, #1
	b _08053E80
_08053E74:
	cmp r4, #0x59
	bls _08053E7C
	movs r0, #0x5d
	b _08053E80
_08053E7C:
	mov r0, sp
	ldrh r0, [r0, #4]
_08053E80:
	strh r0, [r6]
_08053E82:
	movs r0, #1
	b _08053E88
_08053E86:
	movs r0, #0
_08053E88:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided

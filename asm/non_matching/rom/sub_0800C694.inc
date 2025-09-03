	.syntax unified
sub_0800C694:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	adds r7, r1, #0
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036BEC
	movs r0, #0x85
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	bl sub_08036CE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r6, #0
	adds r5, #0xbd
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r5]
	movs r3, #0x61
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r5]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1e
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	bl sub_0801A978
	str r0, [r6, #0x18]
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x96
	ldrh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _0800C724
	ldr r1, _0800C728
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	mov sl, r4
	cmp r0, #0
	beq _0800C72C
	ldr r0, [r6, #0x34]
	cmp r0, #0
	bne _0800C718
	b _0800CBCC
_0800C718:
	adds r0, r6, #0
	mov r1, sl
	bl sub_0800F580
	b _0800CBCC
	.align 2, 0
_0800C724: .4byte gGame
_0800C728: .4byte 0x00008494
_0800C72C:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sl
	bl sub_0801AA70
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800C780
	mov r1, sp
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0800C786
	adds r0, r2, #0
	bl sub_080270D8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080270C8
	adds r1, r6, #0
	adds r1, #0x8f
	strb r0, [r1]
	mov r2, r8
	ldrb r4, [r2]
	ldrb r0, [r1]
	bl sub_080270B8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08036A1C
	b _0800C786
_0800C780:
	mov r0, sp
	adds r0, #2
	strh r2, [r0]
_0800C786:
	ldr r2, _0800C7FC
	mov r1, sp
	ldrh r0, [r1, #2]
	ldr r1, _0800C800
	adds r2, r2, r1
	movs r1, #1
	ands r1, r0
	ldrb r3, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	mov r2, sp
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _0800C7AE
	movs r0, #0
	strh r0, [r7]
	strh r0, [r7, #2]
_0800C7AE:
	ldr r0, [r6, #0x18]
	mov r1, sl
	adds r2, r7, #0
	bl sub_0800F314
	add r3, sp, #4
	ldrh r1, [r3]
	ldr r2, _0800C804
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	mov r1, sl
	ldrh r0, [r1, #2]
	add r5, sp, #8
	strh r0, [r5, #2]
	ldrh r1, [r7]
	ldr r0, [sp, #0xc]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0xc]
	ldrh r2, [r7, #2]
	add r4, sp, #0xc
	strh r2, [r4, #2]
	ldrh r0, [r3]
	adds r1, r1, r0
	strh r1, [r3]
	mov r1, sl
	ldrh r0, [r1, #2]
	adds r0, r0, r2
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_08035B78
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C808
	movs r0, #0
	b _0800CBCE
	.align 2, 0
_0800C7FC: .4byte gGame
_0800C800: .4byte 0x00008382
_0800C804: .4byte 0xFFFF0000
_0800C808:
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _0800C830
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C828
	mov r1, sl
	ldrh r0, [r1]
	b _0800C832
_0800C828:
	bl sub_0801A5EC
	subs r0, #1
	b _0800C832
_0800C830:
	movs r0, #0
_0800C832:
	mov r2, sl
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800C85E
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C856
	ldrh r0, [r5, #2]
	b _0800C860
_0800C856:
	bl sub_0801A604
	subs r0, #1
	b _0800C860
_0800C85E:
	movs r0, #0
_0800C860:
	mov r1, sl
	strh r0, [r1, #2]
	mov r1, sp
	ldrh r0, [r1, #2]
	strh r0, [r1]
	mov r0, sp
	ldrh r3, [r0]
	adds r0, r6, #0
	mov r1, sl
	adds r2, r7, #0
	bl sub_0800CDD0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C888
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #8
	b _0800C8B2
_0800C888:
	ldrh r0, [r7]
	lsls r0, r0, #4
	ldrh r2, [r6]
	adds r0, r0, r2
	mov r1, sl
	strh r0, [r1]
	ldrh r0, [r7, #2]
	lsls r0, r0, #4
	ldrh r2, [r6, #2]
	adds r0, r0, r2
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_0800E860
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C8D2
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #0x10
_0800C8B2:
	orrs r1, r2
	strb r1, [r0]
	movs r0, #0
	b _0800CBCE
_0800C8BA:
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #8
	b _0800C8CC
_0800C8C4:
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0x10
_0800C8CC:
	orrs r0, r1
	strb r0, [r2]
	b _0800CA28
_0800C8D2:
	ldr r0, _0800C988
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _0800C8DE
	b _0800CA4A
_0800C8DE:
	ldr r2, [r6, #0x34]
	cmp r2, #0
	beq _0800C8E6
	b _0800CA4A
_0800C8E6:
	adds r0, r6, #0
	adds r0, #0x96
	ldrh r0, [r0]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x10
	bhi _0800C8F6
	b _0800CA4A
_0800C8F6:
	lsrs r1, r1, #0x12
	str r1, [sp, #0x14]
	adds r0, r6, #0
	adds r0, #0x98
	strh r2, [r0]
	movs r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x20]
	add r2, sp, #4
	mov sb, r2
	mov r8, r0
	mov r0, sl
	str r0, [sp, #0x18]
_0800C910:
	mov r1, sp
	ldrh r0, [r1, #8]
	mov r2, sl
	strh r0, [r2]
	add r0, sp, #8
	ldrh r0, [r0, #2]
	mov r1, sb
	strh r0, [r1, #2]
	mov r2, sp
	ldrh r0, [r2, #0xc]
	strh r0, [r7]
	add r0, sp, #0xc
	ldrh r0, [r0, #2]
	strh r0, [r7, #2]
	mov r1, r8
	ldrh r0, [r1]
	ldr r2, [sp, #0x14]
	adds r0, r2, r0
	strh r0, [r1]
	ldrh r1, [r1]
	movs r2, #0
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2]
	mov r0, r8
	ldrh r1, [r0]
	movs r2, #2
	ldrsh r0, [r7, r2]
	muls r1, r0, r1
	mov r2, sb
	ldrh r0, [r2, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
	adds r0, r6, #0
	mov r1, sb
	bl sub_08035B78
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CA28
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0800C994
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C98C
	mov r1, sl
	ldrh r0, [r1]
	b _0800C996
	.align 2, 0
_0800C988: .4byte gGame
_0800C98C:
	bl sub_0801A5EC
	subs r0, #1
	b _0800C996
_0800C994:
	movs r0, #0
_0800C996:
	mov r2, sl
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800C9C2
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C9BA
	ldrh r0, [r5, #2]
	b _0800C9C4
_0800C9BA:
	bl sub_0801A604
	subs r0, #1
	b _0800C9C4
_0800C9C2:
	movs r0, #0
_0800C9C4:
	ldr r1, [sp, #0x18]
	strh r0, [r1, #2]
	mov r1, sp
	ldrh r0, [r1, #2]
	strh r0, [r1]
	mov r0, sp
	ldrh r3, [r0]
	adds r0, r6, #0
	ldr r1, [sp, #0x18]
	adds r2, r7, #0
	bl sub_0800CDD0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C9E4
	b _0800C8BA
_0800C9E4:
	mov r2, r8
	ldrh r1, [r2]
	movs r2, #0
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	ldrh r1, [r6]
	adds r0, r0, r1
	mov r2, sl
	strh r0, [r2]
	mov r0, r8
	ldrh r1, [r0]
	movs r2, #2
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	mov r2, sl
	strh r0, [r2, #2]
	adds r0, r6, #0
	mov r1, sl
	bl sub_0800E860
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800CA18
	b _0800C8C4
_0800CA18:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #3
	bhi _0800CA28
	b _0800C910
_0800CA28:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0800CA30
	b _0800CBA0
_0800CA30:
	b _0800CBA8
_0800CA32:
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #8
	b _0800CA44
_0800CA3C:
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0x10
_0800CA44:
	orrs r0, r1
	strb r0, [r2]
	b _0800CB9A
_0800CA4A:
	ldrb r0, [r3]
	cmp r0, #9
	beq _0800CA52
	b _0800CBCC
_0800CA52:
	ldr r0, [r6, #0x34]
	cmp r0, #0
	bne _0800CA5A
	b _0800CBCC
_0800CA5A:
	ldrh r0, [r0, #2]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x10
	bgt _0800CA66
	b _0800CBCC
_0800CA66:
	asrs r0, r1, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	adds r1, r6, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	str r0, [sp, #0x10]
	str r1, [sp, #0x20]
	add r1, sp, #4
	mov sb, r1
	ldr r2, [sp, #0x20]
	mov r8, r2
	mov r0, sl
	str r0, [sp, #0x1c]
_0800CA86:
	mov r1, sp
	ldrh r0, [r1, #8]
	mov r2, sl
	strh r0, [r2]
	add r0, sp, #8
	ldrh r0, [r0, #2]
	mov r1, sb
	strh r0, [r1, #2]
	mov r2, sp
	ldrh r0, [r2, #0xc]
	strh r0, [r7]
	add r0, sp, #0xc
	ldrh r0, [r0, #2]
	strh r0, [r7, #2]
	mov r1, r8
	ldrh r0, [r1]
	ldr r2, [sp, #0x14]
	adds r0, r2, r0
	strh r0, [r1]
	ldrh r1, [r1]
	movs r2, #0
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2]
	mov r0, r8
	ldrh r1, [r0]
	movs r2, #2
	ldrsh r0, [r7, r2]
	muls r1, r0, r1
	mov r2, sb
	ldrh r0, [r2, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
	adds r0, r6, #0
	mov r1, sb
	bl sub_08035B78
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CB9A
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0800CB06
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800CAFE
	mov r1, sl
	ldrh r0, [r1]
	b _0800CB08
_0800CAFE:
	bl sub_0801A5EC
	subs r0, #1
	b _0800CB08
_0800CB06:
	movs r0, #0
_0800CB08:
	mov r2, sl
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800CB34
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800CB2C
	ldrh r0, [r5, #2]
	b _0800CB36
_0800CB2C:
	bl sub_0801A604
	subs r0, #1
	b _0800CB36
_0800CB34:
	movs r0, #0
_0800CB36:
	ldr r1, [sp, #0x1c]
	strh r0, [r1, #2]
	mov r1, sp
	ldrh r0, [r1, #2]
	strh r0, [r1]
	mov r0, sp
	ldrh r3, [r0]
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	adds r2, r7, #0
	bl sub_0800CDD0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800CB56
	b _0800CA32
_0800CB56:
	mov r2, r8
	ldrh r1, [r2]
	movs r2, #0
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	ldrh r1, [r6]
	adds r0, r0, r1
	mov r2, sl
	strh r0, [r2]
	mov r0, r8
	ldrh r1, [r0]
	movs r2, #2
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	mov r2, sl
	strh r0, [r2, #2]
	adds r0, r6, #0
	mov r1, sl
	bl sub_0800E860
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800CB8A
	b _0800CA3C
_0800CB8A:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #3
	bhi _0800CB9A
	b _0800CA86
_0800CB9A:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0800CBA8
_0800CBA0:
	ldr r1, [sp, #0x20]
	strh r0, [r1]
	movs r0, #0
	b _0800CBCE
_0800CBA8:
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0
	beq _0800CBC0
	ldr r2, [sp, #0x20]
	ldrh r0, [r2]
	ldr r1, [sp, #0x14]
	subs r0, r0, r1
	strh r0, [r2]
_0800CBC0:
	mov r2, sp
	ldrh r0, [r2, #0xc]
	strh r0, [r7]
	add r0, sp, #0xc
	ldrh r0, [r0, #2]
	strh r0, [r7, #2]
_0800CBCC:
	movs r0, #1
_0800CBCE:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

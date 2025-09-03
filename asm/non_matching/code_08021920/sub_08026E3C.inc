	.syntax unified
sub_08026E3C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #8]
	ldr r3, _08026ECC
	ldrh r2, [r3]
	ldr r1, _08026ED0
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	ldrh r0, [r3, #2]
	add r1, sp, #4
	strh r0, [r1, #2]
	movs r0, #1
	str r0, [sp, #0xc]
	ldr r4, [sp, #8]
	ldrh r2, [r4, #2]
	ands r0, r2
	cmp r0, #0
	beq _08026E70
	movs r0, #2
	str r0, [sp, #0xc]
_08026E70:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov sl, r0
	ldr r1, [sp, #0xc]
	cmp sl, r1
	blo _08026E80
	b _0802700E
_08026E80:
	adds r5, r2, #0
	movs r2, #0x12
	rsbs r2, r2, #0
	adds r2, r2, r3
	mov sb, r2
	movs r4, #0xe
	rsbs r4, r4, #0
	adds r4, r4, r3
	mov ip, r4
	subs r0, #0x14
	adds r0, r0, r3
	mov r8, r0
	adds r6, r3, #0
	subs r6, #0x10
	mov r3, sp
	movs r7, #1
_08026EA0:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _08026EE6
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r4, _08026ED4
	cmp r0, #0
	bne _08026EDC
	ldr r0, _08026ED8
	adds r1, r0, r4
	ldrh r0, [r1]
	mov r2, sp
	strh r0, [r2, #0x10]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08026F10
	mov r2, sp
	ldrh r0, [r2, #0x10]
	b _08026EE0
	.align 2, 0
_08026ECC: .4byte gUnknown_020196A8
_08026ED0: .4byte 0xFFFF0000
_08026ED4: .4byte gSomeBlend
_08026ED8: .4byte 0x00003672
_08026EDC:
	mov r1, ip
	ldrh r0, [r1]
_08026EE0:
	subs r0, #1
	strh r0, [r1]
	b _08026F10
_08026EE6:
	movs r0, #0x80
	ands r0, r5
	ldr r4, _08026F40
	cmp r0, #0
	beq _08026F10
	adds r2, r4, #0
	ldr r1, _08026F44
	adds r0, r2, r1
	mov r2, sb
	movs r1, #0
	ldrsh r2, [r2, r1]
	str r2, [sp, #0x14]
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bge _08026F10
	mov r2, ip
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_08026F10:
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _08026F52
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08026F4C
	ldr r0, _08026F48
	adds r1, r4, r0
	ldrh r0, [r1]
	mov r2, sp
	strh r0, [r2, #0x10]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08026F78
	mov r2, sp
	ldrh r0, [r2, #0x10]
	subs r0, #1
	strh r0, [r1]
	b _08026F78
	.align 2, 0
_08026F40: .4byte gSomeBlend
_08026F44: .4byte 0x00003676
_08026F48: .4byte 0x00003670
_08026F4C:
	ldrh r0, [r6]
	subs r0, #1
	b _08026F76
_08026F52:
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _08026F78
	ldr r1, _08026FA0
	ldr r2, _08026FA4
	adds r0, r1, r2
	mov r1, r8
	movs r2, #0
	ldrsh r1, [r1, r2]
	str r1, [sp, #0x14]
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #0x14]
	cmp r2, r0
	bge _08026F78
	ldrh r0, [r6]
	adds r0, #1
_08026F76:
	strh r0, [r6]
_08026F78:
	mov r1, ip
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08026FAC
	strh r7, [r3]
	ldr r0, _08026FA8
	adds r1, r4, r0
	ldrh r0, [r1]
	mov r2, sp
	strh r0, [r2, #0x10]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08026FBA
	mov r2, sp
	ldrh r0, [r2, #0x10]
	subs r0, #1
	b _08026FB8
	.align 2, 0
_08026FA0: .4byte gSomeBlend
_08026FA4: .4byte 0x00003674
_08026FA8: .4byte 0x0000366E
_08026FAC:
	cmp r0, #7
	ble _08026FBA
	strh r7, [r3]
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #1
_08026FB8:
	strh r0, [r1]
_08026FBA:
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _08026FDC
	strh r7, [r3]
	ldr r0, _08026FD8
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _08026FEA
	subs r0, r2, #1
	b _08026FE8
	.align 2, 0
_08026FD8: .4byte 0x0000366C
_08026FDC:
	cmp r0, #7
	ble _08026FEA
	strh r7, [r3]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #1
_08026FE8:
	strh r0, [r1]
_08026FEA:
	ldrh r2, [r6]
	movs r1, #7
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r6]
	mov r2, ip
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r4, [sp, #0xc]
	cmp sl, r4
	bhs _0802700E
	b _08026EA0
_0802700E:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08027024
	ldr r0, _08027060
	ldr r1, _08027064
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0
	bl sub_08011F18
_08027024:
	ldr r1, _08027068
	mov r2, sp
	ldrh r0, [r2, #4]
	strh r0, [r1]
	add r0, sp, #4
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	ldr r4, [sp, #8]
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08027050
	ldrh r1, [r4]
	movs r0, #0x81
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08027050
	movs r0, #0
	bl sub_080052E4
_08027050:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027060: .4byte gSomeBlend
_08027064: .4byte 0x00003684
_08027068: .4byte gUnknown_020196A8
	.syntax divided

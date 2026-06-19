	.syntax unified
sub_080B0F38:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	bl onSuccess__6ActionP4Unit
	ldr r0, _080B1134
	bl playSound
	mov r1, sp
	movs r5, #0x78
	movs r6, #0x50
	mov r0, sp
	strh r5, [r0]
	strh r6, [r1, #2]
	add r2, sp, #4
	movs r4, #0x19
	strh r4, [r2]
	strh r4, [r2, #2]
	movs r0, #0x23
	movs r3, #0
	bl sub_08072F9C
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _080B0F72
	b _080B1122
_080B0F72:
	add r1, sp, #8
	strh r5, [r1]
	strh r6, [r1, #2]
	add r2, sp, #0xc
	strh r4, [r2]
	strh r4, [r2, #2]
	movs r0, #0x23
	movs r3, #0
	bl sub_08072F9C
	str r0, [sp, #0x20]
	cmp r0, #0
	bne _080B0F8E
	b _080B1122
_080B0F8E:
	ldr r4, _080B1138
	ldr r0, [r4]
	cmp r0, #0
	bne _080B0FDC
	ldr r0, _080B113C
	strh r5, [r0]
	strh r6, [r0, #2]
	adds r0, #4
	movs r1, #0x73
	movs r2, #0x32
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x64
	movs r2, #0x14
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0xa
	strh r6, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	movs r3, #0x3c
	movs r1, #0x1e
	strh r3, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	movs r1, #0x38
	strh r1, [r0]
	strh r3, [r0, #2]
	adds r0, #4
	movs r2, #0x44
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	strh r1, [r0]
	strh r3, [r0, #2]
	movs r0, #1
	str r0, [r4]
_080B0FDC:
	movs r0, #0
	str r0, [sp, #0x24]
	movs r7, #0
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x38]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	adds r3, #0x20
	str r3, [sp, #0x40]
	ldr r6, [sp, #0x20]
	adds r6, #0x20
	str r6, [sp, #0x34]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x2c]
_080B1000:
	movs r0, #0
	add r1, sp, #0x10
	mov sl, r1
	strh r0, [r1]
	mov r2, sp
	strh r0, [r2, #0x12]
	adds r2, #0x14
	str r2, [sp, #0x30]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2]
	adds r0, r3, #0
	mov r6, sp
	strh r0, [r6, #0x16]
	ldr r1, _080B113C
	ldr r2, [sp, #0x24]
	lsls r2, r2, #2
	mov sb, r2
	add sb, r1
	mov r3, sb
	movs r6, #0
	ldrsh r0, [r3, r6]
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x28]
	lsls r2, r2, #2
	mov r8, r2
	add r8, r1
	mov r3, r8
	movs r6, #0
	ldrsh r1, [r3, r6]
	ldr r5, _080B1140
	ldr r2, [sp, #0x24]
	lsls r6, r2, #1
	adds r6, r6, r5
	ldrh r4, [r6]
	subs r2, r7, r4
	ldr r3, [sp, #0x28]
	lsls r3, r3, #1
	mov ip, r3
	add r5, ip
	ldrh r3, [r5]
	subs r3, r3, r4
	bl sub_08069558
	mov r1, sl
	strh r0, [r1]
	mov r2, sb
	movs r3, #2
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #2
	ldrsh r1, [r2, r3]
	ldrh r4, [r6]
	subs r2, r7, r4
	ldrh r3, [r5]
	subs r3, r3, r4
	bl sub_08069558
	mov r6, sp
	strh r0, [r6, #0x12]
	movs r2, #0x13
	cmp r2, r7
	ble _080B1082
	adds r2, r7, #0
_080B1082:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #0x13
	bl sub_08069558
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	ldr r2, [sp, #0x30]
	ldrh r0, [r2]
	mov r3, sp
	strh r0, [r3, #0x16]
	ldr r6, [sp, #0x1c]
	ldr r1, [r6, #0x20]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x40]
	adds r0, r3, r0
	ldr r2, [r1, #0x1c]
	add r1, sp, #0x10
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r6, #0xf4
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	add r1, sp, #0x14
	bl _call_via_r2
	ldr r6, [sp, #0x20]
	ldr r4, [r6, #0x20]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #0x34]
	adds r0, r2, r0
	ldr r3, [sp, #0x38]
	movs r6, #0
	ldrsh r1, [r3, r6]
	movs r2, #0xf0
	subs r2, r2, r1
	mov r1, sp
	movs r6, #0x12
	ldrsh r3, [r1, r6]
	add r1, sp, #0x18
	strh r2, [r1]
	ldr r1, [sp, #0x2c]
	strh r3, [r1, #2]
	ldr r2, [r4, #0x1c]
	ldr r1, [sp, #0x2c]
	bl _call_via_r2
	ldr r2, [sp, #0x20]
	ldr r1, [r2, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r6, #0
	ldrsh r0, [r1, r6]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	add r1, sp, #0x14
	bl _call_via_r2
	movs r0, #1
	bl setsleep
	ldrh r5, [r5]
	cmp r7, r5
	blt _080B111A
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x24]
_080B111A:
	adds r7, #1
	cmp r7, #0x1c
	bgt _080B1122
	b _080B1000
_080B1122:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1134: .4byte 0x00000562
_080B1138: .4byte gUnknown_02002970
_080B113C: .4byte gUnknown_02002950
_080B1140: .4byte gUnknown_09F447A0
	.syntax divided

    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r4, r0, #0
	adds r6, r1, #0
	mov sb, r3
	add r0, sp, #0x60
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	mov sl, r5
	ldrb r7, [r0]
	str r7, [sp, #0x3c]
	cmp r5, #0
	bne _08079A70
	b _08079E46
_08079A70:
	ldr r1, [r6, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	cmp r0, #0
	ble _08079A8C
	b _08079B8E
_08079A8C:
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #6
	beq _08079AA6
	b _08079E46
_08079AA6:
	cmp r7, #1
	beq _08079AAC
	b _08079E46
_08079AAC:
	movs r5, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08079AEE
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072BBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08079AF0
_08079AEE:
	movs r5, #1
_08079AF0:
	adds r7, r5, #0
	movs r5, #0
	adds r0, r6, #0
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08079B10
	adds r0, r6, #0
	bl sub_08072BBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08079B12
_08079B10:
	movs r5, #1
_08079B12:
	cmp r7, #1
	bne _08079B52
	cmp r5, #1
	bne _08079B36
	ldr r2, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xe3
	bl _call_via_r3
	add r1, sp, #0xc
	b _08079DFA
_08079B36:
	ldr r2, [r4, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xe3
	bl _call_via_r3
	add r1, sp, #0x10
	b _08079DFA
_08079B52:
	cmp r5, #1
	bne _08079B72
	ldr r2, [r4, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xe6
	bl _call_via_r3
	add r1, sp, #0x14
	b _08079DFA
_08079B72:
	ldr r2, [r4, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xe3
	bl _call_via_r3
	add r1, sp, #0x18
	b _08079E2E
_08079B8E:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	mov r8, r0
	ldr r1, [r6, #0x1c]
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	adds r1, r0, #0
	movs r0, #0
	cmp r0, r1
	bge _08079BB8
	adds r0, r1, #0
_08079BB8:
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0x64
	bl sub_0807066C
	cmp r8, r0
	blt _08079BCA
	b _08079D14
_08079BCA:
	adds r0, r6, #0
	mov r1, sl
	adds r2, r7, #0
	bl sub_08073E3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bne _08079BE0
	b _08079D10
_08079BE0:
	ldr r1, [r4, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #6
	beq _08079BFA
	b _08079D10
_08079BFA:
	cmp r7, #1
	beq _08079C00
	b _08079D10
_08079C00:
	movs r5, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08079C42
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072BBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08079C44
_08079C42:
	movs r5, #1
_08079C44:
	adds r7, r5, #0
	movs r5, #0
	adds r0, r6, #0
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08079C64
	adds r0, r6, #0
	bl sub_08072BBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08079C66
_08079C64:
	movs r5, #1
_08079C66:
	cmp r7, #1
	bne _08079CA6
	cmp r5, #1
	bne _08079C8A
	ldr r2, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xe3
	bl _call_via_r3
	add r1, sp, #0x1c
	b _08079CC4
_08079C8A:
	ldr r2, [r4, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xe3
	bl _call_via_r3
	add r1, sp, #0x20
	b _08079CC4
_08079CA6:
	cmp r5, #1
	bne _08079CDE
	ldr r2, [r4, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xe3
	bl _call_via_r3
	add r1, sp, #0x24
_08079CC4:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	b _08079D10
_08079CDE:
	ldr r2, [r4, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xe3
	bl _call_via_r3
	add r1, sp, #0x28
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_08079D10:
	mov r0, r8
	b _08079E48
_08079D14:
	ldr r1, [r4, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #6
	beq _08079D2E
	b _08079E46
_08079D2E:
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	beq _08079D36
	b _08079E46
_08079D36:
	movs r5, #0
	ldr r1, [r4, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08079D78
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072BBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08079D7A
_08079D78:
	movs r5, #1
_08079D7A:
	adds r7, r5, #0
	movs r5, #0
	adds r0, r6, #0
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08079D9A
	adds r0, r6, #0
	bl sub_08072BBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08079D9C
_08079D9A:
	movs r5, #1
_08079D9C:
	cmp r7, #1
	bne _08079DDC
	cmp r5, #1
	bne _08079DC0
	ldr r2, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xe7
	bl _call_via_r3
	add r1, sp, #0x2c
	b _08079DFA
_08079DC0:
	ldr r2, [r4, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xe7
	bl _call_via_r3
	add r1, sp, #0x30
	b _08079DFA
_08079DDC:
	cmp r5, #1
	bne _08079E14
	ldr r2, [r4, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xea
	bl _call_via_r3
	add r1, sp, #0x34
_08079DFA:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	b _08079E46
_08079E14:
	ldr r2, [r4, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xe7
	bl _call_via_r3
	add r1, sp, #0x38
_08079E2E:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_08079E46:
	movs r0, #0
_08079E48:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
    .syntax divided

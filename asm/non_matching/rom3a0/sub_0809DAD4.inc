	.syntax unified
sub_0809DAD4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sl, r0
	adds r0, r1, #0
	bl dynaCastMonster
	adds r7, r0, #0
	cmp r7, #0
	bne _0809DAF0
	b _0809DC18
_0809DAF0:
	mov r0, sp
	bl __3Msg
	mov r0, sl
	ldr r5, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r5, r5, r1
	movs r2, #0
	ldrsh r6, [r5, r2]
	add r6, sl
	ldr r1, [r7, #0x1c]
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0xf9
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0xc
	adds r0, r4, #0
	ldr r3, [r5, #4]
	adds r1, r6, #0
	bl _call_via_r3
	mov r0, sp
	adds r1, r4, #0
	bl sub_0806E374__3MsgRC3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	ldr r1, _0809DB58
	mov r0, sp
	bl sub_0806E34C
	movs r6, #0
	movs r1, #1
	str r1, [sp, #0x1c]
	mov r8, r4
	add r2, sp, #0x18
	mov sb, r2
	b _0809DBE4
	.align 2, 0
_0809DB58: .4byte 0x0000FF01
_0809DB5C:
	ldr r1, [r7, #0x1c]
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	movs r1, #0xf3
	lsls r1, r1, #0x11
	cmp r0, r1
	beq _0809DBE2
	mov r0, sl
	ldr r4, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sl
	ldr r1, [r7, #0x1c]
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl _call_via_r3
	mov r0, sp
	bl len__3Msg
	cmp r0, #0
	ble _0809DBD2
	movs r0, #1
	ldr r1, [sp, #0x1c]
	ands r0, r1
	adds r1, #1
	str r1, [sp, #0x1c]
	cmp r0, #0
	bne _0809DBD2
	ldr r1, _0809DC28
	mov r0, sp
	bl sub_0806E34C
_0809DBD2:
	mov r0, sp
	mov r1, r8
	bl sub_0806E374__3MsgRC3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
_0809DBE2:
	adds r6, #1
_0809DBE4:
	ldr r1, [r7, #0x1c]
	movs r2, #0xda
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0809DB5C
	movs r0, #0
	add r1, sp, #0x18
	strb r0, [r1]
	mov r1, sb
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_0809DC18:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809DC28: .4byte 0x0000FF02
	.syntax divided

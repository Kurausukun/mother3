	.syntax unified
sub_0807F12C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r6, #0
	b _0807F1CC
_0807F13E:
	ldr r1, [r7, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r6, #0
	bl _call_via_r2
	mov r1, sp
	strh r0, [r1]
	adds r4, r7, #0
	adds r4, #0x28
	mov r8, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x28]
	adds r6, #1
	mov sb, r6
	cmp r0, r5
	bge _0807F1B8
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0807F186
	adds r1, r0, #0
_0807F186:
	adds r5, r1, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0807F1AA
	adds r1, r0, #0
_0807F19C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807F19C
_0807F1AA:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807F1B4
	bl __builtin_vec_delete
_0807F1B4:
	str r5, [r4]
	str r6, [r4, #8]
_0807F1B8:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r6, r8
	ldrh r1, [r6]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r6, sb
_0807F1CC:
	ldr r1, [r7, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0xf2
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0807F13E
	movs r6, #0
	movs r5, #0
	b _0807F21C
_0807F1FA:
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xca
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _0807F21A
	adds r6, #1
_0807F21A:
	adds r5, #1
_0807F21C:
	bl sub_08072A88__Fv
	cmp r5, r0
	bge _0807F240
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	adds r4, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _0807F1FA
_0807F240:
	cmp r6, #0
	bgt _0807F2AA
	movs r0, #0xd
	mov r1, sp
	adds r1, #2
	strh r0, [r1]
	adds r4, r7, #0
	adds r4, #0x28
	mov r8, r1
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x28]
	cmp r0, r5
	bge _0807F298
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0807F266
	adds r0, r1, #0
_0807F266:
	adds r5, r0, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0807F28A
	adds r1, r0, #0
_0807F27C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807F27C
_0807F28A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807F294
	bl __builtin_vec_delete
_0807F294:
	str r5, [r4]
	str r6, [r4, #8]
_0807F298:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0807F2AA:
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807F394
	ldr r1, [r7, #0x1c]
	adds r1, #0x88
	movs r6, #0
	ldrsh r0, [r1, r6]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r0, #0
	bl sub_08072AA4__Fi
	cmp r4, r0
	bne _0807F394
	movs r0, #0xd
	add r1, sp, #4
	strh r0, [r1]
	adds r5, r7, #0
	adds r5, #0x28
	mov r8, r1
	movs r1, #0
	ldr r3, [r5, #4]
	mov sl, r5
	movs r0, #6
	add r0, sp
	mov sb, r0
	cmp r1, r3
	bge _0807F32E
	ldr r0, [r5, #8]
	adds r4, r0, #2
	adds r2, r0, #0
_0807F2F4:
	ldrh r6, [r2]
	mov ip, r6
	mov r0, r8
	ldrh r0, [r0]
	cmp ip, r0
	bne _0807F322
	adds r0, r1, #1
	subs r0, r3, r0
	adds r3, r4, #0
	ldr r4, [r5, #4]
	cmp r0, #0
	ble _0807F31C
	adds r1, r0, #0
_0807F30E:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807F30E
_0807F31C:
	subs r0, r4, #1
	str r0, [r5, #4]
	b _0807F32E
_0807F322:
	adds r4, #2
	adds r2, #2
	adds r1, #1
	ldr r3, [r5, #4]
	cmp r1, r3
	blt _0807F2F4
_0807F32E:
	movs r0, #0xe
	mov r1, sb
	strh r0, [r1]
	mov r4, sl
	movs r2, #6
	add r2, sp
	mov r8, r2
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x28]
	cmp r0, r5
	bge _0807F382
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0807F350
	adds r0, r1, #0
_0807F350:
	adds r5, r0, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0807F374
	adds r1, r0, #0
_0807F366:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807F366
_0807F374:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807F37E
	bl __builtin_vec_delete
_0807F37E:
	str r5, [r4]
	str r6, [r4, #8]
_0807F382:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0807F394:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

	.syntax unified
sub_0809B610:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	movs r0, #0
	b _0809B880
_0809B622:
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xe4
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	str r0, [sp]
	ldr r0, [sp, #0x10]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r4, r0, r1
	mov sl, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	add r7, sp, #4
	add r3, sp, #8
	mov r8, r3
	mov r1, sp
	adds r1, #0xc
	str r1, [sp, #0x18]
	mov r3, sb
	adds r3, #1
	str r3, [sp, #0x14]
	cmp r0, r5
	bge _0809B69C
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0809B66E
	adds r1, r0, #0
_0809B66E:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0809B68E
	adds r1, r0, #0
_0809B684:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0809B684
_0809B68E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0809B698
	bl __builtin_vec_delete
_0809B698:
	str r5, [r4]
	str r6, [r4, #8]
_0809B69C:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, sl
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xe6
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, _0809B89C
	adds r4, r0, r1
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0809B712
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0809B6E4
	adds r1, r0, #0
_0809B6E4:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0809B704
	adds r1, r0, #0
_0809B6FA:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0809B6FA
_0809B704:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0809B70E
	bl __builtin_vec_delete
_0809B70E:
	str r5, [r4]
	str r6, [r4, #8]
_0809B712:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r3, #0xea
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r1, _0809B8A0
	adds r4, r0, r1
	mov r7, r8
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0809B788
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0809B75A
	adds r1, r0, #0
_0809B75A:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0809B77A
	adds r1, r0, #0
_0809B770:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0809B770
_0809B77A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0809B784
	bl __builtin_vec_delete
_0809B784:
	str r5, [r4]
	str r6, [r4, #8]
_0809B788:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r3, #0xec
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, _0809B8A4
	adds r4, r0, r1
	ldr r7, [sp, #0x18]
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0809B7FE
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0809B7D0
	adds r1, r0, #0
_0809B7D0:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0809B7F0
	adds r1, r0, #0
_0809B7E6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0809B7E6
_0809B7F0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0809B7FA
	bl __builtin_vec_delete
_0809B7FA:
	str r5, [r4]
	str r6, [r4, #8]
_0809B7FE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xda
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r0, [sp, #0x14]
_0809B880:
	mov sb, r0
	bl sub_08072A88__Fv
	cmp sb, r0
	bge _0809B88C
	b _0809B622
_0809B88C:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809B89C: .4byte 0x00000F6C
_0809B8A0: .4byte 0x00000F78
_0809B8A4: .4byte 0x00000F84
	.syntax divided

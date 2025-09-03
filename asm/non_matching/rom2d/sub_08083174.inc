	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x24]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x28]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x2c]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x30]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x34]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x38]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x3c]
	movs r6, #0
	b _080832DE
_08083250:
	mov r3, sb
	ldr r4, [r3, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	str r0, [sp, #0x18]
	mov r5, sp
	add r3, sp, #0x18
	mov r8, r3
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	adds r6, #1
	mov sl, r6
	cmp r0, r4
	bge _080832CA
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _0808329C
	adds r1, r0, #0
_0808329C:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080832BC
	adds r1, r0, #0
_080832B2:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080832B2
_080832BC:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080832C6
	bl __builtin_vec_delete
_080832C6:
	str r4, [r5]
	str r6, [r5, #8]
_080832CA:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
	mov r6, sl
_080832DE:
	ldr r1, [r7, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _08083250
	movs r6, #0
	b _08083382
_080832F6:
	mov r3, sb
	ldr r4, [r3, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	str r0, [sp, #0x1c]
	add r3, sp, #0x1c
	mov r8, r3
	ldr r0, [sp, #0x10]
	adds r4, r0, #1
	ldr r0, [sp, #0xc]
	adds r6, #1
	cmp r0, r4
	bge _08083370
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _08083342
	adds r1, r0, #0
_08083342:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [sp, #0x14]
	adds r2, r5, #0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _08083362
	adds r1, r0, #0
_08083358:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08083358
_08083362:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0808336C
	bl __builtin_vec_delete
_0808336C:
	str r4, [sp, #0xc]
	str r5, [sp, #0x14]
_08083370:
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [sp, #0x10]
_08083382:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _080832F6
	mov r3, sb
	ldr r4, [r3, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [sp, #0x24]
	adds r1, r3, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r0, sb
	ldr r4, [r0, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0x98
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp, #0x28]
	adds r1, r0, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r1, sb
	ldr r4, [r1, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r4, r4, r2
	movs r3, #0
	ldrsh r5, [r4, r3]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [sp, #0x2c]
	adds r1, r3, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r0, sb
	ldr r4, [r0, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp, #0x30]
	adds r1, r0, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r1, sb
	ldr r4, [r1, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r4, r4, r2
	movs r3, #0
	ldrsh r5, [r4, r3]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [sp, #0x34]
	adds r1, r3, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r0, sb
	ldr r4, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp, #0x38]
	adds r1, r0, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r1, sb
	ldr r4, [r1, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r4, r4, r2
	movs r3, #0
	ldrsh r5, [r4, r3]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [sp, #0x3c]
	adds r1, r3, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r0, #0
	mov sl, r0
	b _0808352E
_080834DE:
	mov r1, sb
	ldr r5, [r1, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r5, r5, r2
	movs r3, #0
	ldrsh r6, [r5, r3]
	add r6, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	mov r8, r0
	mov r3, sl
	lsls r0, r3, #2
	ldr r4, [sp, #8]
	adds r4, r4, r0
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	ldr r2, [r4]
	adds r2, r2, r0
	ldr r3, [r5, #4]
	adds r0, r6, #0
	mov r1, r8
	bl _call_via_r3
	movs r3, #1
	add sl, r3
_0808352E:
	ldr r1, [r7, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sl, r0
	blt _080834DE
	movs r3, #0
	mov sl, r3
	b _0808359E
_08083548:
	mov r0, sb
	ldr r6, [r0, #0x1c]
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r6, r6, r1
	movs r3, #0
	ldrsh r2, [r6, r3]
	mov r8, r2
	add r8, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r3, sl
	lsls r0, r3, #2
	ldr r4, [sp, #0x14]
	adds r4, r4, r0
	ldr r1, [r7, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	ldr r2, [r4]
	adds r2, r2, r0
	ldr r3, [r6, #4]
	mov r0, r8
	adds r1, r5, #0
	bl _call_via_r3
	movs r3, #1
	add sl, r3
_0808359E:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sl, r0
	blt _08083548
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [sp, #0x24]
	subs r0, r0, r3
	strh r0, [r7, #0x2c]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #0x28]
	subs r0, r0, r1
	strh r0, [r7, #0x2e]
	mov r2, sb
	ldr r1, [r2, #0x1c]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [sp, #0x2c]
	subs r0, r0, r3
	strh r0, [r7, #0x30]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #0x30]
	subs r0, r0, r1
	strh r0, [r7, #0x32]
	mov r2, sb
	ldr r1, [r2, #0x1c]
	movs r3, #0xec
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [sp, #0x34]
	subs r0, r0, r3
	strh r0, [r7, #0x34]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #0x38]
	subs r0, r0, r1
	strh r0, [r7, #0x36]
	mov r2, sb
	ldr r1, [r2, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [sp, #0x3c]
	subs r0, r0, r3
	strh r0, [r7, #0x38]
	movs r6, #0
	b _08083718
_0808367A:
	mov r0, sb
	ldr r4, [r0, #0x1c]
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r2, r6, #2
	ldr r1, [sp, #8]
	adds r1, r1, r2
	ldr r1, [r1]
	subs r0, r0, r1
	add r1, sp, #0x20
	strh r0, [r1]
	adds r4, r7, #0
	adds r4, #0x3c
	mov sl, r1
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x3c]
	adds r6, #1
	mov r8, r6
	cmp r0, r5
	bge _08083704
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _080836D2
	adds r1, r0, #0
_080836D2:
	adds r5, r1, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080836F6
	adds r1, r0, #0
_080836E8:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080836E8
_080836F6:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08083700
	bl __builtin_vec_delete
_08083700:
	str r5, [r4]
	str r6, [r4, #8]
_08083704:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sl
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r6, r8
_08083718:
	ldr r1, [r7, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0808367A
	movs r6, #0
	b _080837D4
_08083730:
	mov r3, sb
	ldr r4, [r3, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r2, r6, #2
	ldr r1, [sp, #0x14]
	adds r1, r1, r2
	ldr r1, [r1]
	subs r0, r0, r1
	mov r1, sp
	adds r1, #0x22
	strh r0, [r1]
	adds r4, r7, #0
	adds r4, #0x48
	mov sl, r1
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x48]
	adds r6, #1
	mov r8, r6
	cmp r0, r5
	bge _080837C0
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0808378E
	adds r1, r0, #0
_0808378E:
	adds r5, r1, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080837B2
	adds r1, r0, #0
_080837A4:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080837A4
_080837B2:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080837BC
	bl __builtin_vec_delete
_080837BC:
	str r5, [r4]
	str r6, [r4, #8]
_080837C0:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sl
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r6, r8
_080837D4:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _08083730
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _080837F2
	bl __builtin_vec_delete
_080837F2:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080837FC
	bl __builtin_vec_delete
_080837FC:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

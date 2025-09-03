    .syntax unified
sub_0808110C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	str r1, [sp, #0x30]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	str r0, [r1, #4]
	str r0, [r1, #8]
	movs r6, #0
	b _080812A4
_08081138:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	mov sb, r0
	ldr r1, [r0, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	add r1, sp, #0x24
	strh r0, [r1]
	mov r5, sp
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	add r1, sp, #0x28
	mov r8, r1
	add r2, sp, #0x2c
	mov sl, r2
	adds r6, #1
	str r6, [sp, #0x34]
	cmp r0, r4
	bge _080811B8
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _08081186
	adds r1, r0, #0
_08081186:
	adds r4, r1, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080811AA
	adds r1, r0, #0
_0808119C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0808119C
_080811AA:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080811B4
	bl __builtin_vec_delete
_080811B4:
	str r4, [r5]
	str r6, [r5, #8]
_080811B8:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sp
	ldrh r1, [r3, #0x24]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x28]
	mov r6, r8
	ldr r0, [sp, #0x10]
	adds r4, r0, #1
	ldr r0, [sp, #0xc]
	cmp r0, r4
	bge _08081226
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _080811F8
	adds r1, r0, #0
_080811F8:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [sp, #0x14]
	adds r2, r5, #0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _08081218
	adds r1, r0, #0
_0808120E:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0808120E
_08081218:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08081222
	bl __builtin_vec_delete
_08081222:
	str r4, [sp, #0xc]
	str r5, [sp, #0x14]
_08081226:
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r6]
	str r1, [r0]
	adds r2, #1
	str r2, [sp, #0x10]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x2c]
	mov r6, sl
	ldr r0, [sp, #0x1c]
	adds r4, r0, #1
	ldr r0, [sp, #0x18]
	cmp r0, r4
	bge _08081292
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _08081264
	adds r1, r0, #0
_08081264:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [sp, #0x20]
	adds r2, r5, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _08081284
	adds r1, r0, #0
_0808127A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0808127A
_08081284:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0808128E
	bl __builtin_vec_delete
_0808128E:
	str r4, [sp, #0x18]
	str r5, [sp, #0x20]
_08081292:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r6]
	str r1, [r0]
	adds r2, #1
	str r2, [sp, #0x1c]
	ldr r6, [sp, #0x34]
_080812A4:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	bge _080812BE
	b _08081138
_080812BE:
	ldr r1, [r7, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, [sp, #0x30]
	str r1, [r0]
	ldr r1, [r7, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r6, r1, r2
	movs r3, #0
	ldrsh r5, [r6, r3]
	adds r5, r7, r5
	movs r0, #0xfc
	adds r0, r0, r7
	mov sb, r0
	ldr r4, [r0]
	movs r2, #0xd4
	lsls r2, r2, #2
	mov r8, r2
	add r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #3
	adds r4, r4, r0
	ldrb r1, [r4, #0x1c]
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r6, r1, r0
	movs r2, #0
	ldrsh r5, [r6, r2]
	adds r5, r7, r5
	mov r3, sb
	ldr r4, [r3]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #3
	adds r4, r4, r0
	ldrb r1, [r4, #0x1d]
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r6, r1, r3
	movs r0, #0
	ldrsh r5, [r6, r0]
	adds r5, r7, r5
	mov r2, sb
	ldr r4, [r2]
	add r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #3
	adds r4, r4, r0
	ldrb r1, [r4, #0x1e]
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r6, r1, r0
	movs r2, #0
	ldrsh r5, [r6, r2]
	adds r5, r7, r5
	mov r3, sb
	ldr r4, [r3]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #3
	adds r4, r4, r0
	ldrb r1, [r4, #0x1f]
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r6, r1, r3
	movs r0, #0
	ldrsh r5, [r6, r0]
	adds r5, r7, r5
	mov r2, sb
	ldr r4, [r2]
	add r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r4, #0x20
	ldrb r1, [r4]
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r6, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x30]
	lsls r1, r1, #0x10
	mov r8, r1
	cmp r6, r0
	bge _08081448
_080813DC:
	ldr r3, [r7, #0x1c]
	movs r2, #0x9a
	lsls r2, r2, #2
	adds r3, r3, r2
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r7, r0
	lsls r2, r6, #1
	ldr r1, [sp, #8]
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, [r3, #4]
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r4, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xc8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	lsls r5, r6, #2
	ldr r1, [sp, #0x14]
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	adds r2, #0xd8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r4, r4, r0
	ldr r0, [sp, #0x20]
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r2, [r2, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r6, #1
	ldr r0, [sp, #4]
	cmp r6, r0
	blt _080813DC
_08081448:
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x80
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	mov r3, r8
	lsrs r1, r3, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0808146E
	bl __builtin_vec_delete
_0808146E:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08081478
	bl __builtin_vec_delete
_08081478:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08081482
	bl __builtin_vec_delete
_08081482:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
    .syntax divided

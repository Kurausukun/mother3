	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sl, r1
	movs r1, #1
	movs r2, #0
	bl sub_08084D48
	adds r0, r6, #0
	bl sub_08084E88
	movs r0, #0
	mov sb, r0
	b _08084AB0
_08084844:
	mov r0, sl
	mov r1, sb
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _08084870
	cmp r1, r0
	beq _0808491E
	cmp r1, r0
	bgt _08084888
	subs r0, #0x30
	cmp r1, r0
	beq _080848DC
	cmp r1, r0
	bgt _08084874
	cmp r1, #0
	beq _080848B8
	subs r0, #1
	cmp r1, r0
	beq _080848CA
	b _08084A34
	.align 2, 0
_08084870: .4byte 0x0000FF32
_08084874:
	ldr r0, _08084884
	cmp r1, r0
	beq _080848FE
	adds r0, #1
	cmp r1, r0
	beq _0808490E
	b _08084A34
	.align 2, 0
_08084884: .4byte 0x0000FF30
_08084888:
	ldr r0, _080848A0
	cmp r1, r0
	beq _08084958
	cmp r1, r0
	bgt _080848A4
	subs r0, #2
	cmp r1, r0
	beq _0808492E
	adds r0, #1
	cmp r1, r0
	beq _0808493E
	b _08084A34
	.align 2, 0
_080848A0: .4byte 0x0000FF35
_080848A4:
	ldr r0, _080848B4
	cmp r1, r0
	beq _0808496C
	adds r0, #1
	cmp r1, r0
	beq _08084980
	b _08084A34
	.align 2, 0
_080848B4: .4byte 0x0000FF36
_080848B8:
	ldr r1, [r6, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08084950
_080848CA:
	ldr r1, [r6, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08084950
_080848DC:
	ldr r1, [r6, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r6, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08084950
_080848FE:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #5
	b _0808494C
_0808490E:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0xa
	b _0808494C
_0808491E:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	b _0808494C
_0808492E:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x3c
	b _0808494C
_0808493E:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x5a
_0808494C:
	bl _call_via_r2
_08084950:
	movs r0, #1
	add r0, sb
	mov r8, r0
	b _08084AAE
_08084958:
	adds r2, r6, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	movs r1, #1
	add r1, sb
	mov r8, r1
	b _08084AAE
_0808496C:
	adds r2, r6, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r2, #1
	add r2, sb
	mov r8, r2
	b _08084AAE
_08084980:
	adds r0, r6, #0
	adds r0, #0x28
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x58
	adds r3, r1, #0
	muls r3, r0, r3
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r1, r6
	adds r0, r3, r0
	adds r0, #0xb0
	ldr r2, [r0, #0x1c]
	adds r2, #0xb0
	adds r1, #0xb0
	adds r1, r6, r1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	adds r4, r6, #0
	adds r4, #0x2c
	ldr r0, [r4, #4]
	adds r7, r0, #1
	ldr r0, [r6, #0x2c]
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r0, r7
	bge _08084A22
	lsls r0, r7, #1
	movs r1, #4
	cmp r1, r0
	bge _080849DA
	adds r1, r0, #0
_080849DA:
	adds r7, r1, #0
	lsls r0, r7, #2
	bl __builtin_vec_new
	adds r1, r0, #0
	subs r2, r7, #1
	movs r5, #1
	rsbs r5, r5, #0
	cmp r2, r5
	beq _080849FC
	movs r3, #0
_080849F0:
	strh r3, [r1]
	strh r3, [r1, #2]
	adds r1, #4
	subs r2, #1
	cmp r2, r5
	bne _080849F0
_080849FC:
	adds r5, r0, #0
	ldr r3, [r4, #8]
	adds r2, r5, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08084A14
	adds r1, r0, #0
_08084A0A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08084A0A
_08084A14:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08084A1E
	bl __builtin_vec_delete
_08084A1E:
	str r7, [r4]
	str r5, [r4, #8]
_08084A22:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [sp]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	b _08084AAE
_08084A34:
	mov r0, sl
	mov r1, sb
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _08084AE0
	movs r2, #1
	add r2, sb
	mov r8, r2
	cmp r1, r0
	bhi _08084AAE
	adds r0, r6, #0
	adds r0, #0x28
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x58
	muls r1, r0, r1
	lsls r4, r2, #4
	subs r4, r4, r2
	lsls r4, r4, #3
	adds r4, r4, r2
	lsls r4, r4, #4
	adds r0, r4, r6
	adds r0, r1, r0
	adds r0, #0xb0
	ldr r5, [r0, #0x1c]
	adds r5, #0xd0
	adds r4, #0xb0
	adds r4, r6, r4
	adds r4, r4, r1
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r4, r4, r0
	mov r0, sl
	mov r1, sb
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08084AAE:
	mov sb, r8
_08084AB0:
	mov r0, sl
	bl len__3Msg
	cmp sb, r0
	bge _08084ABC
	b _08084844
_08084ABC:
	ldr r1, [r6, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08084AE0: .4byte 0x0000FEFF
	.syntax divided

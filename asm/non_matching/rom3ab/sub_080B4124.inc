	.syntax unified
sub_080B4124:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	movs r4, #0
	str r4, [r6, #0x4c]
	bl sub_08082088
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B4144
	movs r0, #0
	b _080B4250
_080B4144:
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r7, #0
	b _080B41E2
_080B414E:
	ldr r1, [r6, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	str r0, [sp, #0xc]
	mov r5, sp
	add r0, sp, #0xc
	mov r8, r0
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	adds r7, #1
	mov sb, r7
	cmp r0, r4
	bge _080B41B2
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _080B4184
	adds r1, r0, #0
_080B4184:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [sp, #8]
	adds r2, r7, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080B41A4
	adds r1, r0, #0
_080B419A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080B419A
_080B41A4:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080B41AE
	bl __builtin_vec_delete
_080B41AE:
	str r4, [r5]
	str r7, [r5, #8]
_080B41B2:
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	adds r3, r0, #4
	lsls r1, r2, #2
	subs r1, #4
	adds r4, r0, r1
	adds r3, r3, r1
	adds r7, r0, #0
	cmp r2, #0
	ble _080B41D6
	adds r1, r2, #0
_080B41C8:
	ldr r0, [r4]
	str r0, [r3]
	subs r4, #4
	subs r3, #4
	subs r1, #1
	cmp r1, #0
	bne _080B41C8
_080B41D6:
	mov r1, r8
	ldr r0, [r1]
	str r0, [r7]
	adds r0, r2, #1
	str r0, [r5, #4]
	mov r7, sb
_080B41E2:
	ldr r1, [r6, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	blt _080B414E
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r4, #0
	b _080B4230
_080B4212:
	ldr r3, [r6, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	lsls r2, r4, #2
	ldr r1, [sp, #8]
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [r3, #4]
	bl _call_via_r2
	adds r4, #1
_080B4230:
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _080B4212
	ldr r0, [r6, #0x4c]
	adds r0, #1
	str r0, [r6, #0x4c]
	adds r0, r6, #0
	bl sub_08082088
	adds r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080B424E
	bl __builtin_vec_delete
_080B424E:
	adds r0, r4, #0
_080B4250:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

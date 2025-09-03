	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x50
	adds r7, r0, #0
	movs r6, #0
	b _0808BB54
_0808BA94:
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0xfc
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08082B78
	mov r0, sp
	bl sub_0808306C
	add r2, sp, #0x4c
	strb r6, [r2]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r4, r1, r7
	adds r4, #0x28
	mov sb, r2
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	adds r6, #1
	mov r8, r6
	cmp r0, r5
	bge _0808BB3A
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0808BB08
	adds r1, r0, #0
_0808BB08:
	adds r5, r1, #0
	adds r0, r5, #0
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0808BB2C
	adds r1, r0, #0
_0808BB1E:
	ldrb r0, [r3]
	strb r0, [r2]
	adds r3, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0808BB1E
_0808BB2C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0808BB36
	bl __builtin_vec_delete
_0808BB36:
	str r5, [r4]
	str r6, [r4, #8]
_0808BB3A:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	mov r3, sb
	ldrb r2, [r3]
	strb r2, [r1]
	adds r0, #1
	str r0, [r4, #4]
	mov r0, sp
	movs r1, #2
	bl  sub_08082BA8
	mov r6, r8
_0808BB54:
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0808BA94
	add sp, #0x50
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

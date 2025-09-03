	.syntax unified
sub_0805FB30:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0805FBA4
	ldr r2, [sp]
	ands r2, r3
	orrs r2, r1
	str r2, [sp]
	adds r4, r0, #0
	adds r4, #0x28
	mov r7, sp
	ldr r1, [r4, #4]
	adds r5, r1, #1
	ldr r0, [r0, #0x28]
	cmp r0, r5
	bge _0805FB8A
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805FB5C
	adds r0, r1, #0
_0805FB5C:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805FB7C
	adds r1, r0, #0
_0805FB72:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FB72
_0805FB7C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805FB86
	bl __builtin_vec_delete
_0805FB86:
	str r5, [r4]
	str r6, [r4, #8]
_0805FB8A:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FBA4: .4byte 0xFFFF0000
	.syntax divided

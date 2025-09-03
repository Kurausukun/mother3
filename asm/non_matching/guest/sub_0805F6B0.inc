	.syntax unified
sub_0805F6B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	bl sub_0805F95C
	adds r5, r0, #0
	adds r4, r7, #0
	adds r4, #0x24
	ldr r6, [r4, #4]
	cmp r5, r6
	bge _0805F778
	lsls r0, r5, #3
	ldr r2, [r4, #8]
	adds r2, r2, r0
	adds r3, r2, #0
	ldm r3!, {r0, r1}
	str r0, [sp]
	str r1, [sp, #4]
	mov ip, r4
	adds r0, r5, #1
	subs r0, r6, r0
	adds r5, r2, #0
	cmp r0, #0
	ble _0805F6F0
	adds r2, r0, #0
_0805F6E6:
	ldm r3!, {r0, r1}
	stm r5!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F6E6
_0805F6F0:
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
	mov r5, ip
	mov r8, sp
	ldr r0, [r5, #4]
	adds r4, r0, #1
	ldr r0, [r7, #0x24]
	cmp r0, r4
	bge _0805F73C
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _0805F70E
	adds r0, r1, #0
_0805F70E:
	adds r4, r0, #0
	lsls r0, r4, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r6, [r5, #8]
	adds r3, r7, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _0805F72E
	adds r2, r0, #0
_0805F724:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F724
_0805F72E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0805F738
	bl __builtin_vec_delete
_0805F738:
	str r4, [r5]
	str r7, [r5, #8]
_0805F73C:
	ldr r1, [r5, #8]
	ldr r3, [r5, #4]
	adds r2, r1, #0
	adds r2, #8
	lsls r0, r3, #3
	subs r0, #8
	adds r4, r1, r0
	adds r2, r2, r0
	cmp r3, #0
	ble _0805F762
_0805F750:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r2]
	str r1, [r2, #4]
	subs r4, #8
	subs r2, #8
	subs r3, #1
	cmp r3, #0
	bne _0805F750
_0805F762:
	ldr r0, [r5, #8]
	mov r3, r8
	ldr r1, [r3]
	ldr r2, [r3, #4]
	str r1, [r0]
	str r2, [r0, #4]
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
	movs r0, #1
	b _0805F77A
_0805F778:
	movs r0, #0
_0805F77A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805F882
	ldr r0, [r4, #0x20]
	bl typeIsMonster
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805F8DE
_0805F882:
	ldr r0, [r4, #0x20]
	str r0, [sp]
	adds r4, r6, #0
	adds r4, #0x30
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r6, #0x30]
	cmp r0, r5
	bge _0805F8CE
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805F8A0
	adds r0, r1, #0
_0805F8A0:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805F8C0
	adds r1, r0, #0
_0805F8B6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805F8B6
_0805F8C0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805F8CA
	bl __builtin_vec_delete
_0805F8CA:
	str r5, [r4]
	str r6, [r4, #8]
_0805F8CE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0805F8DE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

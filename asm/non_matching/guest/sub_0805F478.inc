	.syntax unified
sub_0805F478:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	movs r3, #0
	mov r1, sl
	adds r1, #0x24
	ldr r0, [r1, #4]
	cmp r3, r0
	bge _0805F4D4
	adds r4, r1, #0
_0805F494:
	lsls r0, r3, #3
	ldr r1, [r4, #8]
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0805F4CC
	adds r6, r4, #0
	ldr r2, [r4, #4]
	subs r7, r3, #1
	cmp r3, r2
	bge _0805F4CA
	adds r0, r3, #1
	subs r0, r2, r0
	adds r5, r1, #0
	adds r5, #8
	adds r3, r1, #0
	cmp r0, #0
	ble _0805F4C4
	adds r2, r0, #0
_0805F4BA:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F4BA
_0805F4C4:
	ldr r0, [r6, #4]
	subs r0, #1
	str r0, [r6, #4]
_0805F4CA:
	adds r3, r7, #0
_0805F4CC:
	adds r3, #1
	ldr r0, [r4, #4]
	cmp r3, r0
	blt _0805F494
_0805F4D4:
	movs r0, #0x24
	add r0, sl
	mov r8, r0
	movs r1, #0x30
	add r1, sl
	mov sb, r1
	b _0805F570
_0805F4E2:
	mov r2, sb
	ldr r0, [r2, #8]
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _0805F620
	ldr r0, [sp, #4]
	ands r0, r1
	str r0, [sp, #4]
	mov r5, r8
	ldr r0, [r5, #4]
	adds r4, r0, #1
	mov r1, sl
	ldr r0, [r1, #0x24]
	cmp r0, r4
	bge _0805F53A
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _0805F50A
	adds r1, r0, #0
_0805F50A:
	adds r4, r1, #0
	lsls r0, r4, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	mov r2, r8
	ldr r6, [r2, #8]
	adds r3, r7, #0
	ldr r0, [r2, #4]
	cmp r0, #0
	ble _0805F52C
	adds r2, r0, #0
_0805F522:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F522
_0805F52C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0805F536
	bl __builtin_vec_delete
_0805F536:
	str r4, [r5]
	str r7, [r5, #8]
_0805F53A:
	ldr r3, [r5, #4]
	ldr r0, [r5, #8]
	lsls r2, r3, #3
	adds r2, r2, r0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
	adds r3, #1
	str r3, [r5, #4]
	mov r5, sb
	ldr r2, [r5, #4]
	cmp r2, #0
	ble _0805F570
	ldr r0, [r5, #8]
	subs r1, r2, #1
	adds r4, r0, #4
	adds r3, r0, #0
	cmp r1, #0
	ble _0805F56C
_0805F562:
	ldm r4!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805F562
_0805F56C:
	subs r0, r2, #1
	str r0, [r5, #4]
_0805F570:
	movs r1, #0
	mov r2, sb
	ldr r0, [r2, #4]
	cmp r0, #0
	bgt _0805F57C
	movs r1, #1
_0805F57C:
	cmp r1, #0
	beq _0805F4E2
	movs r5, #0
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r5, r0
	bge _0805F5A4
	mov r6, r8
_0805F58C:
	lsls r0, r5, #3
	ldr r4, [r6, #8]
	adds r4, r4, r0
	ldr r1, [r4]
	mov r0, sl
	bl sub_0805F624
	strh r0, [r4, #4]
	adds r5, #1
	ldr r0, [r6, #4]
	cmp r5, r0
	blt _0805F58C
_0805F5A4:
	movs r2, #0
	mov ip, r2
	mov r1, r8
	ldr r0, [r1, #4]
	cmp ip, r0
	bge _0805F60E
	mov sl, r8
_0805F5B2:
	mov r2, sl
	ldr r0, [r2, #4]
	subs r2, r0, #1
	subs r0, #2
	mov r1, ip
	adds r1, #1
	str r1, [sp, #8]
	cmp r0, ip
	blt _0805F602
	mov sb, r8
_0805F5C6:
	lsls r6, r2, #3
	mov r0, sb
	ldr r1, [r0, #8]
	adds r3, r1, r6
	subs r7, r2, #1
	lsls r5, r7, #3
	adds r1, r1, r5
	ldrh r0, [r3, #4]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bhs _0805F5FA
	ldr r4, [r3, #4]
	ldr r3, [r3]
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r6, r0
	adds r0, r5, r0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	mov r2, r8
	ldr r0, [r2, #8]
	adds r0, r5, r0
	str r3, [r0]
	str r4, [r0, #4]
_0805F5FA:
	adds r2, r7, #0
	subs r0, r2, #1
	cmp r0, ip
	bge _0805F5C6
_0805F602:
	ldr r0, [sp, #8]
	mov ip, r0
	mov r1, sl
	ldr r0, [r1, #4]
	cmp ip, r0
	blt _0805F5B2
_0805F60E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F620: .4byte 0xFFFF0000
	.syntax divided

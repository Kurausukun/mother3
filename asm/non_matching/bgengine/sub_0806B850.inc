	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	str r2, [sp, #8]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r1, r5, #0
	adds r1, #0x2c
	mov r2, r8
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	adds r4, r1, #0
	adds r4, #0x18
	str r4, [sp, #0xc]
	ldr r0, [r1, #0x18]
	ldr r6, [sp, #8]
	cmp r0, r6
	bge _0806B8DC
	lsls r1, r6, #1
	movs r0, #4
	cmp r0, r1
	bge _0806B88E
	adds r0, r1, #0
_0806B88E:
	mov sl, r0
	lsls r0, r0, #5
	bl __builtin_vec_new
	mov sb, r0
	ldr r7, [sp, #0xc]
	ldr r7, [r7, #8]
	mov ip, r7
	mov r3, sb
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0806B8C6
	adds r2, r0, #0
_0806B8AA:
	adds r1, r3, #0
	mov r0, ip
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldm r0!, {r4, r6}
	stm r1!, {r4, r6}
	movs r7, #0x20
	add ip, r7
	adds r3, #0x20
	subs r2, #1
	cmp r2, #0
	bne _0806B8AA
_0806B8C6:
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0806B8D2
	bl __builtin_vec_delete
_0806B8D2:
	mov r2, sl
	ldr r4, [sp, #0xc]
	str r2, [r4]
	mov r6, sb
	str r6, [r4, #8]
_0806B8DC:
	ldr r7, [sp, #8]
	ldr r0, [sp, #0xc]
	str r7, [r0, #4]
	movs r3, #0
	movs r2, #0
	ldr r0, [r5, #0x2c]
	adds r7, r5, #0
	adds r7, #0x2c
	mov r1, r8
	lsls r6, r1, #3
	cmp r2, r0
	bge _0806B908
	adds r1, r5, #0
	adds r1, #0x30
_0806B8F8:
	strh r3, [r1, #0x16]
	ldr r0, [r1, #0x1c]
	adds r3, r3, r0
	adds r1, #0x38
	adds r2, #1
	ldr r0, [r5, #0x2c]
	cmp r2, r0
	blt _0806B8F8
_0806B908:
	adds r0, r5, #0
	mov r1, r8
	movs r2, #0
	bl sub_0806BA20
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, r8
	bl sub_0806BA0C
	lsls r3, r0, #5
	cmp r3, #0
	ble _0806B93A
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0806B958
	str r1, [r2]
	str r4, [r2, #4]
	asrs r0, r3, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806B93A:
	mov r2, r8
	subs r0, r6, r2
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r7, r0
	ldrh r0, [r0, #0x16]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B958: .4byte 0x040000D4
	.syntax divided

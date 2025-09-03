	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r2, sp
	strh r1, [r2]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r4, r0, r1
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0807BEF6
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0807BEC4
	adds r0, r1, #0
_0807BEC4:
	adds r5, r0, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0807BEE8
	adds r1, r0, #0
_0807BEDA:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807BEDA
_0807BEE8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807BEF2
	bl __builtin_vec_delete
_0807BEF2:
	str r5, [r4]
	str r6, [r4, #8]
_0807BEF6:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r7]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	movs r0, #1
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided

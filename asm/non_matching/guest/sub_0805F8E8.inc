	.syntax unified
sub_0805F8E8:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x20]
	bl sub_0805F95C
	adds r1, r0, #0
	adds r2, r4, #0
	adds r2, #0x24
	ldr r0, [r2, #4]
	cmp r1, r0
	bge _0805F90C
	lsls r0, r1, #3
	ldr r1, [r2, #8]
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
_0805F90C:
	ldr r0, [r5, #0x20]
	str r0, [sp]
	adds r5, r4, #0
	adds r5, #0x30
	mov r7, sp
	movs r4, #0
	ldr r3, [r5, #4]
	cmp r4, r3
	bge _0805F954
	ldr r6, [r5, #8]
_0805F920:
	lsls r0, r4, #2
	adds r2, r0, r6
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _0805F94C
	adds r0, r4, #1
	subs r0, r3, r0
	adds r3, r2, #4
	adds r1, r2, #0
	subs r4, #1
	cmp r0, #0
	ble _0805F946
	adds r2, r0, #0
_0805F93C:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0805F93C
_0805F946:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_0805F94C:
	adds r4, #1
	ldr r3, [r5, #4]
	cmp r4, r3
	blt _0805F920
_0805F954:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

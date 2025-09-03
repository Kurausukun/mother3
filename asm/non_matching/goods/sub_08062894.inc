	.syntax unified
sub_08062894:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _08062906
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08062906
	adds r4, r6, #0
	adds r4, #0x3c
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r6, #0x3c]
	cmp r0, r5
	bge _080628F6
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080628C8
	adds r0, r1, #0
_080628C8:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080628E8
	adds r1, r0, #0
_080628DE:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080628DE
_080628E8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080628F2
	bl __builtin_vec_delete
_080628F2:
	str r5, [r4]
	str r6, [r4, #8]
_080628F6:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_08062906:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

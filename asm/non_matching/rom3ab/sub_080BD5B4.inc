	.syntax unified
sub_080BD5B4:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r6, #0
	b _080BD644
_080BD5CC:
	ldr r1, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	str r0, [sp, #0xc]
	mov r5, sp
	add r3, sp, #0xc
	mov r8, r3
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	adds r6, #1
	mov sb, r6
	cmp r0, r4
	bge _080BD630
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _080BD602
	adds r1, r0, #0
_080BD602:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080BD622
	adds r1, r0, #0
_080BD618:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080BD618
_080BD622:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080BD62C
	bl __builtin_vec_delete
_080BD62C:
	str r4, [r5]
	str r6, [r5, #8]
_080BD630:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
	mov r6, sb
_080BD644:
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _080BD5CC
	ldr r1, [r7, #0x1c]
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r6, #0
	b _080BD694
_080BD674:
	ldr r4, [r7, #0x1c]
	movs r3, #0xb4
	lsls r3, r3, #1
	adds r4, r4, r3
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	adds r0, r6, #0
	bl GetMonster
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r6, #1
_080BD694:
	bl GetMonsterCount
	cmp r6, r0
	blt _080BD674
	adds r0, r7, #0
	bl playAnim__6Action
	ldr r1, [r7, #0x1c]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r4, #0
	b _080BD6D8
_080BD6BA:
	ldr r3, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r7, r0
	lsls r2, r4, #2
	ldr r1, [sp, #8]
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [r3, #4]
	bl _call_via_r2
	adds r4, #1
_080BD6D8:
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _080BD6BA
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080BD6E8
	bl __builtin_vec_delete
_080BD6E8:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

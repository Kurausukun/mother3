	.syntax unified
sub_08019408:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	cmp r1, #0
	beq _0801951A
	adds r0, r2, #0
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrh r2, [r3]
	ldrh r4, [r3, #2]
	str r1, [sp, #4]
	movs r3, #0
	lsls r0, r1, #1
	rsbs r0, r0, #0
	adds r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r1, #0x10
	cmp r5, #0
	blt _0801951A
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
_08019454:
	asrs r7, r5, #0x10
	adds r5, r7, #0
	ldr r0, [sp]
	asrs r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r1, [sp, #8]
	subs r3, r1, r7
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r6, r1, r7
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r4, r8
	ldr r2, [sp]
	asrs r4, r2
	mov r0, sl
	adds r2, r0, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r3, #0
	adds r1, r6, #0
	str r3, [sp, #0xc]
	bl sub_0801960C
	mov r1, sl
	subs r4, r1, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r3, [sp, #0xc]
	adds r0, r3, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0801960C
	ldr r2, [sp, #8]
	mov r4, r8
	subs r6, r2, r4
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r4, r2, #0
	add r4, r8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sl
	adds r2, r0, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0801960C
	mov r1, sl
	subs r5, r1, r5
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801960C
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080194F4
	subs r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	str r4, [sp, #4]
	asrs r0, r0, #0xe
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_080194F4:
	mov r1, r8
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #2
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [sp, #4]
	lsls r5, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, r1
	bge _08019454
_0801951A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

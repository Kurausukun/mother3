	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	movs r1, #5
	bl scriptstack_peek
	mov sb, r0
	adds r0, r4, #0
	movs r1, #4
	bl scriptstack_peek
	mov sl, r0
	adds r0, r4, #0
	movs r1, #3
	bl scriptstack_peek
	mov r8, r0
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sb
	bl get_obj
	adds r4, r0, #0
	cmp r4, #0
	beq _0801FE14
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r0, r4, #0
	bl sub_08035E98
_0801FE14:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

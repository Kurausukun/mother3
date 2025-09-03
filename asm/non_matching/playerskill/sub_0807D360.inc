	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_0806BE14
	adds r6, r0, #0
	bl sub_0806B070
	adds r5, r0, #0
	adds r4, #0x34
	mov r0, sp
	adds r1, r4, #0
	bl sub_080711BC
	adds r0, r5, #0
	movs r1, #0
	mov r2, sp
	bl sub_0806B410
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806B828
	adds r2, r0, #0
	adds r0, r6, #0
	movs r1, #8
	bl sub_0806C0B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

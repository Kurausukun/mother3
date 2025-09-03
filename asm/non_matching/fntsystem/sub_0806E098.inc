	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r7, r5, #0
	adds r7, #0x3c
	adds r0, r7, #0
	bl sub_08088870
	cmp r6, r0
	bge _0806E0F2
	movs r1, #0
	strh r6, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x88
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	ldr r0, [r5, #0x7c]
	str r0, [sp]
	add r4, sp, #4
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_08088874
	adds r1, r5, #0
	adds r1, #0x78
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp]
	str r0, [r5, #0x7c]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080886F0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806E0FC
	adds r0, r5, #0
	bl sub_0806E150
_0806E0F2:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

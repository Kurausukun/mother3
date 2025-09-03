	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r5, [r0, #0x10]
	movs r4, #0x30
	adds r4, r4, r5
	mov r8, r4
	movs r7, #0x30
	ldrsh r6, [r5, r7]
	adds r6, r0, r6
	movs r7, #0x18
	ldrsh r4, [r5, r7]
	adds r0, r0, r4
	ldr r4, [sp, #0x1c]
	str r4, [sp]
	ldr r4, [r5, #0x1c]
	bl _call_via_r4
	adds r1, r0, #0
	mov r7, r8
	ldr r2, [r7, #4]
	adds r0, r6, #0
	bl _call_via_r2
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

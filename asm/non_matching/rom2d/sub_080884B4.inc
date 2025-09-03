	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r2, #0
	mov r5, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r5, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #8
	bl __divsi3
	lsls r0, r0, #3
	mov r1, sp
	strh r0, [r1]
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r1, #8
	bl __divsi3
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	strh r0, [r5, #2]
	ldr r0, [sp]
	str r0, [r6]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided

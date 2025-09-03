	.syntax unified
sub_08001814:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, sp
	muls r0, r4, r0
	muls r2, r3, r2
	adds r0, r0, r2
	bl __divsi3
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r6]
	movs r0, #0
	strh r5, [r6]
	ldrh r1, [r6, #2]
	strh r0, [r6, #2]
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r6, #4]
	strh r0, [r6, #4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided

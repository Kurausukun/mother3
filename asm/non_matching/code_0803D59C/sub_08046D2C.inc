	.syntax unified
sub_08046D2C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r6, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r4, sp
	strh r5, [r4]
	ldrb r4, [r0, #0xa]
	movs r5, #1
	mov r8, r5
	mov r5, r8
	orrs r4, r5
	movs r5, #7
	ands r1, r5
	lsls r1, r1, #1
	movs r5, #0xf
	rsbs r5, r5, #0
	ands r4, r5
	orrs r4, r1
	movs r1, #3
	ands r6, r1
	lsls r6, r6, #4
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r4, r1
	orrs r4, r6
	mov r1, sp
	ldrh r1, [r1]
	mov r5, r8
	ands r5, r1
	lsls r5, r5, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r4, r1
	orrs r4, r5
	strb r4, [r0, #0xa]
	strh r2, [r0, #4]
	strh r3, [r0, #6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

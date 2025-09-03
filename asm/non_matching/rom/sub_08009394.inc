	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_08009D6C
	ldr r1, [r0]
	str r1, [sp]
	ldr r1, [r0, #4]
	str r1, [sp, #4]
	ldr r1, [r0, #0x10]
	str r1, [sp, #8]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0xc]
	ldr r1, [r0, #8]
	str r1, [sp, #0x18]
	ldr r1, [r0, #0xc]
	str r1, [sp, #0x1c]
	add r5, sp, #0x18
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x20]
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x24]
	adds r0, r4, #4
	adds r6, r4, #0
	adds r6, #0x85
	ldrb r2, [r6]
	lsrs r2, r2, #4
	mov r1, sp
	movs r3, #2
	bl sub_08001EA4
	adds r4, #0x44
	ldrb r2, [r6]
	lsrs r2, r2, #4
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_08001EA4
	add sp, #0x30
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

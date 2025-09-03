	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x34
	adds r0, r5, #0
	bl sub_08071150
	mov r0, sp
	adds r1, r5, #0
	bl sub_0806EA34
	ldr r0, [sp]
	adds r4, #0x30
	strb r0, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

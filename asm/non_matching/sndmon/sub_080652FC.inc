	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r2, r0, #0
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r2, #0x24]
	str r0, [sp]
	ldr r0, [r2, #0x28]
	str r0, [sp, #4]
	mov r0, sp
	strh r1, [r0, #8]
	adds r5, r2, #0
	adds r5, #0x34
	add r4, sp, #0xc
	adds r1, r4, #0
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	ldr r0, [r2, #0x34]
	adds r3, r0, #1
	cmp r3, #0x10
	bgt _0806533C
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r1, #4
	adds r0, r4, #0
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	str r3, [r2, #0x34]
_0806533C:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

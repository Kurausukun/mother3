	.syntax unified
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	adds r4, r1, #0
	movs r0, #0
	str r0, [sp]
	lsrs r4, r4, #1
	movs r2, #0
	cmp r2, r4
	bhs _08001DEC
_08001DDC:
	ldrh r1, [r3]
	ldr r0, [sp]
	adds r0, r0, r1
	str r0, [sp]
	adds r2, #1
	adds r3, #2
	cmp r2, r4
	blo _08001DDC
_08001DEC:
	ldr r0, [sp]
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

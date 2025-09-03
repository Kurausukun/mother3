	.syntax unified
sub_08081E94:
	push {r4, lr}
	sub sp, #4
	str r2, [sp]
	mov r4, sp
	mov r2, sp
	ldrb r3, [r2]
	lsrs r3, r3, #3
	ldrb r2, [r4, #1]
	lsrs r2, r2, #3
	lsls r2, r2, #5
	orrs r3, r2
	ldrb r2, [r4, #2]
	lsrs r2, r2, #3
	lsls r2, r2, #0xa
	orrs r3, r2
	lsls r1, r1, #1
	adds r0, #0xa8
	adds r0, r0, r1
	strh r3, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

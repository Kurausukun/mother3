	.syntax unified
sub_08071150:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_0806E978
	mov r0, sp
	adds r1, r4, #0
	bl sub_080711C4
	adds r0, r4, #0
	mov r1, sp
	bl sub_0806E9A0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

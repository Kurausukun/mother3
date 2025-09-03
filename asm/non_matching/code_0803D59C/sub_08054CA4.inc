	.syntax unified
sub_08054CA4:
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	mov r1, sp
	adds r0, #0x3c
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_080546D8
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805458C
	adds r0, r5, #0
	mov r1, sp
	bl sub_080551B0
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided

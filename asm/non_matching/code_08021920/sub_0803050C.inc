	.syntax unified
sub_0803050C:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_08036DF4
	adds r4, r0, #0
	bl sub_08002C4C
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_08002C54
	movs r2, #0
	mov r1, sp
	strh r2, [r1]
	adds r1, r5, #0
	mov r2, sp
	bl sub_08002B1C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_08002ABC
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

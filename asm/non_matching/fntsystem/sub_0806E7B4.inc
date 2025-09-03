	.syntax unified
sub_0806E7B4:
	push {r4, r5, lr}
	sub sp, #0x24
	movs r4, #0
	ldr r1, [r0, #0x20]
	cmp r4, r1
	bge _0806E7E8
	adds r5, r1, #0
	add r3, sp, #4
	adds r2, r0, #0
	adds r2, #0x24
_0806E7C8:
	ldrb r0, [r2]
	lsrs r0, r0, #3
	ldrb r1, [r2, #1]
	lsrs r1, r1, #3
	lsls r1, r1, #5
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsrs r1, r1, #3
	lsls r1, r1, #0xa
	orrs r0, r1
	strh r0, [r3]
	adds r3, #2
	adds r2, #8
	adds r4, #1
	cmp r4, r5
	blt _0806E7C8
_0806E7E8:
	bl sub_0806B070
	add r1, sp, #4
	str r1, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806B970
	add sp, #0x24
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

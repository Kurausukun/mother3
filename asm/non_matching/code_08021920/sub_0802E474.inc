	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0802FC98
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E4B0
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x18
	adds r2, r5, #0
	adds r2, #0x9a
	adds r0, r5, #0
	adds r0, #0x96
	ldrh r0, [r0]
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, r1
	blo _0802E4B8
_0802E4AC:
	movs r0, #1
	b _0802E4BA
_0802E4B0:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _0802E4AC
_0802E4B8:
	movs r0, #0
_0802E4BA:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

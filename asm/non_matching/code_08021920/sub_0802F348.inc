	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0802FC98
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F37E
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r1, r0
	blt _0802F386
_0802F37A:
	movs r0, #1
	b _0802F388
_0802F37E:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #1
	beq _0802F37A
_0802F386:
	movs r0, #0
_0802F388:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided

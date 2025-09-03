	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r5, r0, #0
	movs r0, #1
	cmp r0, r7
	bhs _08052D14
_08052CD2:
	adds r4, r0, #0
	adds r6, r0, #1
	cmp r0, #0
	beq _08052D0C
	lsls r0, r0, #2
	b _08052CF8
_08052CDE:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r3, [r0]
	subs r2, r0, #4
	ldr r1, [r2]
	str r1, [r0]
	str r3, [r2]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08052D0C
	lsls r0, r4, #2
_08052CF8:
	adds r1, r0, r5
	subs r0, r1, #4
	ldr r0, [r0]
	lsls r0, r0, #9
	cmp r0, #0
	blt _08052D0C
	ldr r0, [r1]
	lsls r0, r0, #9
	cmp r0, #0
	blt _08052CDE
_08052D0C:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	blo _08052CD2
_08052D14:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

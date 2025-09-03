	.syntax unified
cmd_BE:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #4
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	movs r1, #3
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r7, #0
	cmp r7, #0x10
	bls _08020A16
	movs r1, #0x10
_08020A16:
	adds r7, r1, #0
	adds r1, r6, #0
	cmp r6, #0x10
	bls _08020A20
	movs r1, #0x10
_08020A20:
	adds r6, r1, #0
	adds r1, r5, #0
	cmp r5, #0x10
	bls _08020A2A
	movs r1, #0x10
_08020A2A:
	adds r5, r1, #0
	adds r1, r0, #0
	cmp r0, #0x10
	bls _08020A34
	movs r1, #0x10
_08020A34:
	str r1, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08027940
	movs r0, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided

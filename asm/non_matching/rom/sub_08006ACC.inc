	.syntax unified
sub_08006ACC:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r2, r0, #0
	movs r4, #0
_08006ADA:
	adds r0, r2, #0
	adds r0, #0x32
	ldrb r1, [r0]
	adds r3, r0, #0
	adds r4, #1
	mov r8, r4
	movs r0, #0x38
	adds r0, r0, r2
	mov sb, r0
	cmp r1, #0
	beq _08006B24
	adds r5, r2, #0
	ldr r6, [r5, #0x28]
	movs r7, #0
	ldrb r1, [r3]
	cmp r7, r1
	bhs _08006B20
_08006AFC:
	ldrh r4, [r5, #4]
	lsls r4, r4, #0x15
	lsrs r4, r4, #0x10
	ldr r0, [r5]
	adds r1, r6, #0
	adds r2, r4, #0
	str r3, [sp]
	bl sub_08001A14
	adds r6, r6, r4
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #8
	ldr r3, [sp]
	ldrb r0, [r3]
	cmp r7, r0
	blo _08006AFC
_08006B20:
	movs r0, #0
	strb r0, [r3]
_08006B24:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	mov r2, sb
	cmp r4, #5
	bls _08006ADA
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

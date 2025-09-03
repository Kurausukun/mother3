	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r1
	movs r0, #0
	mov r8, r0
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
_0802A764:
	mov r2, r8
	lsls r0, r2, #1
	mov r2, sl
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, sb
	beq _0802A7DC
	ldrh r4, [r1]
	adds r5, r4, #0
	adds r0, r6, #0
	adds r0, #0x34
	mov r1, r8
	adds r7, r0, r1
	ldrb r0, [r7]
	cmp r0, #0
	beq _0802A7A8
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_0802BA28
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sb
	beq _0802A7DC
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	adds r0, #0x3c
	adds r0, r0, r1
	strb r4, [r0]
	strb r4, [r7]
	b _0802A7DC
_0802A7A8:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0802A60C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A7DC
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_0802A454
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0802A400
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sb
	beq _0802A7DC
	adds r0, r6, #0
	movs r2, #1
	bl sub_0802BA78
	strb r5, [r7]
_0802A7DC:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #3
	bls _0802A764
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r0, #0
	str r0, [r4, #0x38]
	movs r1, #0
	adds r2, r4, #0
	adds r2, #0x3c
	movs r3, #0
	adds r5, r4, #0
	adds r5, #0x4c
	mov r8, r2
_0802A68C:
	adds r0, r2, r1
	strb r3, [r0]
	lsls r0, r1, #1
	adds r0, r5, r0
	strh r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _0802A68C
	movs r1, #0
	adds r7, r4, #0
	adds r7, #0x34
	ldrh r2, [r6]
	adds r3, r7, #0
	movs r5, #0
_0802A6AC:
	adds r0, r3, r1
	strb r5, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _0802A6AC
	movs r5, #0
	lsls r0, r2, #0x10
	cmp r0, #0
	beq _0802A6D4
	strb r2, [r7]
	mov r0, r8
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0802BA78
	movs r5, #1
_0802A6D4:
	ldrh r2, [r6, #2]
	movs r1, #2
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0802A6FA
	mov r1, r8
	adds r0, r1, r5
	adds r1, r4, #0
	adds r1, #0x35
	strb r2, [r1]
	strb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_0802BA78
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802A6FA:
	ldrh r2, [r6, #4]
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0802A720
	mov r1, r8
	adds r0, r1, r5
	adds r1, r4, #0
	adds r1, #0x36
	strb r2, [r1]
	strb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_0802BA78
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802A720:
	ldrh r2, [r6, #6]
	movs r1, #6
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0802A740
	mov r1, r8
	adds r0, r1, r5
	adds r1, r4, #0
	adds r1, #0x37
	strb r2, [r1]
	strb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_0802BA78
_0802A740:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

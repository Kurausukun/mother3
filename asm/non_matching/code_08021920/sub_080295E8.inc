	.syntax unified
sub_080295E8:
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r0, r7, #0
	movs r1, #0
	bl sub_0802B88C
	adds r4, r0, #0
	ldr r1, [r5, #0x18]
	mov r0, sp
	movs r2, #0
	movs r3, #3
	bl sub_08002634
	movs r2, #0
	movs r6, #0
	adds r3, r4, #3
_0802960E:
	adds r1, r4, r2
	lsls r0, r2, #1
	add r0, sp
	ldrh r0, [r0]
	strb r0, [r1]
	adds r0, r3, r2
	strb r6, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #2
	bls _0802960E
	ldr r1, [r5, #0x18]
	strh r1, [r4, #0xa]
	ldr r2, _08029680
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r4, #8]
	ands r0, r2
	strh r0, [r4, #6]
	adds r0, r7, #0
	movs r1, #1
	bl sub_0802B88C
	adds r4, r0, #0
	movs r0, #0x1c
	ldrsh r1, [r5, r0]
	mov r0, sp
	movs r2, #0
	movs r3, #3
	bl sub_08002634
	movs r2, #0
	movs r6, #0
	adds r3, r4, #3
_08029654:
	adds r1, r4, r2
	lsls r0, r2, #1
	add r0, sp
	ldrh r0, [r0]
	strb r0, [r1]
	adds r0, r3, r2
	strb r6, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #2
	bls _08029654
	ldrh r0, [r5, #0x1c]
	strh r0, [r4, #0xa]
	ldrh r0, [r5, #0x1c]
	strh r0, [r4, #8]
	strh r0, [r4, #6]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029680: .4byte 0x0000FFFF
	.syntax divided

	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
	b _0802AC46
_0802ABD4:
	adds r0, r4, #0
	bl get_char_stats
	adds r5, r0, #0
	ldrb r0, [r5]
	adds r7, r4, #1
	cmp r0, #0
	beq _0802AC42
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802AC42
	adds r0, r4, #0
	movs r1, #0
	bl sub_0802B88C
	bl sub_0802AC64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r5, #0x18]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0802B88C
	adds r4, r0, #0
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #8]
	cmp r0, r1
	beq _0802AC42
	ldrh r1, [r4, #8]
	mov r0, sp
	movs r2, #0
	movs r3, #3
	bl sub_08002634
	movs r2, #0
	movs r6, #0
	adds r3, r4, #3
_0802AC24:
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
	bls _0802AC24
	ldrh r0, [r4, #8]
	strh r0, [r4, #6]
	strh r0, [r5, #0x1c]
_0802AC42:
	lsls r0, r7, #0x10
	lsrs r4, r0, #0x10
_0802AC46:
	ldr r0, _0802AC5C
	ldr r1, _0802AC60
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	blo _0802ABD4
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AC5C: .4byte gGame
_0802AC60: .4byte 0x00008299
	.syntax divided

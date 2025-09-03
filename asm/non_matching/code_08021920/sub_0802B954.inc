	.syntax unified
sub_0802B954:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r5, #0
	ldr r0, _0802B998
	ldr r1, _0802B99C
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r5, r1
	bhs _0802B9B6
	adds r7, r0, #0
_0802B96A:
	adds r0, r5, #0
	bl get_char_stats
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802B9AA
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B9AA
	movs r1, #0
	adds r3, r4, #0
	adds r3, #0x34
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
_0802B98C:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, r6
	bne _0802B9A0
	adds r0, r2, #0
	b _0802B9BA
	.align 2, 0
_0802B998: .4byte gGame
_0802B99C: .4byte 0x00008299
_0802B9A0:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _0802B98C
_0802B9AA:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r0, [r7]
	cmp r5, r0
	blo _0802B96A
_0802B9B6:
	movs r0, #1
	rsbs r0, r0, #0
_0802B9BA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided

	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r5, #0
	ldr r0, _0802A164
	ldr r1, _0802A168
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r5, r1
	bhs _0802A178
	adds r7, r0, #0
_0802A13A:
	adds r0, r5, #0
	bl get_char_stats
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802A16C
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A16C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0802A60C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A16C
	movs r0, #1
	b _0802A17A
	.align 2, 0
_0802A164: .4byte gGame
_0802A168: .4byte 0x00008299
_0802A16C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r0, [r7]
	cmp r5, r0
	blo _0802A13A
_0802A178:
	movs r0, #0
_0802A17A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided

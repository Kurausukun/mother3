	.syntax unified
	push {r4, r5, r6, lr}
	ldr r2, _0802B51C
	ldr r0, _0802B520
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	ldr r1, _0802B524
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #6
	beq _0802B534
	movs r4, #0
	subs r1, #2
	adds r0, r2, r1
	ldrb r1, [r0]
	cmp r4, r1
	bhs _0802B534
	adds r5, r3, #0
	adds r6, r0, #0
_0802B504:
	adds r0, r4, #0
	bl get_char_stats
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bgt _0802B528
	ldrb r0, [r5]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5]
	b _0802B534
	.align 2, 0
_0802B51C: .4byte gGame
_0802B520: .4byte 0x000082B8
_0802B524: .4byte 0x0000829B
_0802B528:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r6]
	cmp r4, r0
	blo _0802B504
_0802B534:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

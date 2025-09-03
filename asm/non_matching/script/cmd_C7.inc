	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _08020AA0
	ldr r0, _08020AA4
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r1, _08020AA8
	adds r6, r5, r1
	strh r0, [r6]
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r1, _08020AAC
	adds r4, r5, r1
	strh r0, [r4]
	bl sub_080030A4
	ldrh r1, [r4]
	bl __umodsi3
	ldrh r1, [r6]
	adds r1, r1, r0
	ldr r0, _08020AB0
	adds r5, r5, r0
	strh r1, [r5]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020AA0: .4byte gGame
_08020AA4: .4byte 0x000067C4
_08020AA8: .4byte 0x000067BC
_08020AAC: .4byte 0x000067BE
_08020AB0: .4byte 0x000067BA
	.syntax divided

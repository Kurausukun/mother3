	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803CBC0
	adds r1, r5, #0
	movs r2, #0xa0
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xb4
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa1
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xb5
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa2
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa3
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa4
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xb8
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa5
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xb9
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803CBC0: .4byte gUnknown_0200DEBC
	.syntax divided

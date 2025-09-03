	.syntax unified
sub_0803BF44:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803BF88
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xa0
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0xc6
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803BF8C
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0xa0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb6
	ldrb r0, [r0]
	subs r0, #1
	b _0803BFAA
	.align 2, 0
_0803BF88: .4byte gUnknown_0200DEBC
_0803BF8C:
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa0
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xa1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb6
	ldrb r0, [r0]
_0803BFAA:
	adds r1, #1
	strb r0, [r1]
	ldr r1, _0803BFDC
	ldr r2, _0803BFE0
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, r5, #0
	adds r2, #0xa3
	strb r0, [r2]
	ldr r2, _0803BFE4
	adds r0, r1, r2
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r0, #0xa4
	strb r2, [r0]
	ldr r0, _0803BFE8
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r5, #0
	adds r0, #0xa5
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BFDC: .4byte gGame
_0803BFE0: .4byte 0x00008373
_0803BFE4: .4byte 0x00008374
_0803BFE8: .4byte 0x00008375
	.syntax divided

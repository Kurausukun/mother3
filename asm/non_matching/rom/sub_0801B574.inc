	.syntax unified
sub_0801B574:
	push {r4, r5, lr}
	ldr r3, _0801B5C8
	ldr r4, _0801B5CC
	adds r2, r3, r4
	movs r4, #0
	str r4, [r2]
	ldr r5, _0801B5D0
	adds r2, r3, r5
	str r0, [r2]
	ldr r2, _0801B5D4
	adds r0, r3, r2
	strh r1, [r0]
	ldr r5, _0801B5D8
	adds r0, r3, r5
	strh r4, [r0]
	ldr r1, _0801B5DC
	adds r0, r3, r1
	strh r4, [r0]
	adds r2, #6
	adds r1, r3, r2
	ldr r0, _0801B5E0
	strh r0, [r1]
	ldr r4, _0801B5E4
	adds r1, r3, r4
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r5, #8
	adds r3, r3, r5
	ldrb r1, [r3]
	subs r0, #0x10
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B5C8: .4byte gGame
_0801B5CC: .4byte 0x000084BC
_0801B5D0: .4byte 0x000084B8
_0801B5D4: .4byte 0x00009476
_0801B5D8: .4byte 0x00009478
_0801B5DC: .4byte 0x0000947A
_0801B5E0: .4byte 0x0000FFFF
_0801B5E4: .4byte 0x0000947E
	.syntax divided

	.syntax unified
	push {lr}
	ldr r1, _0802B564
	ldr r0, [r1]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0802B55E
	ldr r0, _0802B568
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B56C
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B56C
_0802B55E:
	movs r0, #0
	b _0802B576
	.align 2, 0
_0802B564: .4byte gGame
_0802B568: .4byte 0x000082B4
_0802B56C:
	bl sub_08039B5C
	bl sub_08025B3C
	movs r0, #1
_0802B576:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

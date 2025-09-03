	.syntax unified
	push {lr}
	bl sub_08034158
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B62E
	ldr r0, _0800B634
	ldr r1, _0800B638
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bl sub_080340F8
_0800B62E:
	pop {r0}
	bx r0
	.align 2, 0
_0800B634: .4byte gGame
_0800B638: .4byte 0x0000829B
	.syntax divided

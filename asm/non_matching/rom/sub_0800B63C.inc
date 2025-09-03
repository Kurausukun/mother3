	.syntax unified
	push {lr}
	bl sub_080345AC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B652
	ldr r0, _0800B658
	ldr r1, _0800B65C
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
_0800B652:
	pop {r0}
	bx r0
	.align 2, 0
_0800B658: .4byte gGame
_0800B65C: .4byte 0x0000829B
	.syntax divided

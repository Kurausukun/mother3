	.syntax unified
	push {lr}
	ldr r2, _08037954
	ldrh r0, [r2, #0xa]
	cmp r0, #2
	beq _0803794E
	movs r1, #0
	movs r0, #2
	strh r0, [r2, #0xa]
	strh r1, [r2, #8]
_0803794E:
	pop {r0}
	bx r0
	.align 2, 0
_08037954: .4byte gUnknown_02018D08
	.syntax divided

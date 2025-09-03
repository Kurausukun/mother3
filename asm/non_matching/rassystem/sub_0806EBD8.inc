	.syntax unified
	push {r4, lr}
	ldr r1, _0806EC00
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806EBF4
	ldr r4, _0806EC04
	movs r0, #0x38
	bl __builtin_new
	bl sub_0806EC5C
	str r0, [r4]
_0806EBF4:
	ldr r0, _0806EC04
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806EC00: .4byte gUnknown_02001E78
_0806EC04: .4byte gUnknown_02001E7C
	.syntax divided

	.syntax unified
	push {r4, lr}
	adds r4, r1, #0
	cmp r4, #0
	blt _08086C60
	bl sub_08086C3C
	cmp r4, r0
	bge _08086C60
	ldr r1, _08086C5C
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08086C62
	.align 2, 0
_08086C5C: .4byte gUnknown_08112818
_08086C60:
	movs r0, #0
_08086C62:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided

	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806C9D4
	adds r2, r0, #0
	adds r4, #0x20
	ldr r0, [r4, #4]
	cmp r2, r0
	blt _0806C9BC
	ldr r0, _0806C9B8
	b _0806C9CE
	.align 2, 0
_0806C9B8: .4byte 0x0000FFFF
_0806C9BC:
	lsls r2, r2, #3
	ldr r1, [r4, #8]
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, [r4, #8]
	adds r0, r0, r2
	ldrh r0, [r0, #2]
_0806C9CE:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided

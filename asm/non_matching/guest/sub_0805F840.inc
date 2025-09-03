	.syntax unified
	push {lr}
	cmp r1, #0
	blt _0805F85A
	adds r2, r0, #0
	adds r2, #0x24
	ldr r0, [r2, #4]
	cmp r1, r0
	bge _0805F85A
	lsls r1, r1, #3
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r0, [r0]
	b _0805F85C
_0805F85A:
	movs r0, #0
_0805F85C:
	pop {r1}
	bx r1
	.syntax divided

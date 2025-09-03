	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r3, #0
	adds r0, #0x24
	ldr r2, [r0, #4]
	cmp r3, r2
	bge _0805F982
	adds r1, r2, #0
	ldr r2, [r0, #8]
_0805F970:
	ldr r0, [r2]
	cmp r0, r4
	bne _0805F97A
	adds r0, r3, #0
	b _0805F984
_0805F97A:
	adds r2, #8
	adds r3, #1
	cmp r3, r1
	blt _0805F970
_0805F982:
	ldr r0, [r5, #0x28]
_0805F984:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

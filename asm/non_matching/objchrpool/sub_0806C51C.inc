	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _0806C558
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x20
	cmp r0, #0
	beq _0806C548
	adds r4, r5, #0
	adds r4, #0x50
	cmp r0, r4
	beq _0806C548
	adds r6, r0, #0
_0806C538:
	subs r4, #0xc
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806C544
	bl __builtin_vec_delete
_0806C544:
	cmp r6, r4
	bne _0806C538
_0806C548:
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C558: .4byte vt_09F7F0B0
	.syntax divided

	.syntax unified
	push {r4, lr}
	ldr r1, _0806A99C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806A990
	ldr r4, _0806A9A0
	movs r0, #0x7c
	bl __builtin_new
	bl sub_0806A9F8
	str r0, [r4]
_0806A990:
	ldr r0, _0806A9A0
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806A99C: .4byte gUnknown_02001CD8
_0806A9A0: .4byte gUnknown_02001CDC
	.syntax divided

	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r4, _0804B730
	movs r1, #0x8a
	lsls r1, r1, #7
	adds r0, r4, r1
	movs r1, #0
	strb r3, [r0]
	ldr r2, _0804B734
	adds r0, r4, r2
	str r1, [r0]
	ldr r0, _0804B738
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	cmp r3, #0xa
	bhi _0804B72A
	ldr r1, _0804B73C
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0804B72A
	ldr r2, _0804B740
	adds r0, r4, r2
	bl _call_via_r1
_0804B72A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B730: .4byte gSomeBlend
_0804B734: .4byte 0x000044FC
_0804B738: .4byte 0x00004501
_0804B73C: .4byte gUnknown_09B8FE9C
_0804B740: .4byte 0x000044F8
	.syntax divided

	.syntax unified
sub_0809E744:
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	movs r1, #0xe
	bl _call_via_r2
	movs r1, #0
	cmp r5, r0
	bge _0809E772
	movs r1, #1
_0809E772:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

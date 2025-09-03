	.syntax unified
	push {lr}
	ldr r1, _0803E2D8
	ldr r0, _0803E2DC
	adds r3, r1, r0
	ldrb r2, [r3]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldr r0, _0803E2E0
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	bl sub_08050DB4
	pop {r0}
	bx r0
	.align 2, 0
_0803E2D8: .4byte gSomeBlend
_0803E2DC: .4byte 0x000044F2
_0803E2E0: .4byte 0x000044F3
	.syntax divided

	.syntax unified
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, #0
	blt _08084D86
	adds r1, r0, #0
	ldr r0, [r2, #0x30]
	cmp r1, r0
	bge _08084D86
	adds r3, r1, #0
_08084D86:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.syntax divided

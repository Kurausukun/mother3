	.syntax unified
sub_080407AC:
	push {lr}
	sub sp, #8
	ldr r1, _080407DC
	ldrh r2, [r1, #8]
	ldr r0, _080407E0
	ands r0, r2
	ldrh r2, [r1, #8]
	strh r0, [r1, #8]
	movs r0, #0x57
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0x52
	movs r2, #0x8e
	bl sub_08047CDC
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_080407DC: .4byte gSomeBlend
_080407E0: .4byte 0x0000FDFF
	.syntax divided

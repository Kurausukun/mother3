	.syntax unified
sub_080464A8:
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08046508
	ldr r1, _0804650C
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0xc
	movs r2, #0x86
	bl sub_08046974
	movs r0, #0x82
	bl sub_080486A0
	movs r6, #1
	rsbs r6, r6, #0
	movs r5, #0xf
	str r5, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r1, #0x26
	movs r2, #0x87
	adds r3, r6, #0
	bl sub_08047CDC
	movs r0, #3
	bl sub_080486A0
	str r5, [sp]
	str r4, [sp, #4]
	movs r1, #0x44
	movs r2, #0x93
	adds r3, r6, #0
	bl sub_08047CDC
	movs r0, #4
	bl sub_080486A0
	str r5, [sp]
	str r4, [sp, #4]
	movs r1, #0x94
	movs r2, #0x93
	adds r3, r6, #0
	bl sub_08047CDC
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08046508: .4byte gSomeBlend
_0804650C: .4byte 0x000041D5
	.syntax divided

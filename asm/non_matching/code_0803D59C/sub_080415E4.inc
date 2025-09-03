	.syntax unified
	push {r4, lr}
	sub sp, #8
	ldr r4, _0804164C
	ldrb r1, [r4, #6]
	movs r2, #1
	orrs r1, r2
	strb r1, [r4, #6]
	ldrh r1, [r0, #4]
	ldrh r0, [r0, #2]
	subs r0, #1
	cmp r1, r0
	bge _08041620
	ldr r0, _08041650
	ldr r3, _08041654
	ldr r2, _08041658
	adds r1, r4, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r2, #0x8e
	movs r1, #1
	str r1, [sp]
	movs r1, #0xd6
	movs r3, #0x20
	bl sub_08046A28
_08041620:
	movs r0, #0x45
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0xc0
	movs r2, #7
	bl sub_08047CDC
	bl sub_080469CC
	bl sub_08044614
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804164C: .4byte gUnknown_0200F920
_08041650: .4byte gUnknown_080C660C
_08041654: .4byte gUnknown_080C6984
_08041658: .4byte 0x00006474
	.syntax divided

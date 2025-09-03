	.syntax unified
	push {r4, r5, lr}
	ldr r2, _0801220C
	movs r4, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r3, #0
_080121DC:
	ldrb r0, [r2, #0xc]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0xc]
	str r3, [r2]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #0x10
	cmp r4, #0x18
	bls _080121DC
	movs r0, #0
	bl sub_08012238
	bl sub_0801230C
	bl sub_080129BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801220C: .4byte gUnknown_0200B7D0
	.syntax divided

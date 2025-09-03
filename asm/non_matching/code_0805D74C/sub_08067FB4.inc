	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x1c]
	adds r5, r0, #0
	adds r5, #0xb8
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r6, r4
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r4, r0, #0
	cmp r4, #0
	bgt _08067FEA
	movs r0, #0
	b _0806800C
_08067FEA:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	subs r2, r4, #1
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r3
	adds r0, r6, #0
	bl sub_08068398
	adds r0, r6, #0
	bl sub_08068408
	movs r0, #1
_0806800C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

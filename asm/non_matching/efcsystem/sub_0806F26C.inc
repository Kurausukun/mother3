	.syntax unified
sub_0806F26C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0806F2C8
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_0808959C
	adds r4, r0, #0
	cmp r4, #0
	beq _0806F2AE
_0806F282:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r4, #0
	beq _0806F2A8
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806F2A8:
	adds r4, r5, #0
	cmp r4, #0
	bne _0806F282
_0806F2AE:
	adds r0, r6, #0
	adds r0, #0x34
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080894DC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F2C8: .4byte vt_09F80238
	.syntax divided

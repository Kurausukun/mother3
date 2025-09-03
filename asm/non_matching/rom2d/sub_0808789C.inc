	.syntax unified
sub_0808789C:
	push {r4, r5, lr}
	adds r1, r0, #0
	ldr r0, _080878B0
	adds r5, r1, r0
	ldr r0, [r5]
	cmp r0, #0
	bne _080878B4
	movs r0, #0
	b _080878DA
	.align 2, 0
_080878B0: .4byte 0x00000434
_080878B4:
	ldr r3, _080878E0
	adds r4, r1, r3
	ldr r2, [r4]
	cmp r2, #0
	beq _080878D4
	ldr r1, [r2, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #0
	str r0, [r4]
_080878D4:
	movs r0, #0
	str r0, [r5]
	movs r0, #1
_080878DA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080878E0: .4byte 0x0000042C
	.syntax divided

	.syntax unified
sub_080AAAF4:
	push {r4, lr}
	movs r4, #0
	b _080AAB28
_080AAAFA:
	adds r0, r4, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #1
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAB26
	adds r0, r4, #0
	bl sub_08072AA4__Fi
	b _080AAB32
_080AAB26:
	adds r4, #1
_080AAB28:
	bl sub_08072A88__Fv
	cmp r4, r0
	blt _080AAAFA
	movs r0, #0
_080AAB32:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided

	.syntax unified
sub_080B8A9C:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8ACE
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8ACE
	movs r0, #0
	b _080B8AD0
_080B8ACE:
	movs r0, #1
_080B8AD0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

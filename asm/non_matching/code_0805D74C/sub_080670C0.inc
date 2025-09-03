	.syntax unified
sub_080670C0:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08087A98
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080670EE
	movs r0, #0
	b _080670F6
_080670EE:
	adds r0, r4, #0
	bl sub_08067304
	movs r0, #1
_080670F6:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided

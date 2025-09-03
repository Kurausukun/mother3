	.syntax unified
sub_0806815C:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x9b
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
	beq _0806818A
	movs r0, #0
	b _08068192
_0806818A:
	adds r0, r4, #0
	bl sub_08068408
	movs r0, #1
_08068192:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided

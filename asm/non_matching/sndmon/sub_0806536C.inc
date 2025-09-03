	.syntax unified
sub_0806536C:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08074614
	cmp r0, #0
	beq _080653A0
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _08065398
	adds r0, #0xff
_08065398:
	asrs r0, r0, #8
	ldrh r3, [r4, #0x2e]
	adds r0, r0, r3
	b _080653A6
_080653A0:
	ldrh r0, [r4, #0x30]
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
_080653A6:
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	bl sub_080653C4
	adds r0, r4, #0
	bl sub_08065514
	adds r1, r4, #0
	adds r1, #0xf8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided

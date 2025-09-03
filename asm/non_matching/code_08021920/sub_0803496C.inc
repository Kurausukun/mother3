	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xa2
	ldrh r0, [r0]
	cmp r0, #0
	bne _080349B8
	adds r0, r4, #0
	adds r0, #0xb0
	ldrh r2, [r0]
	adds r0, #2
	ldrh r3, [r0]
	movs r0, #0
	movs r1, #0x80
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r2, r4, #0
	adds r2, #0xae
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _080349A4
	rsbs r0, r0, #0
_080349A4:
	muls r0, r1, r0
	asrs r1, r0, #8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _080349B2
	rsbs r1, r1, #0
_080349B2:
	lsls r0, r1, #4
	rsbs r0, r0, #0
	strh r0, [r4, #6]
_080349B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

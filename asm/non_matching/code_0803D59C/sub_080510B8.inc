	.syntax unified
sub_080510B8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x6a
	ldrh r2, [r5]
	adds r6, r4, #0
	adds r6, #0x6c
	ldrh r3, [r6]
	movs r0, #0
	movs r1, #0x80
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r3, r4, #0
	adds r3, #0x68
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bge _080510EA
	rsbs r0, r0, #0
_080510EA:
	muls r0, r1, r0
	asrs r1, r0, #8
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	bge _080510F8
	rsbs r1, r1, #0
_080510F8:
	ldrh r0, [r5]
	adds r0, #1
	movs r2, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r4, [r6]
	cmp r0, r4
	blo _08051110
	strh r2, [r6]
	strh r2, [r5]
	strh r2, [r3]
_08051110:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided

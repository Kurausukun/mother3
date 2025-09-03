	.syntax unified
sub_08034A10:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsrs r6, r0, #7
	cmp r6, #0
	beq _08034A22
	movs r0, #0
	b _08034A84
_08034A22:
	adds r5, r4, #0
	adds r5, #0xb0
	ldrh r2, [r5]
	adds r7, r4, #0
	adds r7, #0xb2
	ldrh r3, [r7]
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
	bge _08034A50
	rsbs r0, r0, #0
_08034A50:
	muls r0, r1, r0
	asrs r1, r0, #8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _08034A5E
	rsbs r1, r1, #0
_08034A5E:
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08034A70
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_08034A70:
	ldrh r0, [r5]
	ldrh r3, [r7]
	cmp r0, r3
	blo _08034A7E
	strh r6, [r7]
	strh r6, [r5]
	strh r6, [r2]
_08034A7E:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08034A84:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

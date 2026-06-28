	.syntax unified
sub_080363A0:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r3, [r4, #0x3c]
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080363BA
	ldrh r5, [r3]
	ldrh r1, [r3, #2]
	b _080363E4
_080363BA:
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #4
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	bl lerp2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, [r4, #0x3c]
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r2, #6
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	bl lerp2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080363E4:
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	ldr r0, [r4, #0x3c]
	movs r1, #8
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #1
	bl sub_08032E20
	ldr r1, [r4, #0x3c]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #8]
	adds r0, r0, r2
	strh r0, [r1, #8]
	ldr r2, [r4, #0x3c]
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08036446
	ldrh r0, [r2, #0xe]
	adds r0, #1
	strh r0, [r2, #0xe]
	ldr r0, [r4, #0x3c]
	ldrh r1, [r0, #0xe]
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _08036446
	adds r0, r4, #0
	bl sub_08036388
	cmp r5, #0
	beq _0803643A
	cmp r6, #0
	bne _08036446
_0803643A:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #5
	bl sub_08033620
_08036446:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

	.syntax unified
sub_080AB7C4:
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r1, r5, #0
	bl removeOneStatus__4Uniti
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB7DE
	movs r0, #0
	b _080AB81E
_080AB7DE:
	cmp r5, #0x16
	bne _080AB81C
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB81C
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080AB81C:
	movs r0, #1
_080AB81E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided

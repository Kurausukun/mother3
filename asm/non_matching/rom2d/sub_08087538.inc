	.syntax unified
sub_08087538:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r0, r6, #2
	adds r0, r0, r4
	adds r5, r0, #0
	adds r5, #0x28
	ldr r1, _080875DC
	adds r0, r4, r1
	ldr r1, [r5]
	ldr r0, [r0]
	cmp r1, r0
	bne _08087562
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08087562:
	movs r0, #0x85
	lsls r0, r0, #3
	adds r7, r4, r0
	ldr r1, [r5]
	ldr r0, [r7]
	cmp r1, r0
	bne _080875A4
	ldr r1, [r4, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080875A4
	ldr r1, [r4, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080875A4
	movs r0, #0
	str r0, [r7]
_080875A4:
	adds r7, r4, #0
	adds r7, #0x24
	ldr r0, [r4, #0x24]
	cmp r6, r0
	bge _080875E0
	adds r1, r6, #0
	adds r2, r1, #1
	adds r5, r0, #0
	cmp r2, r5
	bge _080875D2
	adds r3, r4, #0
	adds r3, #0x28
	adds r4, r5, #0
_080875BE:
	lsls r0, r1, #2
	adds r0, r3, r0
	lsls r1, r2, #2
	adds r1, r3, r1
	ldr r1, [r1]
	str r1, [r0]
	adds r1, r2, #0
	adds r2, #1
	cmp r2, r4
	blt _080875BE
_080875D2:
	subs r0, r5, #1
	str r0, [r7]
	movs r0, #1
	b _080875E2
	.align 2, 0
_080875DC: .4byte 0x0000042C
_080875E0:
	movs r0, #0
_080875E2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided

	.syntax unified
sub_080B4288:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #1
	bne _080B42D0
	ldr r1, [r5, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r6, #0
	bl sub_08073198
	b _080B4308
_080B42D0:
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r6, #0
	bl sub_08073198
_080B4308:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

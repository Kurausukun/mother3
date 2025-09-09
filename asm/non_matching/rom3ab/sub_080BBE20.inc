	.syntax unified
sub_080BBE20:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl disableAllStatuses
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBE76
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	cmp r0, #2
	bgt _080BBE76
	movs r0, #0
	b _080BBE78
_080BBE76:
	movs r0, #1
_080BBE78:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

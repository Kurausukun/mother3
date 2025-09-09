	.syntax unified
sub_080AC37C:
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AC396
	cmp r2, #1
	bne _080AC3B2
_080AC396:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AC3B4
_080AC3B2:
	movs r0, #0
_080AC3B4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

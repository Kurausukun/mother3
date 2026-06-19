	.syntax unified
sub_080AA2D4:
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	blt _080AA2EE
	cmp r2, #1
	bne _080AA30A
_080AA2EE:
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
	b _080AA30C
_080AA30A:
	movs r0, #0
_080AA30C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

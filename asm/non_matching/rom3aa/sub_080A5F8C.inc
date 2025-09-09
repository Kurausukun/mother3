	.syntax unified
sub_080A5F8C:
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A5FA4
	cmp r0, #1
	beq _080A5FAE
	movs r0, #0
	b _080A5FC2
_080A5FA4:
	ldr r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A5FB6
_080A5FAE:
	ldr r1, [r2, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
_080A5FB6:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080A5FC2:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

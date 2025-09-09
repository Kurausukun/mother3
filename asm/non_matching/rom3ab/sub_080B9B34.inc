	.syntax unified
sub_080B9B34:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9B8E
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r1, #0x2d
	movs r2, #0
	bl tellStatusWoreOff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9B8E
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0
	bl tellStatusWoreOff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9B8E
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0
	bl tellStatusWoreOff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9B8E
	movs r0, #0
	b _080B9B90
_080B9B8E:
	movs r0, #1
_080B9B90:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

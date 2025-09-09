	.syntax unified
sub_080B8B60:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8BBA
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r1, #0x29
	movs r2, #0
	bl tellStatusWoreOff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8BB6
	adds r0, r4, #0
	movs r1, #0x1d
	movs r2, #0
	bl tellStatusWoreOff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8BBA
	adds r0, r4, #0
	movs r1, #0x32
	movs r2, #0
	bl tellStatusWoreOff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8BBA
_080B8BB6:
	movs r0, #0
	b _080B8BBC
_080B8BBA:
	movs r0, #1
_080B8BBC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

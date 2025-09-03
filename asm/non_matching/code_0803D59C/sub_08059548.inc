	.syntax unified
sub_08059548:
	push {lr}
	adds r1, r0, #0
	ldr r0, _08059570
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08059590
	adds r0, r1, #0
	adds r0, #0x65
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08059582
	cmp r0, #1
	bgt _08059574
	cmp r0, #0
	beq _0805957A
	b _08059590
	.align 2, 0
_08059570: .4byte gUnknown_02015DC0
_08059574:
	cmp r0, #2
	beq _0805958A
	b _08059590
_0805957A:
	adds r0, r1, #0
	bl sub_08059594
	b _08059590
_08059582:
	adds r0, r1, #0
	bl sub_080595D8
	b _08059590
_0805958A:
	adds r0, r1, #0
	bl sub_08059608
_08059590:
	pop {r0}
	bx r0
	.syntax divided

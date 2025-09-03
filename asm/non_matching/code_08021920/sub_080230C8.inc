	.syntax unified
sub_080230C8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrh r0, [r4]
	ldr r2, _080230D8
	cmp r0, r2
	bne _080230DC
_080230D4:
	movs r0, #0
	b _08023108
	.align 2, 0
_080230D8: .4byte 0x0000FFFF
_080230DC:
	ldr r1, _08023110
	cmp r0, r1
	beq _08023104
	adds r7, r2, #0
	adds r6, r1, #0
	ldr r5, _08023114
_080230E8:
	ldrh r0, [r4]
	cmp r0, r7
	beq _080230D4
	cmp r0, r5
	bls _080230FC
	bl sub_08022ED0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_080230FC:
	adds r4, #2
	ldrh r0, [r4]
	cmp r0, r6
	bne _080230E8
_08023104:
	adds r4, #2
	adds r0, r4, #0
_08023108:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08023110: .4byte 0x0000FF01
_08023114: .4byte 0x0000FEFF
	.syntax divided

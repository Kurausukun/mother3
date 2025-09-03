	.syntax unified
sub_08001B18:
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x1f
	ands r0, r2
	cmp r0, #0
	bne _08001B36
	movs r4, #3
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	bne _08001B36
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08001B42
_08001B36:
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	adds r0, r3, #0
	bl CpuSet
	b _08001B4C
_08001B42:
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	adds r0, r3, #0
	bl sub_08090F74
_08001B4C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

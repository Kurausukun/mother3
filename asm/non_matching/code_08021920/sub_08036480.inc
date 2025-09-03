	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl get_obj_direct
	cmp r4, #0
	beq _08036498
	cmp r4, #1
	beq _080364A4
	b _080364B0
_08036498:
	adds r2, r0, #0
	adds r2, #0xc6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	b _080364AC
_080364A4:
	adds r2, r0, #0
	adds r2, #0xc6
	ldrb r1, [r2]
	movs r0, #0x7f
_080364AC:
	ands r0, r1
	strb r0, [r2]
_080364B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

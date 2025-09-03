	.syntax unified
sub_08084C48:
	push {lr}
	adds r2, r1, #0
	adds r0, #0x40
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08084C5E
	adds r0, r2, #0
	bl setsleep
_08084C5E:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

	.syntax unified
sub_080335F0:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r2, r0, #0
	adds r2, #0x50
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803361A
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #2
	ands r0, r1
	strb r0, [r2]
_0803361A:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

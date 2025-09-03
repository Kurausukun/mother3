	.syntax unified
	push {lr}
	movs r0, #0
	bl get_obj_direct
	ldr r2, _08026934
	adds r0, #0x8b
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	strb r0, [r2, #1]
	pop {r0}
	bx r0
	.align 2, 0
_08026934: .4byte gEncounter
	.syntax divided

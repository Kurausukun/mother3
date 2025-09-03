	.syntax unified
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_0800196C
	ldr r5, _08056CB8
	adds r0, r5, #0
	bl sub_08056CC0
	ldr r1, _08056CBC
	adds r0, r5, r1
	adds r1, #0x50
	adds r5, r5, r1
	adds r1, r5, #0
	bl sub_08056D78
	adds r0, r4, #0
	bl sub_080019A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056CB8: .4byte gUnknown_02018CD8
_08056CBC: .4byte 0xFFFFD350
	.syntax divided

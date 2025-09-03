	.syntax unified
sub_0805689C:
	push {r4, lr}
	bl sub_080568D0
	ldr r0, _080568C8
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080568BA
	ldr r4, _080568CC
	adds r0, r4, #0
	bl sub_0800164C
	adds r0, r4, #0
	bl sub_08057DA0
_080568BA:
	bl sub_080568E0
	bl nullsub_08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080568C8: .4byte gUnknown_02015DA0
_080568CC: .4byte gUnknown_02018CC8
	.syntax divided

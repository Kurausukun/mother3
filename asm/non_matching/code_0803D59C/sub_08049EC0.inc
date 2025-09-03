	.syntax unified
	push {r4, lr}
	ldr r0, _08049EE0
	ldr r1, _08049EE4
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #5
	beq _08049ED8
	movs r0, #0x15
	bl sub_0804A1C0
	movs r0, #5
	strb r0, [r4]
_08049ED8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049EE0: .4byte gSomeBlend
_08049EE4: .4byte 0x00004261
	.syntax divided

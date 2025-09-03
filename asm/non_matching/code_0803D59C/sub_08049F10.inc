	.syntax unified
	push {r4, lr}
	ldr r0, _08049F30
	ldr r1, _08049F34
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #7
	beq _08049F28
	movs r0, #0x17
	bl sub_0804A1C0
	movs r0, #7
	strb r0, [r4]
_08049F28:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049F30: .4byte gSomeBlend
_08049F34: .4byte 0x00004261
	.syntax divided

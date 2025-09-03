	.syntax unified
	push {r4, lr}
	ldr r0, _08049F58
	ldr r1, _08049F5C
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #8
	beq _08049F50
	movs r0, #0x11
	bl sub_0804A1C0
	movs r0, #8
	strb r0, [r4]
_08049F50:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049F58: .4byte gSomeBlend
_08049F5C: .4byte 0x00004261
	.syntax divided

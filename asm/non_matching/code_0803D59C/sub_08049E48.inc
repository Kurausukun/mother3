	.syntax unified
	push {r4, lr}
	ldr r0, _08049E68
	ldr r1, _08049E6C
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #2
	beq _08049E60
	movs r0, #8
	bl sub_0804A1C0
	movs r0, #2
	strb r0, [r4]
_08049E60:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049E68: .4byte gSomeBlend
_08049E6C: .4byte 0x00004261
	.syntax divided

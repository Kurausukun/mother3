	.syntax unified
	push {r4, lr}
	ldr r0, _08049FF8
	ldr r1, _08049FFC
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0xd
	beq _08049FF0
	movs r0, #0x11
	bl sub_0804A1C0
	movs r0, #0xd
	strb r0, [r4]
_08049FF0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049FF8: .4byte gSomeBlend
_08049FFC: .4byte 0x00004261
	.syntax divided

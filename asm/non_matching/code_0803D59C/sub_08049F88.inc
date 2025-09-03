	.syntax unified
	push {r4, lr}
	ldr r0, _08049FA8
	ldr r1, _08049FAC
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _08049FA0
	movs r0, #0x14
	bl sub_0804A1C0
	movs r0, #0xa
	strb r0, [r4]
_08049FA0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049FA8: .4byte gSomeBlend
_08049FAC: .4byte 0x00004261
	.syntax divided

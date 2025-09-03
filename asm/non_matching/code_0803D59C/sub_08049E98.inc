	.syntax unified
sub_08049E98:
	push {r4, lr}
	ldr r0, _08049EB8
	ldr r1, _08049EBC
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #4
	beq _08049EB0
	movs r0, #8
	bl sub_0804A1C0
	movs r0, #4
	strb r0, [r4]
_08049EB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049EB8: .4byte gSomeBlend
_08049EBC: .4byte 0x00004261
	.syntax divided

	.syntax unified
sub_08049E70:
	push {r4, lr}
	ldr r0, _08049E90
	ldr r1, _08049E94
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #3
	beq _08049E88
	movs r0, #9
	bl sub_0804A1C0
	movs r0, #3
	strb r0, [r4]
_08049E88:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049E90: .4byte gSomeBlend
_08049E94: .4byte 0x00004261
	.syntax divided

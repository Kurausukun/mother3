	.syntax unified
	push {r4, lr}
	ldr r0, _0804A020
	ldr r1, _0804A024
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0xe
	beq _0804A018
	movs r0, #0x12
	bl sub_0804A1C0
	movs r0, #0xe
	strb r0, [r4]
_0804A018:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A020: .4byte gSomeBlend
_0804A024: .4byte 0x00004261
	.syntax divided

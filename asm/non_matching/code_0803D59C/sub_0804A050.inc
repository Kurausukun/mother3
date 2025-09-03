	.syntax unified
	push {r4, lr}
	ldr r0, _0804A070
	ldr r1, _0804A074
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0x10
	beq _0804A068
	movs r0, #0x13
	bl sub_0804A1C0
	movs r0, #0x10
	strb r0, [r4]
_0804A068:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A070: .4byte gSomeBlend
_0804A074: .4byte 0x00004261
	.syntax divided

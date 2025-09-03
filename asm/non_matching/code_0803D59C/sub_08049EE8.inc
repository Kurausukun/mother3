	.syntax unified
sub_08049EE8:
	push {r4, lr}
	ldr r0, _08049F08
	ldr r1, _08049F0C
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #6
	beq _08049F00
	movs r0, #0x16
	bl sub_0804A1C0
	movs r0, #6
	strb r0, [r4]
_08049F00:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049F08: .4byte gSomeBlend
_08049F0C: .4byte 0x00004261
	.syntax divided

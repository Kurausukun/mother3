	.syntax unified
sub_08049FB0:
	push {r4, lr}
	ldr r0, _08049FD0
	ldr r1, _08049FD4
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0xc
	beq _08049FC8
	movs r0, #0x14
	bl sub_0804A1C0
	movs r0, #0xc
	strb r0, [r4]
_08049FC8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049FD0: .4byte gSomeBlend
_08049FD4: .4byte 0x00004261
	.syntax divided

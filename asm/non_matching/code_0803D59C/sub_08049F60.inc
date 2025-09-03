	.syntax unified
sub_08049F60:
	push {r4, lr}
	ldr r0, _08049F80
	ldr r1, _08049F84
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #9
	beq _08049F78
	movs r0, #0x12
	bl sub_0804A1C0
	movs r0, #9
	strb r0, [r4]
_08049F78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049F80: .4byte gSomeBlend
_08049F84: .4byte 0x00004261
	.syntax divided

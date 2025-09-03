	.syntax unified
sub_0804A028:
	push {r4, lr}
	ldr r0, _0804A048
	ldr r1, _0804A04C
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0xf
	beq _0804A040
	movs r0, #0x13
	bl sub_0804A1C0
	movs r0, #0xf
	strb r0, [r4]
_0804A040:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A048: .4byte gSomeBlend
_0804A04C: .4byte 0x00004261
	.syntax divided

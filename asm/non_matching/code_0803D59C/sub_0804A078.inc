	.syntax unified
	push {r4, lr}
	ldr r1, _0804A09C
	ldr r0, _0804A0A0
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0x11
	beq _0804A094
	ldr r2, _0804A0A4
	adds r0, r1, r2
	ldrh r0, [r0]
	bl sub_0804A218
	movs r0, #0x11
	strb r0, [r4]
_0804A094:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A09C: .4byte gSomeBlend
_0804A0A0: .4byte 0x00004261
_0804A0A4: .4byte 0x00003004
	.syntax divided

	.syntax unified
sub_0804A188:
	push {r4, lr}
	ldr r1, _0804A1B4
	ldr r0, _0804A1B8
	adds r4, r1, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0804A1AE
	ldr r2, _0804A1BC
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r0, #0x18
	bl sub_0804A448
	ldrb r1, [r4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_0804A1AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A1B4: .4byte gSomeBlend
_0804A1B8: .4byte 0x000044F2
_0804A1BC: .4byte 0x00004263
	.syntax divided

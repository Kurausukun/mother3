	.syntax unified
	push {r4, lr}
	ldr r0, _0804A180
	ldr r1, _0804A184
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0x13
	beq _0804A17A
	movs r0, #0x54
	bl sub_0804A1C0
	movs r0, #0x55
	bl sub_0804A508
	movs r0, #0x13
	strb r0, [r4]
_0804A17A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A180: .4byte gSomeBlend
_0804A184: .4byte 0x00004261
	.syntax divided

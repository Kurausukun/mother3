	.syntax unified
sub_08049E20:
	push {r4, lr}
	ldr r0, _08049E40
	ldr r1, _08049E44
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #1
	beq _08049E38
	movs r0, #0x10
	bl sub_0804A1C0
	movs r0, #1
	strb r0, [r4]
_08049E38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049E40: .4byte gSomeBlend
_08049E44: .4byte 0x00004261
	.syntax divided

	.syntax unified
sub_080B259C:
	push {r4, lr}
	bl onSuccess__6ActionP4Unit
	movs r0, #0x5d
	bl sub_08072EE4
	adds r4, r0, #0
	cmp r4, #0
	beq _080B25BA
	ldr r0, _080B25C0
	bl PlaySoundBlocking
	adds r0, r4, #0
	bl sub_08072FE0
_080B25BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B25C0: .4byte 0x0000060E
	.syntax divided

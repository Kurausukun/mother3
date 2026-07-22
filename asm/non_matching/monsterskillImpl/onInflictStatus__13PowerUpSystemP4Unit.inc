	.syntax unified
onInflictStatus__13PowerUpSystemP4Unit:
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #1
	bl sub_08073E3C
	adds r0, r4, #0
	movs r1, #0x1d
	movs r2, #1
	bl sub_08073E3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

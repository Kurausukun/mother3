	.syntax unified
sub_080568D0:
	push {lr}
	ldr r0, _080568DC
	bl sub_08000E5C
	pop {r0}
	bx r0
	.align 2, 0
_080568DC: .4byte gSomeBlend+0x50 @ gSomeBlend._50
	.syntax divided

	.syntax unified
sub_08006850:
	push {lr}
	ldr r0, _08006860
	ldr r2, _08006864
	movs r1, #0x20
	bl Dma3Fill
	pop {r0}
	bx r0
	.align 2, 0
_08006860: .4byte 0x06008020
_08006864: .4byte 0x77777777
	.syntax divided

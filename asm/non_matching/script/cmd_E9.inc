	.syntax unified
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	ldr r1, _0801FF60
	ldr r2, _0801FF64
	adds r1, r1, r2
	strb r0, [r1]
	bl sub_08033B90
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_0801FF60: .4byte gGame
_0801FF64: .4byte 0x000082AF
	.syntax divided

	.syntax unified
sub_0809DF50:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0809DF68
	bl playSound
	adds r0, r4, #0
	bl playAnim__6Action
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809DF68: .4byte 0x00000652
	.syntax divided

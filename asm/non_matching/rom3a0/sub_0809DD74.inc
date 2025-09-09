	.syntax unified
sub_0809DD74:
	push {lr}
	bl tellUseMessage__6Action
	ldr r0, _0809DD84
	bl PlaySoundBlocking
	pop {r0}
	bx r0
	.align 2, 0
_0809DD84: .4byte 0x000002EE
	.syntax divided

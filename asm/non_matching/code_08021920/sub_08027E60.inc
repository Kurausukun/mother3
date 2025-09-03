	.syntax unified
sub_08027E60:
	push {lr}
	ldr r0, _08027E70
	movs r1, #1
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_08027E70: .4byte gScriptLogic
	.syntax divided

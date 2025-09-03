	.syntax unified
sub_08058614:
	push {lr}
	ldr r0, _08058628
	ldrb r0, [r0]
	cmp r0, #0
	beq _08058624
	ldr r0, _0805862C
	bl sub_08000E5C
_08058624:
	pop {r0}
	bx r0
	.align 2, 0
_08058628: .4byte gUnknown_02015DC0
_0805862C: .4byte gUnknown_02016078
	.syntax divided

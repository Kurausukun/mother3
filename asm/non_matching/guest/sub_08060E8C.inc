	.syntax unified
sub_08060E8C:
	push {lr}
	adds r2, r0, #0
	ldr r0, _08060EA8
	str r0, [r2, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08060EA2
	adds r0, r2, #0
	bl __builtin_delete
_08060EA2:
	pop {r0}
	bx r0
	.align 2, 0
_08060EA8: .4byte vt_09F46900
	.syntax divided

	.syntax unified
sub_08036030:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _08036042
	bl sub_0803B860
	movs r0, #0
	str r0, [r4, #0x38]
_08036042:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided

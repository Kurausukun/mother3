	.syntax unified
sub_08005A70:
	push {lr}
	ldr r1, _08005A88
	ldrh r0, [r1]
	cmp r0, #0
	beq _08005A84
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08005A8C
	ldr r0, _08005A90
	str r0, [r1, #4]
_08005A84:
	pop {r0}
	bx r0
	.align 2, 0
_08005A88: .4byte gUnknown_03004B0A
_08005A8C: .4byte gIntrHandlers
_08005A90: .4byte gUnknown_03004B14
	.syntax divided

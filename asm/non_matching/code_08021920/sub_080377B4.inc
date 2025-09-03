	.syntax unified
	push {lr}
	ldr r2, _080377CC
	ldrh r0, [r2, #0xa]
	cmp r0, #2
	beq _080377C6
	movs r1, #0
	movs r0, #2
	strh r0, [r2, #0xa]
	strh r1, [r2, #8]
_080377C6:
	pop {r0}
	bx r0
	.align 2, 0
_080377CC: .4byte gUnknown_02018CD8
	.syntax divided

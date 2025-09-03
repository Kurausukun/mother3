	.syntax unified
sub_08003DF8:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bgt _08003E18
	cmp r2, #2
	blt _08003E18
	ldr r0, _08003E14
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08003E1A
	.align 2, 0
_08003E14: .4byte gMPlayTable
_08003E18:
	movs r0, #0
_08003E1A:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

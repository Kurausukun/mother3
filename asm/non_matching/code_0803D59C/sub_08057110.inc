	.syntax unified
sub_08057110:
	push {lr}
	bl sub_080572F8
	ldr r0, _08057128
	ldr r1, _0805712C
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08057128: .4byte gSomeBlend
_0805712C: .4byte 0x00002C90
	.syntax divided

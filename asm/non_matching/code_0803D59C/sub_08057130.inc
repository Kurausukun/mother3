	.syntax unified
sub_08057130:
	push {lr}
	bl sub_080572F8
	ldr r0, _08057148
	ldr r1, _0805714C
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08057148: .4byte gSomeBlend
_0805714C: .4byte 0x00002C90
	.syntax divided

	.syntax unified
sub_08032DF4:
	push {lr}
	ldr r0, _08032E14
	ldr r2, _08032E18
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r3, _08032E1C
	adds r2, r0, r3
	ldrh r0, [r2]
	adds r1, r1, r0
	cmp r1, #0x7f
	bgt _08032E0E
	adds r0, #1
	strh r0, [r2]
_08032E0E:
	pop {r0}
	bx r0
	.align 2, 0
_08032E14: .4byte gSomeBlend
_08032E18: .4byte 0x000121B0
_08032E1C: .4byte 0x000121B2
	.syntax divided

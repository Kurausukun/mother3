	.syntax unified
sub_0805AE64:
	push {r4, r5, lr}
	ldr r1, _0805AE8C
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	ldr r4, _0805AE90
	adds r5, r4, #0
	adds r5, #0x50
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805AE94
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805AEE0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805AE8C: .4byte gUnknown_02015E00
_0805AE90: .4byte gSomeBlend
	.syntax divided

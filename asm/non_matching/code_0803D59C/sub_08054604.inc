	.syntax unified
sub_08054604:
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _0805461C
	ldr r2, _08054620
	adds r3, r0, r2
	ldr r2, [r3]
	adds r4, r0, #0
	cmp r2, r1
	bls _08054624
	subs r0, r2, r1
	b _08054626
	.align 2, 0
_0805461C: .4byte gSomeBlend
_08054620: .4byte 0x00002DF0
_08054624:
	movs r0, #0
_08054626:
	str r0, [r3]
	ldr r0, _08054638
	ldr r2, _0805463C
	adds r1, r4, r2
	ldr r1, [r1]
	str r1, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054638: .4byte gSave
_0805463C: .4byte 0x00002DF0
	.syntax divided

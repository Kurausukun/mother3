	.syntax unified
sub_080545C0:
	push {lr}
	ldr r2, _080545D8
	ldr r1, _080545DC
	adds r3, r2, r1
	ldr r1, [r3]
	adds r1, r1, r0
	ldr r0, _080545E0
	cmp r1, r0
	bhi _080545E4
	str r1, [r3]
	b _080545E8
	.align 2, 0
_080545D8: .4byte gSomeBlend
_080545DC: .4byte 0x00002DF0
_080545E0: .4byte 0x000F423E
_080545E4:
	ldr r0, _080545F8
	str r0, [r3]
_080545E8:
	ldr r0, _080545FC
	ldr r3, _08054600
	adds r1, r2, r3
	ldr r1, [r1]
	str r1, [r0, #8]
	pop {r0}
	bx r0
	.align 2, 0
_080545F8: .4byte 0x000F423F
_080545FC: .4byte gSave
_08054600: .4byte 0x00002DF0
	.syntax divided

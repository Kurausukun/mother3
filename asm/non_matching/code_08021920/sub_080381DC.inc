	.syntax unified
sub_080381DC:
	push {lr}
	ldr r0, _080381FC
	ldr r2, _08038200
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #3
	bhi _080381F8
	ldr r0, _08038204
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_080381F8:
	pop {r0}
	bx r0
	.align 2, 0
_080381FC: .4byte gSomeBlend
_08038200: .4byte 0x00003530
_08038204: .4byte gUnknown_08D2E13C
	.syntax divided

	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r0, _08057F90
	ldr r2, _08057F94
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #2
	bls _08057F8A
	adds r0, r1, #0
	bl sub_080016E4
_08057F8A:
	pop {r0}
	bx r0
	.align 2, 0
_08057F90: .4byte gSomeBlend
_08057F94: .4byte 0x00002CE4
	.syntax divided

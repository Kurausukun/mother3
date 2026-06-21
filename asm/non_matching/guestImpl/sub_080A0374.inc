	.syntax unified
_108__6Fassad:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x1d
	cmp r1, #0x3c
	blt _080A0390
	movs r0, #0x1f
	cmp r1, #0x61
	bge _080A0390
	movs r0, #0x1e
_080A0390:
	adds r1, r4, #0
	bl getGuestSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided

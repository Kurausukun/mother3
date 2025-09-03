	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl sub_08003DF8
	adds r1, r0, #0
	cmp r1, #0
	beq _08003B52
	ldr r0, [r1, #4]
	cmp r0, #0
	blt _08003B52
	adds r0, r1, #0
	adds r1, r4, #0
	bl m4aMPlayFadeOut
_08003B52:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided

	.syntax unified
sub_08003AB8:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl sub_08003DD0
	adds r1, r0, #0
	cmp r1, #0
	beq _08003ADA
	ldr r0, [r1, #4]
	cmp r0, #0
	blt _08003ADA
	adds r0, r1, #0
	adds r1, r4, #0
	bl m4aMPlayFadeOutTemporarily
_08003ADA:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided

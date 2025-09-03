	.syntax unified
sub_08003AE0:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r0, r5, #0
	bl sub_08003DF8
	adds r4, r0, #0
	cmp r4, #0
	beq _08003B22
	ldr r0, _08003B28
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r5, [r1]
	ldr r0, [r4, #4]
	cmp r0, #0
	blt _08003B22
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r1, _08003B2C
	adds r0, r4, #0
	movs r2, #0
	bl m4aMPlayVolumeControl
	adds r0, r5, #0
	bl m4aSongNumStop
	adds r0, r4, #0
	adds r1, r6, #0
	bl m4aMPlayFadeIn
_08003B22:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003B28: .4byte gUnknown_02015EC0
_08003B2C: .4byte 0x0000FFFF
	.syntax divided

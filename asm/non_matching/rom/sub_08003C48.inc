	.syntax unified
sub_08003C48:
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r0, #9
	bgt _08003C74
	cmp r0, #0
	blt _08003C74
	ldr r1, _08003C7C
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08003C80
	adds r2, r5, #0
	bl m4aMPlayVolumeControl
	ldr r0, _08003C84
	adds r4, r4, r0
	strh r5, [r4]
_08003C74:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003C7C: .4byte gMPlayTable
_08003C80: .4byte 0x0000FFFF
_08003C84: .4byte gUnknown_02015EF0
	.syntax divided

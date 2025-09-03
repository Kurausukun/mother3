	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r0, #9
	bgt _08003CBC
	cmp r0, #0
	blt _08003CBC
	ldr r1, _08003CC4
	lsls r5, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r1, _08003CC8
	adds r0, r4, #0
	adds r2, r6, #0
	bl m4aMPlayVolumeControl
	ldr r0, _08003CCC
	adds r5, r5, r0
	strh r6, [r5]
_08003CBC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003CC4: .4byte gMPlayTable
_08003CC8: .4byte 0x0000FFFF
_08003CCC: .4byte gUnknown_02015EF0
	.syntax divided

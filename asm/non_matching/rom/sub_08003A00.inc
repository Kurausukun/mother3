	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r0, r5, #0
	bl sub_08003DD0
	adds r4, r0, #0
	cmp r4, #0
	beq _08003A4C
	ldr r0, _08003A54
	lsls r6, r5, #1
	adds r0, r6, r0
	ldrh r5, [r0]
	ldr r0, [r4, #4]
	cmp r0, #0
	bge _08003A4C
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r1, _08003A58
	adds r0, r4, #0
	movs r2, #0
	bl m4aMPlayVolumeControl
	adds r0, r5, #0
	bl m4aSongNumStop
	adds r0, r4, #0
	adds r1, r7, #0
	bl m4aMPlayFadeIn
	ldr r0, _08003A5C
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
_08003A4C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003A54: .4byte gUnknown_02015EC0
_08003A58: .4byte 0x0000FFFF
_08003A5C: .4byte gUnknown_02015EF0
	.syntax divided

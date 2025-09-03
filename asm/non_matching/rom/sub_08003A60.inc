	.syntax unified
sub_08003A60:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r0, r4, #0
	bl sub_08003DD0
	adds r6, r0, #0
	cmp r6, #0
	beq _08003AA6
	ldr r0, _08003AAC
	lsls r4, r4, #1
	adds r0, r4, r0
	ldrh r5, [r0]
	adds r0, r6, #0
	bl m4aMPlayImmInit
	ldr r1, _08003AB0
	adds r0, r6, #0
	movs r2, #0
	bl m4aMPlayVolumeControl
	adds r0, r5, #0
	bl m4aSongNumStop
	adds r0, r6, #0
	adds r1, r7, #0
	bl m4aMPlayFadeIn
	ldr r0, _08003AB4
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4]
_08003AA6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003AAC: .4byte gUnknown_02015EC0
_08003AB0: .4byte 0x0000FFFF
_08003AB4: .4byte gUnknown_02015EF0
	.syntax divided

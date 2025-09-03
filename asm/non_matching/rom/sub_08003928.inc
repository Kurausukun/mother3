	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08003980
	ldr r2, _08003988
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	lsls r4, r6, #1
	adds r2, r4, r2
	ldr r0, _0800398C
	adds r0, r4, r0
	ldrh r1, [r0]
	strh r1, [r2]
	strh r7, [r0]
	ldr r5, _08003990
	adds r5, r4, r5
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5]
	adds r0, r7, #0
	bl m4aSongNumStartOrContinue
	ldr r0, _08003994
	adds r4, r4, r6
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r4, [r4]
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r1, _08003998
	ldrh r2, [r5]
	adds r0, r4, #0
	bl m4aMPlayVolumeControl
_08003980:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003988: .4byte gUnknown_02015ED8
_0800398C: .4byte gUnknown_02015EC0
_08003990: .4byte gUnknown_02015EF0
_08003994: .4byte gMPlayTable
_08003998: .4byte 0x0000FFFF
	.syntax divided

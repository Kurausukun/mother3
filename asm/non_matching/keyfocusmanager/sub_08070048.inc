	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _080700D0
	bl get__12ClockManager
	bl getTime__5Clock
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1, #0xc]
	cmp r6, #0
	bgt _08070072
	ldrh r0, [r5, #0x20]
	bl m4aSongNumStart
	b _080700AC
_08070072:
	ldrh r0, [r5, #0x20]
	bl m4aSongNumStart
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	ldr r1, _080700D8
	movs r2, #0
	bl m4aMPlayVolumeControl
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	bl MPlayStop
	ldr r0, [r5, #0x24]
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080702A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl m4aMPlayFadeIn
_080700AC:
	ldr r2, _080700DC
	ldr r1, [r5, #0x24]
	ldr r0, _080700E0
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r5, #0x20]
	strh r1, [r0]
_080700D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080700D8: .4byte 0x0000FFFF
_080700DC: .4byte gUnknown_02001F28
_080700E0: .4byte gMPlayTable
	.syntax divided

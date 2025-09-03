	.syntax unified
sub_080037F0:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r7, r3, #0
	cmp r3, #0
	bne _08003838
	ldr r2, _08003828
	ldr r1, _0800382C
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	strh r3, [r1]
	strh r3, [r1, #2]
	ldr r1, _08003830
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r4, _08003834
	ldr r0, [r4]
	bl MPlayStop
	ldr r0, [r4, #0xc]
	bl MPlayStop
	b _0800388A
	.align 2, 0
_08003828: .4byte gUnknown_02015ED8
_0800382C: .4byte gUnknown_02015EC0
_08003830: .4byte gUnknown_02015EF0
_08003834: .4byte gMPlayTable
_08003838:
	adds r0, r7, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0800388A
	ldr r2, _08003890
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	lsls r4, r6, #1
	adds r2, r4, r2
	ldr r0, _08003894
	adds r0, r4, r0
	ldrh r1, [r0]
	strh r1, [r2]
	strh r7, [r0]
	ldr r5, _08003898
	adds r5, r4, r5
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5]
	adds r0, r7, #0
	bl m4aSongNumStartOrContinue
	ldr r0, _0800389C
	adds r4, r4, r6
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r4, [r4]
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r1, _080038A0
	ldrh r2, [r5]
	adds r0, r4, #0
	bl m4aMPlayVolumeControl
_0800388A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003890: .4byte gUnknown_02015ED8
_08003894: .4byte gUnknown_02015EC0
_08003898: .4byte gUnknown_02015EF0
_0800389C: .4byte gMPlayTable
_080038A0: .4byte 0x0000FFFF
	.syntax divided

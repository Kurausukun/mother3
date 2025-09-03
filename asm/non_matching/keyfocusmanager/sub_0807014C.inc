	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _0807019E
	cmp r1, #0
	bgt _08070164
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	bl MPlayStop
	b _0807017A
_08070164:
	ldr r0, [r5, #0x24]
	ldr r4, [r0]
	adds r0, r5, #0
	bl sub_080702A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl m4aMPlayFadeOutTemporarily
_0807017A:
	ldr r2, _080701A4
	ldr r1, [r5, #0x24]
	ldr r0, _080701A8
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
	movs r1, #0
	strh r1, [r0]
_0807019E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080701A4: .4byte gUnknown_02001F28
_080701A8: .4byte gMPlayTable
	.syntax divided

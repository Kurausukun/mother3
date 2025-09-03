	.syntax unified
init_audio:
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r0, _08003768
	mov ip, r0
	ldr r0, _0800376C
	adds r4, r0, #0
	ldr r7, _08003770
	ldr r6, _08003774
	movs r5, #0x80
	lsls r5, r5, #1
_08003734:
	lsls r2, r3, #1
	mov r0, ip
	adds r1, r2, r0
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	adds r1, r2, r7
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	adds r2, r2, r6
	strh r5, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #9
	bls _08003734
	bl m4aSoundInit
	ldr r1, _08003778
	movs r0, #0
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003768: .4byte gUnknown_02015EC0
_0800376C: .4byte 0x0000FFFF
_08003770: .4byte gUnknown_02015ED8
_08003774: .4byte gUnknown_02015EF0
_08003778: .4byte gAudioSynced
	.syntax divided

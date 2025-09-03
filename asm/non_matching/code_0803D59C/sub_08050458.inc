	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _080504D0
	ldr r0, _080504D4
	adds r6, r5, r0
	ldrb r0, [r6]
	cmp r0, #5
	bne _080504E8
	movs r0, #0xd2
	bl play_sound
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _080504D8
	adds r7, r1, r2
	lsls r0, r0, #5
	ldr r1, _080504DC
	adds r4, r5, r1
	adds r0, r0, r4
	movs r2, #1
	rsbs r2, r2, #0
	movs r1, #0x12
	bl sub_08001B54
	ldrh r0, [r7, #2]
	ldr r2, _080504E0
	adds r2, r2, r5
	mov r8, r2
	ldrb r1, [r2]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1d
	ldrh r7, [r7, #4]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl get_misctext_msg
	adds r1, r0, #0
	ldrb r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r4
	movs r2, #9
	bl sub_08002420
	ldr r1, _080504E4
	adds r0, r5, r1
	ldr r0, [r0]
	ldrb r1, [r6]
	lsls r1, r1, #5
	adds r1, r1, r4
	movs r2, #9
	bl sub_08002420
	mov r0, r8
	ldrb r2, [r0]
	b _0805056A
	.align 2, 0
_080504D0: .4byte gSomeBlend
_080504D4: .4byte 0x00004A30
_080504D8: .4byte gUnknown_080C69CC
_080504DC: .4byte 0x00004C12
_080504E0: .4byte 0x00004ECF
_080504E4: .4byte 0x00004DF4
_080504E8:
	cmp r0, #5
	blt _080504FC
	cmp r0, #0xe
	bgt _080504FC
	cmp r0, #0xd
	blt _080504FC
	movs r0, #0xd6
	bl play_sound
	b _080505B2
_080504FC:
	movs r0, #0xd2
	bl play_sound
	ldr r4, _080505BC
	ldr r0, _080505C0
	adds r6, r4, r0
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _080505C4
	adds r7, r1, r2
	lsls r0, r0, #5
	ldr r1, _080505C8
	adds r5, r4, r1
	adds r0, r0, r5
	movs r2, #1
	rsbs r2, r2, #0
	movs r1, #0x12
	bl sub_08001B54
	ldrh r0, [r7, #2]
	ldr r2, _080505CC
	adds r2, r2, r4
	mov r8, r2
	ldrb r1, [r2]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1d
	ldrh r7, [r7, #4]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl get_misctext_msg
	adds r1, r0, #0
	ldrb r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r2, #9
	bl sub_08002420
	ldr r0, _080505D0
	adds r4, r4, r0
	ldr r0, [r4]
	ldrb r1, [r6]
	lsls r1, r1, #5
	adds r1, r1, r5
	movs r2, #9
	bl sub_08002420
	ldrb r0, [r6]
	cmp r0, #6
	bne _08050590
	mov r1, r8
	ldrb r2, [r1]
_0805056A:
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1d
	adds r0, #1
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #1
	movs r3, #0xf
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r2
	orrs r1, r0
	mov r2, r8
	strb r1, [r2]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bls _08050590
	ands r1, r3
	strb r1, [r2]
_08050590:
	ldr r4, _080505BC
	ldr r1, _080505D0
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #9
	bl sub_08048748
	ldr r2, _080505D4
	adds r4, r4, r2
	movs r1, #0x1f
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
_080505B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080505BC: .4byte gSomeBlend
_080505C0: .4byte 0x00004A30
_080505C4: .4byte gUnknown_080C69CC
_080505C8: .4byte 0x00004C12
_080505CC: .4byte 0x00004ECF
_080505D0: .4byte 0x00004DF4
_080505D4: .4byte 0x00004ECE
	.syntax divided

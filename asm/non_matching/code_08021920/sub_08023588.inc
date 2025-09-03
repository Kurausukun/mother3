	.syntax unified
sub_08023588:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r4, _080235E4
	ldr r0, _080235E8
	adds r6, r4, r0
	ldrb r2, [r6]
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	lsrs r1, r2, #7
	orrs r0, r1
	cmp r0, #0
	bne _080235A4
	b _08023774
_080235A4:
	movs r6, #0x20
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	bne _080235B0
	b _08023738
_080235B0:
	ldrb r1, [r5, #0xe]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _080235BE
	b _08023738
_080235BE:
	ldrh r1, [r5]
	ldr r0, _080235EC
	ands r0, r1
	cmp r0, #0
	beq _0802360C
	ldr r1, _080235F0
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #2
	bne _08023600
	ldr r2, _080235F4
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _080235F8
	movs r0, #0xdc
	bl play_sound
	b _08023606
	.align 2, 0
_080235E4: .4byte gSomeBlend
_080235E8: .4byte 0x00004B18
_080235EC: .4byte 0x00000201
_080235F0: .4byte 0x00004B04
_080235F4: .4byte 0x00004B08
_080235F8:
	movs r0, #0xdd
	bl play_sound
	b _08023606
_08023600:
	movs r0, #0xd2
	bl play_sound
_08023606:
	bl sub_08023E44
	b _08023738
_0802360C:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08023658
	ldr r3, _0802364C
	adds r0, r4, r3
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _08023628
	b _08023738
_08023628:
	ldr r0, _08023650
	adds r5, r4, r0
	ldrh r1, [r5]
	ldr r2, _08023654
	adds r4, r4, r2
	ldrh r0, [r4]
	subs r0, #1
	cmp r1, r0
	bne _0802363C
	b _08023738
_0802363C:
	movs r0, #0xd3
	bl play_sound
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r5]
	b _08023738
	.align 2, 0
_0802364C: .4byte 0x00004B19
_08023650: .4byte 0x00004B08
_08023654: .4byte 0x00004B04
_08023658:
	ldr r3, _08023670
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0802369C
	cmp r0, #1
	bgt _08023674
	cmp r0, #0
	beq _0802367A
	b _08023738
	.align 2, 0
_08023670: .4byte 0x00004B19
_08023674:
	cmp r0, #2
	beq _080236C8
	b _08023738
_0802367A:
	ldr r1, _08023694
	adds r0, r4, r1
	ldr r3, _08023698
	adds r1, r4, r3
	ldrh r3, [r1]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	b _080236B2
	.align 2, 0
_08023694: .4byte 0x00004B08
_08023698: .4byte 0x00004B04
_0802369C:
	ldr r1, _080236C0
	adds r0, r4, r1
	ldr r3, _080236C4
	adds r1, r4, r3
	ldrh r3, [r1]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x10
	str r1, [sp]
	str r6, [sp, #4]
_080236B2:
	str r2, [sp, #8]
	adds r1, r5, #0
	movs r2, #0
	bl sub_08039544
	b _08023738
	.align 2, 0
_080236C0: .4byte 0x00004B08
_080236C4: .4byte 0x00004B04
_080236C8:
	add r0, sp, #0xc
	strh r2, [r0]
	ldr r1, _080236F0
	adds r0, r4, r1
	ldr r3, _080236F4
	adds r1, r4, r3
	ldrh r3, [r0]
	ldrh r1, [r1]
	cmp r3, r1
	bne _080236FC
	ldr r1, _080236F8
	adds r0, r4, r1
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x10
	str r1, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	b _0802370E
	.align 2, 0
_080236F0: .4byte 0x00004B04
_080236F4: .4byte 0x00004B06
_080236F8: .4byte 0x00004B08
_080236FC:
	ldr r3, _08023760
	adds r0, r4, r3
	subs r3, r1, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x10
	str r1, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
_0802370E:
	adds r1, r5, #0
	movs r2, #0
	bl sub_08039544
	add r1, sp, #0xc
	strh r0, [r1]
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	beq _08023738
	ldr r1, _08023764
	ldr r2, _08023760
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08023768
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08022694
_08023738:
	ldr r2, _08023764
	ldr r1, _0802376C
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x21
	ands r0, r1
	cmp r0, #0x21
	beq _0802374A
	b _0802386E
_0802374A:
	ldr r3, _08023770
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _0802375A
	b _0802386E
_0802375A:
	bl sub_08023890
	b _0802386E
	.align 2, 0
_08023760: .4byte 0x00004B08
_08023764: .4byte gSomeBlend
_08023768: .4byte 0x00003694
_0802376C: .4byte 0x00004B18
_08023770: .4byte 0x00004B19
_08023774:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08023808
	ldrh r0, [r5]
	ldr r5, _080237B0
	ands r5, r0
	cmp r5, #0
	beq _080237B8
	movs r0, #0xda
	bl play_sound
	ldrb r0, [r6]
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r6]
	lsls r1, r1, #0x19
	ldr r0, _080237B4
	adds r3, r4, r0
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0802386E
	.align 2, 0
_080237B0: .4byte 0x00000203
_080237B4: .4byte 0x00011C92
_080237B8:
	ldr r0, _080237F4
	ldr r3, _080237F8
	ldr r1, _080237FC
	ldr r2, _08023800
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r2, #0x8e
	ldr r3, _08023804
	adds r1, r4, r3
	ldrb r3, [r1]
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1f
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #5
	subs r2, r2, r1
	str r5, [sp]
	str r5, [sp, #4]
	movs r1, #0xdc
	movs r3, #0x20
	bl sub_0803D678
	b _0802386E
	.align 2, 0
_080237F4: .4byte gUnknown_080C1C70
_080237F8: .4byte gUnknown_080C2048
_080237FC: .4byte gGame
_08023800: .4byte 0x00009D10
_08023804: .4byte 0x0001ED10
_08023808:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0802386E
	movs r0, #0x96
	lsls r0, r0, #7
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802382C
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802386E
_08023826:
	bl sub_08023E44
	b _0802386E
_0802382C:
	ldrh r0, [r5]
	ldr r5, _08023878
	ands r5, r0
	cmp r5, #0
	bne _08023826
	ldr r0, _0802387C
	ldr r3, _08023880
	ldr r1, _08023884
	ldr r2, _08023888
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r2, #0x8e
	ldr r3, _0802388C
	adds r1, r4, r3
	ldrb r3, [r1]
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1f
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #5
	subs r2, r2, r1
	str r5, [sp]
	str r5, [sp, #4]
	movs r1, #0xdc
	movs r3, #0x20
	bl sub_0803D678
_0802386E:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023878: .4byte 0x00000203
_0802387C: .4byte gUnknown_080C1C70
_08023880: .4byte gUnknown_080C2048
_08023884: .4byte gGame
_08023888: .4byte 0x00009D10
_0802388C: .4byte 0x0001ED10
	.syntax divided

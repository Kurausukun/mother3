	.syntax unified
sub_08025718:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	ldr r6, _080257E4
	ldr r0, _080257E8
	adds r0, r0, r6
	mov r8, r0
	ldrb r2, [r0]
	lsls r0, r2, #0x1f
	lsrs r7, r0, #0x1f
	cmp r7, #0
	beq _08025736
	b _080258FE
_08025736:
	ldr r0, [r4]
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #1
	ble _08025744
	b _080258FE
_08025744:
	ldr r3, _080257EC
	adds r1, r6, r3
	ldr r0, _080257F0
	strh r0, [r1]
	ldr r0, _080257F4
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r3, #4
	adds r1, r6, r3
	strh r0, [r1]
	ldr r1, _080257F8
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r3, #4
	adds r0, r6, r3
	strh r1, [r0]
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x17
	ldr r1, _080257FC
	adds r1, r1, r6
	mov sb, r1
	strh r0, [r1]
	movs r3, #9
	rsbs r3, r3, #0
	adds r5, r3, #0
	ands r5, r2
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r5, r0
	mov r2, r8
	strb r5, [r2]
	ldr r0, _08025800
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025804
	adds r0, r6, r1
	str r7, [r0]
	ldr r2, _08025808
	adds r1, r6, r2
	movs r0, #1
	str r0, [r1]
	ldr r0, _0802580C
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r3
	strb r0, [r2]
	ldrb r1, [r4, #0xa]
	movs r2, #2
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _08025810
	movs r0, #0x17
	mov r1, sb
	strh r0, [r1]
	movs r0, #9
	bl sub_080260C8
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080257DA
	b _080258FE
_080257DA:
	movs r0, #1
	bl sub_08025F98
	b _080258FE
	.align 2, 0
_080257E4: .4byte gGame
_080257E8: .4byte 0x00008494
_080257EC: .4byte 0x00008450
_080257F0: .4byte 0x0000FFFF
_080257F4: .4byte 0x00008452
_080257F8: .4byte 0x000067AC
_080257FC: .4byte 0x0000845C
_08025800: .4byte 0x0000845E
_08025804: .4byte 0x00008484
_08025808: .4byte 0x00008490
_0802580C: .4byte 0x00008496
_08025810:
	adds r0, r5, #0
	orrs r0, r2
	mov r3, r8
	strb r0, [r3]
	ldrb r0, [r4, #0xa]
	orrs r0, r2
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0xa]
	strh r7, [r4, #8]
	ldr r0, [r4]
	ldrh r0, [r0, #0xc]
	movs r1, #1
	bl sub_080029F8
	ldr r0, [r4]
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	ldr r2, _08025878
	adds r1, r6, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldrh r1, [r0, #8]
	ldr r3, _0802587C
	adds r0, r6, r3
	strh r1, [r0]
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x19
	subs r2, #6
	adds r1, r6, r2
	strh r0, [r1]
	adds r3, #4
	adds r0, r6, r3
	strh r7, [r0]
	ldr r0, [r4]
	ldrh r1, [r0, #0xa]
	adds r2, #4
	adds r0, r6, r2
	strh r1, [r0]
	ldr r5, _08025880
	ldr r0, [r4]
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08025884
	cmp r0, #1
	beq _080258B2
	b _080258CE
	.align 2, 0
_08025878: .4byte 0x0000846E
_0802587C: .4byte 0x00008466
_08025880: .4byte 0x0000FFFF
_08025884:
	movs r0, #0xf2
	bl play_sound
	movs r5, #0xf2
	ldr r2, [r4]
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _080258AA
	cmp r0, #0
	blt _080258AA
	ldrh r1, [r2, #8]
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x19
	adds r0, r4, #0
	bl sub_0802A9B4
_080258AA:
	movs r0, #9
	bl sub_080260C8
	b _080258CE
_080258B2:
	movs r0, #0xf2
	bl play_sound
	movs r5, #0xf2
	ldr r0, [r4]
	ldrh r0, [r0, #0xa]
	bl sub_0802A038
	movs r0, #4
	mov r3, sb
	strh r0, [r3]
	movs r0, #9
	bl sub_080260C8
_080258CE:
	ldr r4, _0802590C
	ldr r1, _08025910
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080258FE
	movs r0, #1
	bl sub_08025F98
	ldr r2, _08025914
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #6
	bne _080258FE
	lsls r2, r5, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080258FE
	lsrs r0, r2, #0x10
	bl play_sound
_080258FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802590C: .4byte gGame
_08025910: .4byte 0x00008494
_08025914: .4byte 0x0000829B
	.syntax divided

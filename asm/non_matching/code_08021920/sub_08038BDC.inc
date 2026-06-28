	.syntax unified
sub_08038BDC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _08038C64
	ldr r0, [r2]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _08038BF6
	b _08038E64
_08038BF6:
	ldr r1, _08038C68
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08038C04
	b _08038E64
_08038C04:
	ldr r0, _08038C6C
	ldr r1, _08038C70
	adds r0, r0, r1
	ldrb r3, [r0]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _08038C16
	b _08038E64
_08038C16:
	ldr r1, _08038C74
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, _08038C78
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _08038C2A
	b _08038E64
_08038C2A:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08038CA0
	ldr r1, _08038C7C
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r0, _08038C80
	cmp r1, r0
	bhi _08038C88
	ldr r1, _08038C84
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08038C4C
	b _08038E64
_08038C4C:
	movs r0, #1
	bl getCurrentTrack
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb7
	bne _08038C5C
	b _08038E64
_08038C5C:
	movs r0, #0xb7
	bl play_sound
	b _08038E64
	.align 2, 0
_08038C64: .4byte gGame
_08038C68: .4byte 0x00008494
_08038C6C: .4byte gSomeBlend
_08038C70: .4byte 0x000035BA
_08038C74: .4byte 0x00009484
_08038C78: .4byte 0x0002FF00
_08038C7C: .4byte 0x000082B4
_08038C80: .4byte 0x0000012B
_08038C84: .4byte 0x00008495
_08038C88:
	movs r0, #1
	bl getCurrentTrack
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb7
	beq _08038C98
	b _08038E64
_08038C98:
	movs r0, #1
	bl musicPlayerStop_bgm
	b _08038E64
_08038CA0:
	ldr r1, _08038CD4
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r0, _08038CD8
	cmp r1, r0
	bhi _08038CE0
	movs r0, #0x19
	mov r8, r0
	ldr r1, _08038CDC
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08038CF8
	movs r0, #1
	bl getCurrentTrack
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb7
	beq _08038CF8
	movs r0, #0xb7
	bl play_sound
	b _08038CF8
	.align 2, 0
_08038CD4: .4byte 0x000082B4
_08038CD8: .4byte 0x0000012B
_08038CDC: .4byte 0x00008495
_08038CE0:
	movs r2, #0x15
	mov r8, r2
	movs r0, #1
	bl getCurrentTrack
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb7
	bne _08038CF8
	movs r0, #1
	bl musicPlayerStop_bgm
_08038CF8:
	ldr r7, _08038D7C
	movs r5, #1
	str r5, [sp]
	movs r4, #0
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0x90
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r7, #0
	adds r0, #0x18
	str r5, [sp]
	str r4, [sp, #4]
	movs r1, #0x40
	movs r2, #0x90
	movs r3, #0x20
	bl sub_0803D678
	ldr r4, _08038D80
	ldr r0, _08038D84
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r1, #0x3c
	bl Divide
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r6, #9
	ldrh r1, [r4]
	movs r0, #0xe1
	lsls r0, r0, #3
	cmp r1, r0
	bls _08038D8C
	movs r5, #0
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	mov r8, r0
	ldr r2, _08038D88
	adds r7, r7, r2
	movs r4, #0
_08038D52:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r8
	adds r0, r2, r7
	movs r2, #0x98
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r6, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #6
	bls _08038D52
	b _08038E64
	.align 2, 0
_08038D7C: .4byte gUnknown_080C1D48
_08038D80: .4byte gGame
_08038D84: .4byte 0x000082B4
_08038D88: .4byte 0xFFFFFE38
_08038D8C:
	ldr r0, [sp, #8]
	movs r1, #4
	bl Divide
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	cmp r5, r4
	bhs _08038DD6
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	mov sb, r0
	ldr r2, _08038DF4
	adds r2, r2, r7
	mov sl, r2
	movs r7, #0
_08038DB0:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, sb
	add r0, sl
	movs r2, #0x98
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r6, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r4
	blo _08038DB0
_08038DD6:
	ldr r0, [sp, #8]
	movs r1, #4
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bne _08038DFC
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	ldr r1, _08038DF8
	b _08038E1E
	.align 2, 0
_08038DF4: .4byte 0xFFFFFE38
_08038DF8: .4byte gUnknown_080C1B98
_08038DFC:
	cmp r4, #2
	bne _08038E10
	mov r2, r8
	lsls r0, r2, #1
	add r0, r8
	lsls r0, r0, #3
	ldr r1, _08038E0C
	b _08038E1E
	.align 2, 0
_08038E0C: .4byte gUnknown_080C1BB0
_08038E10:
	cmp r4, #1
	bne _08038E38
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	ldr r1, _08038E34
_08038E1E:
	adds r0, r0, r1
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0x98
	movs r3, #0x20
	bl sub_0803D678
	b _08038E64
	.align 2, 0
_08038E34: .4byte gUnknown_080C1BC8
_08038E38:
	ldr r0, _08038E74
	ldr r2, _08038E78
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08038E64
	cmp r6, #9
	bne _08038E64
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	ldr r1, _08038E7C
	adds r0, r0, r1
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #9
	movs r2, #0x98
	movs r3, #0x20
	bl sub_0803D678
_08038E64:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038E74: .4byte gGame
_08038E78: .4byte 0x000082B4
_08038E7C: .4byte gUnknown_080C1BC8
	.syntax divided

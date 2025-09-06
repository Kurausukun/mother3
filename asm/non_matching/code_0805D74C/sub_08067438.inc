	.syntax unified
sub_08067438:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x120
	adds r7, r0, #0
	bl sub_080872C8
	ldr r0, _080675D0
	str r0, [r7, #0x1c]
	movs r1, #0x89
	lsls r1, r1, #3
	adds r0, r7, r1
	bl sub_0806D64C
	movs r2, #0x9c
	lsls r2, r2, #3
	adds r4, r7, r2
	movs r3, #7
	str r3, [sp, #0xb8]
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0xbc]
	mov r1, sp
	adds r1, #0x68
	str r1, [sp, #0xc8]
	add r2, sp, #0x40
	mov sl, r2
	mov r3, sp
	adds r3, #0x4c
	str r3, [sp, #0xc0]
	adds r0, #0x48
	str r0, [sp, #0xc4]
	adds r1, #4
	str r1, [sp, #0xcc]
	mov r2, sp
	adds r2, #0x70
	str r2, [sp, #0xd0]
	adds r3, #0x28
	str r3, [sp, #0xd4]
	adds r0, #0x20
	str r0, [sp, #0xd8]
	adds r1, #0x10
	str r1, [sp, #0xdc]
	adds r2, #0x10
	str r2, [sp, #0xe0]
	adds r3, #0x10
	str r3, [sp, #0xe4]
	adds r0, #0x10
	str r0, [sp, #0xe8]
	adds r1, #0x10
	str r1, [sp, #0xec]
	adds r2, #0x10
	str r2, [sp, #0xf0]
	adds r3, #0x10
	str r3, [sp, #0xf4]
	adds r0, #0x10
	str r0, [sp, #0xf8]
	adds r1, #0x10
	str r1, [sp, #0xfc]
	adds r2, #0x10
	str r2, [sp, #0x100]
	adds r3, #0x10
	str r3, [sp, #0x104]
	adds r0, #0x10
	str r0, [sp, #0x108]
	adds r1, #0x10
	str r1, [sp, #0x10c]
	adds r2, #0x10
	str r2, [sp, #0x110]
	adds r3, #0x10
	str r3, [sp, #0x114]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	ldr r3, _080675D4
	add r5, sp, #0x64
	movs r6, #0xa
_080674D6:
	str r3, [sp, #0xc]
	ldr r1, _080675D8
	str r1, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	add r0, sp, #0x64
	strh r6, [r0]
	strh r6, [r5, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r5, #0
	str r3, [sp, #0x11c]
	bl sub_08071108
	ldr r3, [sp, #0x11c]
	str r3, [sp, #0xc]
	ldr r0, _080675DC
	mov sb, r0
	str r0, [r4, #0x1c]
	adds r4, #0x5c
	ldr r1, [sp, #0xb8]
	subs r1, #1
	str r1, [sp, #0xb8]
	cmp r1, r8
	bne _080674D6
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r0, _080675D8
	movs r1, #1
	rsbs r1, r1, #0
	ldr r5, _080675D4
	str r5, [sp, #0x18]
	str r0, [sp, #0x10]
	ldr r3, [sp, #0xbc]
	str r1, [r3, #4]
	movs r1, #0xa
	movs r6, #0
	movs r0, #0
	mov r8, r0
	add r0, sp, #0x68
	strh r1, [r0]
	ldr r2, [sp, #0xc8]
	strh r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xbc]
	ldr r2, [sp, #0xc8]
	bl sub_08071108
	str r5, [sp, #0x18]
	mov r3, sb
	str r3, [r4, #0x1c]
	ldr r0, _080675E0
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_0806D8EC
	ldr r0, _080675E4
	str r0, [r4, #0x1c]
	add r0, sp, #0x1c
	ldr r1, _080675E8
	bl sub_080706A0
	add r0, sp, #0x28
	movs r1, #7
	bl sub_080706A0
	add r0, sp, #0x34
	ldr r1, _080675EC
	bl sub_080706A0
	adds r0, r4, #0
	add r1, sp, #0x1c
	add r2, sp, #0x28
	add r3, sp, #0x34
	bl sub_0806D9F4
	str r5, [sp, #0x3c]
	str r5, [sp, #0x30]
	str r5, [sp, #0x24]
	adds r0, r4, #0
	movs r1, #0x3a
	bl sub_0806DB60
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r7, r1
	bl sub_080871E4
	ldr r2, _080675F0
	adds r0, r7, r2
	bl sub_08071D2C
	ldr r3, _080675F4
	adds r0, r7, r3
	bl sub_08071E5C
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r7, r1
	bl sub_08071F8C
	ldr r2, _080675F8
	adds r1, r7, r2
	movs r0, #5
	strh r0, [r1]
	ldr r3, _080675FC
	adds r0, r7, r3
	strb r6, [r0]
	ldr r1, _08067600
	adds r0, r7, r1
	strb r6, [r0]
	adds r2, #4
	adds r0, r7, r2
	mov r3, r8
	str r3, [r0]
	adds r1, #5
	adds r0, r7, r1
	strh r3, [r0]
	bl sub_08086C78
	adds r5, r0, #0
	movs r6, #0
	b _08067634
	.align 2, 0
_080675D0: .4byte vt_09F7E758
_080675D4: .4byte _vt.6ResPtr
_080675D8: .4byte gUnknown_08CE39F8
_080675DC: .4byte vt_09F7E458
_080675E0: .4byte 0x0000081C
_080675E4: .4byte vt_09F7E890
_080675E8: .4byte 0x000003A5
_080675EC: .4byte 0x00000287
_080675F0: .4byte 0x00000958
_080675F4: .4byte 0x000009F4
_080675F8: .4byte 0x0000043C
_080675FC: .4byte 0x0000043E
_08067600: .4byte 0x0000043F
_08067604:
	movs r0, #0x44
	bl __builtin_new
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08086D38
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_0808735C
	adds r6, #1
_08067634:
	ldr r1, [r5, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _08067604
	ldr r1, _08067A0C
	mov r0, sl
	bl sub_080706A0
	ldr r0, [sp, #0xc0]
	movs r1, #6
	bl sub_080706A0
	ldr r1, _08067A10
	ldr r0, [sp, #0xc4]
	bl sub_080706A0
	movs r0, #0x89
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, [sp, #0xc4]
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #1
	mov r2, sl
	ldr r3, [sp, #0xc0]
	bl sub_0806D744
	ldr r0, _08067A14
	str r0, [sp, #0x60]
	str r0, [sp, #0x54]
	str r0, [sp, #0x48]
	movs r1, #0
	add r0, sp, #0x6c
	strh r1, [r0]
	ldr r2, [sp, #0xcc]
	strh r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xcc]
	bl sub_0806D814
	movs r1, #0xf0
	movs r5, #0xa0
	add r0, sp, #0x70
	strh r1, [r0]
	ldr r3, [sp, #0xd0]
	strh r5, [r3, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xd0]
	bl sub_0806D828
	ldr r0, _08067A18
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0x2e
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _080676BE
	adds r1, r0, #0
	adds r1, #0x20
_080676BE:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0xc
	movs r6, #8
	add r1, sp, #0x74
	strh r2, [r1]
	ldr r1, [sp, #0xd4]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xd4]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r0, #0x97
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0x32
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _0806770A
	adds r1, r0, #0
	adds r1, #0x20
_0806770A:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x1c
	add r1, sp, #0x78
	strh r2, [r1]
	ldr r1, [sp, #0xd8]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xd8]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r0, _08067A1C
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0x36
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _08067752
	adds r1, r0, #0
	adds r1, #0x20
_08067752:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x2c
	add r1, sp, #0x7c
	strh r2, [r1]
	ldr r1, [sp, #0xdc]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xdc]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r0, #0x98
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _0806779C
	adds r1, r0, #0
	adds r1, #0x20
_0806779C:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x70
	add r1, sp, #0x80
	strh r2, [r1]
	ldr r1, [sp, #0xe0]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xe0]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r0, _08067A20
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #4
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _080677E4
	adds r1, r0, #0
	adds r1, #0x20
_080677E4:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x80
	add r1, sp, #0x84
	strh r2, [r1]
	ldr r1, [sp, #0xe4]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xe4]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r0, #0x99
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #8
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _0806782E
	adds r1, r0, #0
	adds r1, #0x20
_0806782E:
	str r1, [r4]
	ldr r2, [r1]
	movs r3, #0x20
	ldrsh r0, [r2, r3]
	adds r0, r1, r0
	movs r1, #0x90
	mov r8, r1
	add r1, sp, #0x88
	mov r3, r8
	strh r3, [r1]
	ldr r1, [sp, #0xe8]
	strh r6, [r1, #2]
	ldr r2, [r2, #0x24]
	ldr r1, [sp, #0xe8]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r0, _08067A24
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0xc
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _0806787A
	adds r1, r0, #0
	adds r1, #0x20
_0806787A:
	str r1, [r4]
	ldr r2, [r1]
	movs r3, #0x20
	ldrsh r0, [r2, r3]
	adds r0, r1, r0
	add r1, sp, #0x8c
	strh r5, [r1]
	ldr r1, [sp, #0xec]
	strh r6, [r1, #2]
	ldr r2, [r2, #0x24]
	ldr r1, [sp, #0xec]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r0, #0x9a
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r0, #0xbc
	bl __builtin_new
	movs r1, #0x18
	bl sub_08086FD8
	movs r1, #0
	cmp r0, #0
	beq _080678C2
	adds r1, r0, #0
	adds r1, #0x20
_080678C2:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0xb8
	add r1, sp, #0x90
	strh r2, [r1]
	ldr r1, [sp, #0xf0]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xf0]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r0, _08067A28
	adds r4, r7, r0
	movs r0, #0xbc
	bl __builtin_new
	movs r1, #0x1c
	bl sub_08086FD8
	movs r1, #0
	cmp r0, #0
	beq _0806790A
	adds r1, r0, #0
	adds r1, #0x20
_0806790A:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0xc8
	add r1, sp, #0x94
	strh r2, [r1]
	ldr r1, [sp, #0xf4]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xf4]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r0, #0x9b
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r0, #0xbc
	bl __builtin_new
	movs r1, #0x14
	bl sub_08086FD8
	movs r1, #0
	cmp r0, #0
	beq _08067954
	adds r1, r0, #0
	adds r1, #0x20
_08067954:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0xd8
	add r1, sp, #0x98
	strh r2, [r1]
	ldr r1, [sp, #0xf8]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xf8]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r0, _08067A2C
	adds r5, r7, r0
	movs r0, #0x9c
	bl __builtin_new
	adds r4, r0, #0
	bl sub_08071AC4
	ldr r0, _08067A30
	str r0, [r4, #0x1c]
	add r0, sp, #0x40
	ldr r1, _08067A34
	bl sub_080706A0
	add r0, sp, #0x4c
	movs r1, #7
	bl sub_080706A0
	add r0, sp, #0x58
	ldr r1, _08067A38
	bl sub_080706A0
	adds r0, r4, #0
	add r1, sp, #0x40
	add r2, sp, #0x4c
	add r3, sp, #0x58
	bl sub_0806D9F4
	ldr r0, _08067A14
	str r0, [sp, #0x60]
	str r0, [sp, #0x54]
	str r0, [sp, #0x48]
	adds r0, r4, #0
	movs r1, #0x50
	bl sub_0806DB60
	str r4, [r5]
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	add r0, sp, #0x9c
	strh r6, [r0]
	mov r0, r8
	ldr r3, [sp, #0xfc]
	strh r0, [r3, #2]
	ldr r2, [r1, #4]
	adds r0, r4, #0
	ldr r1, [sp, #0xfc]
	bl _call_via_r2
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #2
	bl _call_via_r2
	movs r0, #0
	mov r8, r0
	ldr r6, [sp, #0x100]
	ldr r1, [sp, #0x104]
	mov sb, r1
	b _08067A3C
	.align 2, 0
_08067A0C: .4byte 0x0000028F
_08067A10: .4byte 0x00000286
_08067A14: .4byte _vt.6ResPtr
_08067A18: .4byte 0x000004B4
_08067A1C: .4byte 0x000004BC
_08067A20: .4byte 0x000004C4
_08067A24: .4byte 0x000004CC
_08067A28: .4byte 0x000004D4
_08067A2C: .4byte 0x000004DC
_08067A30: .4byte vt_09F7E988
_08067A34: .4byte 0x000003A5
_08067A38: .4byte 0x00000287
_08067A3C:
	movs r2, #0x22
	str r2, [sp, #0x118]
_08067A40:
	movs r0, #0x5c
	mov r4, r8
	muls r4, r0, r4
	adds r5, r4, r7
	movs r3, #0x9c
	lsls r3, r3, #3
	adds r5, r5, r3
	ldr r2, [r5, #0x1c]
	adds r2, #0x90
	adds r4, r4, r3
	adds r4, r7, r4
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	add r1, sp, #0xa0
	movs r3, #0
	strb r3, [r1]
	strb r3, [r6, #1]
	strb r3, [r6, #2]
	ldr r2, [r2, #4]
	adds r1, r6, #0
	bl _call_via_r2
	ldr r3, [r5, #0x1c]
	adds r3, #0x88
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r4, r0
	movs r2, #0x16
	add r1, sp, #0xa4
	strh r2, [r1]
	add r2, sp, #0x118
	ldrh r1, [r2]
	mov r2, sb
	strh r1, [r2, #2]
	ldr r2, [r3, #4]
	mov r1, sb
	bl _call_via_r2
	ldr r1, [r5, #0x1c]
	adds r1, #0x98
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r4, r4, r0
	ldr r2, [r1, #4]
	adds r0, r4, #0
	movs r1, #0
	bl _call_via_r2
	ldr r0, [sp, #0x118]
	adds r0, #0xc
	str r0, [sp, #0x118]
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #7
	ble _08067A40
	movs r1, #0
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r4, r7, r3
	add r0, sp, #0xa8
	strb r1, [r0]
	ldr r0, [sp, #0x108]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x108]
	bl sub_0806E9C4
	movs r1, #0x78
	movs r2, #0x4c
	add r0, sp, #0xac
	strh r1, [r0]
	ldr r1, [sp, #0x10c]
	strh r2, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x10c]
	bl sub_08071194
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806E9E8
	adds r0, r4, #0
	movs r1, #1
	bl sub_08071174
	ldr r2, _08067D30
	adds r0, r7, r2
	movs r1, #3
	bl sub_0806DB7C
	movs r3, #0x8b
	lsls r3, r3, #4
	adds r0, r7, r3
	movs r1, #0
	bl sub_0806DF50
	ldr r1, _08067D34
	adds r0, r7, r1
	movs r4, #0xdf
	movs r2, #0x1e
	add r1, sp, #0xb0
	strh r4, [r1]
	ldr r3, [sp, #0x110]
	strh r2, [r3, #2]
	ldr r1, [sp, #0x110]
	bl sub_08071DF8
	ldr r1, _08067D38
	adds r0, r7, r1
	movs r2, #0x7a
	add r1, sp, #0xb4
	strh r4, [r1]
	ldr r3, [sp, #0x114]
	strh r2, [r3, #2]
	ldr r1, [sp, #0x114]
	bl sub_08071F28
	add r0, sp, #0x40
	bl __4Base
	ldr r0, _08067D3C
	mov r8, r0
	ldr r0, _08067D40
	str r0, [sp, #0x5c]
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r6, r7, r1
	ldr r0, _08067D44
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D48
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D4C
	str r0, [sp, #0x5c]
	ldr r0, _08067D50
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D54
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D58
	str r0, [sp, #0x5c]
	ldr r0, _08067D5C
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D60
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D64
	str r0, [sp, #0x5c]
	ldr r0, _08067D68
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D6C
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D70
	str r0, [sp, #0x5c]
	ldr r0, _08067D74
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D78
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D7C
	str r0, [sp, #0x5c]
	ldr r0, _08067D80
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D84
	str r0, [sp, #0x5c]
	ldr r0, _08067D88
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl sub_08068398
	adds r0, r7, #0
	bl sub_08068408
	adds r0, r7, #0
	add sp, #0x120
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08067D30: .4byte 0x0000081C
_08067D34: .4byte 0x00000958
_08067D38: .4byte 0x000009F4
_08067D3C: .4byte _vt.3Unk
_08067D40: .4byte _vt.10UpKeyPress
_08067D44: .4byte gUnknown_080FE670
_08067D48: .4byte _vt.14UpKeyLongPress
_08067D4C: .4byte _vt.12DownKeyPress
_08067D50: .4byte gUnknown_080FE678
_08067D54: .4byte _vt.16DownKeyLongPress
_08067D58: .4byte _vt.12LeftKeyPress
_08067D5C: .4byte gUnknown_080FE680
_08067D60: .4byte _vt.16LeftKeyLongPress
_08067D64: .4byte _vt.13RightKeyPress
_08067D68: .4byte gUnknown_080FE688
_08067D6C: .4byte _vt.17RightKeyLongPress
_08067D70: .4byte _vt.9AKeyPress
_08067D74: .4byte gUnknown_080FE690
_08067D78: .4byte _vt.13AKeyLongPress
_08067D7C: .4byte _vt.9BKeyPress
_08067D80: .4byte gUnknown_080FE698
_08067D84: .4byte _vt.9LKeyPress
_08067D88: .4byte gUnknown_080FE6A0
	.syntax divided

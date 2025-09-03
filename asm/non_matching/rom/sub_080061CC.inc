	.syntax unified
sub_080061CC:
	push {r4, r5, lr}
	ldr r0, _08006204
	ldr r1, _08006208
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #2
	cmp r1, r0
	bne _080061E2
	bl sub_08006944
_080061E2:
	ldr r0, _0800620C
	ldrh r0, [r0]
	cmp r0, #0
	bne _080061F2
	ldr r0, _08006210
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006218
_080061F2:
	ldr r0, _08006214
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	b _0800622A
	.align 2, 0
_08006204: .4byte gGame
_08006208: .4byte 0x000067AC
_0800620C: .4byte gUnknown_02000000
_08006210: .4byte gUnknown_02000004
_08006214: .4byte gOAMObjBuffer
_08006218:
	ldr r1, _08006268
	ldr r0, _0800626C
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08006270
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800622A:
	ldr r5, _08006274
	ldr r2, _08006278
	adds r0, r5, r2
	ldrh r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #2
	cmp r1, r0
	beq _0800623E
	bl sub_08006944
_0800623E:
	ldr r4, _0800627C
	adds r0, r4, #0
	bl sub_080062F0
	ldr r1, _08006280
	adds r0, r4, r1
	ldr r2, _08006284
	adds r1, r4, r2
	bl sub_0800724C
	ldrb r0, [r5]
	cmp r0, #5
	bgt _0800628C
	cmp r0, #3
	blt _0800628C
	ldr r1, _08006288
	adds r0, r4, r1
	bl sub_08006F78
	b _0800629A
	.align 2, 0
_08006268: .4byte 0x040000D4
_0800626C: .4byte gOAMObjBuffer
_08006270: .4byte 0x84000100
_08006274: .4byte gGame
_08006278: .4byte 0x000067AC
_0800627C: .4byte gUnknown_020281E0
_08006280: .4byte 0xFFFEDE48
_08006284: .4byte 0xFFFEDE98
_08006288: .4byte 0xFFFF35C0
_0800628C:
	ldr r4, _080062BC
	adds r0, r4, #0
	bl sub_08006B40
	adds r0, r4, #0
	bl sub_08006E80
_0800629A:
	ldr r0, _080062C0
	ldrh r0, [r0]
	cmp r0, #0
	bne _080062AA
	ldr r0, _080062C4
	ldrh r0, [r0]
	cmp r0, #0
	beq _080062CC
_080062AA:
	ldr r0, _080062C8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	b _080062DE
	.align 2, 0
_080062BC: .4byte gUnknown_0201B7A0
_080062C0: .4byte gUnknown_02000000
_080062C4: .4byte gUnknown_02000004
_080062C8: .4byte gUnknown_03005314
_080062CC:
	ldr r1, _080062E4
	ldr r0, _080062E8
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080062EC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080062DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080062E4: .4byte 0x040000D4
_080062E8: .4byte gUnknown_03005314
_080062EC: .4byte 0x84000100
	.syntax divided

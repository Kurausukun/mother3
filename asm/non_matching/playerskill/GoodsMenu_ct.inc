	.syntax unified
GoodsMenu_ct:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x128
	mov sl, r0
	str r1, [sp, #0x98]
	bl __4Base
	ldr r0, _0807D7E0
	mov r1, sl
	str r0, [r1, #0x1c]
	adds r1, #0x28
	movs r0, #0
	mov r2, sl
	str r0, [r2, #0x28]
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r4, sl
	adds r4, #0x48
	adds r0, r4, #0
	bl __11Unk0806D64C
	mov r0, sl
	adds r0, #0xb4
	movs r1, #2
	mov r2, sp
	adds r2, #0x4c
	str r2, [sp, #0xbc]
	subs r2, #0x3c
	str r2, [sp, #0x118]
	adds r2, #0x40
	str r2, [sp, #0xc4]
	subs r2, #0x34
	str r2, [sp, #0x11c]
	adds r2, #0x38
	str r2, [sp, #0xc8]
	add r2, sp, #0x28
	mov sb, r2
	mov r2, sp
	adds r2, #0x34
	str r2, [sp, #0xa8]
	adds r2, #0xc
	str r2, [sp, #0xac]
	adds r2, #0x18
	str r2, [sp, #0xd0]
	adds r2, #4
	str r2, [sp, #0xd8]
	adds r2, #4
	str r2, [sp, #0xdc]
	adds r2, #4
	str r2, [sp, #0xe0]
	adds r2, #4
	str r2, [sp, #0xe4]
	adds r2, #4
	str r2, [sp, #0xe8]
	adds r2, #4
	str r2, [sp, #0xec]
	adds r2, #4
	str r2, [sp, #0xf0]
	adds r2, #4
	str r2, [sp, #0xf4]
	adds r2, #4
	str r2, [sp, #0xf8]
	adds r2, #4
	str r2, [sp, #0xfc]
	adds r2, #4
	str r2, [sp, #0x100]
	adds r2, #4
	str r2, [sp, #0x104]
	adds r2, #4
	str r2, [sp, #0x108]
	adds r2, #4
	str r2, [sp, #0x10c]
	adds r2, #4
	str r2, [sp, #0x110]
	str r4, [sp, #0xd4]
	subs r4, #0x14
	str r4, [sp, #0xb0]
	mov r2, sl
	adds r2, #0x35
	str r2, [sp, #0xb4]
	adds r4, #2
	str r4, [sp, #0xb8]
	adds r2, #7
	str r2, [sp, #0xc0]
	adds r4, #0xe
	str r4, [sp, #0xcc]
	movs r3, #1
	rsbs r3, r3, #0
_0807D4AA:
	adds r4, r0, #0
	movs r6, #1
	movs r0, #0xb8
	adds r0, r0, r4
	mov r8, r0
	subs r1, #1
	str r1, [sp, #0x120]
	ldr r5, [sp, #0xbc]
	movs r7, #0xa
_0807D4BC:
	ldr r1, _0807D7E4
	str r1, [sp, #0xc]
	ldr r2, _0807D7E8
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r0, sp, #0x4c
	strh r7, [r0]
	strh r7, [r5, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r5, #0
	str r3, [sp, #0x124]
	bl sub_08071108
	ldr r0, _0807D7E4
	str r0, [sp, #0xc]
	ldr r1, _0807D7EC
	str r1, [r4, #0x1c]
	adds r4, #0x5c
	subs r6, #1
	ldr r3, [sp, #0x124]
	cmp r6, r3
	bne _0807D4BC
	mov r0, r8
	ldr r1, [sp, #0x120]
	cmp r1, r3
	bne _0807D4AA
	movs r0, #0xb7
	lsls r0, r0, #2
	add r0, sl
	bl sub_0808B0D8
	movs r0, #0xde
	lsls r0, r0, #2
	add r0, sl
	bl sub_08071D2C
	ldr r0, _0807D7F0
	add r0, sl
	bl sub_08071E5C
	movs r0, #0x96
	lsls r0, r0, #3
	add r0, sl
	bl __11Unk0806D64C
	ldr r0, _0807D7F4
	add r0, sl
	bl sub_08086750
	ldr r2, _0807D7F8
	add r2, sl
	mov r8, r2
	ldr r5, _0807D7E4
	str r5, [sp, #0x18]
	ldr r4, _0807D7E8
	str r4, [sp, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0x118]
	str r0, [r1, #4]
	movs r4, #0xa
	movs r6, #0
	movs r7, #0
	add r0, sp, #0x50
	strh r4, [r0]
	ldr r2, [sp, #0xc4]
	strh r4, [r2, #2]
	mov r0, r8
	ldr r1, [sp, #0x118]
	ldr r2, [sp, #0xc4]
	bl sub_08071108
	str r5, [sp, #0x18]
	ldr r0, _0807D7EC
	mov r1, r8
	str r0, [r1, #0x1c]
	movs r2, #0xb5
	lsls r2, r2, #3
	add r2, sl
	mov r8, r2
	str r5, [sp, #0x24]
	ldr r0, _0807D7E8
	str r0, [sp, #0x1c]
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, [sp, #0x11c]
	str r1, [r2, #4]
	add r0, sp, #0x54
	strh r4, [r0]
	ldr r0, [sp, #0xc8]
	strh r4, [r0, #2]
	mov r0, r8
	ldr r1, [sp, #0x11c]
	ldr r2, [sp, #0xc8]
	bl sub_08071108
	str r5, [sp, #0x24]
	ldr r1, _0807D7EC
	mov r2, r8
	str r1, [r2, #0x1c]
	ldr r0, _0807D7FC
	add r0, sl
	bl sub_0808B218
	movs r0, #0xd3
	lsls r0, r0, #3
	add r0, sl
	bl sub_08071F8C
	ldr r4, [sp, #0x98]
	mov r0, sl
	str r4, [r0, #0x24]
	ldr r1, [sp, #0xb0]
	strb r6, [r1]
	ldr r2, [sp, #0xb4]
	strb r6, [r2]
	ldr r4, [sp, #0xb8]
	strb r6, [r4]
	str r7, [r0, #0x38]
	ldr r0, [sp, #0xc0]
	strb r6, [r0]
	mov r1, sl
	str r7, [r1, #0x40]
	movs r0, #1
	ldr r2, [sp, #0xcc]
	strb r0, [r2]
	mov r0, sl
	bl sub_0807DB08
	ldr r1, _0807D800
	mov r0, sb
	bl sub_080706A0
	ldr r0, [sp, #0xa8]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r4, #0x9f
	lsls r4, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0xac]
	bl sub_080706A0
	ldr r0, [sp, #0xac]
	str r0, [sp]
	ldr r0, [sp, #0xd4]
	movs r1, #1
	mov r2, sb
	ldr r3, [sp, #0xa8]
	bl sub_0806D744__11Unk0806D64C
	str r5, [sp, #0x48]
	str r5, [sp, #0x3c]
	str r5, [sp, #0x30]
	add r0, sp, #0x58
	strh r7, [r0]
	ldr r1, [sp, #0xd0]
	strh r7, [r1, #2]
	ldr r0, [sp, #0xd4]
	ldr r1, [sp, #0xd0]
	bl sub_0806D814__11Unk0806D64C
	movs r1, #0xf0
	movs r2, #0x30
	add r0, sp, #0x5c
	strh r1, [r0]
	ldr r4, [sp, #0xd8]
	strh r2, [r4, #2]
	ldr r0, [sp, #0xd4]
	ldr r1, [sp, #0xd8]
	bl sub_0806D828__11Unk0806D64C
	add r0, sp, #0x60
	strh r7, [r0]
	ldr r0, [sp, #0xdc]
	strh r7, [r0, #2]
	ldr r0, [sp, #0xd4]
	ldr r1, [sp, #0xdc]
	bl sub_0806D83C__11Unk0806D64C
	movs r2, #0
	ldr r7, [sp, #0xe0]
	ldr r1, [sp, #0xe4]
	str r1, [sp, #0xa0]
	movs r3, #0
_0807D63A:
	movs r6, #0
	lsls r1, r2, #1
	adds r4, r2, #1
	str r4, [sp, #0x114]
	movs r4, #0xb8
	adds r0, r2, #0
	muls r0, r4, r0
	mov r8, r0
	adds r0, #0xb4
	add r0, sl
	str r0, [sp, #0x9c]
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #6
	str r1, [sp, #0xa4]
_0807D658:
	movs r0, #0x5c
	adds r5, r6, #0
	muls r5, r0, r5
	mov r4, r8
	add r4, sl
	adds r4, r5, r4
	adds r4, #0xb4
	ldr r2, [r4, #0x1c]
	adds r2, #0x90
	ldr r0, [sp, #0x9c]
	adds r5, r0, r5
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	add r1, sp, #0x64
	strb r3, [r1]
	strb r3, [r7, #1]
	strb r3, [r7, #2]
	ldr r2, [r2, #4]
	adds r1, r7, #0
	str r3, [sp, #0x124]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	adds r2, #0x88
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r5, r5, r0
	movs r0, #0x6c
	muls r0, r6, r0
	adds r0, #0xa
	add r1, sp, #0x68
	strh r0, [r1]
	add r0, sp, #0xa4
	ldrh r1, [r0]
	ldr r0, [sp, #0xa0]
	strh r1, [r0, #2]
	ldr r2, [r2, #4]
	adds r0, r5, #0
	ldr r1, [sp, #0xa0]
	bl _call_via_r2
	adds r6, #1
	ldr r3, [sp, #0x124]
	cmp r6, #1
	ble _0807D658
	ldr r2, [sp, #0x114]
	cmp r2, #2
	ble _0807D63A
	movs r0, #0xde
	lsls r0, r0, #2
	add r0, sl
	movs r4, #0xdc
	movs r2, #7
	movs r6, #0
	add r1, sp, #0x6c
	strh r4, [r1]
	ldr r1, [sp, #0xe8]
	strh r2, [r1, #2]
	ldr r1, [sp, #0xe8]
	bl sub_08071DF8
	ldr r0, _0807D7F0
	add r0, sl
	movs r2, #0x1e
	add r1, sp, #0x70
	strh r4, [r1]
	ldr r4, [sp, #0xec]
	strh r2, [r4, #2]
	ldr r1, [sp, #0xec]
	bl sub_08071F28
	ldr r1, _0807D800
	mov r0, sb
	bl sub_080706A0
	ldr r0, [sp, #0xa8]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0xac]
	bl sub_080706A0
	movs r4, #0x96
	lsls r4, r4, #3
	add r4, sl
	ldr r1, [sp, #0xac]
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #1
	mov r2, sb
	ldr r3, [sp, #0xa8]
	bl sub_0806D744__11Unk0806D64C
	ldr r0, _0807D7E4
	str r0, [sp, #0x48]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x30]
	movs r5, #0x80
	add r0, sp, #0x74
	strh r6, [r0]
	ldr r2, [sp, #0xf0]
	strh r5, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xf0]
	bl sub_0806D814__11Unk0806D64C
	movs r1, #0xf0
	movs r2, #0x20
	add r0, sp, #0x78
	strh r1, [r0]
	ldr r0, [sp, #0xf4]
	strh r2, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xf4]
	bl sub_0806D828__11Unk0806D64C
	add r0, sp, #0x7c
	strh r6, [r0]
	ldr r1, [sp, #0xf8]
	strh r5, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xf8]
	bl sub_0806D83C__11Unk0806D64C
	ldr r0, _0807D7F4
	add r0, sl
	movs r2, #0xa
	movs r3, #0x84
	add r1, sp, #0x80
	strh r2, [r1]
	ldr r2, [sp, #0xfc]
	strh r3, [r2, #2]
	ldr r1, [sp, #0xfc]
	bl sub_080867FC
	ldr r4, _0807D7F8
	add r4, sl
	add r0, sp, #0x84
	strb r6, [r0]
	ldr r0, [sp, #0x100]
	strb r6, [r0, #1]
	strb r6, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x100]
	bl sub_0806E9C4
	movs r5, #0x24
	movs r1, #0x86
	add r0, sp, #0x88
	strh r5, [r0]
	ldr r2, [sp, #0x104]
	strh r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x104]
	bl sub_08071194
	movs r4, #0xb5
	lsls r4, r4, #3
	add r4, sl
	add r0, sp, #0x8c
	strb r6, [r0]
	ldr r0, [sp, #0x108]
	strb r6, [r0, #1]
	strb r6, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x108]
	bl sub_0806E9C4
	movs r1, #0x92
	add r0, sp, #0x90
	strh r5, [r0]
	ldr r2, [sp, #0x10c]
	strh r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x10c]
	bl sub_08071194
	ldr r0, _0807D7FC
	add r0, sl
	movs r2, #0xc9
	movs r3, #0x7a
	add r1, sp, #0x94
	strh r2, [r1]
	ldr r4, [sp, #0x110]
	strh r3, [r4, #2]
	ldr r1, [sp, #0x110]
	b _0807D804
	.align 2, 0
_0807D7E0: .4byte vt_09F827A8
_0807D7E4: .4byte _vt.6ResPtr
_0807D7E8: .4byte gUnknown_08CE39F8
_0807D7EC: .4byte vt_09F7E458
_0807D7F0: .4byte 0x00000414
_0807D7F4: .4byte 0x0000051C
_0807D7F8: .4byte 0x0000054C
_0807D7FC: .4byte 0x00000604
_0807D800: .4byte 0x0000028A
_0807D804:
	bl sub_0806DB74
	mov r0, sl
	bl sub_0807DCC4
	mov r0, sb
	bl __4Base
	ldr r6, _0807DA9C
	ldr r0, _0807DAA0
	str r0, [sp, #0x44]
	movs r7, #0xd3
	lsls r7, r7, #3
	add r7, sl
	ldr r0, _0807DAA4
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAA8
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAAC
	str r0, [sp, #0x44]
	ldr r0, _0807DAB0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAB4
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAB8
	str r0, [sp, #0x44]
	ldr r0, _0807DABC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAC0
	str r0, [sp, #0x44]
	ldr r0, _0807DAC4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAC8
	str r0, [sp, #0x44]
	ldr r0, _0807DACC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAD0
	str r0, [sp, #0x44]
	ldr r0, _0807DAD4
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAD8
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DADC
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAE0
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAE4
	str r0, [sp, #0x44]
	ldr r0, _0807DAE8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r5, r0, #0
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAEC
	str r0, [sp, #0x44]
	ldr r0, _0807DAF0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r5, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov r8, r0
	mov r0, sb
	bl __4Base
	movs r0, #0
	str r0, [sp, #0x48]
	ldr r0, _0807DAF4
	str r0, [sp, #0x44]
	ldr r0, _0807DAF8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov r8, r0
	mov r0, sb
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x48]
	ldr r0, _0807DAFC
	str r0, [sp, #0x44]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r5, r0, #0
	mov r0, sb
	bl __4Base
	ldr r0, _0807DB00
	str r0, [sp, #0x44]
	ldr r0, _0807DB04
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r5, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sl
	add sp, #0x128
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807DA9C: .4byte _vt.3Unk
_0807DAA0: .4byte _vt.10UpKeyPress
_0807DAA4: .4byte gUnknown_081097F0
_0807DAA8: .4byte _vt.14UpKeyLongPress
_0807DAAC: .4byte _vt.12DownKeyPress
_0807DAB0: .4byte gUnknown_081097F8
_0807DAB4: .4byte _vt.16DownKeyLongPress
_0807DAB8: .4byte _vt.12LeftKeyPress
_0807DABC: .4byte gUnknown_08109800
_0807DAC0: .4byte _vt.13RightKeyPress
_0807DAC4: .4byte gUnknown_08109808
_0807DAC8: .4byte _vt.14SelectKeyPress
_0807DACC: .4byte gUnknown_08109810
_0807DAD0: .4byte _vt.9AKeyPress
_0807DAD4: .4byte gUnknown_08109818
_0807DAD8: .4byte _vt.13AKeyLongPress
_0807DADC: .4byte _vt.9LKeyPress
_0807DAE0: .4byte _vt.13LKeyLongPress
_0807DAE4: .4byte _vt.9BKeyPress
_0807DAE8: .4byte gUnknown_08109820
_0807DAEC: .4byte _vt.7Suspend
_0807DAF0: .4byte gUnknown_08109828
_0807DAF4: .4byte _vt.10UnitEscape
_0807DAF8: .4byte gUnknown_08109830
_0807DAFC: .4byte _vt.7UnitDie
_0807DB00: .4byte _vt.6Resume
_0807DB04: .4byte gUnknown_08109838
	.syntax divided

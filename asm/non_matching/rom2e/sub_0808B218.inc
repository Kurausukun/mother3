	.syntax unified
sub_0808B218:
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _0808B268
	str r0, [r5, #0x1c]
	ldr r1, _0808B26C
	mov r0, sp
	bl sub_080706A0
	add r6, sp, #0xc
	adds r0, r6, #0
	movs r1, #2
	bl sub_080706A0
	ldr r1, _0808B270
	add r4, sp, #0x18
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	mov r1, sp
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _0808B274
	str r0, [sp, #0x20]
	str r0, [sp, #0x14]
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0806DB60
	adds r0, r5, #0
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808B268: .4byte vt_09F82898
_0808B26C: .4byte 0x00000291
_0808B270: .4byte 0x00000283
_0808B274: .4byte _vt.1D
.global __9DebugMenu
__9DebugMenu:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x160
	adds r7, r0, #0
	str r1, [sp, #0xb8]
	bl __4Base
	ldr r0, _0808B664
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x28
	movs r3, #2
	add r6, sp, #0x58
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0xc8]
	adds r1, #0x4c
	str r1, [sp, #0xdc]
	subs r1, #0x40
	str r1, [sp, #0xcc]
	adds r1, #0x44
	str r1, [sp, #0xe4]
	subs r1, #0x38
	str r1, [sp, #0xd0]
	adds r1, #0x3c
	str r1, [sp, #0xf0]
	add r1, sp, #0x34
	mov sl, r1
	mov r1, sp
	adds r1, #0x40
	str r1, [sp, #0xd4]
	adds r1, #0xc
	str r1, [sp, #0xd8]
	adds r1, #0x1c
	str r1, [sp, #0xf8]
	adds r1, #4
	str r1, [sp, #0xfc]
	adds r1, #4
	str r1, [sp, #0x104]
	adds r1, #4
	str r1, [sp, #0x10c]
	adds r1, #4
	str r1, [sp, #0x110]
	adds r1, #4
	str r1, [sp, #0x114]
	adds r1, #4
	str r1, [sp, #0x118]
	adds r1, #4
	str r1, [sp, #0x11c]
	adds r1, #4
	str r1, [sp, #0x120]
	adds r1, #4
	str r1, [sp, #0x124]
	adds r1, #4
	str r1, [sp, #0x128]
	adds r1, #4
	str r1, [sp, #0x12c]
	adds r1, #4
	str r1, [sp, #0x130]
	adds r1, #4
	str r1, [sp, #0x134]
	adds r1, #4
	str r1, [sp, #0x138]
	adds r1, #4
	str r1, [sp, #0x13c]
	adds r1, #4
	str r1, [sp, #0x140]
	adds r1, #4
	str r1, [sp, #0x144]
	adds r1, #4
	str r1, [sp, #0x148]
	adds r1, #4
	str r1, [sp, #0x14c]
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
_0808B316:
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, #0xc
	subs r3, #1
	cmp r3, r2
	bne _0808B316
	adds r4, r7, #0
	adds r4, #0x60
	adds r0, r4, #0
	bl __11Unk0806D64C
	adds r5, r7, #0
	adds r5, #0xcc
	movs r3, #2
	mov sb, r3
	str r4, [sp, #0x108]
	adds r0, r7, #0
	adds r0, #0x4c
	str r0, [sp, #0xe0]
	adds r1, r7, #0
	adds r1, #0x4d
	str r1, [sp, #0xe8]
	adds r3, r7, #0
	adds r3, #0x4e
	str r3, [sp, #0xec]
	adds r0, #8
	str r0, [sp, #0xf4]
	adds r1, #0xf
	str r1, [sp, #0x100]
	movs r3, #1
	rsbs r3, r3, #0
	mov r8, r3
	ldr r3, _0808B668
	adds r4, r6, #0
	movs r6, #0xa
_0808B35E:
	str r3, [sp, #0xc]
	ldr r0, _0808B66C
	str r0, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	add r0, sp, #0x58
	strh r6, [r0]
	strh r6, [r4, #2]
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r4, #0
	str r3, [sp, #0x15c]
	bl sub_08071108
	ldr r3, [sp, #0x15c]
	str r3, [sp, #0xc]
	ldr r0, _0808B670
	str r0, [r5, #0x1c]
	adds r5, #0x5c
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	cmp sb, r8
	bne _0808B35E
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_0808B0D8
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r4, r7, r3
	movs r0, #2
	mov r8, r0
	ldr r6, [sp, #0xc8]
	ldr r5, [sp, #0xdc]
	movs r1, #0xa
	mov sb, r1
_0808B3AA:
	ldr r3, _0808B668
	str r3, [sp, #0x18]
	ldr r0, _0808B66C
	str r0, [sp, #0x10]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r6, #4]
	add r0, sp, #0x5c
	mov r3, sb
	strh r3, [r0]
	strh r3, [r5, #2]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08071108
	ldr r0, _0808B668
	str r0, [sp, #0x18]
	ldr r1, _0808B670
	str r1, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x5c
	bl sub_0808E834
	adds r4, #0xc4
	movs r3, #1
	rsbs r3, r3, #0
	add r8, r3
	cmp r8, r3
	bne _0808B3AA
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r7, r1
	bl sub_0808B0D8
	ldr r3, _0808B674
	adds r0, r7, r3
	bl sub_08071D2C
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r7, r1
	bl sub_08071E5C
	ldr r3, _0808B678
	adds r0, r7, r3
	bl __11Unk0806D64C
	movs r0, #0xe1
	lsls r0, r0, #3
	adds r0, r0, r7
	mov r8, r0
	ldr r5, _0808B668
	str r5, [sp, #0x24]
	ldr r1, _0808B66C
	str r1, [sp, #0x1c]
	movs r3, #1
	rsbs r3, r3, #0
	ldr r0, [sp, #0xcc]
	str r3, [r0, #4]
	movs r4, #0xa
	movs r6, #0
	movs r1, #0
	mov sb, r1
	add r0, sp, #0x60
	strh r4, [r0]
	ldr r3, [sp, #0xe4]
	strh r4, [r3, #2]
	mov r0, r8
	ldr r1, [sp, #0xcc]
	ldr r2, [sp, #0xe4]
	bl sub_08071108
	str r5, [sp, #0x24]
	ldr r0, _0808B670
	mov r1, r8
	str r0, [r1, #0x1c]
	ldr r3, _0808B67C
	adds r3, r3, r7
	mov r8, r3
	str r5, [sp, #0x30]
	ldr r0, _0808B66C
	str r0, [sp, #0x28]
	movs r1, #1
	rsbs r1, r1, #0
	ldr r3, [sp, #0xd0]
	str r1, [r3, #4]
	add r0, sp, #0x64
	strh r4, [r0]
	ldr r0, [sp, #0xf0]
	strh r4, [r0, #2]
	mov r0, r8
	ldr r1, [sp, #0xd0]
	ldr r2, [sp, #0xf0]
	bl sub_08071108
	str r5, [sp, #0x30]
	ldr r1, _0808B670
	mov r3, r8
	str r1, [r3, #0x1c]
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r7, r1
	bl sub_0808B218
	ldr r3, _0808B680
	adds r0, r7, r3
	bl sub_08071F8C
	ldr r0, [sp, #0xb8]
	str r0, [r7, #0x24]
	ldr r1, [sp, #0xe0]
	strb r6, [r1]
	ldr r3, [sp, #0xe8]
	strb r6, [r3]
	ldr r0, [sp, #0xec]
	strb r6, [r0]
	mov r1, sb
	str r1, [r7, #0x50]
	ldr r3, [sp, #0xf4]
	strb r6, [r3]
	str r1, [r7, #0x58]
	movs r0, #1
	ldr r1, [sp, #0x100]
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0808BA84
	ldr r1, _0808B684
	mov r0, sl
	bl sub_080706A0
	ldr r0, [sp, #0xd4]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0xd8]
	bl sub_080706A0
	ldr r0, [sp, #0xd8]
	str r0, [sp]
	ldr r0, [sp, #0x108]
	movs r1, #1
	mov r2, sl
	ldr r3, [sp, #0xd4]
	bl sub_0806D744__11Unk0806D64C
	str r5, [sp, #0x54]
	str r5, [sp, #0x48]
	str r5, [sp, #0x3c]
	add r0, sp, #0x68
	mov r1, sb
	strh r1, [r0]
	ldr r3, [sp, #0xf8]
	strh r1, [r3, #2]
	ldr r0, [sp, #0x108]
	ldr r1, [sp, #0xf8]
	bl sub_0806D814__11Unk0806D64C
	movs r1, #0xf0
	movs r2, #0x30
	add r0, sp, #0x6c
	strh r1, [r0]
	ldr r0, [sp, #0xfc]
	strh r2, [r0, #2]
	ldr r0, [sp, #0x108]
	ldr r1, [sp, #0xfc]
	bl sub_0806D828__11Unk0806D64C
	add r0, sp, #0x70
	mov r1, sb
	strh r1, [r0]
	ldr r3, [sp, #0x104]
	strh r1, [r3, #2]
	ldr r0, [sp, #0x108]
	ldr r1, [sp, #0x104]
	bl sub_0806D83C__11Unk0806D64C
	movs r0, #0
	mov sb, r0
	mov r1, sl
	str r1, [sp, #0xbc]
	ldr r3, [sp, #0x10c]
	str r3, [sp, #0xc0]
	ldr r0, [sp, #0x110]
	str r0, [sp, #0xc4]
	movs r1, #6
	str r1, [sp, #0x158]
_0808B532:
	movs r0, #0x5c
	mov r6, sb
	muls r6, r0, r6
	adds r3, r6, r7
	mov r8, r3
	movs r0, #0xcc
	add r8, r0
	mov r1, r8
	ldr r5, [r1, #0x1c]
	adds r5, #0x80
	adds r6, #0xcc
	adds r6, r7, r6
	movs r3, #0
	ldrsh r4, [r5, r3]
	adds r4, r6, r4
	ldr r0, [sp, #0xbc]
	mov r1, sb
	bl tellTurnAction
	ldr r2, [r5, #4]
	adds r0, r4, #0
	ldr r1, [sp, #0xbc]
	bl _call_via_r2
	ldr r0, [sp, #0xbc]
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	ldr r2, [r0, #0x1c]
	adds r2, #0x90
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	add r1, sp, #0x74
	movs r3, #0
	strb r3, [r1]
	ldr r1, [sp, #0xc0]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	ldr r2, [r2, #4]
	ldr r1, [sp, #0xc0]
	bl _call_via_r2
	mov r3, r8
	ldr r2, [r3, #0x1c]
	adds r2, #0x88
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r6, r6, r0
	movs r1, #0x14
	add r0, sp, #0x78
	strh r1, [r0]
	add r3, sp, #0x158
	ldrh r0, [r3]
	ldr r3, [sp, #0xc4]
	strh r0, [r3, #2]
	ldr r2, [r2, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0xc4]
	bl _call_via_r2
	ldr r0, [sp, #0x158]
	adds r0, #0xc
	str r0, [sp, #0x158]
	movs r1, #1
	add sb, r1
	mov r3, sb
	cmp r3, #2
	ble _0808B532
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #3
	movs r3, #3
	rsbs r3, r3, #0
	add r1, sp, #0x7c
	strh r2, [r1]
	ldr r1, [sp, #0x114]
	strh r3, [r1, #2]
	ldr r1, [sp, #0x114]
	bl sub_0808B1A8
	movs r6, #0
	ldr r5, [sp, #0x118]
	ldr r3, [sp, #0x11c]
	mov sb, r3
	ldr r0, [sp, #0x120]
	mov r8, r0
	movs r1, #7
	str r1, [sp, #0x150]
	movs r3, #6
	str r3, [sp, #0x154]
_0808B5EC:
	movs r0, #0xc4
	adds r4, r6, #0
	muls r4, r0, r4
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r4, r7, r4
	add r0, sp, #0x80
	movs r1, #0
	strb r1, [r0]
	strb r1, [r5, #1]
	strb r1, [r5, #2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806E9C4
	add r0, sp, #0x84
	movs r3, #0x5a
	strh r3, [r0]
	add r0, sp, #0x154
	ldrh r1, [r0]
	mov r0, sb
	strh r1, [r0, #2]
	adds r0, r4, #0
	mov r1, sb
	bl sub_08071194
	adds r4, #0x5c
	add r0, sp, #0x88
	movs r1, #0xd4
	strh r1, [r0]
	add r3, sp, #0x150
	ldrh r0, [r3]
	mov r3, r8
	strh r0, [r3, #2]
	adds r0, r4, #0
	mov r1, r8
	bl sub_0808EA70
	adds r0, r4, #0
	movs r1, #2
	bl sub_0808EA6C
	ldr r0, [sp, #0x150]
	adds r0, #0xc
	str r0, [sp, #0x150]
	ldr r1, [sp, #0x154]
	adds r1, #0xc
	str r1, [sp, #0x154]
	adds r6, #1
	cmp r6, #2
	ble _0808B5EC
	movs r3, #0x99
	lsls r3, r3, #3
	adds r0, r7, r3
	movs r2, #0x49
	movs r3, #3
	rsbs r3, r3, #0
	b _0808B688
	.align 2, 0
_0808B664: .4byte vt_09F85B28
_0808B668: .4byte _vt.1D
_0808B66C: .4byte gUnknown_08CE39F8
_0808B670: .4byte vt_09F7E458
_0808B674: .4byte 0x00000564
_0808B678: .4byte 0x0000069C
_0808B67C: .4byte 0x00000764
_0808B680: .4byte 0x00000854
_0808B684: .4byte 0x0000028B
_0808B688:
	movs r6, #0
	add r1, sp, #0x8c
	strh r2, [r1]
	ldr r1, [sp, #0x124]
	strh r3, [r1, #2]
	ldr r1, [sp, #0x124]
	bl sub_0808B1A8
	ldr r3, _0808BA10
	adds r0, r7, r3
	movs r4, #0xdc
	movs r2, #7
	add r1, sp, #0x90
	strh r4, [r1]
	ldr r1, [sp, #0x128]
	strh r2, [r1, #2]
	ldr r1, [sp, #0x128]
	bl sub_08071DF8
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r7, r3
	movs r2, #0x1e
	add r1, sp, #0x94
	strh r4, [r1]
	ldr r1, [sp, #0x12c]
	strh r2, [r1, #2]
	ldr r1, [sp, #0x12c]
	bl sub_08071F28
	ldr r1, _0808BA14
	mov r0, sl
	bl sub_080706A0
	ldr r0, [sp, #0xd4]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0xd8]
	bl sub_080706A0
	ldr r0, _0808BA18
	adds r4, r7, r0
	ldr r1, [sp, #0xd8]
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #1
	mov r2, sl
	ldr r3, [sp, #0xd4]
	bl sub_0806D744__11Unk0806D64C
	ldr r0, _0808BA1C
	str r0, [sp, #0x54]
	str r0, [sp, #0x48]
	str r0, [sp, #0x3c]
	movs r5, #0x80
	add r0, sp, #0x98
	strh r6, [r0]
	ldr r3, [sp, #0x130]
	strh r5, [r3, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x130]
	bl sub_0806D814__11Unk0806D64C
	movs r1, #0xf0
	movs r2, #0x20
	add r0, sp, #0x9c
	strh r1, [r0]
	ldr r0, [sp, #0x134]
	strh r2, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x134]
	bl sub_0806D828__11Unk0806D64C
	add r0, sp, #0xa0
	strh r6, [r0]
	ldr r1, [sp, #0x138]
	strh r5, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x138]
	bl sub_0806D83C__11Unk0806D64C
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r4, r7, r3
	add r0, sp, #0xa4
	strb r6, [r0]
	ldr r0, [sp, #0x13c]
	strb r6, [r0, #1]
	strb r6, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x13c]
	bl sub_0806E9C4
	movs r5, #0xc
	movs r1, #0x86
	add r0, sp, #0xa8
	strh r5, [r0]
	ldr r3, [sp, #0x140]
	strh r1, [r3, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x140]
	bl sub_08071194
	ldr r0, _0808BA20
	adds r4, r7, r0
	add r0, sp, #0xac
	strb r6, [r0]
	ldr r1, [sp, #0x144]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x144]
	bl sub_0806E9C4
	movs r1, #0x92
	add r0, sp, #0xb0
	strh r5, [r0]
	ldr r3, [sp, #0x148]
	strh r1, [r3, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x148]
	bl sub_08071194
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r2, #0xc9
	movs r3, #0x7a
	add r1, sp, #0xb4
	strh r2, [r1]
	ldr r1, [sp, #0x14c]
	strh r3, [r1, #2]
	ldr r1, [sp, #0x14c]
	bl sub_0806DB74
	adds r0, r7, #0
	bl sub_0808BB8C
	mov r0, sl
	bl __4Base
	ldr r3, _0808BA24
	mov sb, r3
	ldr r0, _0808BA28
	str r0, [sp, #0x50]
	ldr r0, _0808BA2C
	adds r0, r0, r7
	mov r8, r0
	ldr r0, _0808BA30
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA34
	str r0, [sp, #0x50]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA38
	str r0, [sp, #0x50]
	ldr r0, _0808BA3C
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA40
	str r0, [sp, #0x50]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA44
	str r0, [sp, #0x50]
	ldr r0, _0808BA48
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA4C
	str r0, [sp, #0x50]
	ldr r0, _0808BA50
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA54
	str r0, [sp, #0x50]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA58
	str r0, [sp, #0x50]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA5C
	str r0, [sp, #0x50]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA60
	str r0, [sp, #0x50]
	ldr r0, _0808BA64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r5, r0, #0
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA68
	str r0, [sp, #0x50]
	ldr r0, _0808BA6C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r6, r0, #0
	mov r0, sl
	bl __4Base
	movs r0, #0
	str r0, [sp, #0x54]
	ldr r0, _0808BA70
	str r0, [sp, #0x50]
	ldr r0, _0808BA74
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r6, r0, #0
	mov r0, sl
	bl __4Base
	movs r3, #0
	str r3, [sp, #0x54]
	ldr r0, _0808BA78
	str r0, [sp, #0x50]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r5, r0, #0
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA7C
	str r0, [sp, #0x50]
	ldr r0, _0808BA80
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x160
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808BA10: .4byte 0x00000564
_0808BA14: .4byte 0x0000028A
_0808BA18: .4byte 0x0000069C
_0808BA1C: .4byte _vt.1D
_0808BA20: .4byte 0x00000764
_0808BA24: .4byte _vt.3Unk
_0808BA28: .4byte _vt.10UpKeyPress
_0808BA2C: .4byte 0x00000854
_0808BA30: .4byte gUnknown_08118364
_0808BA34: .4byte _vt.14UpKeyLongPress
_0808BA38: .4byte _vt.12DownKeyPress
_0808BA3C: .4byte gUnknown_0811836C
_0808BA40: .4byte _vt.16DownKeyLongPress
_0808BA44: .4byte _vt.14SelectKeyPress
_0808BA48: .4byte gUnknown_08118374
_0808BA4C: .4byte _vt.9AKeyPress
_0808BA50: .4byte gUnknown_0811837C
_0808BA54: .4byte _vt.13AKeyLongPress
_0808BA58: .4byte _vt.9LKeyPress
_0808BA5C: .4byte _vt.13LKeyLongPress
_0808BA60: .4byte _vt.9BKeyPress
_0808BA64: .4byte gUnknown_08118384
_0808BA68: .4byte _vt.7Suspend
_0808BA6C: .4byte gUnknown_0811838C
_0808BA70: .4byte _vt.10UnitEscape
_0808BA74: .4byte gUnknown_08118394
_0808BA78: .4byte _vt.7UnitDie
_0808BA7C: .4byte _vt.6Resume
_0808BA80: .4byte gUnknown_0811839C
	.syntax divided

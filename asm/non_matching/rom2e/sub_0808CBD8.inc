	.syntax unified
sub_0808CBD8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x110
	mov sb, r0
	str r1, [sp, #0x90]
	bl __4Base
	ldr r0, _0808CFC4
	mov r1, sb
	str r0, [r1, #0x1c]
	mov r4, sb
	adds r4, #0x3c
	adds r0, r4, #0
	bl __11Unk0806D64C
	mov r0, sb
	adds r0, #0xa8
	movs r1, #2
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0xa4]
	adds r2, #0x40
	str r2, [sp, #0xcc]
	subs r2, #0x34
	str r2, [sp, #0xac]
	adds r2, #0x38
	str r2, [sp, #0xd0]
	add r2, sp, #0x28
	mov sl, r2
	mov r2, sp
	adds r2, #0x34
	str r2, [sp, #0xb0]
	adds r2, #0xc
	str r2, [sp, #0xbc]
	adds r2, #0x18
	str r2, [sp, #0xd4]
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
	str r4, [sp, #0xc8]
	subs r4, #0x14
	str r4, [sp, #0xb4]
	mov r2, sb
	adds r2, #0x29
	str r2, [sp, #0xb8]
	adds r4, #8
	str r4, [sp, #0xc0]
	adds r2, #0xf
	str r2, [sp, #0xc4]
	movs r3, #1
	rsbs r3, r3, #0
	add r7, sp, #0x4c
_0808CC74:
	adds r4, r0, #0
	movs r5, #1
	movs r0, #0xb8
	adds r0, r0, r4
	mov r8, r0
	subs r1, #1
	str r1, [sp, #0xa8]
	movs r6, #0xa
_0808CC84:
	ldr r1, _0808CFC8
	str r1, [sp, #0xc]
	ldr r2, _0808CFCC
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r0, sp, #0x4c
	strh r6, [r0]
	strh r6, [r7, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r7, #0
	str r3, [sp, #0x10c]
	bl sub_08071108
	ldr r0, _0808CFC8
	str r0, [sp, #0xc]
	ldr r1, _0808CFD0
	str r1, [r4, #0x1c]
	adds r4, #0x5c
	subs r5, #1
	ldr r3, [sp, #0x10c]
	cmp r5, r3
	bne _0808CC84
	mov r0, r8
	ldr r1, [sp, #0xa8]
	cmp r1, r3
	bne _0808CC74
	movs r0, #0xb4
	lsls r0, r0, #2
	add r0, sb
	bl sub_0808B0D8
	movs r0, #0xdb
	lsls r0, r0, #2
	add r0, sb
	bl __11Unk0806D64C
	movs r0, #0xf6
	lsls r0, r0, #2
	add r0, sb
	bl sub_08086750
	movs r6, #0x81
	lsls r6, r6, #3
	add r6, sb
	ldr r5, _0808CFC8
	str r5, [sp, #0x18]
	ldr r2, _0808CFCC
	str r2, [sp, #0x10]
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, [sp, #0xa4]
	str r4, [r0, #4]
	movs r4, #0xa
	movs r1, #0
	mov r8, r1
	movs r7, #0
	add r0, sp, #0x50
	strh r4, [r0]
	ldr r2, [sp, #0xcc]
	strh r4, [r2, #2]
	adds r0, r6, #0
	ldr r1, [sp, #0xa4]
	ldr r2, [sp, #0xcc]
	bl sub_08071108
	str r5, [sp, #0x18]
	ldr r0, _0808CFD0
	str r0, [r6, #0x1c]
	ldr r6, _0808CFD4
	add r6, sb
	str r5, [sp, #0x24]
	ldr r1, _0808CFCC
	str r1, [sp, #0x1c]
	movs r2, #1
	rsbs r2, r2, #0
	ldr r0, [sp, #0xac]
	str r2, [r0, #4]
	add r0, sp, #0x54
	strh r4, [r0]
	ldr r1, [sp, #0xd0]
	strh r4, [r1, #2]
	adds r0, r6, #0
	ldr r1, [sp, #0xac]
	ldr r2, [sp, #0xd0]
	bl sub_08071108
	str r5, [sp, #0x24]
	ldr r2, _0808CFD0
	str r2, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #3
	add r0, sb
	bl sub_0808B218
	ldr r0, _0808CFD8
	add r0, sb
	bl sub_08071F8C
	ldr r4, [sp, #0x90]
	mov r0, sb
	str r4, [r0, #0x24]
	mov r2, r8
	ldr r1, [sp, #0xb4]
	strb r2, [r1]
	ldr r4, [sp, #0xb8]
	strb r2, [r4]
	str r7, [r0, #0x2c]
	ldr r0, [sp, #0xc0]
	strb r2, [r0]
	mov r1, sb
	str r7, [r1, #0x34]
	movs r0, #1
	ldr r2, [sp, #0xc4]
	strb r0, [r2]
	ldr r1, _0808CFDC
	mov r0, sl
	bl sub_080706A0
	ldr r0, [sp, #0xb0]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r4, #0x9f
	lsls r4, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0xbc]
	bl sub_080706A0
	ldr r0, [sp, #0xbc]
	str r0, [sp]
	ldr r0, [sp, #0xc8]
	movs r1, #1
	mov r2, sl
	ldr r3, [sp, #0xb0]
	bl sub_0806D744__11Unk0806D64C
	str r5, [sp, #0x48]
	str r5, [sp, #0x3c]
	str r5, [sp, #0x30]
	add r0, sp, #0x58
	strh r7, [r0]
	ldr r1, [sp, #0xd4]
	strh r7, [r1, #2]
	ldr r0, [sp, #0xc8]
	ldr r1, [sp, #0xd4]
	bl sub_0806D814__11Unk0806D64C
	movs r1, #0xf0
	movs r2, #0x30
	add r0, sp, #0x5c
	strh r1, [r0]
	ldr r4, [sp, #0xd8]
	strh r2, [r4, #2]
	ldr r0, [sp, #0xc8]
	ldr r1, [sp, #0xd8]
	bl sub_0806D828__11Unk0806D64C
	add r0, sp, #0x60
	strh r7, [r0]
	ldr r0, [sp, #0xdc]
	strh r7, [r0, #2]
	ldr r0, [sp, #0xc8]
	ldr r1, [sp, #0xdc]
	bl sub_0806D83C__11Unk0806D64C
	movs r2, #0
	ldr r7, [sp, #0xe0]
	ldr r1, [sp, #0xe4]
	str r1, [sp, #0x98]
	movs r3, #0
_0808CDE4:
	movs r6, #0
	lsls r1, r2, #1
	adds r4, r2, #1
	str r4, [sp, #0xa0]
	movs r4, #0xb8
	adds r0, r2, #0
	muls r0, r4, r0
	mov r8, r0
	adds r0, #0xa8
	add r0, sb
	str r0, [sp, #0x94]
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #6
	str r1, [sp, #0x9c]
_0808CE02:
	movs r0, #0x5c
	adds r5, r6, #0
	muls r5, r0, r5
	mov r4, r8
	add r4, sb
	adds r4, r5, r4
	adds r4, #0xa8
	ldr r2, [r4, #0x1c]
	adds r2, #0x90
	ldr r0, [sp, #0x94]
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
	str r3, [sp, #0x10c]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	adds r2, #0x88
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r5, r5, r0
	movs r0, #0x6c
	muls r0, r6, r0
	adds r0, #0x14
	add r1, sp, #0x68
	strh r0, [r1]
	add r0, sp, #0x9c
	ldrh r1, [r0]
	ldr r0, [sp, #0x98]
	strh r1, [r0, #2]
	ldr r2, [r2, #4]
	adds r0, r5, #0
	ldr r1, [sp, #0x98]
	bl _call_via_r2
	adds r6, #1
	ldr r3, [sp, #0x10c]
	cmp r6, #1
	ble _0808CE02
	ldr r2, [sp, #0xa0]
	cmp r2, #2
	ble _0808CDE4
	ldr r1, _0808CFDC
	mov r0, sl
	bl sub_080706A0
	ldr r0, [sp, #0xb0]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0xbc]
	bl sub_080706A0
	movs r4, #0xdb
	lsls r4, r4, #2
	add r4, sb
	ldr r0, [sp, #0xbc]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #1
	mov r2, sl
	ldr r3, [sp, #0xb0]
	bl sub_0806D744__11Unk0806D64C
	ldr r0, _0808CFC8
	str r0, [sp, #0x48]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x30]
	movs r6, #0x80
	movs r5, #0
	add r0, sp, #0x6c
	strh r5, [r0]
	ldr r1, [sp, #0xe8]
	strh r6, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xe8]
	bl sub_0806D814__11Unk0806D64C
	movs r1, #0xf0
	movs r2, #0x20
	add r0, sp, #0x70
	strh r1, [r0]
	ldr r0, [sp, #0xec]
	strh r2, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xec]
	bl sub_0806D828__11Unk0806D64C
	add r0, sp, #0x74
	strh r5, [r0]
	ldr r1, [sp, #0xf0]
	strh r6, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xf0]
	bl sub_0806D83C__11Unk0806D64C
	movs r0, #0xf6
	lsls r0, r0, #2
	add r0, sb
	movs r2, #0xa
	movs r3, #0x85
	add r1, sp, #0x78
	strh r2, [r1]
	ldr r2, [sp, #0xf4]
	strh r3, [r2, #2]
	ldr r1, [sp, #0xf4]
	bl sub_080867FC
	movs r4, #0x81
	lsls r4, r4, #3
	add r4, sb
	add r0, sp, #0x7c
	strb r5, [r0]
	ldr r0, [sp, #0xf8]
	strb r5, [r0, #1]
	strb r5, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xf8]
	bl sub_0806E9C4
	movs r6, #0x24
	movs r1, #0x86
	add r0, sp, #0x80
	strh r6, [r0]
	ldr r2, [sp, #0xfc]
	strh r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xfc]
	bl sub_08071194
	ldr r4, _0808CFD4
	add r4, sb
	add r0, sp, #0x84
	strb r5, [r0]
	ldr r0, [sp, #0x100]
	strb r5, [r0, #1]
	strb r5, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x100]
	bl sub_0806E9C4
	movs r1, #0x92
	add r0, sp, #0x88
	strh r6, [r0]
	ldr r2, [sp, #0x104]
	strh r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x104]
	bl sub_08071194
	movs r0, #0x98
	lsls r0, r0, #3
	add r0, sb
	movs r2, #0xc9
	movs r3, #0x7a
	add r1, sp, #0x8c
	strh r2, [r1]
	ldr r4, [sp, #0x108]
	strh r3, [r4, #2]
	ldr r1, [sp, #0x108]
	bl sub_0806DB74
	mov r0, sb
	bl sub_0808D280
	mov r0, sl
	bl __4Base
	ldr r6, _0808CFE0
	ldr r0, _0808CFE4
	str r0, [sp, #0x44]
	ldr r7, _0808CFD8
	add r7, sb
	ldr r0, _0808CFE8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808CFEC
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	b _0808CFF0
	.align 2, 0
_0808CFC4: .4byte vt_09F85C30
_0808CFC8: .4byte _vt.1D
_0808CFCC: .4byte gUnknown_08CE39F8
_0808CFD0: .4byte vt_09F7E458
_0808CFD4: .4byte 0x00000464
_0808CFD8: .4byte 0x00000554
_0808CFDC: .4byte 0x0000028A
_0808CFE0: .4byte _vt.3Unk
_0808CFE4: .4byte _vt.10UpKeyPress
_0808CFE8: .4byte gUnknown_08118A24
_0808CFEC: .4byte _vt.14UpKeyLongPress
_0808CFF0:
	ldr r0, _0808D224
	str r0, [sp, #0x44]
	ldr r0, _0808D228
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D22C
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D230
	str r0, [sp, #0x44]
	ldr r0, _0808D234
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D238
	str r0, [sp, #0x44]
	ldr r0, _0808D23C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D240
	str r0, [sp, #0x44]
	ldr r0, _0808D244
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D248
	str r0, [sp, #0x44]
	ldr r0, _0808D24C
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D250
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D254
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D258
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D25C
	str r0, [sp, #0x44]
	ldr r0, _0808D260
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r5, r0, #0
	mov r0, sl
	bl __4Base
	ldr r0, _0808D264
	str r0, [sp, #0x44]
	ldr r0, _0808D268
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sb
	adds r1, r5, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov r8, r0
	mov r0, sl
	bl __4Base
	movs r0, #0
	str r0, [sp, #0x48]
	ldr r0, _0808D26C
	str r0, [sp, #0x44]
	ldr r0, _0808D270
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sb
	mov r1, r8
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov r8, r0
	mov r0, sl
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x48]
	ldr r0, _0808D274
	str r0, [sp, #0x44]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sb
	mov r1, r8
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r5, r0, #0
	mov r0, sl
	bl __4Base
	ldr r0, _0808D278
	str r0, [sp, #0x44]
	ldr r0, _0808D27C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sb
	adds r1, r5, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sb
	add sp, #0x110
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808D224: .4byte _vt.12DownKeyPress
_0808D228: .4byte gUnknown_08118A2C
_0808D22C: .4byte _vt.16DownKeyLongPress
_0808D230: .4byte _vt.12LeftKeyPress
_0808D234: .4byte gUnknown_08118A34
_0808D238: .4byte _vt.13RightKeyPress
_0808D23C: .4byte gUnknown_08118A3C
_0808D240: .4byte _vt.14SelectKeyPress
_0808D244: .4byte gUnknown_08118A44
_0808D248: .4byte _vt.9AKeyPress
_0808D24C: .4byte gUnknown_08118A4C
_0808D250: .4byte _vt.13AKeyLongPress
_0808D254: .4byte _vt.9LKeyPress
_0808D258: .4byte _vt.13LKeyLongPress
_0808D25C: .4byte _vt.9BKeyPress
_0808D260: .4byte gUnknown_08118A54
_0808D264: .4byte _vt.7Suspend
_0808D268: .4byte gUnknown_08118A5C
_0808D26C: .4byte _vt.10UnitEscape
_0808D270: .4byte gUnknown_08118A64
_0808D274: .4byte _vt.7UnitDie
_0808D278: .4byte _vt.6Resume
_0808D27C: .4byte gUnknown_08118A6C
	.syntax divided

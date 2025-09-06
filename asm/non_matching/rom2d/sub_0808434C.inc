	.syntax unified
sub_0808434C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x9c
	mov sb, r0
	bl __4Base
	ldr r0, _080846BC
	mov r1, sb
	str r0, [r1, #0x1c]
	adds r1, #0x2c
	movs r0, #0
	mov r2, sb
	str r0, [r2, #0x2c]
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r4, sb
	adds r4, #0x44
	adds r0, r4, #0
	bl __11Unk0806D64C
	mov r3, sb
	adds r3, #0xb0
	str r3, [sp, #0x4c]
	movs r0, #1
	mov r1, sp
	adds r1, #0x34
	str r1, [sp, #0x5c]
	mov r2, sp
	adds r2, #0x38
	str r2, [sp, #0x64]
	add r3, sp, #0x10
	mov sl, r3
	subs r1, #0x18
	str r1, [sp, #0x90]
	subs r2, #0x10
	str r2, [sp, #0x94]
	mov r3, sp
	adds r3, #0x3c
	str r3, [sp, #0x70]
	adds r1, #0x24
	str r1, [sp, #0x74]
	adds r2, #0x1c
	str r2, [sp, #0x78]
	adds r3, #0xc
	str r3, [sp, #0x7c]
	str r4, [sp, #0x8c]
	mov r1, sb
	adds r1, #0x28
	str r1, [sp, #0x68]
	mov r2, sb
	adds r2, #0x29
	str r2, [sp, #0x6c]
	mov r3, sb
	adds r3, #0x38
	str r3, [sp, #0x84]
	adds r1, #0x18
	str r1, [sp, #0x88]
	subs r2, #5
	str r2, [sp, #0x60]
	movs r3, #1
	rsbs r3, r3, #0
_080843CC:
	ldr r4, [sp, #0x4c]
	movs r6, #0x15
	subs r0, #1
	mov r8, r0
	ldr r5, [sp, #0x5c]
	movs r7, #0xa
_080843D8:
	ldr r0, _080846C0
	str r0, [sp, #0xc]
	ldr r1, _080846C4
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r0, sp, #0x34
	strh r7, [r0]
	strh r7, [r5, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r5, #0
	str r3, [sp, #0x98]
	bl sub_0808ADF0
	ldr r2, _080846C0
	str r2, [sp, #0xc]
	ldr r0, _080846C8
	str r0, [r4, #0x1c]
	adds r4, #0x58
	subs r6, #1
	ldr r3, [sp, #0x98]
	cmp r6, r3
	bne _080843D8
	ldr r0, [sp, #0x4c]
	movs r1, #0xf2
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [sp, #0x4c]
	mov r0, r8
	cmp r0, r3
	bne _080843CC
	movs r0, #0xfd
	lsls r0, r0, #4
	add r0, sb
	bl sub_0808B0D8
	ldr r0, _080846CC
	add r0, sb
	bl sub_08071F8C
	movs r4, #0
	add r0, sp, #0x38
	strb r4, [r0]
	ldr r2, [sp, #0x64]
	strb r4, [r2, #1]
	strb r4, [r2, #2]
	ldr r0, [sp, #0x38]
	mov r3, sb
	str r0, [r3, #0x24]
	ldr r0, [sp, #0x68]
	strb r4, [r0]
	ldr r1, [sp, #0x6c]
	strb r4, [r1]
	ldr r2, [sp, #0x84]
	strb r4, [r2]
	str r4, [r3, #0x3c]
	movs r0, #3
	ldr r3, [sp, #0x88]
	strb r0, [r3]
	ldr r1, _080846D0
	mov r0, sl
	bl sub_080706A0
	ldr r0, [sp, #0x90]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x94]
	bl sub_080706A0
	ldr r1, [sp, #0x94]
	str r1, [sp]
	ldr r0, [sp, #0x8c]
	movs r1, #1
	mov r2, sl
	ldr r3, [sp, #0x90]
	bl sub_0806D744__11Unk0806D64C
	ldr r0, _080846C0
	str r0, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	add r0, sp, #0x3c
	strh r4, [r0]
	ldr r2, [sp, #0x70]
	strh r4, [r2, #2]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x70]
	bl sub_0806D814__11Unk0806D64C
	movs r1, #0xf0
	movs r2, #0x20
	add r0, sp, #0x40
	strh r1, [r0]
	ldr r3, [sp, #0x74]
	strh r2, [r3, #2]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x74]
	bl sub_0806D828__11Unk0806D64C
	add r0, sp, #0x44
	strh r4, [r0]
	ldr r0, [sp, #0x78]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x78]
	bl sub_0806D83C__11Unk0806D64C
	movs r2, #0
	ldr r1, [sp, #0x7c]
	str r1, [sp, #0x54]
_080844C6:
	movs r7, #0
	lsls r0, r2, #4
	lsls r1, r2, #1
	adds r3, r2, #1
	str r3, [sp, #0x80]
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r0, r0, #4
	mov r8, r0
	adds r0, #0xb0
	add r0, sb
	str r0, [sp, #0x50]
	movs r6, #0xc
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #6
	str r1, [sp, #0x58]
_080844EA:
	movs r0, #0x58
	adds r5, r7, #0
	muls r5, r0, r5
	mov r4, r8
	add r4, sb
	adds r4, r5, r4
	adds r4, #0xb0
	ldr r1, [r4, #0x1c]
	adds r1, #0x90
	ldr r0, [sp, #0x50]
	adds r5, r0, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x60]
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	add r0, sp, #0x48
	strh r6, [r0]
	add r0, sp, #0x58
	ldrh r2, [r0]
	ldr r0, [sp, #0x54]
	strh r2, [r0, #2]
	ldr r2, [r1, #4]
	adds r0, r5, #0
	ldr r1, [sp, #0x54]
	bl _call_via_r2
	adds r6, #0xa
	adds r7, #1
	cmp r7, #0x15
	ble _080844EA
	ldr r2, [sp, #0x80]
	cmp r2, #1
	ble _080844C6
	add r0, sp, #0x10
	bl __4Base
	ldr r7, _080846D4
	ldr r0, _080846D8
	str r0, [sp, #0x2c]
	ldr r6, _080846CC
	add r6, sb
	ldr r0, _080846DC
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _080846E0
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _080846E4
	str r0, [sp, #0x2c]
	ldr r0, _080846E8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _080846EC
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _080846F0
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _080846F4
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _080846F8
	str r0, [sp, #0x2c]
	ldr r0, _080846FC
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08084700
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08084704
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08084708
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sb
	add sp, #0x9c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080846BC: .4byte vt_09F83F20
_080846C0: .4byte _vt.1D
_080846C4: .4byte gUnknown_08CE39F8
_080846C8: .4byte vt_09F83E40
_080846CC: .4byte 0x0000106C
_080846D0: .4byte 0x00000289
_080846D4: .4byte _vt.3Unk
_080846D8: .4byte _vt.12LeftKeyPress
_080846DC: .4byte gUnknown_0810E6B0
_080846E0: .4byte _vt.16LeftKeyLongPress
_080846E4: .4byte _vt.13RightKeyPress
_080846E8: .4byte gUnknown_0810E6B8
_080846EC: .4byte _vt.17RightKeyLongPress
_080846F0: .4byte _vt.9BKeyPress
_080846F4: .4byte _vt.13BKeyLongPress
_080846F8: .4byte _vt.9AKeyPress
_080846FC: .4byte gUnknown_0810E6C0
_08084700: .4byte _vt.13AKeyLongPress
_08084704: .4byte _vt.9LKeyPress
_08084708: .4byte _vt.13LKeyLongPress
	.syntax divided

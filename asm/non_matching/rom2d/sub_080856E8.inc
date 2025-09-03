	.syntax unified
sub_080856E8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	mov sl, r0
	bl __4Base
	ldr r0, _0808595C
	mov r1, sl
	str r0, [r1, #0x1c]
	mov r4, sl
	adds r4, #0x30
	adds r0, r4, #0
	bl sub_0806D64C
	mov r3, sl
	adds r3, #0x9c
	movs r0, #2
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x78]
	mov r6, sp
	adds r6, #0x1c
	str r6, [sp, #0x7c]
	mov r1, sp
	adds r1, #0x28
	str r1, [sp, #0x58]
	adds r2, #0x28
	str r2, [sp, #0x5c]
	adds r6, #0x20
	str r6, [sp, #0x60]
	adds r1, #0x18
	str r1, [sp, #0x64]
	adds r2, #0xc
	str r2, [sp, #0x6c]
	adds r6, #0xc
	str r6, [sp, #0x70]
	str r4, [sp, #0x68]
	movs r7, #1
	rsbs r7, r7, #0
	add r6, sp, #0x34
	movs r1, #0xa
	mov sb, r1
_08085742:
	adds r4, r3, #0
	movs r5, #0x15
	subs r0, #1
	mov r8, r0
_0808574A:
	ldr r2, _08085960
	str r2, [sp, #0xc]
	ldr r0, _08085964
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, sp, #0x34
	mov r1, sb
	strh r1, [r0]
	strh r1, [r6, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r6, #0
	str r3, [sp, #0x80]
	bl sub_0808ADF0
	ldr r2, _08085960
	str r2, [sp, #0xc]
	ldr r0, _08085968
	str r0, [r4, #0x1c]
	adds r4, #0x58
	subs r5, #1
	ldr r3, [sp, #0x80]
	cmp r5, r7
	bne _0808574A
	movs r0, #0xf2
	lsls r0, r0, #3
	adds r3, r3, r0
	mov r0, r8
	cmp r0, r7
	bne _08085742
	ldr r0, _0808596C
	add r0, sl
	bl sub_08071F8C
	movs r4, #0
	movs r0, #0xe1
	mov r1, sl
	strh r0, [r1, #0x24]
	strh r4, [r1, #0x26]
	strh r4, [r1, #0x28]
	strh r4, [r1, #0x2a]
	str r4, [r1, #0x2c]
	movs r1, #0xa3
	lsls r1, r1, #2
	ldr r0, [sp, #0x78]
	bl sub_080706A0
	ldr r0, [sp, #0x7c]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x58]
	bl sub_080706A0
	ldr r3, [sp, #0x58]
	str r3, [sp]
	ldr r0, [sp, #0x68]
	movs r1, #1
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_0806D744
	ldr r0, _08085960
	str r0, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	add r0, sp, #0x38
	strh r4, [r0]
	ldr r6, [sp, #0x5c]
	strh r4, [r6, #2]
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x5c]
	bl sub_0806D814
	movs r1, #0xf0
	movs r2, #0x38
	add r0, sp, #0x3c
	strh r1, [r0]
	ldr r0, [sp, #0x60]
	strh r2, [r0, #2]
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x60]
	bl sub_0806D828
	add r0, sp, #0x40
	strh r4, [r0]
	ldr r1, [sp, #0x64]
	strh r4, [r1, #2]
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x64]
	bl sub_0806D83C
	movs r2, #0
	ldr r3, [sp, #0x6c]
	str r3, [sp, #0x84]
	ldr r6, [sp, #0x70]
	str r6, [sp, #0x50]
	mov sb, r2
_0808581E:
	movs r7, #0
	lsls r0, r2, #4
	lsls r1, r2, #1
	adds r3, r2, #1
	str r3, [sp, #0x74]
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r0, r0, #4
	mov r8, r0
	adds r0, #0x9c
	add r0, sl
	str r0, [sp, #0x4c]
	movs r3, #0xc
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #6
	str r1, [sp, #0x54]
_08085842:
	movs r0, #0x58
	adds r5, r7, #0
	muls r5, r0, r5
	mov r4, r8
	add r4, sl
	adds r4, r5, r4
	adds r4, #0x9c
	ldr r2, [r4, #0x1c]
	adds r2, #0x90
	ldr r6, [sp, #0x4c]
	adds r5, r6, r5
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	add r1, sp, #0x44
	mov r6, sb
	strb r6, [r1]
	ldr r1, [sp, #0x84]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	ldr r2, [r2, #4]
	ldr r1, [sp, #0x84]
	str r3, [sp, #0x80]
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	add r0, sp, #0x48
	ldr r3, [sp, #0x80]
	strh r3, [r0]
	add r6, sp, #0x54
	ldrh r0, [r6]
	ldr r6, [sp, #0x50]
	strh r0, [r6, #2]
	ldr r2, [r1, #4]
	adds r0, r5, #0
	ldr r1, [sp, #0x50]
	str r3, [sp, #0x80]
	bl _call_via_r2
	ldr r3, [sp, #0x80]
	adds r3, #0xa
	adds r7, #1
	cmp r7, #0x15
	ble _08085842
	ldr r2, [sp, #0x74]
	cmp r2, #2
	ble _0808581E
	add r0, sp, #0x10
	bl __4Base
	ldr r0, _08085970
	mov sb, r0
	ldr r0, _08085974
	str r0, [sp, #0x2c]
	ldr r1, _0808596C
	add r1, sl
	mov r8, r1
	ldr r0, _08085978
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	ldr r2, [sp, #0x78]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x2c]
	ldr r0, [sp, #0x78]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x78]
	bl __4Base
	ldr r0, _0808597C
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x78]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x2c]
	ldr r0, [sp, #0x78]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x78]
	bl __4Base
	ldr r0, _08085980
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x78]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x78]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x78]
	bl __4Base
	ldr r0, _08085984
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x78]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x78]
	movs r1, #2
	bl _._4Base
	mov r0, sl
	add sp, #0x88
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808595C: .4byte vt_09F84088
_08085960: .4byte _vt.1D
_08085964: .4byte gUnknown_08CE39F8
_08085968: .4byte vt_09F83E40
_0808596C: .4byte 0x0000174C
_08085970: .4byte _vt.3Unk
_08085974: .4byte _vt.9AKeyPress
_08085978: .4byte gUnknown_0810F3D0
_0808597C: .4byte _vt.13AKeyLongPress
_08085980: .4byte _vt.9LKeyPress
_08085984: .4byte _vt.13LKeyLongPress
	.syntax divided

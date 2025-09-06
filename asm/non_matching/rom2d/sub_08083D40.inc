	.syntax unified
sub_08083D40:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	mov sl, r0
	bl __4Base
	ldr r0, _08083FB4
	mov r1, sl
	str r0, [r1, #0x1c]
	mov r4, sl
	adds r4, #0x34
	adds r0, r4, #0
	bl sub_0806D64C
	mov r3, sl
	adds r3, #0xa0
	movs r0, #1
	mov r2, sp
	adds r2, #0x38
	str r2, [sp, #0x5c]
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x7c]
	subs r2, #0x1c
	str r2, [sp, #0x80]
	adds r1, #0x18
	str r1, [sp, #0x54]
	adds r2, #0x20
	str r2, [sp, #0x64]
	adds r1, #0x18
	str r1, [sp, #0x68]
	adds r2, #8
	str r2, [sp, #0x6c]
	adds r1, #8
	str r1, [sp, #0x74]
	str r4, [sp, #0x70]
	mov r2, sl
	adds r2, #0x28
	str r2, [sp, #0x60]
	mov r1, sl
	adds r1, #0x24
	str r1, [sp, #0x58]
	movs r7, #1
	rsbs r7, r7, #0
	add r6, sp, #0x34
	movs r2, #0xa
	mov sb, r2
_08083DA4:
	adds r4, r3, #0
	movs r5, #0x15
	subs r0, #1
	mov r8, r0
_08083DAC:
	ldr r0, _08083FB8
	str r0, [sp, #0xc]
	ldr r1, _08083FBC
	str r1, [sp, #4]
	str r7, [sp, #8]
	add r0, sp, #0x34
	mov r2, sb
	strh r2, [r0]
	strh r2, [r6, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r6, #0
	str r3, [sp, #0x84]
	bl sub_0808ADF0
	ldr r0, _08083FB8
	str r0, [sp, #0xc]
	ldr r0, _08083FC0
	str r0, [r4, #0x1c]
	adds r4, #0x58
	subs r5, #1
	ldr r3, [sp, #0x84]
	cmp r5, r7
	bne _08083DAC
	movs r1, #0xf2
	lsls r1, r1, #3
	adds r3, r3, r1
	mov r0, r8
	cmp r0, r7
	bne _08083DA4
	movs r0, #0xfc
	lsls r0, r0, #4
	add r0, sl
	bl sub_08071F8C
	movs r4, #0
	add r0, sp, #0x38
	strb r4, [r0]
	ldr r2, [sp, #0x5c]
	strb r4, [r2, #1]
	strb r4, [r2, #2]
	ldr r0, [sp, #0x38]
	mov r3, sl
	str r0, [r3, #0x24]
	movs r0, #1
	ldr r1, [sp, #0x60]
	strb r0, [r1]
	strh r4, [r3, #0x2a]
	strh r4, [r3, #0x2c]
	str r4, [r3, #0x30]
	ldr r1, _08083FC4
	ldr r0, [sp, #0x7c]
	bl sub_080706A0
	ldr r0, [sp, #0x80]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x54]
	bl sub_080706A0
	ldr r3, [sp, #0x54]
	str r3, [sp]
	ldr r0, [sp, #0x70]
	movs r1, #1
	ldr r2, [sp, #0x7c]
	ldr r3, [sp, #0x80]
	bl sub_0806D744
	ldr r0, _08083FB8
	str r0, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	add r0, sp, #0x3c
	strh r4, [r0]
	ldr r0, [sp, #0x64]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x64]
	bl sub_0806D814
	movs r1, #0xf0
	movs r2, #0x20
	add r0, sp, #0x40
	strh r1, [r0]
	ldr r1, [sp, #0x68]
	strh r2, [r1, #2]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x68]
	bl sub_0806D828
	add r0, sp, #0x44
	strh r4, [r0]
	ldr r2, [sp, #0x6c]
	strh r4, [r2, #2]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x6c]
	bl sub_0806D83C
	movs r2, #0
	ldr r3, [sp, #0x74]
	str r3, [sp, #0x50]
_08083E88:
	movs r7, #0
	lsls r0, r2, #4
	lsls r1, r2, #1
	adds r3, r2, #1
	str r3, [sp, #0x78]
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r0, r0, #4
	mov r8, r0
	adds r0, #0xa0
	add r0, sl
	str r0, [sp, #0x4c]
	movs r6, #0xc
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #6
	mov sb, r1
_08083EAC:
	movs r0, #0x58
	adds r5, r7, #0
	muls r5, r0, r5
	mov r4, r8
	add r4, sl
	adds r4, r5, r4
	adds r4, #0xa0
	ldr r1, [r4, #0x1c]
	adds r1, #0x90
	ldr r0, [sp, #0x4c]
	adds r5, r0, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x58]
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	add r0, sp, #0x48
	strh r6, [r0]
	mov r2, sb
	ldr r0, [sp, #0x50]
	strh r2, [r0, #2]
	ldr r2, [r1, #4]
	adds r0, r5, #0
	ldr r1, [sp, #0x50]
	bl _call_via_r2
	adds r6, #0xa
	adds r7, #1
	cmp r7, #0x15
	ble _08083EAC
	ldr r2, [sp, #0x78]
	cmp r2, #1
	ble _08083E88
	add r0, sp, #0x10
	bl __4Base
	ldr r3, _08083FC8
	mov sb, r3
	ldr r0, _08083FCC
	str r0, [sp, #0x2c]
	movs r0, #0xfc
	lsls r0, r0, #4
	add r0, sl
	mov r8, r0
	ldr r0, _08083FD0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x7c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x7c]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x7c]
	bl __4Base
	ldr r0, _08083FD4
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x7c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x2c]
	ldr r0, [sp, #0x7c]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x7c]
	bl __4Base
	ldr r0, _08083FD8
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x7c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x2c]
	ldr r0, [sp, #0x7c]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x7c]
	bl __4Base
	ldr r0, _08083FDC
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x7c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x7c]
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
_08083FB4: .4byte vt_09F83DB0
_08083FB8: .4byte _vt.6ResPtr
_08083FBC: .4byte gUnknown_08CE39F8
_08083FC0: .4byte vt_09F83E40
_08083FC4: .4byte 0x00000289
_08083FC8: .4byte _vt.3Unk
_08083FCC: .4byte _vt.9AKeyPress
_08083FD0: .4byte gUnknown_0810E028
_08083FD4: .4byte _vt.13AKeyLongPress
_08083FD8: .4byte _vt.9LKeyPress
_08083FDC: .4byte _vt.13LKeyLongPress
	.syntax divided

	.syntax unified
sub_0808DFD4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov r8, r0
	adds r4, r1, #0
	str r2, [sp, #0x48]
	bl __4Base
	ldr r0, _0808E1C4
	mov r1, r8
	str r0, [r1, #0x1c]
	mov r7, r8
	adds r7, #0x34
	adds r0, r7, #0
	bl sub_0806D64C
	movs r0, #0xa0
	add r0, r8
	mov sl, r0
	ldr r0, _0808E1C8
	movs r1, #1
	rsbs r1, r1, #0
	ldr r5, _0808E1CC
	str r5, [sp, #0xc]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r2, sp, #0x34
	movs r0, #0xa
	strh r0, [r2]
	strh r0, [r2, #2]
	mov r0, sl
	add r1, sp, #4
	bl sub_08071108
	str r5, [sp, #0xc]
	ldr r0, _0808E1D0
	mov r1, sl
	str r0, [r1, #0x1c]
	mov r0, r8
	adds r0, #0xfc
	str r0, [sp, #0x4c]
	bl sub_08071F8C
	mov r1, r8
	str r4, [r1, #0x24]
	mov r0, r8
	adds r0, #0x28
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	mov r1, r8
	str r0, [r1, #0x2c]
	strh r0, [r1, #0x30]
	ldr r1, _0808E1D4
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_080706A0
	add r0, sp, #0x1c
	mov sb, r0
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_080706A0
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #1
	adds r2, r6, #0
	mov r3, sb
	bl sub_0806D744
	str r5, [sp, #0x30]
	str r5, [sp, #0x24]
	str r5, [sp, #0x18]
	add r1, sp, #0x38
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl sub_0806D814
	add r1, sp, #0x3c
	movs r0, #0xf0
	movs r2, #0x30
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r7, #0
	bl sub_0806D828
	mov r0, sl
	ldr r1, [sp, #0x48]
	bl sub_08071150
	add r1, sp, #0x40
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sl
	bl sub_0806E9C4
	add r1, sp, #0x44
	movs r0, #0x78
	movs r2, #0x12
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sl
	bl sub_08071194
	mov r0, sl
	movs r1, #1
	bl sub_08071174
	adds r0, r6, #0
	bl __4Base
	ldr r7, _0808E1D8
	ldr r0, _0808E1DC
	str r0, [sp, #0x2c]
	ldr r0, _0808E1E0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, r8
	ldr r1, [sp, #0x4c]
	adds r2, r6, #0
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r5, r0, #0
	adds r0, r6, #0
	bl __4Base
	ldr r0, _0808E1E4
	str r0, [sp, #0x2c]
	ldr r0, _0808E1E8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov sb, r0
	adds r0, r6, #0
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x30]
	ldr r0, _0808E1EC
	str r0, [sp, #0x2c]
	ldr r0, _0808E1F0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	adds r2, r6, #0
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov sb, r0
	adds r0, r6, #0
	bl __4Base
	movs r0, #0
	str r0, [sp, #0x30]
	ldr r0, _0808E1F4
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	adds r2, r6, #0
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r5, r0, #0
	adds r0, r6, #0
	bl __4Base
	ldr r0, _0808E1F8
	str r0, [sp, #0x2c]
	ldr r0, _0808E1FC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	mov r0, r8
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808E1C4: .4byte vt_09F85D20
_0808E1C8: .4byte gUnknown_08CE39F8
_0808E1CC: .4byte _vt.6ResPtr
_0808E1D0: .4byte vt_09F7E458
_0808E1D4: .4byte 0x0000028A
_0808E1D8: .4byte _vt.3Unk
_0808E1DC: .4byte _vt.9BKeyPress
_0808E1E0: .4byte gUnknown_081190F4
_0808E1E4: .4byte _vt.7Suspend
_0808E1E8: .4byte gUnknown_081190FC
_0808E1EC: .4byte _vt.10UnitEscape
_0808E1F0: .4byte gUnknown_08119104
_0808E1F4: .4byte _vt.7UnitDie
_0808E1F8: .4byte _vt.6Resume
_0808E1FC: .4byte gUnknown_0811910C
	.syntax divided

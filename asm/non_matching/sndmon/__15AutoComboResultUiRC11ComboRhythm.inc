.syntax unified
.global __15AutoComboResultUiRC11ComboRhythm
__15AutoComboResultUiRC11ComboRhythm:
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x30
	adds r5, r0, #0
	mov sl, r1
	mov sb, r2
	bl sub_08072878
	adds r1, r0, #0
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807084C
	ldr r0, _08065974
	str r0, [r5, #0x1c]
	adds r6, r5, #0
	adds r6, #0x44
	adds r0, r6, #0
	bl sub_08071268
	movs r0, #0xac
	adds r0, r0, r5
	mov r8, r0
	bl sub_0806D8EC
	movs r1, #0
	movs r0, #0xaf
	lsls r0, r0, #3
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	add r4, sp, #0x2c
	strh r1, [r4, #2]
	mov r1, sb
	ldrh r0, [r1]
	subs r0, #0xa4
	strh r0, [r4]
	adds r0, r6, #0
	bl sub_080714CC
	adds r0, #0x64
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r1, [r4]
	subs r1, r1, r0
	adds r1, #0x64
	strh r1, [r4]
	mov r1, sb
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08070B28
	adds r0, r6, #0
	movs r1, #1
	bl sub_080714B0
	adds r0, r6, #0
	mov r1, sl
	bl sub_0807138C
	movs r1, #0xa4
	lsls r1, r1, #2
	add r0, sp, #8
	bl sub_080706A0
	add r6, sp, #0x14
	adds r0, r6, #0
	movs r1, #0
	bl sub_080706A0
	ldr r1, _08065978
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, r8
	add r1, sp, #8
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _0806597C
	str r0, [sp, #0x28]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x10]
	mov r0, r8
	movs r1, #0x29
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _08065980
	mov r8, r0
	ldr r0, _08065984
	str r0, [sp, #0x24]
	ldr r0, _08065988
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #8
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x24]
	add r0, sp, #8
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08065974: .4byte vt_09F7E0D0
_08065978: .4byte 0x0000027B
_0806597C: .4byte _vt.1D
_08065980: .4byte _vt.3Unk
_08065984: .4byte _vt.12PostAppClock
_08065988: .4byte gUnknown_080FCAB0
	.syntax divided

    .syntax unified
    .global __9AutoComboUiRC11ComboRhythm
__9AutoComboUiRC11ComboRhythm:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	adds r7, r1, #0
	mov sl, r2
	bl sub_08072878
	adds r1, r0, #0
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807084C
	ldr r0, _08065720
	str r0, [r6, #0x1c]
	movs r0, #0x44
	adds r0, r0, r6
	mov r8, r0
	bl sub_08071268
	movs r1, #0xac
	adds r1, r1, r6
	mov sb, r1
	mov r0, sb
	bl sub_0806D8EC
	movs r1, #0
	movs r0, #0xaf
	lsls r0, r0, #3
	strh r0, [r6, #0x3c]
	strh r1, [r6, #0x3e]
	adds r0, r6, #0
	adds r0, #0x40
	strh r1, [r0]
	add r5, sp, #0x2c
	strh r1, [r5, #2]
	mov r1, sl
	ldrh r0, [r1]
	subs r0, #0x36
	strh r0, [r5]
	mov r0, r8
	bl sub_080714CC
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_08065780
	adds r4, r4, r0
	lsrs r0, r4, #0x1f
	adds r4, r4, r0
	asrs r4, r4, #1
	ldrh r0, [r5]
	subs r0, r0, r4
	strh r0, [r5]
	mov r1, sl
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08070B28
	mov r0, r8
	movs r1, #1
	bl sub_080714B0
	mov r0, r8
	adds r1, r7, #0
	bl sub_0807138C
	movs r1, #0xa4
	lsls r1, r1, #2
	add r0, sp, #8
	bl sub_080706A0
	add r5, sp, #0x14
	adds r0, r5, #0
	movs r1, #0
	bl sub_080706A0
	ldr r1, _08065724
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, sb
	add r1, sp, #8
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08065728
	str r0, [sp, #0x28]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08065768
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	bl sub_0806DB60
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _0806572C
	mov r8, r0
	ldr r0, _08065730
	str r0, [sp, #0x24]
	ldr r0, _08065734
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	add r2, sp, #8
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x24]
	add r0, sp, #8
	movs r1, #2
	bl _._4Base
	adds r0, r6, #0
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08065720: .4byte vt_09F7DF60
_08065724: .4byte 0x0000027B
_08065728: .4byte _vt.6ResPtr
_0806572C: .4byte _vt.3Unk
_08065730: .4byte _vt.12PostAppClock
_08065734: .4byte gUnknown_080FC428
    .syntax divided
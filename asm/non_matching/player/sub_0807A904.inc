	.syntax unified
sub_0807A904:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	mov r8, r1
	adds r4, r2, #0
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl __4Unit
	ldr r0, _0807AAB4
	str r0, [r5, #0x20]
	ldr r0, _0807AAB8
	str r0, [r5, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_0808AE80
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r5, r3
	bl sub_0808AE80
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	str r6, [r0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r5, r3
	str r6, [r0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	adds r1, #0x18
	adds r0, r5, r1
	str r6, [r0]
	adds r3, #0x98
	adds r0, r5, r3
	bl sub_08060E70
	adds r0, r5, #0
	adds r0, #0xf8
	mov r1, r8
	strh r1, [r0]
	adds r2, r5, #0
	adds r2, #0xfc
	movs r0, #0x6c
	muls r0, r4, r0
	ldr r1, _0807AABC
	adds r0, r0, r1
	str r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r5, r3
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0807AAC0
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r5, r1
	strh r6, [r0]
	ldr r3, _0807AAC4
	adds r0, r5, r3
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r0, r5, #0
	bl sub_0807AAEC
	adds r0, r5, #0
	bl sub_0807AC60
	adds r0, r5, #0
	bl sub_0807ACA0
	movs r3, #0x86
	lsls r3, r3, #2
	adds r4, r5, r3
	movs r0, #0x7c
	bl __builtin_new
	adds r1, r5, #0
	bl sub_0807C718
	str r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl get__13BattleManager
	mov r8, r0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _0807AAC8
	mov sb, r0
	ldr r0, _0807AACC
	str r0, [sp, #0x20]
	strh r6, [r4, #0x20]
	ldr r0, _0807AAD0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	mov r8, r0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _0807AAD4
	str r0, [sp, #0x20]
	strh r6, [r4, #0x20]
	ldr r0, _0807AAD8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807AADC
	str r0, [sp, #0x20]
	ldr r0, _0807AAE0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807AAE4
	str r0, [sp, #0x20]
	ldr r0, _0807AAE8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807AAB4: .4byte vt_09F82070
_0807AAB8: .4byte vt_09F820E8
_0807AABC: .4byte gCharStats
_0807AAC0: .4byte gLevelStatTable
_0807AAC4: .4byte 0x0000020A
_0807AAC8: .4byte _vt.3Unk
_0807AACC: .4byte _vt.10RoundBegin
_0807AAD0: .4byte gUnknown_08108440
_0807AAD4: .4byte _vt.8RoundEnd
_0807AAD8: .4byte gUnknown_08108448
_0807AADC: .4byte _vt.13ShowDownAsWin
_0807AAE0: .4byte gUnknown_08108450
_0807AAE4: .4byte _vt.16ShowDownAsEscape
_0807AAE8: .4byte gUnknown_08108458
	.syntax divided

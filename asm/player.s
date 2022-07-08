.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0807A904
sub_0807A904: @ 0x0807A904
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
	ldr r0, _0807AAB4 @ =vt_09F82070
	str r0, [r5, #0x20]
	ldr r0, _0807AAB8 @ =vt_09F820E8
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
	ldr r1, _0807AABC @ =gCharStats
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
	ldr r1, _0807AAC0 @ =gLevelStatTable
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r5, r1
	strh r6, [r0]
	ldr r3, _0807AAC4 @ =0x0000020A
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
	ldr r0, _0807AAC8 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _0807AACC @ =_vt.10RoundBegin
	str r0, [sp, #0x20]
	strh r6, [r4, #0x20]
	ldr r0, _0807AAD0 @ =gUnknown_08108440
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
	ldr r0, _0807AAD4 @ =_vt.8RoundEnd
	str r0, [sp, #0x20]
	strh r6, [r4, #0x20]
	ldr r0, _0807AAD8 @ =gUnknown_08108448
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
	ldr r0, _0807AADC @ =_vt.13ShowDownAsWin
	str r0, [sp, #0x20]
	ldr r0, _0807AAE0 @ =gUnknown_08108450
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
	ldr r0, _0807AAE4 @ =_vt.16ShowDownAsEscape
	str r0, [sp, #0x20]
	ldr r0, _0807AAE8 @ =gUnknown_08108458
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

	thumb_func_start sub_0807AAEC
sub_0807AAEC: @ 0x0807AAEC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	adds r5, r4, #0
	adds r5, #0xfc
	ldr r1, [r5]
	ldrb r1, [r1, #0x12]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	movs r3, #0x24
	ldrsh r1, [r1, r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r6, #0x9c
	lsls r6, r6, #1
	adds r2, r2, r6
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x28
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x29
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x2a
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x2b
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x2c
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	movs r2, #0xb2
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	ldr r1, [r1, #0x18]
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r1, [r5]
	ldr r1, [r1, #0x18]
	bl sub_0808AF08
	ldr r2, [r4, #0x1c]
	movs r3, #0x94
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	movs r3, #0x1c
	ldrsh r1, [r1, r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r4, r4, r6
	ldr r0, [r5]
	movs r2, #0x1c
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	bl sub_0808AF08
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0807AC28
sub_0807AC28: @ 0x0807AC28
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
_0807AC2E:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x34
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _0807AC54
	ldr r2, [r4, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
_0807AC54:
	adds r5, #1
	cmp r5, #3
	ble _0807AC2E
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0807AC60
sub_0807AC60: @ 0x0807AC60
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #1
_0807AC66:
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	ldrh r1, [r0, #0x30]
	subs r0, r4, #1
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0807AC92
	ldr r2, [r5, #0x1c]
	movs r0, #0x9a
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
_0807AC92:
	adds r4, #1
	cmp r4, #8
	ble _0807AC66
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807ACA0
sub_0807ACA0: @ 0x0807ACA0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
_0807ACA6:
	adds r0, r7, #0
	adds r0, #0xfc
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x3c
	adds r4, r0, r6
	ldrb r0, [r4]
	cmp r0, #0
	beq _0807ACE4
	movs r1, #1
	lsls r1, r6
	ldr r0, [r2, #0x38]
	ands r0, r1
	rsbs r3, r0, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	ldr r5, [r7, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r0, r7, r0
	ldrb r1, [r4]
	lsls r4, r6, #1
	adds r2, #0x4c
	adds r2, r2, r4
	ldrh r2, [r2]
	ldr r4, [r5, #4]
	bl _call_via_r4
_0807ACE4:
	adds r6, #1
	cmp r6, #0x10
	blt _0807ACA6
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807ACF0
sub_0807ACF0: @ 0x0807ACF0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0807AD9C @ =vt_09F82070
	str r0, [r4, #0x20]
	ldr r0, _0807ADA0 @ =vt_09F820E8
	str r0, [r4, #0x1c]
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0807AD1A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807AD1A:
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0807AD36
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807AD36:
	adds r0, r4, #0
	bl sub_0807AFC4
	adds r0, r4, #0
	bl sub_0807AF20
	adds r0, r4, #0
	bl sub_0807ADA4
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #2
	bl sub_08060E8C
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0807AD64
	bl __builtin_vec_delete
_0807AD64:
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0807AD74
	bl __builtin_vec_delete
_0807AD74:
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r4, r3
	movs r1, #2
	bl sub_0808AEF4
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #2
	bl sub_0808AEF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Unit
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807AD9C: .4byte vt_09F82070
_0807ADA0: .4byte vt_09F820E8

	thumb_func_start sub_0807ADA4
sub_0807ADA4: @ 0x0807ADA4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xba
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, r4
	bge _0807ADEE
	adds r1, r4, #0
_0807ADEE:
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r4]
	str r1, [r0, #0x18]
	ldr r1, [r5, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	strh r0, [r1, #0x1c]
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	str r0, [r1, #0x20]
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	strh r0, [r1, #0x24]
	ldr r1, [r5, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	adds r1, #0x28
	strb r0, [r1]
	ldr r1, [r5, #0x1c]
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	adds r1, #0x29
	strb r0, [r1]
	ldr r1, [r5, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	adds r1, #0x2a
	strb r0, [r1]
	ldr r1, [r5, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r1, [r5, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	adds r1, #0x2c
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807AEC8
sub_0807AEC8: @ 0x0807AEC8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0xfc
_0807AED2:
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	adds r1, #0x34
	adds r1, r1, r5
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0807AF00
	ldr r0, [r6]
	adds r0, #0x34
	adds r0, r0, r5
	movs r1, #0
	strb r1, [r0]
_0807AF00:
	adds r5, #1
	cmp r5, #3
	ble _0807AED2
	ldr r1, [r4, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0807AF20
sub_0807AF20: @ 0x0807AF20
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0xfc
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x30]
	movs r6, #0
	b _0807AF90
_0807AF30:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bne _0807AF8E
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r4, #0
	adds r1, #0xfc
	ldr r2, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	adds r1, r5, #0
	lsls r1, r0
	ldrh r0, [r2, #0x30]
	orrs r1, r0
	strh r1, [r2, #0x30]
_0807AF8E:
	adds r6, #1
_0807AF90:
	ldr r1, [r4, #0x1c]
	movs r3, #0xa2
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0807AF30
	ldr r1, [r4, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807AFC4
sub_0807AFC4: @ 0x0807AFC4
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r2, #0
	mov r3, ip
	adds r3, #0xfc
	movs r4, #0
	adds r6, r3, #0
_0807AFD2:
	ldr r0, [r3]
	adds r0, #0x3c
	adds r0, r0, r2
	strb r4, [r0]
	ldr r0, [r3]
	lsls r1, r2, #1
	adds r0, #0x4c
	adds r0, r0, r1
	strh r4, [r0]
	adds r2, #1
	cmp r2, #0x10
	blt _0807AFD2
	ldr r0, [r6]
	movs r1, #0
	str r1, [r0, #0x38]
	movs r4, #0
	movs r1, #0xc2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r1]
	cmp r4, r0
	bge _0807B038
	adds r7, r1, #0
	adds r5, r6, #0
	movs r3, #0xc4
	lsls r3, r3, #1
	add r3, ip
_0807B008:
	ldr r0, [r5]
	adds r0, #0x3c
	adds r0, r0, r4
	ldrh r1, [r3]
	strb r1, [r0]
	ldr r1, [r5]
	lsls r0, r4, #1
	adds r1, #0x4c
	adds r1, r1, r0
	ldrh r0, [r3, #4]
	strh r0, [r1]
	ldrb r2, [r3, #6]
	cmp r2, #1
	bne _0807B02E
	ldr r1, [r6]
	lsls r2, r4
	ldr r0, [r1, #0x38]
	orrs r0, r2
	str r0, [r1, #0x38]
_0807B02E:
	adds r3, #8
	adds r4, #1
	ldr r0, [r7]
	cmp r4, r0
	blt _0807B008
_0807B038:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807B040
sub_0807B040: @ 0x0807B040
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0807B07A
_0807B076:
	movs r0, #0
	b _0807B15E
_0807B07A:
	movs r3, #0x86
	lsls r3, r3, #2
	adds r5, r4, r3
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #0xb0
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	bl sub_0807EBA0
	str r0, [sp]
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _0807B102
	cmp r0, #1
	bgt _0807B12E
	cmp r0, #0
	bne _0807B12E
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0x83
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [sp]
	cmp r2, #0
	beq _0807B076
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _0807B076
_0807B102:
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [sp]
	cmp r2, #0
	beq _0807B12A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807B12A:
	movs r0, #1
	b _0807B15E
_0807B12E:
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [sp]
	cmp r2, #0
	beq _0807B15C
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807B15C:
	movs r0, #2
_0807B15E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807B168
sub_0807B168: @ 0x0807B168
	push {r4, r5, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x33
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807B18E
	b _0807B40C
_0807B18E:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xa
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807B1DE
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xa
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0xc
	b _0807B3F4
_0807B1DE:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807B22A
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x10
	b _0807B3F4
_0807B22A:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xe
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807B276
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xe
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x14
	b _0807B3F4
_0807B276:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xf
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807B2C2
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xf
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x18
	b _0807B3F4
_0807B2C2:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x20
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807B30E
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x20
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x1c
	b _0807B3F4
_0807B30E:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xc
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807B35A
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xc
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x20
	b _0807B3F4
_0807B35A:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x27
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807B3A6
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x27
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x24
	b _0807B3F4
_0807B3A6:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xd
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0807B3C4
	movs r0, #1
	b _0807B40E
_0807B3C4:
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xd
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x28
_0807B3F4:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_0807B40C:
	movs r0, #0
_0807B40E:
	add sp, #0x2c
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807B418
sub_0807B418: @ 0x0807B418
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #0x83
	lsls r0, r0, #2
	adds r4, r4, r0
	str r5, [r4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807B444
sub_0807B444: @ 0x0807B444
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807B450
sub_0807B450: @ 0x0807B450
	push {r4, r5, lr}
	adds r4, r0, #0
	bl unit_d0__4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0807B464
	movs r0, #0
	b _0807B4B2
_0807B464:
	ldr r1, [r4, #0x1c]
	movs r0, #0xca
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	movs r0, #0x83
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq _0807B4B2
	ldr r1, [r4, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, [r5, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	adds r0, r4, #0
_0807B4B2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807B4B8
sub_0807B4B8: @ 0x0807B4B8
	push {lr}
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807B4D8
sub_0807B4D8: @ 0x0807B4D8
	push {lr}
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807B4F8
sub_0807B4F8: @ 0x0807B4F8
	push {r4, lr}
	adds r4, r0, #0
	bl onDeath__4Unit
	movs r0, #0x83
	lsls r0, r0, #2
	adds r4, r4, r0
	ldr r2, [r4]
	cmp r2, #0
	beq _0807B51C
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807B51C:
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807B528
sub_0807B528: @ 0x0807B528
	push {r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r7, r0, #0
	bl sub_08072778
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807B5A8
	ldr r0, _0807B5D0 @ =0x0000044E
	bl playSound
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x74
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460__FiRC3MsgN21
	add r1, sp, #0x34
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
_0807B5A8:
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r7, #0
	bl kill__4Unit
	add sp, #0x38
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B5D0: .4byte 0x0000044E

	thumb_func_start sub_0807B5D4
sub_0807B5D4: @ 0x0807B5D4
	push {r4, r5, r6, lr}
	sub sp, #0x38
	adds r4, r0, #0
	bl revive__4Unit
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072778
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807B670
	ldr r0, _0807B678 @ =0x00000427
	bl playSound
	ldr r2, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x75
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460__FiRC3MsgN21
	add r1, sp, #0x34
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
_0807B670:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807B678: .4byte 0x00000427

	thumb_func_start levelUp
levelUp: @ 0x0807B67C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x4c
	adds r7, r0, #0
	adds r4, r1, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r7, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r6, sp, #0x40
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_0805BC8C
	ldr r0, [r7, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r7, r4
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldrb r0, [r6]
	adds r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r3, #0xd4
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldrb r0, [r6, #1]
	adds r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r7, r4
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldrb r0, [r6, #2]
	adds r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r7, r4
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldrb r0, [r6, #4]
	adds r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r3, #0xec
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldrb r0, [r6, #5]
	adds r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r7, r4
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldrb r0, [r6, #6]
	adds r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r1, #0xac
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldrb r0, [r6, #7]
	adds r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r3, #0xb2
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r0, [r7, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r7, r4
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldrb r0, [r6, #1]
	adds r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r3, #0xd8
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldrb r0, [r6, #2]
	adds r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldrb r0, [r6]
	mov sb, r6
	cmp r0, #0
	bne _0807B8AC
	b _0807BA20
_0807B8AC:
	bl sub_08074614
	cmp r0, #0
	beq _0807B8DE
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0807BA30 @ =0x00000799
	cmp r0, r1
	beq _0807B8DE
	adds r0, r1, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl sub_0807459C__FUsiii
_0807B8DE:
	add r0, sp, #4
	bl __3Msg
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r0, sp, #0x1c
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	add r6, sp, #0x28
	adds r0, r6, #0
	bl sub_0806E1C8
	add r5, sp, #0x34
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0x7f
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460__FiRC3MsgN21
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_0806E2E8__3MsgRC3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	ldrb r3, [r0, #1]
	movs r0, #0x80
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	movs r2, #0
	bl tellStatUpgrade
	adds r2, r0, #0
	mov r1, sb
	ldrb r3, [r1, #2]
	movs r0, #0x81
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	bl tellStatUpgrade
	adds r2, r0, #0
	mov r0, sb
	ldrb r3, [r0, #3]
	movs r0, #0x82
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	bl tellStatUpgrade
	adds r2, r0, #0
	mov r1, sb
	ldrb r3, [r1, #4]
	movs r0, #0x83
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	bl tellStatUpgrade
	adds r2, r0, #0
	mov r0, sb
	ldrb r3, [r0, #5]
	movs r0, #0x84
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	bl tellStatUpgrade
	adds r2, r0, #0
	mov r1, sb
	ldrb r3, [r1, #6]
	movs r0, #0x85
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	bl tellStatUpgrade
	adds r2, r0, #0
	mov r0, sb
	ldrb r3, [r0, #7]
	movs r0, #0x86
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	bl tellStatUpgrade
	add r0, sp, #4
	bl len__3Msg
	adds r1, r0, #0
	subs r1, #1
	add r0, sp, #4
	bl sub_0806E334__3Msgi
	ldrh r1, [r0]
	ldr r0, _0807BA34 @ =0x0000FF02
	cmp r1, r0
	bne _0807BA06
	add r0, sp, #4
	bl len__3Msg
	adds r1, r0, #0
	subs r1, #1
	add r0, sp, #4
	bl sub_0806E334__3Msgi
	ldr r2, _0807BA38 @ =0x0000FFFF
	adds r1, r2, #0
	strh r1, [r0]
_0807BA06:
	add r1, sp, #0x48
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
_0807BA20:
	add sp, #0x4c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807BA30: .4byte 0x00000799
_0807BA34: .4byte 0x0000FF02
_0807BA38: .4byte 0x0000FFFF

	thumb_func_start tellStatUpgrade
tellStatUpgrade: @ 0x0807BA3C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x34
	mov r8, r1
	adds r7, r2, #0
	adds r1, r3, #0
	ldr r0, [sp, #0x50]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r1, #0
	ble _0807BACE
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_0806E1C8
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	mov r1, sb
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460__FiRC3MsgN21
	mov r0, r8
	add r1, sp, #4
	bl sub_0806E374__3MsgRC3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	lsrs r0, r7, #0x1f
	adds r0, r7, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r0, r7, r0
	cmp r0, #1
	bne _0807BAC4
	ldr r1, _0807BAC0 @ =0x0000FF02
	mov r0, r8
	bl sub_0806E34C
	b _0807BACC
	.align 2, 0
_0807BAC0: .4byte 0x0000FF02
_0807BAC4:
	ldr r1, _0807BAE0 @ =0x0000FF01
	mov r0, r8
	bl sub_0806E34C
_0807BACC:
	adds r7, #1
_0807BACE:
	adds r0, r7, #0
	add sp, #0x34
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807BAE0: .4byte 0x0000FF01

	thumb_func_start sub_0807BAE4
sub_0807BAE4: @ 0x0807BAE4
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r4, [r2, #4]
	movs r2, #0
	movs r3, #0
	bl _call_via_r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0807BB0E
	movs r0, #0
	b _0807BB16
_0807BB0E:
	movs r0, #0xf5
	bl playSound
	movs r0, #1
_0807BB16:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0807BB1C
sub_0807BB1C: @ 0x0807BB1C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	movs r0, #0x84
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r3, [r2, #4]
	str r3, [sp]
	adds r1, r2, #0
	adds r0, r5, #0
	ldm r0!, {r4, r6}
	stm r1!, {r4, r6}
	str r3, [r2, #4]
	ldr r0, [r7, #0x20]
	movs r1, #0x18
	adds r1, r1, r0
	mov sb, r1
	movs r2, #0x20
	adds r2, r2, r7
	mov r8, r2
	movs r6, #0x18
	ldrsh r4, [r0, r6]
	add r4, r8
	ldr r2, [r5, #4]
	movs r0, #0x20
	ldrsh r1, [r2, r0]
	add r6, sp, #4
	adds r0, r6, #0
	ldr r2, [r2, #0x24]
	adds r1, r5, r1
	bl _call_via_r2
	mov r1, sb
	ldr r2, [r1, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	ldr r0, [r7, #0x20]
	adds r4, r0, #0
	adds r4, #0x20
	movs r2, #0x20
	ldrsh r0, [r0, r2]
	add r8, r0
	ldr r1, [r5, #4]
	movs r6, #0x28
	ldrsh r0, [r1, r6]
	adds r5, r5, r0
	ldr r1, [r1, #0x2c]
	adds r0, r5, #0
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	mov r0, r8
	bl _call_via_r2
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807BBA4
sub_0807BBA4: @ 0x0807BBA4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl setHP__4Uniti
	movs r0, #0x82
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r4, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0808AF10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807BBD8
sub_0807BBD8: @ 0x0807BBD8
	push {lr}
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r0, r2
	bl sub_0808AF1C
	pop {r0}
	bx r0

	thumb_func_start sub_0807BBE8
sub_0807BBE8: @ 0x0807BBE8
	push {lr}
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r0, r2
	bl sub_0808AF20
	pop {r0}
	bx r0

	thumb_func_start sub_0807BBF8
sub_0807BBF8: @ 0x0807BBF8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x82
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0808AF10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0808AF08
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0807BC18
sub_0807BC18: @ 0x0807BC18
	push {r4, r5, lr}
	adds r4, r0, #0
	bl setPP__4Uniti
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r4, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0808AF10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807BC4C
sub_0807BC4C: @ 0x0807BC4C
	push {lr}
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r0, r2
	bl sub_0808AF1C
	pop {r0}
	bx r0

	thumb_func_start sub_0807BC5C
sub_0807BC5C: @ 0x0807BC5C
	push {lr}
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r0, r2
	bl sub_0808AF20
	pop {r0}
	bx r0

	thumb_func_start sub_0807BC6C
sub_0807BC6C: @ 0x0807BC6C
	adds r0, #0xf8
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807BC74
sub_0807BC74: @ 0x0807BC74
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_0807BC80
sub_0807BC80: @ 0x0807BC80
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl createPlayerName__FUs
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807BCB0
sub_0807BCB0: @ 0x0807BCB0
	movs r2, #0x84
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r2, _0807BCC0 @ =vt_09F46900
	str r2, [r0, #4]
	ldrh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_0807BCC0: .4byte vt_09F46900

	thumb_func_start sub_0807BCC4
sub_0807BCC4: @ 0x0807BCC4
	adds r0, #0xfc
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	bx lr

	thumb_func_start sub_0807BCCC
sub_0807BCCC: @ 0x0807BCCC
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_0805C178
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0807BCF4
sub_0807BCF4: @ 0x0807BCF4
	push {lr}
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0808AF24
	pop {r1}
	bx r1

	thumb_func_start sub_0807BD04
sub_0807BD04: @ 0x0807BD04
	push {lr}
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0808AF2C
	pop {r1}
	bx r1

	thumb_func_start sub_0807BD14
sub_0807BD14: @ 0x0807BD14
	push {lr}
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0808AF3C
	pop {r1}
	bx r1

	thumb_func_start sub_0807BD24
sub_0807BD24: @ 0x0807BD24
	push {lr}
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0808AF40
	pop {r1}
	bx r1

	thumb_func_start sub_0807BD34
sub_0807BD34: @ 0x0807BD34
	push {lr}
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0808AF24
	pop {r1}
	bx r1

	thumb_func_start sub_0807BD44
sub_0807BD44: @ 0x0807BD44
	push {lr}
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0808AF2C
	pop {r1}
	bx r1

	thumb_func_start sub_0807BD54
sub_0807BD54: @ 0x0807BD54
	push {lr}
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0808AF3C
	pop {r1}
	bx r1

	thumb_func_start sub_0807BD64
sub_0807BD64: @ 0x0807BD64
	push {lr}
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0808AF40
	pop {r1}
	bx r1

	thumb_func_start sub_0807BD74
sub_0807BD74: @ 0x0807BD74
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r2, [r1]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r2, r2, r1
	adds r1, #0xca
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0

	thumb_func_start sub_0807BD98
sub_0807BD98: @ 0x0807BD98
	movs r0, #0
	bx lr

	thumb_func_start sub_0807BD9C
sub_0807BD9C: @ 0x0807BD9C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, #0x40
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0

	thumb_func_start sub_0807BDB4
sub_0807BDB4: @ 0x0807BDB4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r2, sp
	strh r1, [r2]
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r4, r0, r1
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0807BE0A
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0807BDD8
	adds r0, r1, #0
_0807BDD8:
	adds r5, r0, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0807BDFC
	adds r1, r0, #0
_0807BDEE:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807BDEE
_0807BDFC:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807BE06
	bl __builtin_vec_delete
_0807BE06:
	str r5, [r4]
	str r6, [r4, #8]
_0807BE0A:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r7]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	movs r0, #1
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807BE24
sub_0807BE24: @ 0x0807BE24
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r2, sp
	strh r1, [r2]
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r5, r0, r1
	mov r6, sp
	movs r4, #0
	ldr r2, [r5, #4]
	cmp r4, r2
	bge _0807BE7A
	ldr r0, [r5, #8]
	adds r3, r0, #2
	adds r1, r0, #0
_0807BE42:
	ldrh r0, [r1]
	ldrh r7, [r6]
	cmp r0, r7
	bne _0807BE6E
	adds r0, r4, #1
	subs r0, r2, r0
	adds r2, r1, #0
	ldr r4, [r5, #4]
	cmp r0, #0
	ble _0807BE66
	adds r1, r0, #0
_0807BE58:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807BE58
_0807BE66:
	subs r0, r4, #1
	str r0, [r5, #4]
	movs r0, #1
	b _0807BE7C
_0807BE6E:
	adds r3, #2
	adds r1, #2
	adds r4, #1
	ldr r2, [r5, #4]
	cmp r4, r2
	blt _0807BE42
_0807BE7A:
	movs r0, #0
_0807BE7C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807BE84
sub_0807BE84: @ 0x0807BE84
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807BE90
sub_0807BE90: @ 0x0807BE90
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r1, r1, #1
	ldr r0, [r0, #8]
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_0807BEA0
sub_0807BEA0: @ 0x0807BEA0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r2, sp
	strh r1, [r2]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r4, r0, r1
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0807BEF6
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0807BEC4
	adds r0, r1, #0
_0807BEC4:
	adds r5, r0, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0807BEE8
	adds r1, r0, #0
_0807BEDA:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807BEDA
_0807BEE8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807BEF2
	bl __builtin_vec_delete
_0807BEF2:
	str r5, [r4]
	str r6, [r4, #8]
_0807BEF6:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r7]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	movs r0, #1
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807BF10
sub_0807BF10: @ 0x0807BF10
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r2, sp
	strh r1, [r2]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r5, r0, r1
	mov r6, sp
	movs r4, #0
	ldr r2, [r5, #4]
	cmp r4, r2
	bge _0807BF66
	ldr r0, [r5, #8]
	adds r3, r0, #2
	adds r1, r0, #0
_0807BF2E:
	ldrh r0, [r1]
	ldrh r7, [r6]
	cmp r0, r7
	bne _0807BF5A
	adds r0, r4, #1
	subs r0, r2, r0
	adds r2, r1, #0
	ldr r4, [r5, #4]
	cmp r0, #0
	ble _0807BF52
	adds r1, r0, #0
_0807BF44:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807BF44
_0807BF52:
	subs r0, r4, #1
	str r0, [r5, #4]
	movs r0, #1
	b _0807BF68
_0807BF5A:
	adds r3, #2
	adds r1, #2
	adds r4, #1
	ldr r2, [r5, #4]
	cmp r4, r2
	blt _0807BF2E
_0807BF66:
	movs r0, #0
_0807BF68:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807BF70
sub_0807BF70: @ 0x0807BF70
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807BF7C
sub_0807BF7C: @ 0x0807BF7C
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r1, r1, #1
	ldr r0, [r0, #8]
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_0807BF8C
sub_0807BF8C: @ 0x0807BF8C
	push {r4, r5, lr}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	mov r1, sp
	strh r2, [r1]
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r3, #0
	ldr r0, [r1, #4]
	cmp r3, r0
	bge _0807BFBE
	adds r5, r2, #0
	ldr r2, [r1, #8]
	adds r4, r0, #0
_0807BFAC:
	ldrh r0, [r2]
	cmp r0, r5
	bne _0807BFB6
	adds r0, r3, #0
	b _0807BFC0
_0807BFB6:
	adds r2, #2
	adds r3, #1
	cmp r3, r4
	blt _0807BFAC
_0807BFBE:
	ldr r0, [r1, #4]
_0807BFC0:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807BFC8
sub_0807BFC8: @ 0x0807BFC8
	push {r4, r5, r6, lr}
	sub sp, #8
	mov ip, r0
	lsls r1, r1, #0x10
	lsls r3, r3, #0x18
	ldr r6, _0807C01C @ =0xFFFF0000
	movs r5, #0x82
	lsls r5, r5, #2
	add r5, ip
	ldrh r0, [r5]
	adds r4, r0, #1
	strh r4, [r5]
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r0
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [sp, #4]
	ands r0, r6
	orrs r0, r2
	lsrs r3, r3, #8
	ldr r1, _0807C020 @ =0xFF00FFFF
	ands r0, r1
	orrs r0, r3
	str r0, [sp, #4]
	movs r5, #0xc2
	lsls r5, r5, #1
	add r5, ip
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r0, [r5]
	adds r3, r0, #1
	cmp r3, #0x10
	bgt _0807C024
	lsls r0, r0, #3
	adds r0, r0, r5
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r5]
	movs r0, #1
	b _0807C026
	.align 2, 0
_0807C01C: .4byte 0xFFFF0000
_0807C020: .4byte 0xFF00FFFF
_0807C024:
	movs r0, #0
_0807C026:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807C030
sub_0807C030: @ 0x0807C030
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r5, #0
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	cmp r5, r0
	bge _0807C092
	adds r1, r2, #0
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r3, r0
	movs r6, #4
_0807C050:
	ldrh r0, [r2]
	cmp r0, r4
	bne _0807C086
	adds r4, r1, #0
	ldr r3, [r1]
	cmp r5, r3
	bge _0807C082
	adds r2, r5, #0
	adds r0, r2, #1
	cmp r0, r3
	bge _0807C078
	adds r3, r6, r1
_0807C068:
	ldr r0, [r3, #8]
	ldr r1, [r3, #0xc]
	stm r3!, {r0, r1}
	adds r2, #1
	adds r1, r2, #1
	ldr r0, [r4]
	cmp r1, r0
	blt _0807C068
_0807C078:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	movs r0, #1
	b _0807C094
_0807C082:
	movs r0, #0
	b _0807C094
_0807C086:
	adds r2, #8
	adds r6, #8
	adds r5, #1
	ldr r0, [r1]
	cmp r5, r0
	blt _0807C050
_0807C092:
	movs r0, #0
_0807C094:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807C09C
sub_0807C09C: @ 0x0807C09C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r5, #0
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	cmp r5, r0
	bge _0807C0FE
	adds r1, r2, #0
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r3, r0
	movs r6, #4
_0807C0BC:
	ldrh r0, [r2, #2]
	cmp r0, r4
	bne _0807C0F2
	adds r4, r1, #0
	ldr r3, [r1]
	cmp r5, r3
	bge _0807C0EE
	adds r2, r5, #0
	adds r0, r2, #1
	cmp r0, r3
	bge _0807C0E4
	adds r3, r6, r1
_0807C0D4:
	ldr r0, [r3, #8]
	ldr r1, [r3, #0xc]
	stm r3!, {r0, r1}
	adds r2, #1
	adds r1, r2, #1
	ldr r0, [r4]
	cmp r1, r0
	blt _0807C0D4
_0807C0E4:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	movs r0, #1
	b _0807C100
_0807C0EE:
	movs r0, #0
	b _0807C100
_0807C0F2:
	adds r2, #8
	adds r6, #8
	adds r5, #1
	ldr r0, [r1]
	cmp r5, r0
	blt _0807C0BC
_0807C0FE:
	movs r0, #0
_0807C100:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807C108
sub_0807C108: @ 0x0807C108
	movs r1, #0xc2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807C114
sub_0807C114: @ 0x0807C114
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r1, r1, #3
	adds r1, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_0807C124
sub_0807C124: @ 0x0807C124
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r1, r1, #3
	adds r1, #4
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	bx lr

	thumb_func_start sub_0807C134
sub_0807C134: @ 0x0807C134
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r1, r1, #3
	adds r1, #4
	adds r0, r0, r1
	ldrb r0, [r0, #6]
	bx lr

	thumb_func_start sub_0807C144
sub_0807C144: @ 0x0807C144
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r2, r2, r0
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r1, #0
	cmp r5, r0
	bge _0807C180
	movs r1, #1
_0807C180:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807C188
sub_0807C188: @ 0x0807C188
	push {r4, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r3, #0
	movs r0, #0xc2
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	cmp r3, r0
	bge _0807C1B8
	adds r1, r0, #0
	movs r2, #0xc4
	lsls r2, r2, #1
	add r2, ip
_0807C1A6:
	ldrh r0, [r2]
	cmp r0, r4
	bne _0807C1B0
	adds r0, r3, #0
	b _0807C1C0
_0807C1B0:
	adds r2, #8
	adds r3, #1
	cmp r3, r1
	blt _0807C1A6
_0807C1B8:
	movs r0, #0xc2
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
_0807C1C0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807C1C8
sub_0807C1C8: @ 0x0807C1C8
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807C1E4
sub_0807C1E4: @ 0x0807C1E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32
	adds r7, r0, #0
	movs r4, #0
	movs r6, #0
	ldr r0, _0807C22C @ =gUnknown_08112EA8
	mov r8, r0
_0807C1FE:
	ldr r1, [r5, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	adds r0, r4, r0
	add r0, r8
	ldrb r0, [r0]
	adds r6, r6, r0
	cmp r7, r6
	bge _0807C234
	ldr r1, _0807C230 @ =0x0000020A
	adds r0, r5, r1
	strh r4, [r0]
	b _0807C23A
	.align 2, 0
_0807C22C: .4byte gUnknown_08112EA8
_0807C230: .4byte 0x0000020A
_0807C234:
	adds r4, #1
	cmp r4, #5
	ble _0807C1FE
_0807C23A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807C244
sub_0807C244: @ 0x0807C244
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_31
nullsub_31: @ 0x0807C260
	bx lr
	.align 2, 0

	thumb_func_start sub_0807C264
sub_0807C264: @ 0x0807C264
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807C31E
	ldr r0, _0807C2B8 @ =gEncounter
	ldrh r0, [r0, #0xa]
	cmp r0, #4
	bne _0807C2BC
	ldr r1, [r4, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r5, r1, r3
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r6, r4, r0
	adds r3, #0x80
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #1
	cmp r1, r0
	bge _0807C2AE
	adds r1, r0, #0
_0807C2AE:
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	b _0807C306
	.align 2, 0
_0807C2B8: .4byte gEncounter
_0807C2BC:
	ldr r1, [r4, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r6, r1, r3
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r7, r4, r0
	adds r3, #0x80
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r1, [r4, #0x1c]
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, r5
	bge _0807C2F6
	adds r0, r5, #0
_0807C2F6:
	movs r1, #1
	cmp r1, r0
	bge _0807C2FE
	adds r1, r0, #0
_0807C2FE:
	ldr r2, [r6, #4]
	adds r0, r7, #0
	bl _call_via_r2
_0807C306:
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_0807C31E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807C324
sub_0807C324: @ 0x0807C324
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807C370
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r5, r1, r0
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r6, r4, r0
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #1
	cmp r1, r0
	bge _0807C368
	adds r1, r0, #0
_0807C368:
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
_0807C370:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807C378
sub_0807C378: @ 0x0807C378
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r2, r5, #0
	bl sub_0805BB34
	ldr r1, [r4, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	adds r5, r4, #0
	adds r5, #0xfc
	ldr r1, [r5]
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	movs r3, #0x24
	ldrsh r1, [r1, r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	movs r3, #0x24
	ldrsh r1, [r1, r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x28
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x29
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x2a
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x2b
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x2c
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	movs r2, #0xb2
	lsls r2, r2, #2
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0807C4D4
sub_0807C4D4: @ 0x0807C4D4
	push {r4, lr}
	ldr r4, _0807C4E8 @ =gUnknown_020021AC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0807C4EC @ =vt_09F82540
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807C4E8: .4byte gUnknown_020021AC
_0807C4EC: .4byte vt_09F82540

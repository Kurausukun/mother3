.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_080809B8
sub_080809B8: @ 0x080809B8
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	str r0, [r4, #0x28]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r4, #0x34]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _080809E0 @ =_vt.10GuestSkill
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080809E0: .4byte _vt.10GuestSkill

	thumb_func_start sub_080809E4
sub_080809E4: @ 0x080809E4
	ldr r0, _080809E8 @ =gUnknown_02002520
	bx lr
	.align 2, 0
_080809E8: .4byte gUnknown_02002520

	thumb_func_start sub_080809EC
sub_080809EC: @ 0x080809EC
	push {lr}
	bl sub_080809E4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080809F8
sub_080809F8: @ 0x080809F8
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #7
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #7
	bl get_misctext_len
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl __3MsgPvUi
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08080A24
sub_08080A24: @ 0x08080A24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl __4Unit
	ldr r0, _08080B40 @ =vt_09F82F98
	str r0, [r7, #0x20]
	ldr r0, _08080B44 @ =vt_09F83010
	str r0, [r7, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	bl __3Msg
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r6, #0
	str r6, [r0]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_08063998
	adds r0, r7, #0
	adds r0, #0xf8
	strh r5, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r2, r7, #0
	adds r2, #0xfc
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _08080B48 @ =gMonsterData
	adds r0, r0, r1
	str r0, [r2]
	adds r0, #0x68
	ldrb r1, [r0]
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r0, r7, r3
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	str r6, [r0]
	subs r3, #0x10
	adds r1, r7, r3
	ldr r0, [r2]
	ldr r0, [r0, #0x14]
	str r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r7, r1
	strh r6, [r0]
	adds r0, r7, #0
	bl sub_08080B60
	adds r0, r7, #0
	bl sub_08080CE4
	adds r0, r7, #0
	bl sub_08080D48
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r4, r7, r3
	movs r0, #0xc8
	bl __builtin_new
	adds r1, r7, #0
	bl sub_08081C48
	str r0, [r4]
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _08080B4C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08080B50 @ =_vt.10RoundBegin
	str r0, [sp, #0x20]
	strh r6, [r4, #0x20]
	ldr r0, _08080B54 @ =gUnknown_0810B278
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _08080B58 @ =_vt.8RoundEnd
	str r0, [sp, #0x20]
	strh r6, [r4, #0x20]
	ldr r0, _08080B5C @ =gUnknown_0810B280
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08080B40: .4byte vt_09F82F98
_08080B44: .4byte vt_09F83010
_08080B48: .4byte gMonsterData
_08080B4C: .4byte _vt.3Unk
_08080B50: .4byte _vt.10RoundBegin
_08080B54: .4byte gUnknown_0810B278
_08080B58: .4byte _vt.8RoundEnd
_08080B5C: .4byte gUnknown_0810B280

	thumb_func_start sub_08080B60
sub_08080B60: @ 0x08080B60
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r2, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	adds r4, r6, #0
	adds r4, #0xfc
	ldr r1, [r4]
	ldrb r1, [r1, #0x12]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r4]
	ldr r1, [r1, #0x14]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r4]
	ldr r1, [r1, #0x14]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r4]
	movs r3, #0x18
	ldrsh r1, [r1, r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r4]
	movs r3, #0x18
	ldrsh r1, [r1, r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r3, [r6, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	ldr r2, [r4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r5, r6, r1
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r2, r2, r1
	ldrb r1, [r2, #0x1c]
	ldr r2, [r3, #4]
	bl _call_via_r2
	ldr r3, [r6, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	ldr r2, [r4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r2, r2, r1
	ldrb r1, [r2, #0x1d]
	ldr r2, [r3, #4]
	bl _call_via_r2
	ldr r3, [r6, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	ldr r2, [r4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r2, r2, r1
	ldrb r1, [r2, #0x1e]
	ldr r2, [r3, #4]
	bl _call_via_r2
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	ldr r2, [r4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r2, r2, r1
	ldrb r1, [r2, #0x1f]
	ldr r2, [r3, #4]
	bl _call_via_r2
	ldr r3, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	ldr r2, [r4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r2, r2, r1
	adds r2, #0x20
	ldrb r1, [r2]
	ldr r2, [r3, #4]
	bl _call_via_r2
	movs r5, #0
	adds r7, r4, #0
_08080C86:
	ldr r3, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	adds r1, r6, #0
	adds r1, #0xfc
	ldr r1, [r1]
	lsls r2, r5, #1
	adds r1, #0x4a
	adds r1, r1, r2
	ldrh r2, [r1]
	ldr r3, [r3, #4]
	adds r1, r5, #0
	bl _call_via_r3
	adds r5, #1
	cmp r5, #4
	ble _08080C86
	movs r3, #0
_08080CB2:
	ldr r4, [r6, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r6, r0
	adds r5, r3, #1
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r7]
	lsls r3, r3, #1
	adds r2, #0x2c
	adds r2, r2, r3
	ldrh r2, [r2]
	ldr r3, [r4, #4]
	bl _call_via_r3
	adds r3, r5, #0
	cmp r3, #0xe
	ble _08080CB2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08080CE4
sub_08080CE4: @ 0x08080CE4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r4, r0
	adds r1, r4, #0
	adds r1, #0xfc
	ldr r0, [r1]
	adds r0, #0x84
	ldr r0, [r0]
	str r0, [r2]
	movs r5, #0
	adds r6, r1, #0
_08080CFE:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r1, [r0]
	lsls r0, r5, #2
	adds r2, r1, r0
	adds r1, r2, #0
	adds r1, #0x78
	ldrb r0, [r1]
	cmp r0, #0
	beq _08080D2C
	ldr r3, [r4, #0x1c]
	movs r7, #0xe8
	lsls r7, r7, #2
	adds r3, r3, r7
	movs r7, #0
	ldrsh r0, [r3, r7]
	adds r0, r4, r0
	ldrb r1, [r1]
	adds r2, #0x79
	ldrb r2, [r2]
	ldr r3, [r3, #4]
	bl _call_via_r3
_08080D2C:
	adds r5, #1
	cmp r5, #3
	blt _08080CFE
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r6]
	adds r1, #0x88
	ldr r1, [r1]
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08080D48
sub_08080D48: @ 0x08080D48
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x34
	adds r4, r0, #0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r0, r0, r4
	mov sb, r0
	ldr r2, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x10
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	add r6, sp, #0x1c
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x28
	adds r0, r5, #0
	bl __3Msg
	adds r4, #0xfc
	ldr r0, [r4]
	adds r0, #0x67
	ldrb r1, [r0]
	str r5, [sp]
	add r0, sp, #4
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	mov r0, sb
	add r1, sp, #4
	bl sub_0806E2E8
	add r0, sp, #4
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
	add sp, #0x34
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08080DD0
sub_08080DD0: @ 0x08080DD0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08080E20 @ =vt_09F82F98
	str r0, [r4, #0x20]
	ldr r0, _08080E24 @ =vt_09F83010
	str r0, [r4, #0x1c]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08080DFA
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08080DFA:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #2
	bl sub_080639B4
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r4, r3
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Unit
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08080E20: .4byte vt_09F82F98
_08080E24: .4byte vt_09F83010

	thumb_func_start sub_08080E28
sub_08080E28: @ 0x08080E28
	push {r4, r5, lr}
	adds r4, r0, #0
	bl unit_d0__4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08080E80
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r5, #0
	beq _08080E80
	ldr r1, [r4, #0x1c]
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08080E84
	ldr r1, [r5, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08080E80:
	movs r0, #0
	b _08080EAE
_08080E84:
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
_08080EAE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08080EB4
sub_08080EB4: @ 0x08080EB4
	movs r0, #0
	bx lr

	thumb_func_start sub_08080EB8
sub_08080EB8: @ 0x08080EB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x44
	adds r7, r1, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl __10UnitTargetUsP4Unit
	mov r0, sp
	bl attackdata_c8__10UnitTarget
	mov r8, r0
	movs r6, #0
	b _08080F28
_08080F06:
	ldr r4, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	mov r0, sp
	adds r1, r6, #0
	bl attackdata_118__10UnitTargeti
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r6, #1
_08080F28:
	mov r0, sp
	bl attackdata_110__C10UnitTarget
	cmp r6, r0
	blt _08080F06
	movs r4, #0
	mov r0, r8
	cmp r0, #0
	bne _08080F3C
	movs r4, #1
_08080F3C:
	mov r0, sp
	movs r1, #2
	bl _._10UnitTarget
	adds r0, r4, #0
	add sp, #0x44
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08080F54
sub_08080F54: @ 0x08080F54
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_08072778
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08080F86
	ldr r1, [r4, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_080730FC
_08080F86:
	ldr r2, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl _call_via_r2
	bl sub_08072778
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08080FC0
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r4, r1
	mov r3, sp
	movs r1, #0
	mov r2, sp
	strb r1, [r2]
	strb r1, [r3, #1]
	strb r1, [r3, #2]
	mov r1, sp
	movs r2, #1
	bl sub_080735E0
_08080FC0:
	adds r0, r4, #0
	bl kill__4Unit
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08080FD0
sub_08080FD0: @ 0x08080FD0
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08080FEC
sub_08080FEC: @ 0x08080FEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0x64
	mov r8, r0
	movs r7, #0
	movs r6, #0
	b _08081044
_08080FFE:
	ldr r1, [r5, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r4, r0, #0
	cmp r4, r8
	bgt _08081042
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, r4
	bge _08081042
	mov r8, r4
	ldr r1, [r5, #0x1c]
	movs r0, #0xee
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08081042:
	adds r6, #1
_08081044:
	ldr r1, [r5, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _08080FFE
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08081068
sub_08081068: @ 0x08081068
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xe6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08081084
sub_08081084: @ 0x08081084
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	movs r0, #0x9a
	lsls r0, r0, #1
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

	thumb_func_start sub_0808110C
sub_0808110C: @ 0x0808110C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	str r1, [sp, #0x30]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	str r0, [r1, #4]
	str r0, [r1, #8]
	movs r6, #0
	b _080812A4
_08081138:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	mov sb, r0
	ldr r1, [r0, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	add r1, sp, #0x24
	strh r0, [r1]
	mov r5, sp
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	add r1, sp, #0x28
	mov r8, r1
	add r2, sp, #0x2c
	mov sl, r2
	adds r6, #1
	str r6, [sp, #0x34]
	cmp r0, r4
	bge _080811B8
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _08081186
	adds r1, r0, #0
_08081186:
	adds r4, r1, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080811AA
	adds r1, r0, #0
_0808119C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0808119C
_080811AA:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080811B4
	bl __builtin_vec_delete
_080811B4:
	str r4, [r5]
	str r6, [r5, #8]
_080811B8:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sp
	ldrh r1, [r3, #0x24]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x28]
	mov r6, r8
	ldr r0, [sp, #0x10]
	adds r4, r0, #1
	ldr r0, [sp, #0xc]
	cmp r0, r4
	bge _08081226
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _080811F8
	adds r1, r0, #0
_080811F8:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [sp, #0x14]
	adds r2, r5, #0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _08081218
	adds r1, r0, #0
_0808120E:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0808120E
_08081218:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08081222
	bl __builtin_vec_delete
_08081222:
	str r4, [sp, #0xc]
	str r5, [sp, #0x14]
_08081226:
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r6]
	str r1, [r0]
	adds r2, #1
	str r2, [sp, #0x10]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x2c]
	mov r6, sl
	ldr r0, [sp, #0x1c]
	adds r4, r0, #1
	ldr r0, [sp, #0x18]
	cmp r0, r4
	bge _08081292
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _08081264
	adds r1, r0, #0
_08081264:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [sp, #0x20]
	adds r2, r5, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _08081284
	adds r1, r0, #0
_0808127A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0808127A
_08081284:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0808128E
	bl __builtin_vec_delete
_0808128E:
	str r4, [sp, #0x18]
	str r5, [sp, #0x20]
_08081292:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r6]
	str r1, [r0]
	adds r2, #1
	str r2, [sp, #0x1c]
	ldr r6, [sp, #0x34]
_080812A4:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	bge _080812BE
	b _08081138
_080812BE:
	ldr r1, [r7, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, [sp, #0x30]
	str r1, [r0]
	ldr r1, [r7, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r6, r1, r2
	movs r3, #0
	ldrsh r5, [r6, r3]
	adds r5, r7, r5
	movs r0, #0xfc
	adds r0, r0, r7
	mov sb, r0
	ldr r4, [r0]
	movs r2, #0xd4
	lsls r2, r2, #2
	mov r8, r2
	add r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #3
	adds r4, r4, r0
	ldrb r1, [r4, #0x1c]
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r6, r1, r0
	movs r2, #0
	ldrsh r5, [r6, r2]
	adds r5, r7, r5
	mov r3, sb
	ldr r4, [r3]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #3
	adds r4, r4, r0
	ldrb r1, [r4, #0x1d]
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r6, r1, r3
	movs r0, #0
	ldrsh r5, [r6, r0]
	adds r5, r7, r5
	mov r2, sb
	ldr r4, [r2]
	add r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #3
	adds r4, r4, r0
	ldrb r1, [r4, #0x1e]
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r6, r1, r0
	movs r2, #0
	ldrsh r5, [r6, r2]
	adds r5, r7, r5
	mov r3, sb
	ldr r4, [r3]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #3
	adds r4, r4, r0
	ldrb r1, [r4, #0x1f]
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r6, r1, r3
	movs r0, #0
	ldrsh r5, [r6, r0]
	adds r5, r7, r5
	mov r2, sb
	ldr r4, [r2]
	add r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r4, #0x20
	ldrb r1, [r4]
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r6, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x30]
	lsls r1, r1, #0x10
	mov r8, r1
	cmp r6, r0
	bge _08081448
_080813DC:
	ldr r3, [r7, #0x1c]
	movs r2, #0x9a
	lsls r2, r2, #2
	adds r3, r3, r2
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r7, r0
	lsls r2, r6, #1
	ldr r1, [sp, #8]
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, [r3, #4]
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r4, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xc8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	lsls r5, r6, #2
	ldr r1, [sp, #0x14]
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	adds r2, #0xd8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r4, r4, r0
	ldr r0, [sp, #0x20]
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r2, [r2, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r6, #1
	ldr r0, [sp, #4]
	cmp r6, r0
	blt _080813DC
_08081448:
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x80
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	mov r3, r8
	lsrs r1, r3, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0808146E
	bl __builtin_vec_delete
_0808146E:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08081478
	bl __builtin_vec_delete
_08081478:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08081482
	bl __builtin_vec_delete
_08081482:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08081494
sub_08081494: @ 0x08081494
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080814B0
	movs r0, #1
	cmp r0, r4
	bge _080814AE
	adds r0, r4, #0
_080814AE:
	adds r4, r0, #0
_080814B0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl setHP__4Uniti
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080814C0
sub_080814C0: @ 0x080814C0
	push {lr}
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r0, r2
	bl sub_0806E2E8
	pop {r0}
	bx r0

	thumb_func_start sub_080814D0
sub_080814D0: @ 0x080814D0
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080814DC
sub_080814DC: @ 0x080814DC
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080814E8
sub_080814E8: @ 0x080814E8
	movs r2, #0x96
	lsls r2, r2, #1
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080814F4
sub_080814F4: @ 0x080814F4
	adds r0, #0xf8
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080814FC
sub_080814FC: @ 0x080814FC
	adds r0, #0xfa
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08081504
sub_08081504: @ 0x08081504
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0xfa
	ldrh r1, [r1]
	bl sub_080809F8
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08081518
sub_08081518: @ 0x08081518
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	mov r8, r0
	adds r4, r1, #0
	ldr r2, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	adds r4, #0xfc
	ldr r0, [r4]
	adds r0, #0x66
	ldrb r1, [r0]
	str r5, [sp]
	mov r0, r8
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_08073460
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08081584
sub_08081584: @ 0x08081584
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806E2B8
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0808159C
sub_0808159C: @ 0x0808159C
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080815A8
sub_080815A8: @ 0x080815A8
	adds r0, #0xfc
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bx lr

	thumb_func_start sub_080815B0
sub_080815B0: @ 0x080815B0
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r2, _080815C0 @ =vt_09F4E460
	str r2, [r0, #4]
	ldrh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_080815C0: .4byte vt_09F4E460

	thumb_func_start sub_080815C4
sub_080815C4: @ 0x080815C4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080815D0
sub_080815D0: @ 0x080815D0
	push {r4, lr}
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	adds r1, #0xfc
	ldr r0, [r1]
	adds r0, #0x54
	ldrh r0, [r0]
	cmp r0, #0
	beq _08081600
	movs r3, #1
	adds r4, r1, #0
_080815E8:
	adds r2, #1
	cmp r2, #7
	bgt _08081600
	ldr r0, [r4]
	lsls r1, r2, #1
	adds r0, #0x54
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08081600
	adds r3, #1
	b _080815E8
_08081600:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08081608
sub_08081608: @ 0x08081608
	adds r0, #0xfc
	ldr r0, [r0]
	lsls r1, r1, #1
	adds r0, #0x54
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08081618
sub_08081618: @ 0x08081618
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x64
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08081624
sub_08081624: @ 0x08081624
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x64
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_08081634
sub_08081634: @ 0x08081634
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x64
	ldrh r0, [r0]
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_08081644
sub_08081644: @ 0x08081644
	movs r0, #2
	bx lr

	thumb_func_start sub_08081648
sub_08081648: @ 0x08081648
	adds r0, #0xfc
	ldr r0, [r0]
	lsls r1, r1, #1
	adds r0, #0x8c
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08081658
sub_08081658: @ 0x08081658
	adds r0, #0xfc
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	bx lr

	thumb_func_start sub_08081660
sub_08081660: @ 0x08081660
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072628
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0808167E
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #1
	beq _08081682
_0808167E:
	movs r0, #0
	b _08081684
_08081682:
	movs r0, #1
_08081684:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808168C
sub_0808168C: @ 0x0808168C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072628
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080816AA
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #1
	beq _080816AE
_080816AA:
	movs r0, #0
	b _080816B0
_080816AE:
	movs r0, #1
_080816B0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080816B8
sub_080816B8: @ 0x080816B8
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080816C4
sub_080816C4: @ 0x080816C4
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080816D0
sub_080816D0: @ 0x080816D0
	push {lr}
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r2
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r2, r0, r3
	ldr r0, [r2]
	adds r3, r0, #1
	cmp r3, #3
	bgt _080816F4
	lsls r0, r0, #2
	adds r0, r0, r2
	str r1, [r0, #4]
	str r3, [r2]
	movs r0, #1
	b _080816F6
_080816F4:
	movs r0, #0
_080816F6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080816FC
sub_080816FC: @ 0x080816FC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r5, #0
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	cmp r5, r0
	bge _0808175C
	adds r1, r2, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r3, r0
	movs r6, #4
_0808171C:
	ldrh r0, [r2]
	cmp r0, r4
	bne _08081750
	adds r4, r1, #0
	ldr r3, [r1]
	cmp r5, r3
	bge _0808174C
	adds r2, r5, #0
	adds r0, r2, #1
	cmp r0, r3
	bge _08081742
	adds r3, r6, r1
_08081734:
	ldr r0, [r3, #4]
	stm r3!, {r0}
	adds r2, #1
	adds r1, r2, #1
	ldr r0, [r4]
	cmp r1, r0
	blt _08081734
_08081742:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	movs r0, #1
	b _0808175E
_0808174C:
	movs r0, #0
	b _0808175E
_08081750:
	adds r2, #4
	adds r6, #4
	adds r5, #1
	ldr r0, [r1]
	cmp r5, r0
	blt _0808171C
_0808175C:
	movs r0, #0
_0808175E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08081764
sub_08081764: @ 0x08081764
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08081770
sub_08081770: @ 0x08081770
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08081780
sub_08081780: @ 0x08081780
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08081790
sub_08081790: @ 0x08081790
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xb4
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

	thumb_func_start sub_080817AC
sub_080817AC: @ 0x080817AC
	bx lr
	.align 2, 0

	thumb_func_start sub_080817B0
sub_080817B0: @ 0x080817B0
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xb6
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

	thumb_func_start nullsub_36
nullsub_36: @ 0x080817CC
	bx lr
	.align 2, 0

	thumb_func_start sub_080817D0
sub_080817D0: @ 0x080817D0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0xfa
	movs r3, #0
	strh r1, [r0]
	adds r4, r6, #0
	adds r4, #0xfc
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #4
	ldr r0, _08081974 @ =gMonsterData
	adds r2, r2, r0
	str r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r6, r0
	str r3, [r5]
	ldr r3, [r6, #0x1c]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r3, r3, r1
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	ldr r1, [r2, #0x14]
	ldr r2, [r3, #4]
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r4]
	ldr r1, [r1, #0x14]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x94
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r4]
	movs r3, #0x18
	ldrsh r1, [r1, r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r4]
	movs r3, #0x18
	ldrsh r1, [r1, r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r3, [r6, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	ldr r2, [r4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r2, r2, r1
	ldrb r1, [r2, #0x1c]
	ldr r2, [r3, #4]
	bl _call_via_r2
	ldr r3, [r6, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	ldr r2, [r4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r2, r2, r1
	ldrb r1, [r2, #0x1d]
	ldr r2, [r3, #4]
	bl _call_via_r2
	ldr r3, [r6, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	ldr r2, [r4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r2, r2, r1
	ldrb r1, [r2, #0x1e]
	ldr r2, [r3, #4]
	bl _call_via_r2
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	ldr r2, [r4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r2, r2, r1
	ldrb r1, [r2, #0x1f]
	ldr r2, [r3, #4]
	bl _call_via_r2
	ldr r3, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	ldr r2, [r4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r2, r2, r1
	adds r2, #0x20
	ldrb r1, [r2]
	ldr r2, [r3, #4]
	bl _call_via_r2
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r4, r6, r3
	ldr r3, [r4]
	ldr r2, [r3, #0x1c]
	adds r2, #0xc0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r2, [r4]
	cmp r2, #0
	beq _08081936
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08081936:
	movs r0, #0xc8
	bl __builtin_new
	adds r1, r6, #0
	bl sub_08081C48
	str r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08081974: .4byte gMonsterData

	thumb_func_start sub_08081978
sub_08081978: @ 0x08081978
	push {r4, lr}
	ldr r4, _0808198C @ =gUnknown_02002520
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08081990 @ =vt_09F83400
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808198C: .4byte gUnknown_02002520
_08081990: .4byte vt_09F83400

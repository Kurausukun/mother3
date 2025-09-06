.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_080A020C
sub_080A020C: @ 0x080A020C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __5GuestUs
	ldr r0, _080A02A0 @ =vt_09F4D280
	str r0, [r5, #0x20]
	ldr r0, _080A02A4 @ =vt_09F4D2F8
	str r0, [r5, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A02A8 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A02AC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A02B0 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A02B4 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A02B8 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A02A0: .4byte vt_09F4D280
_080A02A4: .4byte vt_09F4D2F8
_080A02A8: .4byte _vt.3Unk
_080A02AC: .4byte _vt.13UnitTurnBegin
_080A02B0: .4byte gUnknown_080F741C
_080A02B4: .4byte _vt.11UnitTurnEnd
_080A02B8: .4byte gUnknown_080F7424

	thumb_func_start sub_080A02BC
sub_080A02BC: @ 0x080A02BC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x1a
	cmp r1, #0x21
	blt _080A02D8
	movs r0, #0x1c
	cmp r1, #0x42
	bge _080A02D8
	movs r0, #0x1b
_080A02D8:
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A02E4
sub_080A02E4: @ 0x080A02E4
	push {lr}
	ldr r2, _080A02F8 @ =vt_09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A02FC @ =vt_09F4D2F8
	str r2, [r0, #0x1c]
	bl _._5Guest
	pop {r0}
	bx r0
	.align 2, 0
_080A02F8: .4byte vt_09F4D280
_080A02FC: .4byte vt_09F4D2F8

	thumb_func_start sub_080A0300
sub_080A0300: @ 0x080A0300
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0x84
	lsls r0, r0, #1
	adds r3, r4, r0
	ldr r0, [r3]
	cmp r0, r1
	bne _080A0318
	cmp r2, #1
	bne _080A0344
_080A0318:
	str r1, [r3]
	ldr r1, [r4, #0x1c]
	movs r2, #0xbe
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #2
	movs r1, #3
	bl randS32
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #1
	b _080A0346
_080A0344:
	movs r0, #0
_080A0346:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A034C
sub_080A034C: @ 0x080A034C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x22
	cmp r1, #0x1e
	blt _080A0368
	movs r0, #0x24
	cmp r1, #0x37
	bge _080A0368
	movs r0, #0x23
_080A0368:
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0374
sub_080A0374: @ 0x080A0374
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x1d
	cmp r1, #0x3c
	blt _080A0390
	movs r0, #0x1f
	cmp r1, #0x61
	bge _080A0390
	movs r0, #0x1e
_080A0390:
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A039C
sub_080A039C: @ 0x080A039C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	bl sub_08072AC4
	adds r4, r0, #0
	cmp r4, #0
	beq _080A03FE
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	bgt _080A03FE
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A03F4
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A03FE
_080A03F4:
	movs r0, #0x21
	adds r1, r5, #0
	bl sub_08074124
	b _080A0434
_080A03FE:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A0416
	cmp r0, #1
	beq _080A0420
	adds r0, r5, #0
	bl guest_2c0__5Guest
	b _080A0434
_080A0416:
	ldr r1, [r5, #0x1c]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r1, r1, r2
	b _080A0428
_080A0420:
	ldr r1, [r5, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #2
	adds r1, r1, r0
_080A0428:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080A0434:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A043C
sub_080A043C: @ 0x080A043C
	push {r4, lr}
	adds r4, r1, #0
	cmp r4, r0
	bne _080A04A8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A0456
	cmp r0, #1
	beq _080A0490
	b _080A04A8
_080A0456:
	ldr r1, [r4, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	cmp r0, r1
	blt _080A04A8
	ldr r1, [r4, #0x1c]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	b _080A04A8
_080A0490:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
_080A04A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A04B0
sub_080A04B0: @ 0x080A04B0
	push {lr}
	ldr r2, _080A04C4 @ =vt_09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A04C8 @ =vt_09F4D2F8
	str r2, [r0, #0x1c]
	bl _._5Guest
	pop {r0}
	bx r0
	.align 2, 0
_080A04C4: .4byte vt_09F4D280
_080A04C8: .4byte vt_09F4D2F8

	thumb_func_start sub_080A04CC
sub_080A04CC: @ 0x080A04CC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A04E2
	movs r0, #0
	b _080A04F0
_080A04E2:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
_080A04F0:
	cmp r0, #0
	bne _080A04F8
	movs r0, #0
	b _080A0516
_080A04F8:
	adds r0, r5, #0
	movs r1, #0x15
	bl sub_08074160
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A0514
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A0514:
	movs r0, #1
_080A0516:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A051C
sub_080A051C: @ 0x080A051C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	mov r8, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x16
	add r1, sp, #0xc
	strh r0, [r1]
	mov r4, sp
	adds r6, r1, #0
	movs r0, #8
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [sp, #8]
	adds r2, r5, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080A055A
	adds r1, r0, #0
_080A054C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080A054C
_080A055A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080A0564
	bl __builtin_vec_delete
_080A0564:
	movs r0, #4
	str r0, [r4]
	str r5, [r4, #8]
	ldr r2, [r4, #4]
	lsls r0, r2, #1
	adds r0, r0, r5
	ldrh r1, [r6]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	beq _080A05E4
	movs r0, #0x17
	mov r1, sp
	adds r1, #0xe
	strh r0, [r1]
	mov r5, sp
	adds r7, r1, #0
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _080A05D4
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _080A05A2
	adds r0, r1, #0
_080A05A2:
	adds r4, r0, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080A05C6
	adds r1, r0, #0
_080A05B8:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080A05B8
_080A05C6:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080A05D0
	bl __builtin_vec_delete
_080A05D0:
	str r4, [r5]
	str r6, [r5, #8]
_080A05D4:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r7]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080A05E4:
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	beq _080A064E
	movs r0, #0x18
	add r1, sp, #0x10
	strh r0, [r1]
	mov r5, sp
	adds r7, r1, #0
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _080A063E
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _080A060C
	adds r0, r1, #0
_080A060C:
	adds r4, r0, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080A0630
	adds r1, r0, #0
_080A0622:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080A0622
_080A0630:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080A063A
	bl __builtin_vec_delete
_080A063A:
	str r4, [r5]
	str r6, [r5, #8]
_080A063E:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r7]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080A064E:
	ldr r1, [sp, #4]
	subs r1, #1
	movs r0, #0
	bl randS32
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r1, r8
	bl sub_08074124
	adds r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080A0672
	bl __builtin_vec_delete
_080A0672:
	adds r0, r4, #0
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0680
sub_080A0680: @ 0x080A0680
	push {r4, lr}
	adds r4, r0, #0
	bl IsBossBattle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A06C4
	movs r0, #0
	bl GetMonster
	ldr r1, [r0, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x95
	bgt _080A06C4
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A0734
_080A06C4:
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	bgt _080A0702
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x31
	bgt _080A06E0
	movs r0, #0x14
	b _080A072E
_080A06E0:
	cmp r0, #0x42
	bgt _080A06E8
	movs r0, #0x15
	b _080A072E
_080A06E8:
	cmp r0, #0x45
	ble _080A072C
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A0734
_080A0702:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x31
	bgt _080A0712
	movs r0, #0x14
	b _080A072E
_080A0712:
	cmp r0, #0x45
	ble _080A072C
	ldr r1, [r4, #0x1c]
	movs r3, #0xc2
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A0734
_080A072C:
	movs r0, #0x19
_080A072E:
	adds r1, r4, #0
	bl sub_08074124
_080A0734:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A073C
sub_080A073C: @ 0x080A073C
	push {lr}
	ldr r2, _080A0750 @ =vt_09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A0754 @ =vt_09F4D2F8
	str r2, [r0, #0x1c]
	bl _._5Guest
	pop {r0}
	bx r0
	.align 2, 0
_080A0750: .4byte vt_09F4D280
_080A0754: .4byte vt_09F4D2F8

	thumb_func_start sub_080A0758
sub_080A0758: @ 0x080A0758
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A076E
	movs r0, #0
	b _080A077C
_080A076E:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
_080A077C:
	cmp r0, #0
	bne _080A0784
	movs r0, #0
	b _080A07B8
_080A0784:
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08074160
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A079A
	movs r0, #0x84
	lsls r0, r0, #1
	b _080A07AE
_080A079A:
	adds r0, r4, #0
	movs r1, #0x11
	bl sub_08074160
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A07B6
	movs r0, #0x86
	lsls r0, r0, #1
_080A07AE:
	adds r1, r5, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A07B6:
	movs r0, #1
_080A07B8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A07C0
sub_080A07C0: @ 0x080A07C0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #5
	bl sub_08072E38
	adds r5, r0, #0
	cmp r5, #0
	bne _080A07E6
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A083A
_080A07E6:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A0802
	movs r0, #0xd
	b _080A0834
_080A0802:
	ldr r1, [r5, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	cmp r0, #0
	ble _080A0832
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A083A
_080A0832:
	movs r0, #0x12
_080A0834:
	adds r1, r4, #0
	bl sub_08074124
_080A083A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0840
sub_080A0840: @ 0x080A0840
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #1
	bl sub_08072AC4
	adds r4, r0, #0
	cmp r4, #0
	bne _080A0854
	movs r0, #0
	b _080A08DC
_080A0854:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A0882
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	bgt _080A0882
	movs r0, #0x13
	b _080A08D6
_080A0882:
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x13
	bgt _080A08BE
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #2
	bgt _080A08AA
	movs r0, #0x10
	b _080A08D6
_080A08AA:
	cmp r0, #3
	bne _080A08BE
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bgt _080A08BE
	movs r0, #0x11
	b _080A08D6
_080A08BE:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xd
	cmp r1, #0x21
	blt _080A08D6
	movs r0, #0xf
	cmp r1, #0x42
	bge _080A08D6
	movs r0, #0xe
_080A08D6:
	adds r1, r5, #0
	bl sub_08074124
_080A08DC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A08E4
sub_080A08E4: @ 0x080A08E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #4
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A08FE
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	b _080A0904
_080A08FE:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #2
_080A0904:
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0918
sub_080A0918: @ 0x080A0918
	push {lr}
	ldr r2, _080A092C @ =vt_09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A0930 @ =vt_09F4D2F8
	str r2, [r0, #0x1c]
	bl _._5Guest
	pop {r0}
	bx r0
	.align 2, 0
_080A092C: .4byte vt_09F4D280
_080A0930: .4byte vt_09F4D2F8

	thumb_func_start sub_080A0934
sub_080A0934: @ 0x080A0934
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #7
	cmp r1, #0x21
	blt _080A0950
	movs r0, #9
	cmp r1, #0x42
	bge _080A0950
	movs r0, #8
_080A0950:
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A095C
sub_080A095C: @ 0x080A095C
	push {lr}
	ldr r2, _080A0970 @ =vt_09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A0974 @ =vt_09F4D2F8
	str r2, [r0, #0x1c]
	bl _._5Guest
	pop {r0}
	bx r0
	.align 2, 0
_080A0970: .4byte vt_09F4D280
_080A0974: .4byte vt_09F4D2F8

	thumb_func_start sub_080A0978
sub_080A0978: @ 0x080A0978
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #1
	cmp r0, #0x19
	blt _080A0998
	movs r1, #2
	cmp r0, #0x32
	blt _080A0998
	movs r1, #4
	cmp r0, #0x4b
	bge _080A0998
	movs r1, #3
_080A0998:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A09A8
sub_080A09A8: @ 0x080A09A8
	push {lr}
	ldr r2, _080A09BC @ =vt_09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A09C0 @ =vt_09F4D2F8
	str r2, [r0, #0x1c]
	bl _._5Guest
	pop {r0}
	bx r0
	.align 2, 0
_080A09BC: .4byte vt_09F4D280
_080A09C0: .4byte vt_09F4D2F8

	thumb_func_start sub_080A09C4
sub_080A09C4: @ 0x080A09C4
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080A09D0
sub_080A09D0: @ 0x080A09D0
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080A09DC
sub_080A09DC: @ 0x080A09DC
	push {r4, lr}
	adds r4, r0, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A09FC
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A09FE
_080A09FC:
	movs r0, #0
_080A09FE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start nullsub_56
nullsub_56: @ 0x080A0A04
	bx lr
	.align 2, 0

	thumb_func_start nullsub_57
nullsub_57: @ 0x080A0A08
	bx lr
	.align 2, 0

	thumb_func_start sub_080A0A0C
sub_080A0A0C: @ 0x080A0A0C
	push {lr}
	ldr r2, _080A0A20 @ =vt_09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A0A24 @ =vt_09F4D2F8
	str r2, [r0, #0x1c]
	bl _._5Guest
	pop {r0}
	bx r0
	.align 2, 0
_080A0A20: .4byte vt_09F4D280
_080A0A24: .4byte vt_09F4D2F8

	thumb_func_start sub_080A0A28
sub_080A0A28: @ 0x080A0A28
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A0AC8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A0A48
sub_080A0A48: @ 0x080A0A48
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A0AE4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A0A68
sub_080A0A68: @ 0x080A0A68
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A0B00
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A0A88
sub_080A0A88: @ 0x080A0A88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A0B1C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A0AA8
sub_080A0AA8: @ 0x080A0AA8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A0B38
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A0AC8
sub_080A0AC8: @ 0x080A0AC8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __10GuestSkillUsP4Unit
	ldr r0, _080A0AE0 @ =vt_09F4D600
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0AE0: .4byte vt_09F4D600

	thumb_func_start sub_080A0AE4
sub_080A0AE4: @ 0x080A0AE4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __10GuestSkillUsP4Unit
	ldr r0, _080A0AFC @ =vt_09F4D8A0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0AFC: .4byte vt_09F4D8A0

	thumb_func_start sub_080A0B00
sub_080A0B00: @ 0x080A0B00
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __10GuestSkillUsP4Unit
	ldr r0, _080A0B18 @ =vt_09F4DB40
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B18: .4byte vt_09F4DB40

	thumb_func_start sub_080A0B1C
sub_080A0B1C: @ 0x080A0B1C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __10GuestSkillUsP4Unit
	ldr r0, _080A0B34 @ =vt_09F4DDE0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B34: .4byte vt_09F4DDE0

	thumb_func_start sub_080A0B38
sub_080A0B38: @ 0x080A0B38
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __10GuestSkillUsP4Unit
	ldr r0, _080A0B50 @ =vt_09F4E080
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B50: .4byte vt_09F4E080

	thumb_func_start sub_080A0B54
sub_080A0B54: @ 0x080A0B54
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, _080A0B88 @ =0x000002BB
	ldr r1, _080A0B8C @ =0x000002CD
	bl randS32
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl _call_via_r3
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B88: .4byte 0x000002BB
_080A0B8C: .4byte 0x000002CD

	thumb_func_start sub_080A0B90
sub_080A0B90: @ 0x080A0B90
	push {lr}
	ldr r2, _080A0BA0 @ =vt_09F4E080
	str r2, [r0, #0x1c]
	bl _._10GuestSkill
	pop {r0}
	bx r0
	.align 2, 0
_080A0BA0: .4byte vt_09F4E080

	thumb_func_start sub_080A0BA4
sub_080A0BA4: @ 0x080A0BA4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	movs r1, #5
	bl isMonsterVariant
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A0BC4
	adds r0, r5, #0
	adds r1, r4, #0
	bl isResisted__6ActionP4Unit
	b _080A0BC6
_080A0BC4:
	movs r0, #0
_080A0BC6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0BCC
sub_080A0BCC: @ 0x080A0BCC
	push {lr}
	ldr r2, _080A0BDC @ =vt_09F4E080
	str r2, [r0, #0x1c]
	bl _._10GuestSkill
	pop {r0}
	bx r0
	.align 2, 0
_080A0BDC: .4byte vt_09F4E080

	thumb_func_start sub_080A0BE0
sub_080A0BE0: @ 0x080A0BE0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	bl onDamage__6ActionP4Unit
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	ldr r5, [r1, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #3
	movs r3, #0x64
	bl _call_via_r5
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A0C18
sub_080A0C18: @ 0x080A0C18
	push {lr}
	ldr r2, _080A0C28 @ =vt_09F4E080
	str r2, [r0, #0x1c]
	bl _._10GuestSkill
	pop {r0}
	bx r0
	.align 2, 0
_080A0C28: .4byte vt_09F4E080

	thumb_func_start sub_080A0C2C
sub_080A0C2C: @ 0x080A0C2C
	push {r4, r5, r6, lr}
	sub sp, #0x3c
	adds r6, r0, #0
	adds r5, r1, #0
	add r0, sp, #4
	movs r1, #0xbf
	bl __5SoundUs
	add r0, sp, #4
	movs r1, #0
	bl play__5Soundb
	movs r0, #0xb8
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08073198
	movs r0, #0x48
	bl setsleep
	add r0, sp, #4
	movs r1, #0
	bl sub_0807014C
	adds r0, r6, #0
	adds r1, r5, #0
	bl onDamage__6ActionP4Unit
	bl sub_08073270
	b _080A0C88
_080A0C6A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	strb r3, [r2]
	ldr r4, [r1, #4]
	adds r1, r5, #0
	movs r2, #3
	movs r3, #0x64
	bl _call_via_r4
_080A0C88:
	ldr r1, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	beq _080A0C6A
	b _080A0CC6
_080A0CA8:
	ldr r1, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	strb r3, [r2]
	ldr r4, [r1, #4]
	adds r1, r5, #0
	movs r2, #4
	movs r3, #0x64
	bl _call_via_r4
_080A0CC6:
	ldr r1, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	beq _080A0CA8
	b _080A0D04
_080A0CE6:
	ldr r1, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	strb r3, [r2]
	ldr r4, [r1, #4]
	adds r1, r5, #0
	movs r2, #0x20
	movs r3, #0x64
	bl _call_via_r4
_080A0D04:
	ldr r1, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x20
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	beq _080A0CE6
	add r0, sp, #4
	movs r1, #2
	bl _._5Sound
	add sp, #0x3c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A0D34
sub_080A0D34: @ 0x080A0D34
	push {lr}
	ldr r2, _080A0D44 @ =vt_09F4E080
	str r2, [r0, #0x1c]
	bl _._10GuestSkill
	pop {r0}
	bx r0
	.align 2, 0
_080A0D44: .4byte vt_09F4E080

	thumb_func_start sub_080A0D48
sub_080A0D48: @ 0x080A0D48
	push {r4, r5, lr}
	adds r4, r0, #0
	bl hitChance__C10GuestSkill
	adds r5, r0, #0
	cmp r5, #0x63
	bgt _080A0DC6
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #5
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A0DC6
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _080A0DB8
	ldr r1, [r4, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080A0DC6
_080A0DB8:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r5, r0, #0
_080A0DC6:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A0DD0
sub_080A0DD0: @ 0x080A0DD0
	push {lr}
	ldr r2, _080A0DE0 @ =vt_09F4E080
	str r2, [r0, #0x1c]
	bl _._10GuestSkill
	pop {r0}
	bx r0
	.align 2, 0
_080A0DE0: .4byte vt_09F4E080

	thumb_func_start sub_080A0DE4
sub_080A0DE4: @ 0x080A0DE4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A18D0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0E08
sub_080A0E08: @ 0x080A0E08
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A199C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0E2C
sub_080A0E2C: @ 0x080A0E2C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1AC4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0E50
sub_080A0E50: @ 0x080A0E50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1B98
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0E74
sub_080A0E74: @ 0x080A0E74
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xaa
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1C94
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0E98
sub_080A0E98: @ 0x080A0E98
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xaa
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1DB4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0EBC
sub_080A0EBC: @ 0x080A0EBC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xb6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1ED4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0EE0
sub_080A0EE0: @ 0x080A0EE0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1FC0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0F04
sub_080A0F04: @ 0x080A0F04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A20B8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0F28
sub_080A0F28: @ 0x080A0F28
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A218C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0F4C
sub_080A0F4C: @ 0x080A0F4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A226C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0F70
sub_080A0F70: @ 0x080A0F70
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xac
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A234C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0F94
sub_080A0F94: @ 0x080A0F94
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2460
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0FB8
sub_080A0FB8: @ 0x080A0FB8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2568
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0FDC
sub_080A0FDC: @ 0x080A0FDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2648
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1000
sub_080A1000: @ 0x080A1000
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xae
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2714
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1024
sub_080A1024: @ 0x080A1024
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2848
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1048
sub_080A1048: @ 0x080A1048
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2914
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A106C
sub_080A106C: @ 0x080A106C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A29E0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1090
sub_080A1090: @ 0x080A1090
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2AAC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A10B4
sub_080A10B4: @ 0x080A10B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2B78
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A10D8
sub_080A10D8: @ 0x080A10D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2C44
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A10FC
sub_080A10FC: @ 0x080A10FC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2D10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1120
sub_080A1120: @ 0x080A1120
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2DDC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1144
sub_080A1144: @ 0x080A1144
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2EA8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1168
sub_080A1168: @ 0x080A1168
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A2F74
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A118C
sub_080A118C: @ 0x080A118C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3040
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A11B0
sub_080A11B0: @ 0x080A11B0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A310C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A11D4
sub_080A11D4: @ 0x080A11D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3214
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A11F8
sub_080A11F8: @ 0x080A11F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A32E0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A121C
sub_080A121C: @ 0x080A121C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A33AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1240
sub_080A1240: @ 0x080A1240
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3478
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1264
sub_080A1264: @ 0x080A1264
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3554
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1288
sub_080A1288: @ 0x080A1288
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3620
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A12AC
sub_080A12AC: @ 0x080A12AC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A36EC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A12D0
sub_080A12D0: @ 0x080A12D0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A37B8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A12F4
sub_080A12F4: @ 0x080A12F4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3884
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1318
sub_080A1318: @ 0x080A1318
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3950
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A133C
sub_080A133C: @ 0x080A133C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3A38
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1360
sub_080A1360: @ 0x080A1360
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3B18
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1384
sub_080A1384: @ 0x080A1384
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3BE4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A13A8
sub_080A13A8: @ 0x080A13A8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3CB0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A13CC
sub_080A13CC: @ 0x080A13CC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3D90
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A13F0
sub_080A13F0: @ 0x080A13F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3E8C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1414
sub_080A1414: @ 0x080A1414
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A3F60
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1438
sub_080A1438: @ 0x080A1438
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A402C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A145C
sub_080A145C: @ 0x080A145C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xac
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A410C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1480
sub_080A1480: @ 0x080A1480
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A41F8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A14A4
sub_080A14A4: @ 0x080A14A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A42C4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A14C8
sub_080A14C8: @ 0x080A14C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4390
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A14EC
sub_080A14EC: @ 0x080A14EC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4470
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1510
sub_080A1510: @ 0x080A1510
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A454C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1534
sub_080A1534: @ 0x080A1534
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4618
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1558
sub_080A1558: @ 0x080A1558
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A46E4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A157C
sub_080A157C: @ 0x080A157C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A47B0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A15A0
sub_080A15A0: @ 0x080A15A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A487C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A15C4
sub_080A15C4: @ 0x080A15C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A495C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A15E8
sub_080A15E8: @ 0x080A15E8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4A28
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A160C
sub_080A160C: @ 0x080A160C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4B08
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1630
sub_080A1630: @ 0x080A1630
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4BE4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1654
sub_080A1654: @ 0x080A1654
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4CC4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1678
sub_080A1678: @ 0x080A1678
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4D90
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A169C
sub_080A169C: @ 0x080A169C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4E70
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A16C0
sub_080A16C0: @ 0x080A16C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A4F3C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A16E4
sub_080A16E4: @ 0x080A16E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A501C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1708
sub_080A1708: @ 0x080A1708
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xaa
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A50FC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A172C
sub_080A172C: @ 0x080A172C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xaa
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A51DC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1750
sub_080A1750: @ 0x080A1750
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A52BC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1774
sub_080A1774: @ 0x080A1774
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A539C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1798
sub_080A1798: @ 0x080A1798
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A5468
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A17BC
sub_080A17BC: @ 0x080A17BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A5534
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A17E0
sub_080A17E0: @ 0x080A17E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A5600
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1804
sub_080A1804: @ 0x080A1804
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa8
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl __10MechaDragoUsUs
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1828
sub_080A1828: @ 0x080A1828
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl __20ReconstructedCaribouUsUs
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A184C
sub_080A184C: @ 0x080A184C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A1874
	ldr r2, [r4, #0x1c]
	movs r0, #0xfe
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
_080A1874:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A187C
sub_080A187C: @ 0x080A187C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A18A4
	ldr r2, [r4, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
_080A18A4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A18AC
sub_080A18AC: @ 0x080A18AC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa4
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl __14DefaultMonsterUsUs
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A18D0
sub_080A18D0: @ 0x080A18D0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A1978 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A197C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1980 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A1984 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A1988 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A198C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A1990 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1994 @ =vt_09F4E490
	str r0, [r5, #0x20]
	ldr r0, _080A1998 @ =vt_09F4E508
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1978: .4byte _vt.14DefaultMonster.10UnitObject
_080A197C: .4byte _vt.14DefaultMonster
_080A1980: .4byte _vt.3Unk
_080A1984: .4byte _vt.13UnitTurnBegin
_080A1988: .4byte gUnknown_080F8E5C
_080A198C: .4byte _vt.11UnitTurnEnd
_080A1990: .4byte gUnknown_080F8E64
_080A1994: .4byte vt_09F4E490
_080A1998: .4byte vt_09F4E508

	thumb_func_start sub_080A199C
sub_080A199C: @ 0x080A199C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A1AA0 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A1AA4 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1AA8 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A1AAC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A1AB0 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1AB4 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A1AB8 @ =gUnknown_080F8E64
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
	ldr r0, _080A1ABC @ =vt_09F4E940
	str r0, [r5, #0x20]
	ldr r0, _080A1AC0 @ =vt_09F4E9B8
	str r0, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [r1]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x19
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x19
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x19
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1AA0: .4byte _vt.14DefaultMonster.10UnitObject
_080A1AA4: .4byte _vt.14DefaultMonster
_080A1AA8: .4byte _vt.3Unk
_080A1AAC: .4byte _vt.13UnitTurnBegin
_080A1AB0: .4byte gUnknown_080F8E5C
_080A1AB4: .4byte _vt.11UnitTurnEnd
_080A1AB8: .4byte gUnknown_080F8E64
_080A1ABC: .4byte vt_09F4E940
_080A1AC0: .4byte vt_09F4E9B8

	thumb_func_start sub_080A1AC4
sub_080A1AC4: @ 0x080A1AC4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A1B74 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A1B78 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1B7C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A1B80 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A1B84 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1B88 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A1B8C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1B90 @ =vt_09F4EE30
	str r0, [r5, #0x20]
	ldr r0, _080A1B94 @ =vt_09F4EEA8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	movs r1, #0x30
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1B74: .4byte _vt.14DefaultMonster.10UnitObject
_080A1B78: .4byte _vt.14DefaultMonster
_080A1B7C: .4byte _vt.3Unk
_080A1B80: .4byte _vt.13UnitTurnBegin
_080A1B84: .4byte gUnknown_080F8E5C
_080A1B88: .4byte _vt.11UnitTurnEnd
_080A1B8C: .4byte gUnknown_080F8E64
_080A1B90: .4byte vt_09F4EE30
_080A1B94: .4byte vt_09F4EEA8

	thumb_func_start sub_080A1B98
sub_080A1B98: @ 0x080A1B98
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A1C70 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A1C74 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1C78 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A1C7C @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A1C80 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1C84 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A1C88 @ =gUnknown_080F8E64
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
	ldr r0, _080A1C8C @ =vt_09F4F2E0
	str r0, [r5, #0x20]
	ldr r0, _080A1C90 @ =vt_09F4F358
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1C70: .4byte _vt.14DefaultMonster.10UnitObject
_080A1C74: .4byte _vt.14DefaultMonster
_080A1C78: .4byte _vt.3Unk
_080A1C7C: .4byte _vt.13UnitTurnBegin
_080A1C80: .4byte gUnknown_080F8E5C
_080A1C84: .4byte _vt.11UnitTurnEnd
_080A1C88: .4byte gUnknown_080F8E64
_080A1C8C: .4byte vt_09F4F2E0
_080A1C90: .4byte vt_09F4F358

	thumb_func_start sub_080A1C94
sub_080A1C94: @ 0x080A1C94
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A1D90 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A1D94 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	mov sl, r2
	movs r1, #0
	mov r8, r1
	mov r2, r8
	strh r2, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1D98 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A1D9C @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A1DA0 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1DA4 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A1DA8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1DAC @ =vt_09F4F810
	str r0, [r5, #0x20]
	ldr r0, _080A1DB0 @ =vt_09F4F888
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	movs r0, #2
	movs r1, #3
	bl randS32
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, sl
	strb r2, [r0]
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1D90: .4byte _vt.14DefaultMonster.10UnitObject
_080A1D94: .4byte _vt.14DefaultMonster
_080A1D98: .4byte _vt.3Unk
_080A1D9C: .4byte _vt.13UnitTurnBegin
_080A1DA0: .4byte gUnknown_080F8E5C
_080A1DA4: .4byte _vt.11UnitTurnEnd
_080A1DA8: .4byte gUnknown_080F8E64
_080A1DAC: .4byte vt_09F4F810
_080A1DB0: .4byte vt_09F4F888

	thumb_func_start sub_080A1DB4
sub_080A1DB4: @ 0x080A1DB4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A1EB0 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A1EB4 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	mov sl, r2
	movs r1, #0
	mov r8, r1
	mov r2, r8
	strh r2, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1EB8 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A1EBC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A1EC0 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1EC4 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A1EC8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1ECC @ =vt_09F4FCD8
	str r0, [r5, #0x20]
	ldr r0, _080A1ED0 @ =vt_09F4FD50
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	movs r0, #2
	movs r1, #3
	bl randS32
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, sl
	strb r2, [r0]
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1EB0: .4byte _vt.14DefaultMonster.10UnitObject
_080A1EB4: .4byte _vt.14DefaultMonster
_080A1EB8: .4byte _vt.3Unk
_080A1EBC: .4byte _vt.13UnitTurnBegin
_080A1EC0: .4byte gUnknown_080F8E5C
_080A1EC4: .4byte _vt.11UnitTurnEnd
_080A1EC8: .4byte gUnknown_080F8E64
_080A1ECC: .4byte vt_09F4FCD8
_080A1ED0: .4byte vt_09F4FD50

	thumb_func_start sub_080A1ED4
sub_080A1ED4: @ 0x080A1ED4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A1F9C @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r7, #0x20]
	ldr r0, _080A1FA0 @ =_vt.14DefaultMonster
	str r0, [r7, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r5, #0
	strh r5, [r0]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r7, r3
	str r5, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1FA4 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A1FA8 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A1FAC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1FB0 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A1FB4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1FB8 @ =vt_09F501A0
	str r0, [r7, #0x20]
	ldr r0, _080A1FBC @ =vt_09F50218
	str r0, [r7, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	str r5, [r0]
	movs r3, #0xb4
	lsls r3, r3, #1
	adds r0, r7, r3
	str r5, [r0]
	movs r2, #0
	movs r1, #6
	subs r3, #4
	adds r0, r7, r3
_080A1F84:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _080A1F84
	adds r0, r7, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A1F9C: .4byte _vt.14DefaultMonster.10UnitObject
_080A1FA0: .4byte _vt.14DefaultMonster
_080A1FA4: .4byte _vt.3Unk
_080A1FA8: .4byte _vt.13UnitTurnBegin
_080A1FAC: .4byte gUnknown_080F8E5C
_080A1FB0: .4byte _vt.11UnitTurnEnd
_080A1FB4: .4byte gUnknown_080F8E64
_080A1FB8: .4byte vt_09F501A0
_080A1FBC: .4byte vt_09F50218

	thumb_func_start sub_080A1FC0
sub_080A1FC0: @ 0x080A1FC0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2094 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A2098 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A209C @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A20A0 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A20A4 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A20A8 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A20AC @ =gUnknown_080F8E64
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
	ldr r0, _080A20B0 @ =vt_09F50690
	str r0, [r5, #0x20]
	ldr r0, _080A20B4 @ =vt_09F50708
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	bl unit_268__4UnitUi
	adds r0, r5, #0
	movs r1, #0x16
	bl unit_268__4UnitUi
	adds r0, r5, #0
	movs r1, #0x16
	bl unit_268__4UnitUi
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2094: .4byte _vt.14DefaultMonster.10UnitObject
_080A2098: .4byte _vt.14DefaultMonster
_080A209C: .4byte _vt.3Unk
_080A20A0: .4byte _vt.13UnitTurnBegin
_080A20A4: .4byte gUnknown_080F8E5C
_080A20A8: .4byte _vt.11UnitTurnEnd
_080A20AC: .4byte gUnknown_080F8E64
_080A20B0: .4byte vt_09F50690
_080A20B4: .4byte vt_09F50708

	thumb_func_start sub_080A20B8
sub_080A20B8: @ 0x080A20B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2168 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A216C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2170 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A2174 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2178 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A217C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2180 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2184 @ =vt_09F50B40
	str r0, [r5, #0x20]
	ldr r0, _080A2188 @ =vt_09F50BB8
	str r0, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2168: .4byte _vt.14DefaultMonster.10UnitObject
_080A216C: .4byte _vt.14DefaultMonster
_080A2170: .4byte _vt.3Unk
_080A2174: .4byte _vt.13UnitTurnBegin
_080A2178: .4byte gUnknown_080F8E5C
_080A217C: .4byte _vt.11UnitTurnEnd
_080A2180: .4byte gUnknown_080F8E64
_080A2184: .4byte vt_09F50B40
_080A2188: .4byte vt_09F50BB8

	thumb_func_start sub_080A218C
sub_080A218C: @ 0x080A218C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2248 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A224C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2250 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A2254 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2258 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A225C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2260 @ =gUnknown_080F8E64
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
	ldr r0, _080A2264 @ =vt_09F50FF8
	str r0, [r5, #0x20]
	ldr r0, _080A2268 @ =vt_09F51070
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2248: .4byte _vt.14DefaultMonster.10UnitObject
_080A224C: .4byte _vt.14DefaultMonster
_080A2250: .4byte _vt.3Unk
_080A2254: .4byte _vt.13UnitTurnBegin
_080A2258: .4byte gUnknown_080F8E5C
_080A225C: .4byte _vt.11UnitTurnEnd
_080A2260: .4byte gUnknown_080F8E64
_080A2264: .4byte vt_09F50FF8
_080A2268: .4byte vt_09F51070

	thumb_func_start sub_080A226C
sub_080A226C: @ 0x080A226C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2328 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A232C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2330 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A2334 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2338 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A233C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2340 @ =gUnknown_080F8E64
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
	ldr r0, _080A2344 @ =vt_09F514A8
	str r0, [r5, #0x20]
	ldr r0, _080A2348 @ =vt_09F51520
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2328: .4byte _vt.14DefaultMonster.10UnitObject
_080A232C: .4byte _vt.14DefaultMonster
_080A2330: .4byte _vt.3Unk
_080A2334: .4byte _vt.13UnitTurnBegin
_080A2338: .4byte gUnknown_080F8E5C
_080A233C: .4byte _vt.11UnitTurnEnd
_080A2340: .4byte gUnknown_080F8E64
_080A2344: .4byte vt_09F514A8
_080A2348: .4byte vt_09F51520

	thumb_func_start sub_080A234C
sub_080A234C: @ 0x080A234C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A243C @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A2440 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	mov r8, r2
	mov r1, r8
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r2, _080A2444 @ =_vt.3Unk
	mov sb, r2
	ldr r0, _080A2448 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A244C @ =gUnknown_080F8E5C
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
	ldr r0, _080A2450 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2454 @ =gUnknown_080F8E64
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
	ldr r0, _080A2458 @ =vt_09F51958
	str r0, [r5, #0x20]
	ldr r0, _080A245C @ =vt_09F519D0
	str r0, [r5, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	str r1, [r0]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r2, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A243C: .4byte _vt.14DefaultMonster.10UnitObject
_080A2440: .4byte _vt.14DefaultMonster
_080A2444: .4byte _vt.3Unk
_080A2448: .4byte _vt.13UnitTurnBegin
_080A244C: .4byte gUnknown_080F8E5C
_080A2450: .4byte _vt.11UnitTurnEnd
_080A2454: .4byte gUnknown_080F8E64
_080A2458: .4byte vt_09F51958
_080A245C: .4byte vt_09F519D0

	thumb_func_start sub_080A2460
sub_080A2460: @ 0x080A2460
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2544 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A2548 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A254C @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A2550 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2554 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2558 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A255C @ =gUnknown_080F8E64
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
	ldr r0, _080A2560 @ =vt_09F51E28
	str r0, [r5, #0x20]
	ldr r0, _080A2564 @ =vt_09F51EA0
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2544: .4byte _vt.14DefaultMonster.10UnitObject
_080A2548: .4byte _vt.14DefaultMonster
_080A254C: .4byte _vt.3Unk
_080A2550: .4byte _vt.13UnitTurnBegin
_080A2554: .4byte gUnknown_080F8E5C
_080A2558: .4byte _vt.11UnitTurnEnd
_080A255C: .4byte gUnknown_080F8E64
_080A2560: .4byte vt_09F51E28
_080A2564: .4byte vt_09F51EA0

	thumb_func_start sub_080A2568
sub_080A2568: @ 0x080A2568
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2624 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A2628 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A262C @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A2630 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2634 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2638 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A263C @ =gUnknown_080F8E64
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
	ldr r0, _080A2640 @ =vt_09F522E0
	str r0, [r5, #0x20]
	ldr r0, _080A2644 @ =vt_09F52358
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2624: .4byte _vt.14DefaultMonster.10UnitObject
_080A2628: .4byte _vt.14DefaultMonster
_080A262C: .4byte _vt.3Unk
_080A2630: .4byte _vt.13UnitTurnBegin
_080A2634: .4byte gUnknown_080F8E5C
_080A2638: .4byte _vt.11UnitTurnEnd
_080A263C: .4byte gUnknown_080F8E64
_080A2640: .4byte vt_09F522E0
_080A2644: .4byte vt_09F52358

	thumb_func_start sub_080A2648
sub_080A2648: @ 0x080A2648
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A26F0 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A26F4 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A26F8 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A26FC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2700 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2704 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2708 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A270C @ =vt_09F527C0
	str r0, [r5, #0x20]
	ldr r0, _080A2710 @ =vt_09F52838
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A26F0: .4byte _vt.14DefaultMonster.10UnitObject
_080A26F4: .4byte _vt.14DefaultMonster
_080A26F8: .4byte _vt.3Unk
_080A26FC: .4byte _vt.13UnitTurnBegin
_080A2700: .4byte gUnknown_080F8E5C
_080A2704: .4byte _vt.11UnitTurnEnd
_080A2708: .4byte gUnknown_080F8E64
_080A270C: .4byte vt_09F527C0
_080A2710: .4byte vt_09F52838

	thumb_func_start sub_080A2714
sub_080A2714: @ 0x080A2714
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2824 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A2828 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	mov r8, r2
	mov r1, r8
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r2, _080A282C @ =_vt.3Unk
	mov sb, r2
	ldr r0, _080A2830 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2834 @ =gUnknown_080F8E5C
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
	ldr r0, _080A2838 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A283C @ =gUnknown_080F8E64
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
	ldr r0, _080A2840 @ =vt_09F52C70
	str r0, [r5, #0x20]
	ldr r0, _080A2844 @ =vt_09F52CE8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	movs r1, #1
	bl getElementWeakness__C4UnitUi
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	bl getElementWeakness__C4UnitUi
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #3
	bl getElementWeakness__C4UnitUi
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r2, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2824: .4byte _vt.14DefaultMonster.10UnitObject
_080A2828: .4byte _vt.14DefaultMonster
_080A282C: .4byte _vt.3Unk
_080A2830: .4byte _vt.13UnitTurnBegin
_080A2834: .4byte gUnknown_080F8E5C
_080A2838: .4byte _vt.11UnitTurnEnd
_080A283C: .4byte gUnknown_080F8E64
_080A2840: .4byte vt_09F52C70
_080A2844: .4byte vt_09F52CE8

	thumb_func_start sub_080A2848
sub_080A2848: @ 0x080A2848
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A28F0 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A28F4 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A28F8 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A28FC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2900 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2904 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2908 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A290C @ =vt_09F53158
	str r0, [r5, #0x20]
	ldr r0, _080A2910 @ =vt_09F531D0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A28F0: .4byte _vt.14DefaultMonster.10UnitObject
_080A28F4: .4byte _vt.14DefaultMonster
_080A28F8: .4byte _vt.3Unk
_080A28FC: .4byte _vt.13UnitTurnBegin
_080A2900: .4byte gUnknown_080F8E5C
_080A2904: .4byte _vt.11UnitTurnEnd
_080A2908: .4byte gUnknown_080F8E64
_080A290C: .4byte vt_09F53158
_080A2910: .4byte vt_09F531D0

	thumb_func_start sub_080A2914
sub_080A2914: @ 0x080A2914
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A29BC @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A29C0 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A29C4 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A29C8 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A29CC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A29D0 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A29D4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A29D8 @ =vt_09F53608
	str r0, [r5, #0x20]
	ldr r0, _080A29DC @ =vt_09F53680
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A29BC: .4byte _vt.14DefaultMonster.10UnitObject
_080A29C0: .4byte _vt.14DefaultMonster
_080A29C4: .4byte _vt.3Unk
_080A29C8: .4byte _vt.13UnitTurnBegin
_080A29CC: .4byte gUnknown_080F8E5C
_080A29D0: .4byte _vt.11UnitTurnEnd
_080A29D4: .4byte gUnknown_080F8E64
_080A29D8: .4byte vt_09F53608
_080A29DC: .4byte vt_09F53680

	thumb_func_start sub_080A29E0
sub_080A29E0: @ 0x080A29E0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2A88 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A2A8C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2A90 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A2A94 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2A98 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2A9C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2AA0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2AA4 @ =vt_09F53AB8
	str r0, [r5, #0x20]
	ldr r0, _080A2AA8 @ =vt_09F53B30
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2A88: .4byte _vt.14DefaultMonster.10UnitObject
_080A2A8C: .4byte _vt.14DefaultMonster
_080A2A90: .4byte _vt.3Unk
_080A2A94: .4byte _vt.13UnitTurnBegin
_080A2A98: .4byte gUnknown_080F8E5C
_080A2A9C: .4byte _vt.11UnitTurnEnd
_080A2AA0: .4byte gUnknown_080F8E64
_080A2AA4: .4byte vt_09F53AB8
_080A2AA8: .4byte vt_09F53B30

	thumb_func_start sub_080A2AAC
sub_080A2AAC: @ 0x080A2AAC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2B54 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A2B58 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2B5C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A2B60 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2B64 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2B68 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2B6C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2B70 @ =vt_09F53F68
	str r0, [r5, #0x20]
	ldr r0, _080A2B74 @ =vt_09F53FE0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2B54: .4byte _vt.14DefaultMonster.10UnitObject
_080A2B58: .4byte _vt.14DefaultMonster
_080A2B5C: .4byte _vt.3Unk
_080A2B60: .4byte _vt.13UnitTurnBegin
_080A2B64: .4byte gUnknown_080F8E5C
_080A2B68: .4byte _vt.11UnitTurnEnd
_080A2B6C: .4byte gUnknown_080F8E64
_080A2B70: .4byte vt_09F53F68
_080A2B74: .4byte vt_09F53FE0

	thumb_func_start sub_080A2B78
sub_080A2B78: @ 0x080A2B78
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2C20 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A2C24 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2C28 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A2C2C @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2C30 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2C34 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2C38 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2C3C @ =vt_09F54418
	str r0, [r5, #0x20]
	ldr r0, _080A2C40 @ =vt_09F54490
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2C20: .4byte _vt.14DefaultMonster.10UnitObject
_080A2C24: .4byte _vt.14DefaultMonster
_080A2C28: .4byte _vt.3Unk
_080A2C2C: .4byte _vt.13UnitTurnBegin
_080A2C30: .4byte gUnknown_080F8E5C
_080A2C34: .4byte _vt.11UnitTurnEnd
_080A2C38: .4byte gUnknown_080F8E64
_080A2C3C: .4byte vt_09F54418
_080A2C40: .4byte vt_09F54490

	thumb_func_start sub_080A2C44
sub_080A2C44: @ 0x080A2C44
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2CEC @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A2CF0 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2CF4 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A2CF8 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2CFC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2D00 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2D04 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2D08 @ =vt_09F548C8
	str r0, [r5, #0x20]
	ldr r0, _080A2D0C @ =vt_09F54940
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2CEC: .4byte _vt.14DefaultMonster.10UnitObject
_080A2CF0: .4byte _vt.14DefaultMonster
_080A2CF4: .4byte _vt.3Unk
_080A2CF8: .4byte _vt.13UnitTurnBegin
_080A2CFC: .4byte gUnknown_080F8E5C
_080A2D00: .4byte _vt.11UnitTurnEnd
_080A2D04: .4byte gUnknown_080F8E64
_080A2D08: .4byte vt_09F548C8
_080A2D0C: .4byte vt_09F54940

	thumb_func_start sub_080A2D10
sub_080A2D10: @ 0x080A2D10
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2DB8 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A2DBC @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2DC0 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A2DC4 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2DC8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2DCC @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2DD0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2DD4 @ =vt_09F54D78
	str r0, [r5, #0x20]
	ldr r0, _080A2DD8 @ =vt_09F54DF0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2DB8: .4byte _vt.14DefaultMonster.10UnitObject
_080A2DBC: .4byte _vt.14DefaultMonster
_080A2DC0: .4byte _vt.3Unk
_080A2DC4: .4byte _vt.13UnitTurnBegin
_080A2DC8: .4byte gUnknown_080F8E5C
_080A2DCC: .4byte _vt.11UnitTurnEnd
_080A2DD0: .4byte gUnknown_080F8E64
_080A2DD4: .4byte vt_09F54D78
_080A2DD8: .4byte vt_09F54DF0

	thumb_func_start sub_080A2DDC
sub_080A2DDC: @ 0x080A2DDC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2E84 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A2E88 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2E8C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A2E90 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2E94 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2E98 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2E9C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2EA0 @ =vt_09F55228
	str r0, [r5, #0x20]
	ldr r0, _080A2EA4 @ =vt_09F552A0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2E84: .4byte _vt.14DefaultMonster.10UnitObject
_080A2E88: .4byte _vt.14DefaultMonster
_080A2E8C: .4byte _vt.3Unk
_080A2E90: .4byte _vt.13UnitTurnBegin
_080A2E94: .4byte gUnknown_080F8E5C
_080A2E98: .4byte _vt.11UnitTurnEnd
_080A2E9C: .4byte gUnknown_080F8E64
_080A2EA0: .4byte vt_09F55228
_080A2EA4: .4byte vt_09F552A0

	thumb_func_start sub_080A2EA8
sub_080A2EA8: @ 0x080A2EA8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A2F50 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A2F54 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2F58 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A2F5C @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A2F60 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2F64 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A2F68 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2F6C @ =vt_09F556D8
	str r0, [r5, #0x20]
	ldr r0, _080A2F70 @ =vt_09F55750
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2F50: .4byte _vt.14DefaultMonster.10UnitObject
_080A2F54: .4byte _vt.14DefaultMonster
_080A2F58: .4byte _vt.3Unk
_080A2F5C: .4byte _vt.13UnitTurnBegin
_080A2F60: .4byte gUnknown_080F8E5C
_080A2F64: .4byte _vt.11UnitTurnEnd
_080A2F68: .4byte gUnknown_080F8E64
_080A2F6C: .4byte vt_09F556D8
_080A2F70: .4byte vt_09F55750

	thumb_func_start sub_080A2F74
sub_080A2F74: @ 0x080A2F74
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A301C @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3020 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3024 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A3028 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A302C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3030 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3034 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3038 @ =vt_09F55B88
	str r0, [r5, #0x20]
	ldr r0, _080A303C @ =vt_09F55C00
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A301C: .4byte _vt.14DefaultMonster.10UnitObject
_080A3020: .4byte _vt.14DefaultMonster
_080A3024: .4byte _vt.3Unk
_080A3028: .4byte _vt.13UnitTurnBegin
_080A302C: .4byte gUnknown_080F8E5C
_080A3030: .4byte _vt.11UnitTurnEnd
_080A3034: .4byte gUnknown_080F8E64
_080A3038: .4byte vt_09F55B88
_080A303C: .4byte vt_09F55C00

	thumb_func_start sub_080A3040
sub_080A3040: @ 0x080A3040
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A30E8 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A30EC @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A30F0 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A30F4 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A30F8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A30FC @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3100 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3104 @ =vt_09F56038
	str r0, [r5, #0x20]
	ldr r0, _080A3108 @ =vt_09F560B0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A30E8: .4byte _vt.14DefaultMonster.10UnitObject
_080A30EC: .4byte _vt.14DefaultMonster
_080A30F0: .4byte _vt.3Unk
_080A30F4: .4byte _vt.13UnitTurnBegin
_080A30F8: .4byte gUnknown_080F8E5C
_080A30FC: .4byte _vt.11UnitTurnEnd
_080A3100: .4byte gUnknown_080F8E64
_080A3104: .4byte vt_09F56038
_080A3108: .4byte vt_09F560B0

	thumb_func_start sub_080A310C
sub_080A310C: @ 0x080A310C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A31F0 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A31F4 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A31F8 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A31FC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A3200 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3204 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3208 @ =gUnknown_080F8E64
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
	ldr r0, _080A320C @ =vt_09F564E8
	str r0, [r5, #0x20]
	ldr r0, _080A3210 @ =vt_09F56560
	str r0, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A31F0: .4byte _vt.14DefaultMonster.10UnitObject
_080A31F4: .4byte _vt.14DefaultMonster
_080A31F8: .4byte _vt.3Unk
_080A31FC: .4byte _vt.13UnitTurnBegin
_080A3200: .4byte gUnknown_080F8E5C
_080A3204: .4byte _vt.11UnitTurnEnd
_080A3208: .4byte gUnknown_080F8E64
_080A320C: .4byte vt_09F564E8
_080A3210: .4byte vt_09F56560

	thumb_func_start sub_080A3214
sub_080A3214: @ 0x080A3214
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A32BC @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A32C0 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A32C4 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A32C8 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A32CC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A32D0 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A32D4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A32D8 @ =vt_09F569C0
	str r0, [r5, #0x20]
	ldr r0, _080A32DC @ =vt_09F56A38
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A32BC: .4byte _vt.14DefaultMonster.10UnitObject
_080A32C0: .4byte _vt.14DefaultMonster
_080A32C4: .4byte _vt.3Unk
_080A32C8: .4byte _vt.13UnitTurnBegin
_080A32CC: .4byte gUnknown_080F8E5C
_080A32D0: .4byte _vt.11UnitTurnEnd
_080A32D4: .4byte gUnknown_080F8E64
_080A32D8: .4byte vt_09F569C0
_080A32DC: .4byte vt_09F56A38

	thumb_func_start sub_080A32E0
sub_080A32E0: @ 0x080A32E0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A3388 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A338C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3390 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A3394 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A3398 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A339C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A33A0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A33A4 @ =vt_09F56E70
	str r0, [r5, #0x20]
	ldr r0, _080A33A8 @ =vt_09F56EE8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3388: .4byte _vt.14DefaultMonster.10UnitObject
_080A338C: .4byte _vt.14DefaultMonster
_080A3390: .4byte _vt.3Unk
_080A3394: .4byte _vt.13UnitTurnBegin
_080A3398: .4byte gUnknown_080F8E5C
_080A339C: .4byte _vt.11UnitTurnEnd
_080A33A0: .4byte gUnknown_080F8E64
_080A33A4: .4byte vt_09F56E70
_080A33A8: .4byte vt_09F56EE8

	thumb_func_start sub_080A33AC
sub_080A33AC: @ 0x080A33AC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A3454 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3458 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A345C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A3460 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A3464 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3468 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A346C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3470 @ =vt_09F57320
	str r0, [r5, #0x20]
	ldr r0, _080A3474 @ =vt_09F57398
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3454: .4byte _vt.14DefaultMonster.10UnitObject
_080A3458: .4byte _vt.14DefaultMonster
_080A345C: .4byte _vt.3Unk
_080A3460: .4byte _vt.13UnitTurnBegin
_080A3464: .4byte gUnknown_080F8E5C
_080A3468: .4byte _vt.11UnitTurnEnd
_080A346C: .4byte gUnknown_080F8E64
_080A3470: .4byte vt_09F57320
_080A3474: .4byte vt_09F57398

	thumb_func_start sub_080A3478
sub_080A3478: @ 0x080A3478
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A3530 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3534 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl get__13BattleManager
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3538 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A353C @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A3540 @ =gUnknown_080F8E5C
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
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3544 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3548 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A354C @ =vt_09F577D0
	str r0, [r5, #0x20]
	ldr r0, _080A3550 @ =vt_09F57848
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3530: .4byte _vt.14DefaultMonster.10UnitObject
_080A3534: .4byte _vt.14DefaultMonster
_080A3538: .4byte _vt.3Unk
_080A353C: .4byte _vt.13UnitTurnBegin
_080A3540: .4byte gUnknown_080F8E5C
_080A3544: .4byte _vt.11UnitTurnEnd
_080A3548: .4byte gUnknown_080F8E64
_080A354C: .4byte vt_09F577D0
_080A3550: .4byte vt_09F57848

	thumb_func_start sub_080A3554
sub_080A3554: @ 0x080A3554
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A35FC @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3600 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3604 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A3608 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A360C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3610 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3614 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3618 @ =vt_09F57C98
	str r0, [r5, #0x20]
	ldr r0, _080A361C @ =vt_09F57D10
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A35FC: .4byte _vt.14DefaultMonster.10UnitObject
_080A3600: .4byte _vt.14DefaultMonster
_080A3604: .4byte _vt.3Unk
_080A3608: .4byte _vt.13UnitTurnBegin
_080A360C: .4byte gUnknown_080F8E5C
_080A3610: .4byte _vt.11UnitTurnEnd
_080A3614: .4byte gUnknown_080F8E64
_080A3618: .4byte vt_09F57C98
_080A361C: .4byte vt_09F57D10

	thumb_func_start sub_080A3620
sub_080A3620: @ 0x080A3620
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A36C8 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A36CC @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A36D0 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A36D4 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A36D8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A36DC @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A36E0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A36E4 @ =vt_09F58148
	str r0, [r5, #0x20]
	ldr r0, _080A36E8 @ =vt_09F581C0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A36C8: .4byte _vt.14DefaultMonster.10UnitObject
_080A36CC: .4byte _vt.14DefaultMonster
_080A36D0: .4byte _vt.3Unk
_080A36D4: .4byte _vt.13UnitTurnBegin
_080A36D8: .4byte gUnknown_080F8E5C
_080A36DC: .4byte _vt.11UnitTurnEnd
_080A36E0: .4byte gUnknown_080F8E64
_080A36E4: .4byte vt_09F58148
_080A36E8: .4byte vt_09F581C0

	thumb_func_start sub_080A36EC
sub_080A36EC: @ 0x080A36EC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A3794 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3798 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A379C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A37A0 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A37A4 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A37A8 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A37AC @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A37B0 @ =vt_09F585F8
	str r0, [r5, #0x20]
	ldr r0, _080A37B4 @ =vt_09F58670
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3794: .4byte _vt.14DefaultMonster.10UnitObject
_080A3798: .4byte _vt.14DefaultMonster
_080A379C: .4byte _vt.3Unk
_080A37A0: .4byte _vt.13UnitTurnBegin
_080A37A4: .4byte gUnknown_080F8E5C
_080A37A8: .4byte _vt.11UnitTurnEnd
_080A37AC: .4byte gUnknown_080F8E64
_080A37B0: .4byte vt_09F585F8
_080A37B4: .4byte vt_09F58670

	thumb_func_start sub_080A37B8
sub_080A37B8: @ 0x080A37B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A3860 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3864 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3868 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A386C @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A3870 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3874 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3878 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A387C @ =vt_09F58AA8
	str r0, [r5, #0x20]
	ldr r0, _080A3880 @ =vt_09F58B20
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3860: .4byte _vt.14DefaultMonster.10UnitObject
_080A3864: .4byte _vt.14DefaultMonster
_080A3868: .4byte _vt.3Unk
_080A386C: .4byte _vt.13UnitTurnBegin
_080A3870: .4byte gUnknown_080F8E5C
_080A3874: .4byte _vt.11UnitTurnEnd
_080A3878: .4byte gUnknown_080F8E64
_080A387C: .4byte vt_09F58AA8
_080A3880: .4byte vt_09F58B20

	thumb_func_start sub_080A3884
sub_080A3884: @ 0x080A3884
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A392C @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3930 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3934 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A3938 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A393C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3940 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3944 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3948 @ =vt_09F58F60
	str r0, [r5, #0x20]
	ldr r0, _080A394C @ =vt_09F58FD8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A392C: .4byte _vt.14DefaultMonster.10UnitObject
_080A3930: .4byte _vt.14DefaultMonster
_080A3934: .4byte _vt.3Unk
_080A3938: .4byte _vt.13UnitTurnBegin
_080A393C: .4byte gUnknown_080F8E5C
_080A3940: .4byte _vt.11UnitTurnEnd
_080A3944: .4byte gUnknown_080F8E64
_080A3948: .4byte vt_09F58F60
_080A394C: .4byte vt_09F58FD8

	thumb_func_start sub_080A3950
sub_080A3950: @ 0x080A3950
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A3A14 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3A18 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3A1C @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A3A20 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A3A24 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3A28 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3A2C @ =gUnknown_080F8E64
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
	ldr r0, _080A3A30 @ =vt_09F59410
	str r0, [r5, #0x20]
	ldr r0, _080A3A34 @ =vt_09F59488
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x18
	bl unit_268__4UnitUi
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3A14: .4byte _vt.14DefaultMonster.10UnitObject
_080A3A18: .4byte _vt.14DefaultMonster
_080A3A1C: .4byte _vt.3Unk
_080A3A20: .4byte _vt.13UnitTurnBegin
_080A3A24: .4byte gUnknown_080F8E5C
_080A3A28: .4byte _vt.11UnitTurnEnd
_080A3A2C: .4byte gUnknown_080F8E64
_080A3A30: .4byte vt_09F59410
_080A3A34: .4byte vt_09F59488

	thumb_func_start sub_080A3A38
sub_080A3A38: @ 0x080A3A38
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A3AF4 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3AF8 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3AFC @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A3B00 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A3B04 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3B08 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3B0C @ =gUnknown_080F8E64
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
	ldr r0, _080A3B10 @ =vt_09F598E0
	str r0, [r5, #0x20]
	ldr r0, _080A3B14 @ =vt_09F59958
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3AF4: .4byte _vt.14DefaultMonster.10UnitObject
_080A3AF8: .4byte _vt.14DefaultMonster
_080A3AFC: .4byte _vt.3Unk
_080A3B00: .4byte _vt.13UnitTurnBegin
_080A3B04: .4byte gUnknown_080F8E5C
_080A3B08: .4byte _vt.11UnitTurnEnd
_080A3B0C: .4byte gUnknown_080F8E64
_080A3B10: .4byte vt_09F598E0
_080A3B14: .4byte vt_09F59958

	thumb_func_start sub_080A3B18
sub_080A3B18: @ 0x080A3B18
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A3BC0 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3BC4 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3BC8 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A3BCC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A3BD0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3BD4 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3BD8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3BDC @ =vt_09F59DA8
	str r0, [r5, #0x20]
	ldr r0, _080A3BE0 @ =vt_09F59E20
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3BC0: .4byte _vt.14DefaultMonster.10UnitObject
_080A3BC4: .4byte _vt.14DefaultMonster
_080A3BC8: .4byte _vt.3Unk
_080A3BCC: .4byte _vt.13UnitTurnBegin
_080A3BD0: .4byte gUnknown_080F8E5C
_080A3BD4: .4byte _vt.11UnitTurnEnd
_080A3BD8: .4byte gUnknown_080F8E64
_080A3BDC: .4byte vt_09F59DA8
_080A3BE0: .4byte vt_09F59E20

	thumb_func_start sub_080A3BE4
sub_080A3BE4: @ 0x080A3BE4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A3C8C @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3C90 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3C94 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A3C98 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A3C9C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3CA0 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3CA4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3CA8 @ =vt_09F5A258
	str r0, [r5, #0x20]
	ldr r0, _080A3CAC @ =vt_09F5A2D0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3C8C: .4byte _vt.14DefaultMonster.10UnitObject
_080A3C90: .4byte _vt.14DefaultMonster
_080A3C94: .4byte _vt.3Unk
_080A3C98: .4byte _vt.13UnitTurnBegin
_080A3C9C: .4byte gUnknown_080F8E5C
_080A3CA0: .4byte _vt.11UnitTurnEnd
_080A3CA4: .4byte gUnknown_080F8E64
_080A3CA8: .4byte vt_09F5A258
_080A3CAC: .4byte vt_09F5A2D0

	thumb_func_start sub_080A3CB0
sub_080A3CB0: @ 0x080A3CB0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A3D6C @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3D70 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3D74 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A3D78 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A3D7C @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3D80 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3D84 @ =gUnknown_080F8E64
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
	ldr r0, _080A3D88 @ =vt_09F5A708
	str r0, [r5, #0x20]
	ldr r0, _080A3D8C @ =vt_09F5A780
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3D6C: .4byte _vt.14DefaultMonster.10UnitObject
_080A3D70: .4byte _vt.14DefaultMonster
_080A3D74: .4byte _vt.3Unk
_080A3D78: .4byte _vt.13UnitTurnBegin
_080A3D7C: .4byte gUnknown_080F8E5C
_080A3D80: .4byte _vt.11UnitTurnEnd
_080A3D84: .4byte gUnknown_080F8E64
_080A3D88: .4byte vt_09F5A708
_080A3D8C: .4byte vt_09F5A780

	thumb_func_start sub_080A3D90
sub_080A3D90: @ 0x080A3D90
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A3E68 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3E6C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3E70 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A3E74 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A3E78 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3E7C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3E80 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3E84 @ =vt_09F5ABD0
	str r0, [r5, #0x20]
	ldr r0, _080A3E88 @ =vt_09F5AC48
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0x64
	rsbs r1, r1, #0
	str r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3E68: .4byte _vt.14DefaultMonster.10UnitObject
_080A3E6C: .4byte _vt.14DefaultMonster
_080A3E70: .4byte _vt.3Unk
_080A3E74: .4byte _vt.13UnitTurnBegin
_080A3E78: .4byte gUnknown_080F8E5C
_080A3E7C: .4byte _vt.11UnitTurnEnd
_080A3E80: .4byte gUnknown_080F8E64
_080A3E84: .4byte vt_09F5ABD0
_080A3E88: .4byte vt_09F5AC48

	thumb_func_start sub_080A3E8C
sub_080A3E8C: @ 0x080A3E8C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A3F3C @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A3F40 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3F44 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A3F48 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A3F4C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3F50 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A3F54 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3F58 @ =vt_09F5B088
	str r0, [r5, #0x20]
	ldr r0, _080A3F5C @ =vt_09F5B100
	str r0, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3F3C: .4byte _vt.14DefaultMonster.10UnitObject
_080A3F40: .4byte _vt.14DefaultMonster
_080A3F44: .4byte _vt.3Unk
_080A3F48: .4byte _vt.13UnitTurnBegin
_080A3F4C: .4byte gUnknown_080F8E5C
_080A3F50: .4byte _vt.11UnitTurnEnd
_080A3F54: .4byte gUnknown_080F8E64
_080A3F58: .4byte vt_09F5B088
_080A3F5C: .4byte vt_09F5B100

	thumb_func_start sub_080A3F60
sub_080A3F60: @ 0x080A3F60
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A4008 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A400C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4010 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A4014 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A4018 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A401C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4020 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4024 @ =vt_09F5B538
	str r0, [r5, #0x20]
	ldr r0, _080A4028 @ =vt_09F5B5B0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4008: .4byte _vt.14DefaultMonster.10UnitObject
_080A400C: .4byte _vt.14DefaultMonster
_080A4010: .4byte _vt.3Unk
_080A4014: .4byte _vt.13UnitTurnBegin
_080A4018: .4byte gUnknown_080F8E5C
_080A401C: .4byte _vt.11UnitTurnEnd
_080A4020: .4byte gUnknown_080F8E64
_080A4024: .4byte vt_09F5B538
_080A4028: .4byte vt_09F5B5B0

	thumb_func_start sub_080A402C
sub_080A402C: @ 0x080A402C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A40E8 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A40EC @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A40F0 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A40F4 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A40F8 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A40FC @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4100 @ =gUnknown_080F8E64
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
	ldr r0, _080A4104 @ =vt_09F5B9E8
	str r0, [r5, #0x20]
	ldr r0, _080A4108 @ =vt_09F5BA60
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A40E8: .4byte _vt.14DefaultMonster.10UnitObject
_080A40EC: .4byte _vt.14DefaultMonster
_080A40F0: .4byte _vt.3Unk
_080A40F4: .4byte _vt.13UnitTurnBegin
_080A40F8: .4byte gUnknown_080F8E5C
_080A40FC: .4byte _vt.11UnitTurnEnd
_080A4100: .4byte gUnknown_080F8E64
_080A4104: .4byte vt_09F5B9E8
_080A4108: .4byte vt_09F5BA60

	thumb_func_start sub_080A410C
sub_080A410C: @ 0x080A410C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A41D4 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r7, #0x20]
	ldr r0, _080A41D8 @ =_vt.14DefaultMonster
	str r0, [r7, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r6, #0
	strh r6, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r7, r2
	str r6, [r0]
	bl get__13BattleManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A41DC @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A41E0 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A41E4 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A41E8 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A41EC @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A41F0 @ =vt_09F5BEB8
	str r0, [r7, #0x20]
	ldr r0, _080A41F4 @ =vt_09F5BF30
	str r0, [r7, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #0x64
	rsbs r1, r1, #0
	str r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r7, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	str r1, [r0]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r7, r1
	str r6, [r0]
	adds r0, r7, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A41D4: .4byte _vt.14DefaultMonster.10UnitObject
_080A41D8: .4byte _vt.14DefaultMonster
_080A41DC: .4byte _vt.3Unk
_080A41E0: .4byte _vt.13UnitTurnBegin
_080A41E4: .4byte gUnknown_080F8E5C
_080A41E8: .4byte _vt.11UnitTurnEnd
_080A41EC: .4byte gUnknown_080F8E64
_080A41F0: .4byte vt_09F5BEB8
_080A41F4: .4byte vt_09F5BF30

	thumb_func_start sub_080A41F8
sub_080A41F8: @ 0x080A41F8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A42A0 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A42A4 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A42A8 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A42AC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A42B0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A42B4 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A42B8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A42BC @ =vt_09F5C368
	str r0, [r5, #0x20]
	ldr r0, _080A42C0 @ =vt_09F5C3E0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A42A0: .4byte _vt.14DefaultMonster.10UnitObject
_080A42A4: .4byte _vt.14DefaultMonster
_080A42A8: .4byte _vt.3Unk
_080A42AC: .4byte _vt.13UnitTurnBegin
_080A42B0: .4byte gUnknown_080F8E5C
_080A42B4: .4byte _vt.11UnitTurnEnd
_080A42B8: .4byte gUnknown_080F8E64
_080A42BC: .4byte vt_09F5C368
_080A42C0: .4byte vt_09F5C3E0

	thumb_func_start sub_080A42C4
sub_080A42C4: @ 0x080A42C4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A436C @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A4370 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4374 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A4378 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A437C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4380 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4384 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4388 @ =vt_09F5C818
	str r0, [r5, #0x20]
	ldr r0, _080A438C @ =vt_09F5C890
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A436C: .4byte _vt.14DefaultMonster.10UnitObject
_080A4370: .4byte _vt.14DefaultMonster
_080A4374: .4byte _vt.3Unk
_080A4378: .4byte _vt.13UnitTurnBegin
_080A437C: .4byte gUnknown_080F8E5C
_080A4380: .4byte _vt.11UnitTurnEnd
_080A4384: .4byte gUnknown_080F8E64
_080A4388: .4byte vt_09F5C818
_080A438C: .4byte vt_09F5C890

	thumb_func_start sub_080A4390
sub_080A4390: @ 0x080A4390
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A444C @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A4450 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4454 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A4458 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A445C @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4460 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4464 @ =gUnknown_080F8E64
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
	ldr r0, _080A4468 @ =vt_09F5CCC8
	str r0, [r5, #0x20]
	ldr r0, _080A446C @ =vt_09F5CD40
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A444C: .4byte _vt.14DefaultMonster.10UnitObject
_080A4450: .4byte _vt.14DefaultMonster
_080A4454: .4byte _vt.3Unk
_080A4458: .4byte _vt.13UnitTurnBegin
_080A445C: .4byte gUnknown_080F8E5C
_080A4460: .4byte _vt.11UnitTurnEnd
_080A4464: .4byte gUnknown_080F8E64
_080A4468: .4byte vt_09F5CCC8
_080A446C: .4byte vt_09F5CD40

	thumb_func_start sub_080A4470
sub_080A4470: @ 0x080A4470
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A4528 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A452C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl get__13BattleManager
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4530 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A4534 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A4538 @ =gUnknown_080F8E5C
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
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A453C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4540 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4544 @ =vt_09F5D190
	str r0, [r5, #0x20]
	ldr r0, _080A4548 @ =vt_09F5D208
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4528: .4byte _vt.14DefaultMonster.10UnitObject
_080A452C: .4byte _vt.14DefaultMonster
_080A4530: .4byte _vt.3Unk
_080A4534: .4byte _vt.13UnitTurnBegin
_080A4538: .4byte gUnknown_080F8E5C
_080A453C: .4byte _vt.11UnitTurnEnd
_080A4540: .4byte gUnknown_080F8E64
_080A4544: .4byte vt_09F5D190
_080A4548: .4byte vt_09F5D208

	thumb_func_start sub_080A454C
sub_080A454C: @ 0x080A454C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A45F4 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A45F8 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A45FC @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A4600 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A4604 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4608 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A460C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4610 @ =vt_09F5D640
	str r0, [r5, #0x20]
	ldr r0, _080A4614 @ =vt_09F5D6B8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A45F4: .4byte _vt.14DefaultMonster.10UnitObject
_080A45F8: .4byte _vt.14DefaultMonster
_080A45FC: .4byte _vt.3Unk
_080A4600: .4byte _vt.13UnitTurnBegin
_080A4604: .4byte gUnknown_080F8E5C
_080A4608: .4byte _vt.11UnitTurnEnd
_080A460C: .4byte gUnknown_080F8E64
_080A4610: .4byte vt_09F5D640
_080A4614: .4byte vt_09F5D6B8

	thumb_func_start sub_080A4618
sub_080A4618: @ 0x080A4618
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A46C0 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A46C4 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A46C8 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A46CC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A46D0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A46D4 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A46D8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A46DC @ =vt_09F5DAF0
	str r0, [r5, #0x20]
	ldr r0, _080A46E0 @ =vt_09F5DB68
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A46C0: .4byte _vt.14DefaultMonster.10UnitObject
_080A46C4: .4byte _vt.14DefaultMonster
_080A46C8: .4byte _vt.3Unk
_080A46CC: .4byte _vt.13UnitTurnBegin
_080A46D0: .4byte gUnknown_080F8E5C
_080A46D4: .4byte _vt.11UnitTurnEnd
_080A46D8: .4byte gUnknown_080F8E64
_080A46DC: .4byte vt_09F5DAF0
_080A46E0: .4byte vt_09F5DB68

	thumb_func_start sub_080A46E4
sub_080A46E4: @ 0x080A46E4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A478C @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A4790 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4794 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A4798 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A479C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A47A0 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A47A4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A47A8 @ =vt_09F5DFA0
	str r0, [r5, #0x20]
	ldr r0, _080A47AC @ =vt_09F5E018
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A478C: .4byte _vt.14DefaultMonster.10UnitObject
_080A4790: .4byte _vt.14DefaultMonster
_080A4794: .4byte _vt.3Unk
_080A4798: .4byte _vt.13UnitTurnBegin
_080A479C: .4byte gUnknown_080F8E5C
_080A47A0: .4byte _vt.11UnitTurnEnd
_080A47A4: .4byte gUnknown_080F8E64
_080A47A8: .4byte vt_09F5DFA0
_080A47AC: .4byte vt_09F5E018

	thumb_func_start sub_080A47B0
sub_080A47B0: @ 0x080A47B0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A4858 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A485C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4860 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A4864 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A4868 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A486C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4870 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4874 @ =vt_09F5E450
	str r0, [r5, #0x20]
	ldr r0, _080A4878 @ =vt_09F5E4C8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4858: .4byte _vt.14DefaultMonster.10UnitObject
_080A485C: .4byte _vt.14DefaultMonster
_080A4860: .4byte _vt.3Unk
_080A4864: .4byte _vt.13UnitTurnBegin
_080A4868: .4byte gUnknown_080F8E5C
_080A486C: .4byte _vt.11UnitTurnEnd
_080A4870: .4byte gUnknown_080F8E64
_080A4874: .4byte vt_09F5E450
_080A4878: .4byte vt_09F5E4C8

	thumb_func_start sub_080A487C
sub_080A487C: @ 0x080A487C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A4938 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A493C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4940 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A4944 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A4948 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A494C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4950 @ =gUnknown_080F8E64
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
	ldr r0, _080A4954 @ =vt_09F5E900
	str r0, [r5, #0x20]
	ldr r0, _080A4958 @ =vt_09F5E978
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4938: .4byte _vt.14DefaultMonster.10UnitObject
_080A493C: .4byte _vt.14DefaultMonster
_080A4940: .4byte _vt.3Unk
_080A4944: .4byte _vt.13UnitTurnBegin
_080A4948: .4byte gUnknown_080F8E5C
_080A494C: .4byte _vt.11UnitTurnEnd
_080A4950: .4byte gUnknown_080F8E64
_080A4954: .4byte vt_09F5E900
_080A4958: .4byte vt_09F5E978

	thumb_func_start sub_080A495C
sub_080A495C: @ 0x080A495C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A4A04 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A4A08 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4A0C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A4A10 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A4A14 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4A18 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4A1C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4A20 @ =vt_09F5EDC8
	str r0, [r5, #0x20]
	ldr r0, _080A4A24 @ =vt_09F5EE40
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4A04: .4byte _vt.14DefaultMonster.10UnitObject
_080A4A08: .4byte _vt.14DefaultMonster
_080A4A0C: .4byte _vt.3Unk
_080A4A10: .4byte _vt.13UnitTurnBegin
_080A4A14: .4byte gUnknown_080F8E5C
_080A4A18: .4byte _vt.11UnitTurnEnd
_080A4A1C: .4byte gUnknown_080F8E64
_080A4A20: .4byte vt_09F5EDC8
_080A4A24: .4byte vt_09F5EE40

	thumb_func_start sub_080A4A28
sub_080A4A28: @ 0x080A4A28
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A4AE4 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A4AE8 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4AEC @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A4AF0 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A4AF4 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4AF8 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4AFC @ =gUnknown_080F8E64
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
	ldr r0, _080A4B00 @ =vt_09F5F278
	str r0, [r5, #0x20]
	ldr r0, _080A4B04 @ =vt_09F5F2F0
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4AE4: .4byte _vt.14DefaultMonster.10UnitObject
_080A4AE8: .4byte _vt.14DefaultMonster
_080A4AEC: .4byte _vt.3Unk
_080A4AF0: .4byte _vt.13UnitTurnBegin
_080A4AF4: .4byte gUnknown_080F8E5C
_080A4AF8: .4byte _vt.11UnitTurnEnd
_080A4AFC: .4byte gUnknown_080F8E64
_080A4B00: .4byte vt_09F5F278
_080A4B04: .4byte vt_09F5F2F0

	thumb_func_start sub_080A4B08
sub_080A4B08: @ 0x080A4B08
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A4BC0 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A4BC4 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl get__13BattleManager
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4BC8 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A4BCC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A4BD0 @ =gUnknown_080F8E5C
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
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4BD4 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4BD8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4BDC @ =vt_09F5F740
	str r0, [r5, #0x20]
	ldr r0, _080A4BE0 @ =vt_09F5F7B8
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4BC0: .4byte _vt.14DefaultMonster.10UnitObject
_080A4BC4: .4byte _vt.14DefaultMonster
_080A4BC8: .4byte _vt.3Unk
_080A4BCC: .4byte _vt.13UnitTurnBegin
_080A4BD0: .4byte gUnknown_080F8E5C
_080A4BD4: .4byte _vt.11UnitTurnEnd
_080A4BD8: .4byte gUnknown_080F8E64
_080A4BDC: .4byte vt_09F5F740
_080A4BE0: .4byte vt_09F5F7B8

	thumb_func_start sub_080A4BE4
sub_080A4BE4: @ 0x080A4BE4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A4CA0 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A4CA4 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4CA8 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A4CAC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A4CB0 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4CB4 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4CB8 @ =gUnknown_080F8E64
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
	ldr r0, _080A4CBC @ =vt_09F5FBF0
	str r0, [r5, #0x20]
	ldr r0, _080A4CC0 @ =vt_09F5FC68
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4CA0: .4byte _vt.14DefaultMonster.10UnitObject
_080A4CA4: .4byte _vt.14DefaultMonster
_080A4CA8: .4byte _vt.3Unk
_080A4CAC: .4byte _vt.13UnitTurnBegin
_080A4CB0: .4byte gUnknown_080F8E5C
_080A4CB4: .4byte _vt.11UnitTurnEnd
_080A4CB8: .4byte gUnknown_080F8E64
_080A4CBC: .4byte vt_09F5FBF0
_080A4CC0: .4byte vt_09F5FC68

	thumb_func_start sub_080A4CC4
sub_080A4CC4: @ 0x080A4CC4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A4D6C @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A4D70 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4D74 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A4D78 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A4D7C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4D80 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4D84 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4D88 @ =vt_09F600A0
	str r0, [r5, #0x20]
	ldr r0, _080A4D8C @ =vt_09F60118
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4D6C: .4byte _vt.14DefaultMonster.10UnitObject
_080A4D70: .4byte _vt.14DefaultMonster
_080A4D74: .4byte _vt.3Unk
_080A4D78: .4byte _vt.13UnitTurnBegin
_080A4D7C: .4byte gUnknown_080F8E5C
_080A4D80: .4byte _vt.11UnitTurnEnd
_080A4D84: .4byte gUnknown_080F8E64
_080A4D88: .4byte vt_09F600A0
_080A4D8C: .4byte vt_09F60118

	thumb_func_start sub_080A4D90
sub_080A4D90: @ 0x080A4D90
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A4E4C @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A4E50 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4E54 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A4E58 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A4E5C @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4E60 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4E64 @ =gUnknown_080F8E64
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
	ldr r0, _080A4E68 @ =vt_09F60550
	str r0, [r5, #0x20]
	ldr r0, _080A4E6C @ =vt_09F605C8
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4E4C: .4byte _vt.14DefaultMonster.10UnitObject
_080A4E50: .4byte _vt.14DefaultMonster
_080A4E54: .4byte _vt.3Unk
_080A4E58: .4byte _vt.13UnitTurnBegin
_080A4E5C: .4byte gUnknown_080F8E5C
_080A4E60: .4byte _vt.11UnitTurnEnd
_080A4E64: .4byte gUnknown_080F8E64
_080A4E68: .4byte vt_09F60550
_080A4E6C: .4byte vt_09F605C8

	thumb_func_start sub_080A4E70
sub_080A4E70: @ 0x080A4E70
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A4F18 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A4F1C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4F20 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A4F24 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A4F28 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4F2C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A4F30 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4F34 @ =vt_09F60A00
	str r0, [r5, #0x20]
	ldr r0, _080A4F38 @ =vt_09F60A78
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4F18: .4byte _vt.14DefaultMonster.10UnitObject
_080A4F1C: .4byte _vt.14DefaultMonster
_080A4F20: .4byte _vt.3Unk
_080A4F24: .4byte _vt.13UnitTurnBegin
_080A4F28: .4byte gUnknown_080F8E5C
_080A4F2C: .4byte _vt.11UnitTurnEnd
_080A4F30: .4byte gUnknown_080F8E64
_080A4F34: .4byte vt_09F60A00
_080A4F38: .4byte vt_09F60A78

	thumb_func_start sub_080A4F3C
sub_080A4F3C: @ 0x080A4F3C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A4FF8 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A4FFC @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5000 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A5004 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A5008 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A500C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A5010 @ =gUnknown_080F8E64
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
	ldr r0, _080A5014 @ =vt_09F60EB0
	str r0, [r5, #0x20]
	ldr r0, _080A5018 @ =vt_09F60F28
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4FF8: .4byte _vt.14DefaultMonster.10UnitObject
_080A4FFC: .4byte _vt.14DefaultMonster
_080A5000: .4byte _vt.3Unk
_080A5004: .4byte _vt.13UnitTurnBegin
_080A5008: .4byte gUnknown_080F8E5C
_080A500C: .4byte _vt.11UnitTurnEnd
_080A5010: .4byte gUnknown_080F8E64
_080A5014: .4byte vt_09F60EB0
_080A5018: .4byte vt_09F60F28

	thumb_func_start sub_080A501C
sub_080A501C: @ 0x080A501C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A50D8 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A50DC @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A50E0 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A50E4 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A50E8 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A50EC @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A50F0 @ =gUnknown_080F8E64
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
	ldr r0, _080A50F4 @ =vt_09F61380
	str r0, [r5, #0x20]
	ldr r0, _080A50F8 @ =vt_09F613F8
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A50D8: .4byte _vt.14DefaultMonster.10UnitObject
_080A50DC: .4byte _vt.14DefaultMonster
_080A50E0: .4byte _vt.3Unk
_080A50E4: .4byte _vt.13UnitTurnBegin
_080A50E8: .4byte gUnknown_080F8E5C
_080A50EC: .4byte _vt.11UnitTurnEnd
_080A50F0: .4byte gUnknown_080F8E64
_080A50F4: .4byte vt_09F61380
_080A50F8: .4byte vt_09F613F8

	thumb_func_start sub_080A50FC
sub_080A50FC: @ 0x080A50FC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A51B8 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A51BC @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl get__13BattleManager
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A51C0 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A51C4 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A51C8 @ =gUnknown_080F8E5C
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
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A51CC @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A51D0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A51D4 @ =vt_09F61850
	str r0, [r5, #0x20]
	ldr r0, _080A51D8 @ =vt_09F618C8
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A51B8: .4byte _vt.14DefaultMonster.10UnitObject
_080A51BC: .4byte _vt.14DefaultMonster
_080A51C0: .4byte _vt.3Unk
_080A51C4: .4byte _vt.13UnitTurnBegin
_080A51C8: .4byte gUnknown_080F8E5C
_080A51CC: .4byte _vt.11UnitTurnEnd
_080A51D0: .4byte gUnknown_080F8E64
_080A51D4: .4byte vt_09F61850
_080A51D8: .4byte vt_09F618C8

	thumb_func_start sub_080A51DC
sub_080A51DC: @ 0x080A51DC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A5298 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A529C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl get__13BattleManager
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A52A0 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A52A4 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A52A8 @ =gUnknown_080F8E5C
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
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A52AC @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A52B0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A52B4 @ =vt_09F61D18
	str r0, [r5, #0x20]
	ldr r0, _080A52B8 @ =vt_09F61D90
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5298: .4byte _vt.14DefaultMonster.10UnitObject
_080A529C: .4byte _vt.14DefaultMonster
_080A52A0: .4byte _vt.3Unk
_080A52A4: .4byte _vt.13UnitTurnBegin
_080A52A8: .4byte gUnknown_080F8E5C
_080A52AC: .4byte _vt.11UnitTurnEnd
_080A52B0: .4byte gUnknown_080F8E64
_080A52B4: .4byte vt_09F61D18
_080A52B8: .4byte vt_09F61D90

	thumb_func_start sub_080A52BC
sub_080A52BC: @ 0x080A52BC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A5378 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A537C @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5380 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A5384 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A5388 @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A538C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A5390 @ =gUnknown_080F8E64
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
	ldr r0, _080A5394 @ =vt_09F621C8
	str r0, [r5, #0x20]
	ldr r0, _080A5398 @ =vt_09F62240
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5378: .4byte _vt.14DefaultMonster.10UnitObject
_080A537C: .4byte _vt.14DefaultMonster
_080A5380: .4byte _vt.3Unk
_080A5384: .4byte _vt.13UnitTurnBegin
_080A5388: .4byte gUnknown_080F8E5C
_080A538C: .4byte _vt.11UnitTurnEnd
_080A5390: .4byte gUnknown_080F8E64
_080A5394: .4byte vt_09F621C8
_080A5398: .4byte vt_09F62240

	thumb_func_start sub_080A539C
sub_080A539C: @ 0x080A539C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A5444 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A5448 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A544C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A5450 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A5454 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5458 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A545C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A5460 @ =vt_09F62678
	str r0, [r5, #0x20]
	ldr r0, _080A5464 @ =vt_09F626F0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5444: .4byte _vt.14DefaultMonster.10UnitObject
_080A5448: .4byte _vt.14DefaultMonster
_080A544C: .4byte _vt.3Unk
_080A5450: .4byte _vt.13UnitTurnBegin
_080A5454: .4byte gUnknown_080F8E5C
_080A5458: .4byte _vt.11UnitTurnEnd
_080A545C: .4byte gUnknown_080F8E64
_080A5460: .4byte vt_09F62678
_080A5464: .4byte vt_09F626F0

	thumb_func_start sub_080A5468
sub_080A5468: @ 0x080A5468
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A5510 @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A5514 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5518 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A551C @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A5520 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5524 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A5528 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A552C @ =vt_09F62B28
	str r0, [r5, #0x20]
	ldr r0, _080A5530 @ =vt_09F62BA0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5510: .4byte _vt.14DefaultMonster.10UnitObject
_080A5514: .4byte _vt.14DefaultMonster
_080A5518: .4byte _vt.3Unk
_080A551C: .4byte _vt.13UnitTurnBegin
_080A5520: .4byte gUnknown_080F8E5C
_080A5524: .4byte _vt.11UnitTurnEnd
_080A5528: .4byte gUnknown_080F8E64
_080A552C: .4byte vt_09F62B28
_080A5530: .4byte vt_09F62BA0

	thumb_func_start sub_080A5534
sub_080A5534: @ 0x080A5534
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A55DC @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A55E0 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A55E4 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A55E8 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A55EC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A55F0 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A55F4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A55F8 @ =vt_09F62FD8
	str r0, [r5, #0x20]
	ldr r0, _080A55FC @ =vt_09F63050
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A55DC: .4byte _vt.14DefaultMonster.10UnitObject
_080A55E0: .4byte _vt.14DefaultMonster
_080A55E4: .4byte _vt.3Unk
_080A55E8: .4byte _vt.13UnitTurnBegin
_080A55EC: .4byte gUnknown_080F8E5C
_080A55F0: .4byte _vt.11UnitTurnEnd
_080A55F4: .4byte gUnknown_080F8E64
_080A55F8: .4byte vt_09F62FD8
_080A55FC: .4byte vt_09F63050

	thumb_func_start sub_080A5600
sub_080A5600: @ 0x080A5600
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A56BC @ =_vt.14DefaultMonster.10UnitObject
	str r0, [r5, #0x20]
	ldr r0, _080A56C0 @ =_vt.14DefaultMonster
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A56C4 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A56C8 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A56CC @ =gUnknown_080F8E5C
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A56D0 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A56D4 @ =gUnknown_080F8E64
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
	ldr r0, _080A56D8 @ =vt_09F63488
	str r0, [r5, #0x20]
	ldr r0, _080A56DC @ =vt_09F63500
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A56BC: .4byte _vt.14DefaultMonster.10UnitObject
_080A56C0: .4byte _vt.14DefaultMonster
_080A56C4: .4byte _vt.3Unk
_080A56C8: .4byte _vt.13UnitTurnBegin
_080A56CC: .4byte gUnknown_080F8E5C
_080A56D0: .4byte _vt.11UnitTurnEnd
_080A56D4: .4byte gUnknown_080F8E64
_080A56D8: .4byte vt_09F63488
_080A56DC: .4byte vt_09F63500

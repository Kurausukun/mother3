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
	bl sub_08061E4C
	ldr r0, _080A02A0 @ =0x09F4D280
	str r0, [r5, #0x20]
	ldr r0, _080A02A4 @ =0x09F4D2F8
	str r0, [r5, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A02A8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A02AC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A02B0 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A02B4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A02B8 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
_080A02A0: .4byte 0x09F4D280
_080A02A4: .4byte 0x09F4D2F8
_080A02A8: .4byte 0x09F44FF0
_080A02AC: .4byte 0x09F454B0
_080A02B0: .4byte gUnknown_080F741C
_080A02B4: .4byte 0x09F45430
_080A02B8: .4byte gUnknown_080F7424

	thumb_func_start sub_080A02BC
sub_080A02BC: @ 0x080A02BC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
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
	ldr r2, _080A02F8 @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A02FC @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A02F8: .4byte 0x09F4D280
_080A02FC: .4byte 0x09F4D2F8

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
	bl sub_08070660
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
	bl sub_08069454
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
	bl sub_08069454
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
	bl sub_08070660
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
	bl sub_080620DC
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
	ldr r2, _080A04C4 @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A04C8 @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A04C4: .4byte 0x09F4D280
_080A04C8: .4byte 0x09F4D2F8

	thumb_func_start sub_080A04CC
sub_080A04CC: @ 0x080A04CC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl unit_70__C4UnitP4Unit
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
	bl sub_08070660
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
	bl sub_08072628
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A06C4
	movs r0, #0
	bl sub_08072EC4
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
	bl sub_08070660
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
	bl sub_08070660
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
	ldr r2, _080A0750 @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A0754 @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A0750: .4byte 0x09F4D280
_080A0754: .4byte 0x09F4D2F8

	thumb_func_start sub_080A0758
sub_080A0758: @ 0x080A0758
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl unit_70__C4UnitP4Unit
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
	bl sub_08070660
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
	bl sub_08069454
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
	ldr r2, _080A092C @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A0930 @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A092C: .4byte 0x09F4D280
_080A0930: .4byte 0x09F4D2F8

	thumb_func_start sub_080A0934
sub_080A0934: @ 0x080A0934
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
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
	ldr r2, _080A0970 @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A0974 @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A0970: .4byte 0x09F4D280
_080A0974: .4byte 0x09F4D2F8

	thumb_func_start sub_080A0978
sub_080A0978: @ 0x080A0978
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
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
	ldr r2, _080A09BC @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A09C0 @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A09BC: .4byte 0x09F4D280
_080A09C0: .4byte 0x09F4D2F8

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
	bl unit_70__C4UnitP4Unit
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
	ldr r2, _080A0A20 @ =0x09F4D280
	str r2, [r0, #0x20]
	ldr r2, _080A0A24 @ =0x09F4D2F8
	str r2, [r0, #0x1c]
	bl sub_08062034
	pop {r0}
	bx r0
	.align 2, 0
_080A0A20: .4byte 0x09F4D280
_080A0A24: .4byte 0x09F4D2F8

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
	bl sub_080807AC
	ldr r0, _080A0AE0 @ =0x09F4D600
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0AE0: .4byte 0x09F4D600

	thumb_func_start sub_080A0AE4
sub_080A0AE4: @ 0x080A0AE4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080807AC
	ldr r0, _080A0AFC @ =0x09F4D8A0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0AFC: .4byte 0x09F4D8A0

	thumb_func_start sub_080A0B00
sub_080A0B00: @ 0x080A0B00
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080807AC
	ldr r0, _080A0B18 @ =0x09F4DB40
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B18: .4byte 0x09F4DB40

	thumb_func_start sub_080A0B1C
sub_080A0B1C: @ 0x080A0B1C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080807AC
	ldr r0, _080A0B34 @ =0x09F4DDE0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B34: .4byte 0x09F4DDE0

	thumb_func_start sub_080A0B38
sub_080A0B38: @ 0x080A0B38
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080807AC
	ldr r0, _080A0B50 @ =0x09F4E080
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B50: .4byte 0x09F4E080

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
	bl sub_08070660
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
	ldr r2, _080A0BA0 @ =0x09F4E080
	str r2, [r0, #0x1c]
	bl sub_080807DC
	pop {r0}
	bx r0
	.align 2, 0
_080A0BA0: .4byte 0x09F4E080

	thumb_func_start sub_080A0BA4
sub_080A0BA4: @ 0x080A0BA4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	movs r1, #5
	bl sub_08072D84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A0BC4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08078BB0
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
	ldr r2, _080A0BDC @ =0x09F4E080
	str r2, [r0, #0x1c]
	bl sub_080807DC
	pop {r0}
	bx r0
	.align 2, 0
_080A0BDC: .4byte 0x09F4E080

	thumb_func_start sub_080A0BE0
sub_080A0BE0: @ 0x080A0BE0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_08078D4C
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
	ldr r2, _080A0C28 @ =0x09F4E080
	str r2, [r0, #0x1c]
	bl sub_080807DC
	pop {r0}
	bx r0
	.align 2, 0
_080A0C28: .4byte 0x09F4E080

	thumb_func_start sub_080A0C2C
sub_080A0C2C: @ 0x080A0C2C
	push {r4, r5, r6, lr}
	sub sp, #0x3c
	adds r6, r0, #0
	adds r5, r1, #0
	add r0, sp, #4
	movs r1, #0xbf
	bl sub_0806FF6C
	add r0, sp, #4
	movs r1, #0
	bl sub_08070048
	movs r0, #0xb8
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08073198
	movs r0, #0x48
	bl sub_0807068C
	add r0, sp, #4
	movs r1, #0
	bl sub_0807014C
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08078D4C
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
	bl sub_0806FFA8
	add sp, #0x3c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A0D34
sub_080A0D34: @ 0x080A0D34
	push {lr}
	ldr r2, _080A0D44 @ =0x09F4E080
	str r2, [r0, #0x1c]
	bl sub_080807DC
	pop {r0}
	bx r0
	.align 2, 0
_080A0D44: .4byte 0x09F4E080

	thumb_func_start sub_080A0D48
sub_080A0D48: @ 0x080A0D48
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08080968
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
	ldr r2, _080A0DE0 @ =0x09F4E080
	str r2, [r0, #0x1c]
	bl sub_080807DC
	pop {r0}
	bx r0
	.align 2, 0
_080A0DE0: .4byte 0x09F4E080

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
	bl sub_080A56E0
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
	bl sub_080A57DC
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
	bl sub_080A58A8
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
	bl sub_08080A24
	ldr r0, _080A1978 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A197C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1980 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A1984 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1988 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A198C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1990 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1994 @ =0x09F4E490
	str r0, [r5, #0x20]
	ldr r0, _080A1998 @ =0x09F4E508
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1978: .4byte 0x09F642A0
_080A197C: .4byte 0x09F64318
_080A1980: .4byte 0x09F44FF0
_080A1984: .4byte 0x09F454B0
_080A1988: .4byte gUnknown_080F8E5C
_080A198C: .4byte 0x09F45430
_080A1990: .4byte gUnknown_080F8E64
_080A1994: .4byte 0x09F4E490
_080A1998: .4byte 0x09F4E508

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
	bl sub_08080A24
	ldr r0, _080A1AA0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A1AA4 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1AA8 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A1AAC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1AB0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1AB4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1AB8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1ABC @ =0x09F4E940
	str r0, [r5, #0x20]
	ldr r0, _080A1AC0 @ =0x09F4E9B8
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
_080A1AA0: .4byte 0x09F642A0
_080A1AA4: .4byte 0x09F64318
_080A1AA8: .4byte 0x09F44FF0
_080A1AAC: .4byte 0x09F454B0
_080A1AB0: .4byte gUnknown_080F8E5C
_080A1AB4: .4byte 0x09F45430
_080A1AB8: .4byte gUnknown_080F8E64
_080A1ABC: .4byte 0x09F4E940
_080A1AC0: .4byte 0x09F4E9B8

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
	bl sub_08080A24
	ldr r0, _080A1B74 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A1B78 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1B7C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A1B80 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1B84 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1B88 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1B8C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1B90 @ =0x09F4EE30
	str r0, [r5, #0x20]
	ldr r0, _080A1B94 @ =0x09F4EEA8
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
_080A1B74: .4byte 0x09F642A0
_080A1B78: .4byte 0x09F64318
_080A1B7C: .4byte 0x09F44FF0
_080A1B80: .4byte 0x09F454B0
_080A1B84: .4byte gUnknown_080F8E5C
_080A1B88: .4byte 0x09F45430
_080A1B8C: .4byte gUnknown_080F8E64
_080A1B90: .4byte 0x09F4EE30
_080A1B94: .4byte 0x09F4EEA8

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
	bl sub_08080A24
	ldr r0, _080A1C70 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A1C74 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1C78 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A1C7C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1C80 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1C84 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1C88 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1C8C @ =0x09F4F2E0
	str r0, [r5, #0x20]
	ldr r0, _080A1C90 @ =0x09F4F358
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
_080A1C70: .4byte 0x09F642A0
_080A1C74: .4byte 0x09F64318
_080A1C78: .4byte 0x09F44FF0
_080A1C7C: .4byte 0x09F454B0
_080A1C80: .4byte gUnknown_080F8E5C
_080A1C84: .4byte 0x09F45430
_080A1C88: .4byte gUnknown_080F8E64
_080A1C8C: .4byte 0x09F4F2E0
_080A1C90: .4byte 0x09F4F358

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
	bl sub_08080A24
	ldr r0, _080A1D90 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A1D94 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1D98 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A1D9C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1DA0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1DA4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1DA8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1DAC @ =0x09F4F810
	str r0, [r5, #0x20]
	ldr r0, _080A1DB0 @ =0x09F4F888
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	movs r0, #2
	movs r1, #3
	bl sub_08070660
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
_080A1D90: .4byte 0x09F642A0
_080A1D94: .4byte 0x09F64318
_080A1D98: .4byte 0x09F44FF0
_080A1D9C: .4byte 0x09F454B0
_080A1DA0: .4byte gUnknown_080F8E5C
_080A1DA4: .4byte 0x09F45430
_080A1DA8: .4byte gUnknown_080F8E64
_080A1DAC: .4byte 0x09F4F810
_080A1DB0: .4byte 0x09F4F888

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
	bl sub_08080A24
	ldr r0, _080A1EB0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A1EB4 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1EB8 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A1EBC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1EC0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1EC4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1EC8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1ECC @ =0x09F4FCD8
	str r0, [r5, #0x20]
	ldr r0, _080A1ED0 @ =0x09F4FD50
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	movs r0, #2
	movs r1, #3
	bl sub_08070660
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
_080A1EB0: .4byte 0x09F642A0
_080A1EB4: .4byte 0x09F64318
_080A1EB8: .4byte 0x09F44FF0
_080A1EBC: .4byte 0x09F454B0
_080A1EC0: .4byte gUnknown_080F8E5C
_080A1EC4: .4byte 0x09F45430
_080A1EC8: .4byte gUnknown_080F8E64
_080A1ECC: .4byte 0x09F4FCD8
_080A1ED0: .4byte 0x09F4FD50

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
	bl sub_08080A24
	ldr r0, _080A1F9C @ =0x09F642A0
	str r0, [r7, #0x20]
	ldr r0, _080A1FA0 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1FA4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A1FA8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A1FAC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1FB0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A1FB4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1FB8 @ =0x09F501A0
	str r0, [r7, #0x20]
	ldr r0, _080A1FBC @ =0x09F50218
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
_080A1F9C: .4byte 0x09F642A0
_080A1FA0: .4byte 0x09F64318
_080A1FA4: .4byte 0x09F44FF0
_080A1FA8: .4byte 0x09F454B0
_080A1FAC: .4byte gUnknown_080F8E5C
_080A1FB0: .4byte 0x09F45430
_080A1FB4: .4byte gUnknown_080F8E64
_080A1FB8: .4byte 0x09F501A0
_080A1FBC: .4byte 0x09F50218

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
	bl sub_08080A24
	ldr r0, _080A2094 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2098 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A209C @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A20A0 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A20A4 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A20A8 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A20AC @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A20B0 @ =0x09F50690
	str r0, [r5, #0x20]
	ldr r0, _080A20B4 @ =0x09F50708
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
_080A2094: .4byte 0x09F642A0
_080A2098: .4byte 0x09F64318
_080A209C: .4byte 0x09F44FF0
_080A20A0: .4byte 0x09F454B0
_080A20A4: .4byte gUnknown_080F8E5C
_080A20A8: .4byte 0x09F45430
_080A20AC: .4byte gUnknown_080F8E64
_080A20B0: .4byte 0x09F50690
_080A20B4: .4byte 0x09F50708

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
	bl sub_08080A24
	ldr r0, _080A2168 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A216C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2170 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2174 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2178 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A217C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2180 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2184 @ =0x09F50B40
	str r0, [r5, #0x20]
	ldr r0, _080A2188 @ =0x09F50BB8
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
_080A2168: .4byte 0x09F642A0
_080A216C: .4byte 0x09F64318
_080A2170: .4byte 0x09F44FF0
_080A2174: .4byte 0x09F454B0
_080A2178: .4byte gUnknown_080F8E5C
_080A217C: .4byte 0x09F45430
_080A2180: .4byte gUnknown_080F8E64
_080A2184: .4byte 0x09F50B40
_080A2188: .4byte 0x09F50BB8

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
	bl sub_08080A24
	ldr r0, _080A2248 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A224C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2250 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A2254 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2258 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A225C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2260 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2264 @ =0x09F50FF8
	str r0, [r5, #0x20]
	ldr r0, _080A2268 @ =0x09F51070
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
_080A2248: .4byte 0x09F642A0
_080A224C: .4byte 0x09F64318
_080A2250: .4byte 0x09F44FF0
_080A2254: .4byte 0x09F454B0
_080A2258: .4byte gUnknown_080F8E5C
_080A225C: .4byte 0x09F45430
_080A2260: .4byte gUnknown_080F8E64
_080A2264: .4byte 0x09F50FF8
_080A2268: .4byte 0x09F51070

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
	bl sub_08080A24
	ldr r0, _080A2328 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A232C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2330 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A2334 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2338 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A233C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2340 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2344 @ =0x09F514A8
	str r0, [r5, #0x20]
	ldr r0, _080A2348 @ =0x09F51520
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
_080A2328: .4byte 0x09F642A0
_080A232C: .4byte 0x09F64318
_080A2330: .4byte 0x09F44FF0
_080A2334: .4byte 0x09F454B0
_080A2338: .4byte gUnknown_080F8E5C
_080A233C: .4byte 0x09F45430
_080A2340: .4byte gUnknown_080F8E64
_080A2344: .4byte 0x09F514A8
_080A2348: .4byte 0x09F51520

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
	bl sub_08080A24
	ldr r0, _080A243C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2440 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r2, _080A2444 @ =0x09F44FF0
	mov sb, r2
	ldr r0, _080A2448 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A244C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2450 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2454 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2458 @ =0x09F51958
	str r0, [r5, #0x20]
	ldr r0, _080A245C @ =0x09F519D0
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
_080A243C: .4byte 0x09F642A0
_080A2440: .4byte 0x09F64318
_080A2444: .4byte 0x09F44FF0
_080A2448: .4byte 0x09F454B0
_080A244C: .4byte gUnknown_080F8E5C
_080A2450: .4byte 0x09F45430
_080A2454: .4byte gUnknown_080F8E64
_080A2458: .4byte 0x09F51958
_080A245C: .4byte 0x09F519D0

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
	bl sub_08080A24
	ldr r0, _080A2544 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2548 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A254C @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A2550 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2554 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2558 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A255C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2560 @ =0x09F51E28
	str r0, [r5, #0x20]
	ldr r0, _080A2564 @ =0x09F51EA0
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
_080A2544: .4byte 0x09F642A0
_080A2548: .4byte 0x09F64318
_080A254C: .4byte 0x09F44FF0
_080A2550: .4byte 0x09F454B0
_080A2554: .4byte gUnknown_080F8E5C
_080A2558: .4byte 0x09F45430
_080A255C: .4byte gUnknown_080F8E64
_080A2560: .4byte 0x09F51E28
_080A2564: .4byte 0x09F51EA0

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
	bl sub_08080A24
	ldr r0, _080A2624 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2628 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A262C @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A2630 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2634 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2638 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A263C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2640 @ =0x09F522E0
	str r0, [r5, #0x20]
	ldr r0, _080A2644 @ =0x09F52358
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
_080A2624: .4byte 0x09F642A0
_080A2628: .4byte 0x09F64318
_080A262C: .4byte 0x09F44FF0
_080A2630: .4byte 0x09F454B0
_080A2634: .4byte gUnknown_080F8E5C
_080A2638: .4byte 0x09F45430
_080A263C: .4byte gUnknown_080F8E64
_080A2640: .4byte 0x09F522E0
_080A2644: .4byte 0x09F52358

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
	bl sub_08080A24
	ldr r0, _080A26F0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A26F4 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A26F8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A26FC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2700 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2704 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2708 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A270C @ =0x09F527C0
	str r0, [r5, #0x20]
	ldr r0, _080A2710 @ =0x09F52838
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A26F0: .4byte 0x09F642A0
_080A26F4: .4byte 0x09F64318
_080A26F8: .4byte 0x09F44FF0
_080A26FC: .4byte 0x09F454B0
_080A2700: .4byte gUnknown_080F8E5C
_080A2704: .4byte 0x09F45430
_080A2708: .4byte gUnknown_080F8E64
_080A270C: .4byte 0x09F527C0
_080A2710: .4byte 0x09F52838

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
	bl sub_08080A24
	ldr r0, _080A2824 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2828 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r2, _080A282C @ =0x09F44FF0
	mov sb, r2
	ldr r0, _080A2830 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2834 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2838 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A283C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2840 @ =0x09F52C70
	str r0, [r5, #0x20]
	ldr r0, _080A2844 @ =0x09F52CE8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	movs r1, #1
	bl unit_1f0__C4UnitUi
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	bl unit_1f0__C4UnitUi
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #3
	bl unit_1f0__C4UnitUi
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
_080A2824: .4byte 0x09F642A0
_080A2828: .4byte 0x09F64318
_080A282C: .4byte 0x09F44FF0
_080A2830: .4byte 0x09F454B0
_080A2834: .4byte gUnknown_080F8E5C
_080A2838: .4byte 0x09F45430
_080A283C: .4byte gUnknown_080F8E64
_080A2840: .4byte 0x09F52C70
_080A2844: .4byte 0x09F52CE8

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
	bl sub_08080A24
	ldr r0, _080A28F0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A28F4 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A28F8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A28FC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2900 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2904 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2908 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A290C @ =0x09F53158
	str r0, [r5, #0x20]
	ldr r0, _080A2910 @ =0x09F531D0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A28F0: .4byte 0x09F642A0
_080A28F4: .4byte 0x09F64318
_080A28F8: .4byte 0x09F44FF0
_080A28FC: .4byte 0x09F454B0
_080A2900: .4byte gUnknown_080F8E5C
_080A2904: .4byte 0x09F45430
_080A2908: .4byte gUnknown_080F8E64
_080A290C: .4byte 0x09F53158
_080A2910: .4byte 0x09F531D0

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
	bl sub_08080A24
	ldr r0, _080A29BC @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A29C0 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A29C4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A29C8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A29CC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A29D0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A29D4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A29D8 @ =0x09F53608
	str r0, [r5, #0x20]
	ldr r0, _080A29DC @ =0x09F53680
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A29BC: .4byte 0x09F642A0
_080A29C0: .4byte 0x09F64318
_080A29C4: .4byte 0x09F44FF0
_080A29C8: .4byte 0x09F454B0
_080A29CC: .4byte gUnknown_080F8E5C
_080A29D0: .4byte 0x09F45430
_080A29D4: .4byte gUnknown_080F8E64
_080A29D8: .4byte 0x09F53608
_080A29DC: .4byte 0x09F53680

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
	bl sub_08080A24
	ldr r0, _080A2A88 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2A8C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2A90 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2A94 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2A98 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2A9C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2AA0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2AA4 @ =0x09F53AB8
	str r0, [r5, #0x20]
	ldr r0, _080A2AA8 @ =0x09F53B30
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2A88: .4byte 0x09F642A0
_080A2A8C: .4byte 0x09F64318
_080A2A90: .4byte 0x09F44FF0
_080A2A94: .4byte 0x09F454B0
_080A2A98: .4byte gUnknown_080F8E5C
_080A2A9C: .4byte 0x09F45430
_080A2AA0: .4byte gUnknown_080F8E64
_080A2AA4: .4byte 0x09F53AB8
_080A2AA8: .4byte 0x09F53B30

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
	bl sub_08080A24
	ldr r0, _080A2B54 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2B58 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2B5C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2B60 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2B64 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2B68 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2B6C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2B70 @ =0x09F53F68
	str r0, [r5, #0x20]
	ldr r0, _080A2B74 @ =0x09F53FE0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2B54: .4byte 0x09F642A0
_080A2B58: .4byte 0x09F64318
_080A2B5C: .4byte 0x09F44FF0
_080A2B60: .4byte 0x09F454B0
_080A2B64: .4byte gUnknown_080F8E5C
_080A2B68: .4byte 0x09F45430
_080A2B6C: .4byte gUnknown_080F8E64
_080A2B70: .4byte 0x09F53F68
_080A2B74: .4byte 0x09F53FE0

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
	bl sub_08080A24
	ldr r0, _080A2C20 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2C24 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2C28 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2C2C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2C30 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2C34 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2C38 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2C3C @ =0x09F54418
	str r0, [r5, #0x20]
	ldr r0, _080A2C40 @ =0x09F54490
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2C20: .4byte 0x09F642A0
_080A2C24: .4byte 0x09F64318
_080A2C28: .4byte 0x09F44FF0
_080A2C2C: .4byte 0x09F454B0
_080A2C30: .4byte gUnknown_080F8E5C
_080A2C34: .4byte 0x09F45430
_080A2C38: .4byte gUnknown_080F8E64
_080A2C3C: .4byte 0x09F54418
_080A2C40: .4byte 0x09F54490

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
	bl sub_08080A24
	ldr r0, _080A2CEC @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2CF0 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2CF4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2CF8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2CFC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2D00 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2D04 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2D08 @ =0x09F548C8
	str r0, [r5, #0x20]
	ldr r0, _080A2D0C @ =0x09F54940
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2CEC: .4byte 0x09F642A0
_080A2CF0: .4byte 0x09F64318
_080A2CF4: .4byte 0x09F44FF0
_080A2CF8: .4byte 0x09F454B0
_080A2CFC: .4byte gUnknown_080F8E5C
_080A2D00: .4byte 0x09F45430
_080A2D04: .4byte gUnknown_080F8E64
_080A2D08: .4byte 0x09F548C8
_080A2D0C: .4byte 0x09F54940

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
	bl sub_08080A24
	ldr r0, _080A2DB8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2DBC @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2DC0 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2DC4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2DC8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2DCC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2DD0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2DD4 @ =0x09F54D78
	str r0, [r5, #0x20]
	ldr r0, _080A2DD8 @ =0x09F54DF0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2DB8: .4byte 0x09F642A0
_080A2DBC: .4byte 0x09F64318
_080A2DC0: .4byte 0x09F44FF0
_080A2DC4: .4byte 0x09F454B0
_080A2DC8: .4byte gUnknown_080F8E5C
_080A2DCC: .4byte 0x09F45430
_080A2DD0: .4byte gUnknown_080F8E64
_080A2DD4: .4byte 0x09F54D78
_080A2DD8: .4byte 0x09F54DF0

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
	bl sub_08080A24
	ldr r0, _080A2E84 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2E88 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2E8C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2E90 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2E94 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2E98 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2E9C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2EA0 @ =0x09F55228
	str r0, [r5, #0x20]
	ldr r0, _080A2EA4 @ =0x09F552A0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2E84: .4byte 0x09F642A0
_080A2E88: .4byte 0x09F64318
_080A2E8C: .4byte 0x09F44FF0
_080A2E90: .4byte 0x09F454B0
_080A2E94: .4byte gUnknown_080F8E5C
_080A2E98: .4byte 0x09F45430
_080A2E9C: .4byte gUnknown_080F8E64
_080A2EA0: .4byte 0x09F55228
_080A2EA4: .4byte 0x09F552A0

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
	bl sub_08080A24
	ldr r0, _080A2F50 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A2F54 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2F58 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A2F5C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A2F60 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2F64 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A2F68 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2F6C @ =0x09F556D8
	str r0, [r5, #0x20]
	ldr r0, _080A2F70 @ =0x09F55750
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2F50: .4byte 0x09F642A0
_080A2F54: .4byte 0x09F64318
_080A2F58: .4byte 0x09F44FF0
_080A2F5C: .4byte 0x09F454B0
_080A2F60: .4byte gUnknown_080F8E5C
_080A2F64: .4byte 0x09F45430
_080A2F68: .4byte gUnknown_080F8E64
_080A2F6C: .4byte 0x09F556D8
_080A2F70: .4byte 0x09F55750

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
	bl sub_08080A24
	ldr r0, _080A301C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3020 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3024 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3028 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A302C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3030 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3034 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3038 @ =0x09F55B88
	str r0, [r5, #0x20]
	ldr r0, _080A303C @ =0x09F55C00
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A301C: .4byte 0x09F642A0
_080A3020: .4byte 0x09F64318
_080A3024: .4byte 0x09F44FF0
_080A3028: .4byte 0x09F454B0
_080A302C: .4byte gUnknown_080F8E5C
_080A3030: .4byte 0x09F45430
_080A3034: .4byte gUnknown_080F8E64
_080A3038: .4byte 0x09F55B88
_080A303C: .4byte 0x09F55C00

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
	bl sub_08080A24
	ldr r0, _080A30E8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A30EC @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A30F0 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A30F4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A30F8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A30FC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3100 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3104 @ =0x09F56038
	str r0, [r5, #0x20]
	ldr r0, _080A3108 @ =0x09F560B0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A30E8: .4byte 0x09F642A0
_080A30EC: .4byte 0x09F64318
_080A30F0: .4byte 0x09F44FF0
_080A30F4: .4byte 0x09F454B0
_080A30F8: .4byte gUnknown_080F8E5C
_080A30FC: .4byte 0x09F45430
_080A3100: .4byte gUnknown_080F8E64
_080A3104: .4byte 0x09F56038
_080A3108: .4byte 0x09F560B0

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
	bl sub_08080A24
	ldr r0, _080A31F0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A31F4 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A31F8 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A31FC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3200 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3204 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3208 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A320C @ =0x09F564E8
	str r0, [r5, #0x20]
	ldr r0, _080A3210 @ =0x09F56560
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
_080A31F0: .4byte 0x09F642A0
_080A31F4: .4byte 0x09F64318
_080A31F8: .4byte 0x09F44FF0
_080A31FC: .4byte 0x09F454B0
_080A3200: .4byte gUnknown_080F8E5C
_080A3204: .4byte 0x09F45430
_080A3208: .4byte gUnknown_080F8E64
_080A320C: .4byte 0x09F564E8
_080A3210: .4byte 0x09F56560

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
	bl sub_08080A24
	ldr r0, _080A32BC @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A32C0 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A32C4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A32C8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A32CC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A32D0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A32D4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A32D8 @ =0x09F569C0
	str r0, [r5, #0x20]
	ldr r0, _080A32DC @ =0x09F56A38
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A32BC: .4byte 0x09F642A0
_080A32C0: .4byte 0x09F64318
_080A32C4: .4byte 0x09F44FF0
_080A32C8: .4byte 0x09F454B0
_080A32CC: .4byte gUnknown_080F8E5C
_080A32D0: .4byte 0x09F45430
_080A32D4: .4byte gUnknown_080F8E64
_080A32D8: .4byte 0x09F569C0
_080A32DC: .4byte 0x09F56A38

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
	bl sub_08080A24
	ldr r0, _080A3388 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A338C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3390 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3394 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3398 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A339C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A33A0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A33A4 @ =0x09F56E70
	str r0, [r5, #0x20]
	ldr r0, _080A33A8 @ =0x09F56EE8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3388: .4byte 0x09F642A0
_080A338C: .4byte 0x09F64318
_080A3390: .4byte 0x09F44FF0
_080A3394: .4byte 0x09F454B0
_080A3398: .4byte gUnknown_080F8E5C
_080A339C: .4byte 0x09F45430
_080A33A0: .4byte gUnknown_080F8E64
_080A33A4: .4byte 0x09F56E70
_080A33A8: .4byte 0x09F56EE8

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
	bl sub_08080A24
	ldr r0, _080A3454 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3458 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A345C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3460 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3464 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3468 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A346C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3470 @ =0x09F57320
	str r0, [r5, #0x20]
	ldr r0, _080A3474 @ =0x09F57398
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3454: .4byte 0x09F642A0
_080A3458: .4byte 0x09F64318
_080A345C: .4byte 0x09F44FF0
_080A3460: .4byte 0x09F454B0
_080A3464: .4byte gUnknown_080F8E5C
_080A3468: .4byte 0x09F45430
_080A346C: .4byte gUnknown_080F8E64
_080A3470: .4byte 0x09F57320
_080A3474: .4byte 0x09F57398

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
	bl sub_08080A24
	ldr r0, _080A3530 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3534 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3538 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A353C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3540 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3544 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3548 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A354C @ =0x09F577D0
	str r0, [r5, #0x20]
	ldr r0, _080A3550 @ =0x09F57848
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
_080A3530: .4byte 0x09F642A0
_080A3534: .4byte 0x09F64318
_080A3538: .4byte 0x09F44FF0
_080A353C: .4byte 0x09F454B0
_080A3540: .4byte gUnknown_080F8E5C
_080A3544: .4byte 0x09F45430
_080A3548: .4byte gUnknown_080F8E64
_080A354C: .4byte 0x09F577D0
_080A3550: .4byte 0x09F57848

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
	bl sub_08080A24
	ldr r0, _080A35FC @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3600 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3604 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3608 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A360C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3610 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3614 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3618 @ =0x09F57C98
	str r0, [r5, #0x20]
	ldr r0, _080A361C @ =0x09F57D10
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A35FC: .4byte 0x09F642A0
_080A3600: .4byte 0x09F64318
_080A3604: .4byte 0x09F44FF0
_080A3608: .4byte 0x09F454B0
_080A360C: .4byte gUnknown_080F8E5C
_080A3610: .4byte 0x09F45430
_080A3614: .4byte gUnknown_080F8E64
_080A3618: .4byte 0x09F57C98
_080A361C: .4byte 0x09F57D10

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
	bl sub_08080A24
	ldr r0, _080A36C8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A36CC @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A36D0 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A36D4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A36D8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A36DC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A36E0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A36E4 @ =0x09F58148
	str r0, [r5, #0x20]
	ldr r0, _080A36E8 @ =0x09F581C0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A36C8: .4byte 0x09F642A0
_080A36CC: .4byte 0x09F64318
_080A36D0: .4byte 0x09F44FF0
_080A36D4: .4byte 0x09F454B0
_080A36D8: .4byte gUnknown_080F8E5C
_080A36DC: .4byte 0x09F45430
_080A36E0: .4byte gUnknown_080F8E64
_080A36E4: .4byte 0x09F58148
_080A36E8: .4byte 0x09F581C0

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
	bl sub_08080A24
	ldr r0, _080A3794 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3798 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A379C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A37A0 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A37A4 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A37A8 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A37AC @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A37B0 @ =0x09F585F8
	str r0, [r5, #0x20]
	ldr r0, _080A37B4 @ =0x09F58670
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3794: .4byte 0x09F642A0
_080A3798: .4byte 0x09F64318
_080A379C: .4byte 0x09F44FF0
_080A37A0: .4byte 0x09F454B0
_080A37A4: .4byte gUnknown_080F8E5C
_080A37A8: .4byte 0x09F45430
_080A37AC: .4byte gUnknown_080F8E64
_080A37B0: .4byte 0x09F585F8
_080A37B4: .4byte 0x09F58670

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
	bl sub_08080A24
	ldr r0, _080A3860 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3864 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3868 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A386C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3870 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3874 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3878 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A387C @ =0x09F58AA8
	str r0, [r5, #0x20]
	ldr r0, _080A3880 @ =0x09F58B20
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3860: .4byte 0x09F642A0
_080A3864: .4byte 0x09F64318
_080A3868: .4byte 0x09F44FF0
_080A386C: .4byte 0x09F454B0
_080A3870: .4byte gUnknown_080F8E5C
_080A3874: .4byte 0x09F45430
_080A3878: .4byte gUnknown_080F8E64
_080A387C: .4byte 0x09F58AA8
_080A3880: .4byte 0x09F58B20

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
	bl sub_08080A24
	ldr r0, _080A392C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3930 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3934 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3938 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A393C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3940 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3944 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3948 @ =0x09F58F60
	str r0, [r5, #0x20]
	ldr r0, _080A394C @ =0x09F58FD8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A392C: .4byte 0x09F642A0
_080A3930: .4byte 0x09F64318
_080A3934: .4byte 0x09F44FF0
_080A3938: .4byte 0x09F454B0
_080A393C: .4byte gUnknown_080F8E5C
_080A3940: .4byte 0x09F45430
_080A3944: .4byte gUnknown_080F8E64
_080A3948: .4byte 0x09F58F60
_080A394C: .4byte 0x09F58FD8

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
	bl sub_08080A24
	ldr r0, _080A3A14 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3A18 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3A1C @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A3A20 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3A24 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3A28 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3A2C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3A30 @ =0x09F59410
	str r0, [r5, #0x20]
	ldr r0, _080A3A34 @ =0x09F59488
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
_080A3A14: .4byte 0x09F642A0
_080A3A18: .4byte 0x09F64318
_080A3A1C: .4byte 0x09F44FF0
_080A3A20: .4byte 0x09F454B0
_080A3A24: .4byte gUnknown_080F8E5C
_080A3A28: .4byte 0x09F45430
_080A3A2C: .4byte gUnknown_080F8E64
_080A3A30: .4byte 0x09F59410
_080A3A34: .4byte 0x09F59488

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
	bl sub_08080A24
	ldr r0, _080A3AF4 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3AF8 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3AFC @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A3B00 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3B04 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3B08 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3B0C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3B10 @ =0x09F598E0
	str r0, [r5, #0x20]
	ldr r0, _080A3B14 @ =0x09F59958
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
_080A3AF4: .4byte 0x09F642A0
_080A3AF8: .4byte 0x09F64318
_080A3AFC: .4byte 0x09F44FF0
_080A3B00: .4byte 0x09F454B0
_080A3B04: .4byte gUnknown_080F8E5C
_080A3B08: .4byte 0x09F45430
_080A3B0C: .4byte gUnknown_080F8E64
_080A3B10: .4byte 0x09F598E0
_080A3B14: .4byte 0x09F59958

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
	bl sub_08080A24
	ldr r0, _080A3BC0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3BC4 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3BC8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3BCC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3BD0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3BD4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3BD8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3BDC @ =0x09F59DA8
	str r0, [r5, #0x20]
	ldr r0, _080A3BE0 @ =0x09F59E20
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3BC0: .4byte 0x09F642A0
_080A3BC4: .4byte 0x09F64318
_080A3BC8: .4byte 0x09F44FF0
_080A3BCC: .4byte 0x09F454B0
_080A3BD0: .4byte gUnknown_080F8E5C
_080A3BD4: .4byte 0x09F45430
_080A3BD8: .4byte gUnknown_080F8E64
_080A3BDC: .4byte 0x09F59DA8
_080A3BE0: .4byte 0x09F59E20

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
	bl sub_08080A24
	ldr r0, _080A3C8C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3C90 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3C94 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3C98 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3C9C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3CA0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3CA4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3CA8 @ =0x09F5A258
	str r0, [r5, #0x20]
	ldr r0, _080A3CAC @ =0x09F5A2D0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A3C8C: .4byte 0x09F642A0
_080A3C90: .4byte 0x09F64318
_080A3C94: .4byte 0x09F44FF0
_080A3C98: .4byte 0x09F454B0
_080A3C9C: .4byte gUnknown_080F8E5C
_080A3CA0: .4byte 0x09F45430
_080A3CA4: .4byte gUnknown_080F8E64
_080A3CA8: .4byte 0x09F5A258
_080A3CAC: .4byte 0x09F5A2D0

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
	bl sub_08080A24
	ldr r0, _080A3D6C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3D70 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3D74 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A3D78 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3D7C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3D80 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3D84 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3D88 @ =0x09F5A708
	str r0, [r5, #0x20]
	ldr r0, _080A3D8C @ =0x09F5A780
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
_080A3D6C: .4byte 0x09F642A0
_080A3D70: .4byte 0x09F64318
_080A3D74: .4byte 0x09F44FF0
_080A3D78: .4byte 0x09F454B0
_080A3D7C: .4byte gUnknown_080F8E5C
_080A3D80: .4byte 0x09F45430
_080A3D84: .4byte gUnknown_080F8E64
_080A3D88: .4byte 0x09F5A708
_080A3D8C: .4byte 0x09F5A780

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
	bl sub_08080A24
	ldr r0, _080A3E68 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3E6C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3E70 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3E74 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3E78 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3E7C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3E80 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3E84 @ =0x09F5ABD0
	str r0, [r5, #0x20]
	ldr r0, _080A3E88 @ =0x09F5AC48
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
_080A3E68: .4byte 0x09F642A0
_080A3E6C: .4byte 0x09F64318
_080A3E70: .4byte 0x09F44FF0
_080A3E74: .4byte 0x09F454B0
_080A3E78: .4byte gUnknown_080F8E5C
_080A3E7C: .4byte 0x09F45430
_080A3E80: .4byte gUnknown_080F8E64
_080A3E84: .4byte 0x09F5ABD0
_080A3E88: .4byte 0x09F5AC48

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
	bl sub_08080A24
	ldr r0, _080A3F3C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A3F40 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3F44 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A3F48 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A3F4C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A3F50 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A3F54 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A3F58 @ =0x09F5B088
	str r0, [r5, #0x20]
	ldr r0, _080A3F5C @ =0x09F5B100
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
_080A3F3C: .4byte 0x09F642A0
_080A3F40: .4byte 0x09F64318
_080A3F44: .4byte 0x09F44FF0
_080A3F48: .4byte 0x09F454B0
_080A3F4C: .4byte gUnknown_080F8E5C
_080A3F50: .4byte 0x09F45430
_080A3F54: .4byte gUnknown_080F8E64
_080A3F58: .4byte 0x09F5B088
_080A3F5C: .4byte 0x09F5B100

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
	bl sub_08080A24
	ldr r0, _080A4008 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A400C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4010 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4014 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4018 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A401C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4020 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4024 @ =0x09F5B538
	str r0, [r5, #0x20]
	ldr r0, _080A4028 @ =0x09F5B5B0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4008: .4byte 0x09F642A0
_080A400C: .4byte 0x09F64318
_080A4010: .4byte 0x09F44FF0
_080A4014: .4byte 0x09F454B0
_080A4018: .4byte gUnknown_080F8E5C
_080A401C: .4byte 0x09F45430
_080A4020: .4byte gUnknown_080F8E64
_080A4024: .4byte 0x09F5B538
_080A4028: .4byte 0x09F5B5B0

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
	bl sub_08080A24
	ldr r0, _080A40E8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A40EC @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A40F0 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A40F4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A40F8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A40FC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4100 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4104 @ =0x09F5B9E8
	str r0, [r5, #0x20]
	ldr r0, _080A4108 @ =0x09F5BA60
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
_080A40E8: .4byte 0x09F642A0
_080A40EC: .4byte 0x09F64318
_080A40F0: .4byte 0x09F44FF0
_080A40F4: .4byte 0x09F454B0
_080A40F8: .4byte gUnknown_080F8E5C
_080A40FC: .4byte 0x09F45430
_080A4100: .4byte gUnknown_080F8E64
_080A4104: .4byte 0x09F5B9E8
_080A4108: .4byte 0x09F5BA60

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
	bl sub_08080A24
	ldr r0, _080A41D4 @ =0x09F642A0
	str r0, [r7, #0x20]
	ldr r0, _080A41D8 @ =0x09F64318
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
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A41DC @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A41E0 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A41E4 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A41E8 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A41EC @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A41F0 @ =0x09F5BEB8
	str r0, [r7, #0x20]
	ldr r0, _080A41F4 @ =0x09F5BF30
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
_080A41D4: .4byte 0x09F642A0
_080A41D8: .4byte 0x09F64318
_080A41DC: .4byte 0x09F44FF0
_080A41E0: .4byte 0x09F454B0
_080A41E4: .4byte gUnknown_080F8E5C
_080A41E8: .4byte 0x09F45430
_080A41EC: .4byte gUnknown_080F8E64
_080A41F0: .4byte 0x09F5BEB8
_080A41F4: .4byte 0x09F5BF30

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
	bl sub_08080A24
	ldr r0, _080A42A0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A42A4 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A42A8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A42AC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A42B0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A42B4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A42B8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A42BC @ =0x09F5C368
	str r0, [r5, #0x20]
	ldr r0, _080A42C0 @ =0x09F5C3E0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A42A0: .4byte 0x09F642A0
_080A42A4: .4byte 0x09F64318
_080A42A8: .4byte 0x09F44FF0
_080A42AC: .4byte 0x09F454B0
_080A42B0: .4byte gUnknown_080F8E5C
_080A42B4: .4byte 0x09F45430
_080A42B8: .4byte gUnknown_080F8E64
_080A42BC: .4byte 0x09F5C368
_080A42C0: .4byte 0x09F5C3E0

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
	bl sub_08080A24
	ldr r0, _080A436C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4370 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4374 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4378 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A437C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4380 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4384 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4388 @ =0x09F5C818
	str r0, [r5, #0x20]
	ldr r0, _080A438C @ =0x09F5C890
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A436C: .4byte 0x09F642A0
_080A4370: .4byte 0x09F64318
_080A4374: .4byte 0x09F44FF0
_080A4378: .4byte 0x09F454B0
_080A437C: .4byte gUnknown_080F8E5C
_080A4380: .4byte 0x09F45430
_080A4384: .4byte gUnknown_080F8E64
_080A4388: .4byte 0x09F5C818
_080A438C: .4byte 0x09F5C890

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
	bl sub_08080A24
	ldr r0, _080A444C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4450 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4454 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4458 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A445C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4460 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4464 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4468 @ =0x09F5CCC8
	str r0, [r5, #0x20]
	ldr r0, _080A446C @ =0x09F5CD40
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
_080A444C: .4byte 0x09F642A0
_080A4450: .4byte 0x09F64318
_080A4454: .4byte 0x09F44FF0
_080A4458: .4byte 0x09F454B0
_080A445C: .4byte gUnknown_080F8E5C
_080A4460: .4byte 0x09F45430
_080A4464: .4byte gUnknown_080F8E64
_080A4468: .4byte 0x09F5CCC8
_080A446C: .4byte 0x09F5CD40

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
	bl sub_08080A24
	ldr r0, _080A4528 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A452C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4530 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4534 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4538 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A453C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4540 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4544 @ =0x09F5D190
	str r0, [r5, #0x20]
	ldr r0, _080A4548 @ =0x09F5D208
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
_080A4528: .4byte 0x09F642A0
_080A452C: .4byte 0x09F64318
_080A4530: .4byte 0x09F44FF0
_080A4534: .4byte 0x09F454B0
_080A4538: .4byte gUnknown_080F8E5C
_080A453C: .4byte 0x09F45430
_080A4540: .4byte gUnknown_080F8E64
_080A4544: .4byte 0x09F5D190
_080A4548: .4byte 0x09F5D208

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
	bl sub_08080A24
	ldr r0, _080A45F4 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A45F8 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A45FC @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4600 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4604 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4608 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A460C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4610 @ =0x09F5D640
	str r0, [r5, #0x20]
	ldr r0, _080A4614 @ =0x09F5D6B8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A45F4: .4byte 0x09F642A0
_080A45F8: .4byte 0x09F64318
_080A45FC: .4byte 0x09F44FF0
_080A4600: .4byte 0x09F454B0
_080A4604: .4byte gUnknown_080F8E5C
_080A4608: .4byte 0x09F45430
_080A460C: .4byte gUnknown_080F8E64
_080A4610: .4byte 0x09F5D640
_080A4614: .4byte 0x09F5D6B8

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
	bl sub_08080A24
	ldr r0, _080A46C0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A46C4 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A46C8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A46CC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A46D0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A46D4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A46D8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A46DC @ =0x09F5DAF0
	str r0, [r5, #0x20]
	ldr r0, _080A46E0 @ =0x09F5DB68
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A46C0: .4byte 0x09F642A0
_080A46C4: .4byte 0x09F64318
_080A46C8: .4byte 0x09F44FF0
_080A46CC: .4byte 0x09F454B0
_080A46D0: .4byte gUnknown_080F8E5C
_080A46D4: .4byte 0x09F45430
_080A46D8: .4byte gUnknown_080F8E64
_080A46DC: .4byte 0x09F5DAF0
_080A46E0: .4byte 0x09F5DB68

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
	bl sub_08080A24
	ldr r0, _080A478C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4790 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4794 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4798 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A479C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A47A0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A47A4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A47A8 @ =0x09F5DFA0
	str r0, [r5, #0x20]
	ldr r0, _080A47AC @ =0x09F5E018
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A478C: .4byte 0x09F642A0
_080A4790: .4byte 0x09F64318
_080A4794: .4byte 0x09F44FF0
_080A4798: .4byte 0x09F454B0
_080A479C: .4byte gUnknown_080F8E5C
_080A47A0: .4byte 0x09F45430
_080A47A4: .4byte gUnknown_080F8E64
_080A47A8: .4byte 0x09F5DFA0
_080A47AC: .4byte 0x09F5E018

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
	bl sub_08080A24
	ldr r0, _080A4858 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A485C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4860 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4864 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4868 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A486C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4870 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4874 @ =0x09F5E450
	str r0, [r5, #0x20]
	ldr r0, _080A4878 @ =0x09F5E4C8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4858: .4byte 0x09F642A0
_080A485C: .4byte 0x09F64318
_080A4860: .4byte 0x09F44FF0
_080A4864: .4byte 0x09F454B0
_080A4868: .4byte gUnknown_080F8E5C
_080A486C: .4byte 0x09F45430
_080A4870: .4byte gUnknown_080F8E64
_080A4874: .4byte 0x09F5E450
_080A4878: .4byte 0x09F5E4C8

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
	bl sub_08080A24
	ldr r0, _080A4938 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A493C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4940 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4944 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4948 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A494C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4950 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4954 @ =0x09F5E900
	str r0, [r5, #0x20]
	ldr r0, _080A4958 @ =0x09F5E978
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
_080A4938: .4byte 0x09F642A0
_080A493C: .4byte 0x09F64318
_080A4940: .4byte 0x09F44FF0
_080A4944: .4byte 0x09F454B0
_080A4948: .4byte gUnknown_080F8E5C
_080A494C: .4byte 0x09F45430
_080A4950: .4byte gUnknown_080F8E64
_080A4954: .4byte 0x09F5E900
_080A4958: .4byte 0x09F5E978

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
	bl sub_08080A24
	ldr r0, _080A4A04 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4A08 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4A0C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4A10 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4A14 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4A18 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4A1C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4A20 @ =0x09F5EDC8
	str r0, [r5, #0x20]
	ldr r0, _080A4A24 @ =0x09F5EE40
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4A04: .4byte 0x09F642A0
_080A4A08: .4byte 0x09F64318
_080A4A0C: .4byte 0x09F44FF0
_080A4A10: .4byte 0x09F454B0
_080A4A14: .4byte gUnknown_080F8E5C
_080A4A18: .4byte 0x09F45430
_080A4A1C: .4byte gUnknown_080F8E64
_080A4A20: .4byte 0x09F5EDC8
_080A4A24: .4byte 0x09F5EE40

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
	bl sub_08080A24
	ldr r0, _080A4AE4 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4AE8 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4AEC @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4AF0 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4AF4 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4AF8 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4AFC @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4B00 @ =0x09F5F278
	str r0, [r5, #0x20]
	ldr r0, _080A4B04 @ =0x09F5F2F0
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
_080A4AE4: .4byte 0x09F642A0
_080A4AE8: .4byte 0x09F64318
_080A4AEC: .4byte 0x09F44FF0
_080A4AF0: .4byte 0x09F454B0
_080A4AF4: .4byte gUnknown_080F8E5C
_080A4AF8: .4byte 0x09F45430
_080A4AFC: .4byte gUnknown_080F8E64
_080A4B00: .4byte 0x09F5F278
_080A4B04: .4byte 0x09F5F2F0

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
	bl sub_08080A24
	ldr r0, _080A4BC0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4BC4 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4BC8 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4BCC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4BD0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4BD4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4BD8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4BDC @ =0x09F5F740
	str r0, [r5, #0x20]
	ldr r0, _080A4BE0 @ =0x09F5F7B8
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
_080A4BC0: .4byte 0x09F642A0
_080A4BC4: .4byte 0x09F64318
_080A4BC8: .4byte 0x09F44FF0
_080A4BCC: .4byte 0x09F454B0
_080A4BD0: .4byte gUnknown_080F8E5C
_080A4BD4: .4byte 0x09F45430
_080A4BD8: .4byte gUnknown_080F8E64
_080A4BDC: .4byte 0x09F5F740
_080A4BE0: .4byte 0x09F5F7B8

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
	bl sub_08080A24
	ldr r0, _080A4CA0 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4CA4 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4CA8 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4CAC @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4CB0 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4CB4 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4CB8 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4CBC @ =0x09F5FBF0
	str r0, [r5, #0x20]
	ldr r0, _080A4CC0 @ =0x09F5FC68
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
_080A4CA0: .4byte 0x09F642A0
_080A4CA4: .4byte 0x09F64318
_080A4CA8: .4byte 0x09F44FF0
_080A4CAC: .4byte 0x09F454B0
_080A4CB0: .4byte gUnknown_080F8E5C
_080A4CB4: .4byte 0x09F45430
_080A4CB8: .4byte gUnknown_080F8E64
_080A4CBC: .4byte 0x09F5FBF0
_080A4CC0: .4byte 0x09F5FC68

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
	bl sub_08080A24
	ldr r0, _080A4D6C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4D70 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4D74 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4D78 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4D7C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4D80 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4D84 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4D88 @ =0x09F600A0
	str r0, [r5, #0x20]
	ldr r0, _080A4D8C @ =0x09F60118
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4D6C: .4byte 0x09F642A0
_080A4D70: .4byte 0x09F64318
_080A4D74: .4byte 0x09F44FF0
_080A4D78: .4byte 0x09F454B0
_080A4D7C: .4byte gUnknown_080F8E5C
_080A4D80: .4byte 0x09F45430
_080A4D84: .4byte gUnknown_080F8E64
_080A4D88: .4byte 0x09F600A0
_080A4D8C: .4byte 0x09F60118

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
	bl sub_08080A24
	ldr r0, _080A4E4C @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4E50 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4E54 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A4E58 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4E5C @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4E60 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4E64 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4E68 @ =0x09F60550
	str r0, [r5, #0x20]
	ldr r0, _080A4E6C @ =0x09F605C8
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
_080A4E4C: .4byte 0x09F642A0
_080A4E50: .4byte 0x09F64318
_080A4E54: .4byte 0x09F44FF0
_080A4E58: .4byte 0x09F454B0
_080A4E5C: .4byte gUnknown_080F8E5C
_080A4E60: .4byte 0x09F45430
_080A4E64: .4byte gUnknown_080F8E64
_080A4E68: .4byte 0x09F60550
_080A4E6C: .4byte 0x09F605C8

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
	bl sub_08080A24
	ldr r0, _080A4F18 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4F1C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4F20 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A4F24 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A4F28 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A4F2C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A4F30 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A4F34 @ =0x09F60A00
	str r0, [r5, #0x20]
	ldr r0, _080A4F38 @ =0x09F60A78
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A4F18: .4byte 0x09F642A0
_080A4F1C: .4byte 0x09F64318
_080A4F20: .4byte 0x09F44FF0
_080A4F24: .4byte 0x09F454B0
_080A4F28: .4byte gUnknown_080F8E5C
_080A4F2C: .4byte 0x09F45430
_080A4F30: .4byte gUnknown_080F8E64
_080A4F34: .4byte 0x09F60A00
_080A4F38: .4byte 0x09F60A78

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
	bl sub_08080A24
	ldr r0, _080A4FF8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A4FFC @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5000 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A5004 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A5008 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A500C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A5010 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A5014 @ =0x09F60EB0
	str r0, [r5, #0x20]
	ldr r0, _080A5018 @ =0x09F60F28
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
_080A4FF8: .4byte 0x09F642A0
_080A4FFC: .4byte 0x09F64318
_080A5000: .4byte 0x09F44FF0
_080A5004: .4byte 0x09F454B0
_080A5008: .4byte gUnknown_080F8E5C
_080A500C: .4byte 0x09F45430
_080A5010: .4byte gUnknown_080F8E64
_080A5014: .4byte 0x09F60EB0
_080A5018: .4byte 0x09F60F28

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
	bl sub_08080A24
	ldr r0, _080A50D8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A50DC @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A50E0 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A50E4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A50E8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A50EC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A50F0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A50F4 @ =0x09F61380
	str r0, [r5, #0x20]
	ldr r0, _080A50F8 @ =0x09F613F8
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
_080A50D8: .4byte 0x09F642A0
_080A50DC: .4byte 0x09F64318
_080A50E0: .4byte 0x09F44FF0
_080A50E4: .4byte 0x09F454B0
_080A50E8: .4byte gUnknown_080F8E5C
_080A50EC: .4byte 0x09F45430
_080A50F0: .4byte gUnknown_080F8E64
_080A50F4: .4byte 0x09F61380
_080A50F8: .4byte 0x09F613F8

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
	bl sub_08080A24
	ldr r0, _080A51B8 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A51BC @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A51C0 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A51C4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A51C8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A51CC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A51D0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A51D4 @ =0x09F61850
	str r0, [r5, #0x20]
	ldr r0, _080A51D8 @ =0x09F618C8
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
_080A51B8: .4byte 0x09F642A0
_080A51BC: .4byte 0x09F64318
_080A51C0: .4byte 0x09F44FF0
_080A51C4: .4byte 0x09F454B0
_080A51C8: .4byte gUnknown_080F8E5C
_080A51CC: .4byte 0x09F45430
_080A51D0: .4byte gUnknown_080F8E64
_080A51D4: .4byte 0x09F61850
_080A51D8: .4byte 0x09F618C8

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
	bl sub_08080A24
	ldr r0, _080A5298 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A529C @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A52A0 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A52A4 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A52A8 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A52AC @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A52B0 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A52B4 @ =0x09F61D18
	str r0, [r5, #0x20]
	ldr r0, _080A52B8 @ =0x09F61D90
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
_080A5298: .4byte 0x09F642A0
_080A529C: .4byte 0x09F64318
_080A52A0: .4byte 0x09F44FF0
_080A52A4: .4byte 0x09F454B0
_080A52A8: .4byte gUnknown_080F8E5C
_080A52AC: .4byte 0x09F45430
_080A52B0: .4byte gUnknown_080F8E64
_080A52B4: .4byte 0x09F61D18
_080A52B8: .4byte 0x09F61D90

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
	bl sub_08080A24
	ldr r0, _080A5378 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A537C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5380 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A5384 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A5388 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A538C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A5390 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A5394 @ =0x09F621C8
	str r0, [r5, #0x20]
	ldr r0, _080A5398 @ =0x09F62240
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
_080A5378: .4byte 0x09F642A0
_080A537C: .4byte 0x09F64318
_080A5380: .4byte 0x09F44FF0
_080A5384: .4byte 0x09F454B0
_080A5388: .4byte gUnknown_080F8E5C
_080A538C: .4byte 0x09F45430
_080A5390: .4byte gUnknown_080F8E64
_080A5394: .4byte 0x09F621C8
_080A5398: .4byte 0x09F62240

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
	bl sub_08080A24
	ldr r0, _080A5444 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A5448 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A544C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A5450 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A5454 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5458 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A545C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A5460 @ =0x09F62678
	str r0, [r5, #0x20]
	ldr r0, _080A5464 @ =0x09F626F0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5444: .4byte 0x09F642A0
_080A5448: .4byte 0x09F64318
_080A544C: .4byte 0x09F44FF0
_080A5450: .4byte 0x09F454B0
_080A5454: .4byte gUnknown_080F8E5C
_080A5458: .4byte 0x09F45430
_080A545C: .4byte gUnknown_080F8E64
_080A5460: .4byte 0x09F62678
_080A5464: .4byte 0x09F626F0

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
	bl sub_08080A24
	ldr r0, _080A5510 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A5514 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5518 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A551C @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A5520 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5524 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A5528 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A552C @ =0x09F62B28
	str r0, [r5, #0x20]
	ldr r0, _080A5530 @ =0x09F62BA0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5510: .4byte 0x09F642A0
_080A5514: .4byte 0x09F64318
_080A5518: .4byte 0x09F44FF0
_080A551C: .4byte 0x09F454B0
_080A5520: .4byte gUnknown_080F8E5C
_080A5524: .4byte 0x09F45430
_080A5528: .4byte gUnknown_080F8E64
_080A552C: .4byte 0x09F62B28
_080A5530: .4byte 0x09F62BA0

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
	bl sub_08080A24
	ldr r0, _080A55DC @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A55E0 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A55E4 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A55E8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A55EC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A55F0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A55F4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A55F8 @ =0x09F62FD8
	str r0, [r5, #0x20]
	ldr r0, _080A55FC @ =0x09F63050
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A55DC: .4byte 0x09F642A0
_080A55E0: .4byte 0x09F64318
_080A55E4: .4byte 0x09F44FF0
_080A55E8: .4byte 0x09F454B0
_080A55EC: .4byte gUnknown_080F8E5C
_080A55F0: .4byte 0x09F45430
_080A55F4: .4byte gUnknown_080F8E64
_080A55F8: .4byte 0x09F62FD8
_080A55FC: .4byte 0x09F63050

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
	bl sub_08080A24
	ldr r0, _080A56BC @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A56C0 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A56C4 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A56C8 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A56CC @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A56D0 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A56D4 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A56D8 @ =0x09F63488
	str r0, [r5, #0x20]
	ldr r0, _080A56DC @ =0x09F63500
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
_080A56BC: .4byte 0x09F642A0
_080A56C0: .4byte 0x09F64318
_080A56C4: .4byte 0x09F44FF0
_080A56C8: .4byte 0x09F454B0
_080A56CC: .4byte gUnknown_080F8E5C
_080A56D0: .4byte 0x09F45430
_080A56D4: .4byte gUnknown_080F8E64
_080A56D8: .4byte 0x09F63488
_080A56DC: .4byte 0x09F63500

	thumb_func_start sub_080A56E0
sub_080A56E0: @ 0x080A56E0
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
	bl sub_08080A24
	ldr r0, _080A57B4 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A57B8 @ =0x09F64318
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov sl, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A57BC @ =0x09F44FF0
	mov sb, r0
	ldr r0, _080A57C0 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A57C4 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A57C8 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A57CC @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A57D0 @ =0x09F63938
	str r0, [r5, #0x20]
	ldr r0, _080A57D4 @ =0x09F639B0
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, sl
	strb r1, [r0]
	ldr r1, _080A57D8 @ =0x00000149
	adds r0, r5, r1
	mov r1, sl
	strb r1, [r0]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
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
_080A57B4: .4byte 0x09F642A0
_080A57B8: .4byte 0x09F64318
_080A57BC: .4byte 0x09F44FF0
_080A57C0: .4byte 0x09F454B0
_080A57C4: .4byte gUnknown_080F8E5C
_080A57C8: .4byte 0x09F45430
_080A57CC: .4byte gUnknown_080F8E64
_080A57D0: .4byte 0x09F63938
_080A57D4: .4byte 0x09F639B0
_080A57D8: .4byte 0x00000149

	thumb_func_start sub_080A57DC
sub_080A57DC: @ 0x080A57DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A5884 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A5888 @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A588C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A5890 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A5894 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5898 @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A589C @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A58A0 @ =0x09F63DF0
	str r0, [r5, #0x20]
	ldr r0, _080A58A4 @ =0x09F63E68
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5884: .4byte 0x09F642A0
_080A5888: .4byte 0x09F64318
_080A588C: .4byte 0x09F44FF0
_080A5890: .4byte 0x09F454B0
_080A5894: .4byte gUnknown_080F8E5C
_080A5898: .4byte 0x09F45430
_080A589C: .4byte gUnknown_080F8E64
_080A58A0: .4byte 0x09F63DF0
_080A58A4: .4byte 0x09F63E68

	thumb_func_start sub_080A58A8
sub_080A58A8: @ 0x080A58A8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08080A24
	ldr r0, _080A5948 @ =0x09F642A0
	str r0, [r5, #0x20]
	ldr r0, _080A594C @ =0x09F64318
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
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A5950 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080A5954 @ =0x09F454B0
	str r0, [sp, #0x20]
	ldr r0, _080A5958 @ =gUnknown_080F8E5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A595C @ =0x09F45430
	str r0, [sp, #0x20]
	ldr r0, _080A5960 @ =gUnknown_080F8E64
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
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
_080A5948: .4byte 0x09F642A0
_080A594C: .4byte 0x09F64318
_080A5950: .4byte 0x09F44FF0
_080A5954: .4byte 0x09F454B0
_080A5958: .4byte gUnknown_080F8E5C
_080A595C: .4byte 0x09F45430
_080A5960: .4byte gUnknown_080F8E64

	thumb_func_start sub_080A5964
sub_080A5964: @ 0x080A5964
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A596E
	adds r2, r1, #0
_080A596E:
	adds r1, r2, #0
	bl sub_08081494
	pop {r0}
	bx r0

	thumb_func_start sub_080A5978
sub_080A5978: @ 0x080A5978
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A599C @ =0x0000027F
	cmp r0, #0x32
	bge _080A598C
	subs r1, #1
_080A598C:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A599C: .4byte 0x0000027F

	thumb_func_start sub_080A59A0
sub_080A59A0: @ 0x080A59A0
	push {lr}
	ldr r2, _080A59B4 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A59B8 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A59B4: .4byte 0x09F642A0
_080A59B8: .4byte 0x09F64318

	thumb_func_start sub_080A59BC
sub_080A59BC: @ 0x080A59BC
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A59C6
	adds r2, r1, #0
_080A59C6:
	adds r1, r2, #0
	bl sub_08081494
	pop {r0}
	bx r0

	thumb_func_start sub_080A59D0
sub_080A59D0: @ 0x080A59D0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, r4
	bge _080A59F0
	adds r0, r4, #0
_080A59F0:
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08081494
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A5A00
sub_080A5A00: @ 0x080A5A00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A5A18
	cmp r0, #1
	beq _080A5A2E
	b _080A5A44
_080A5A18:
	ldr r1, [r4, #0x1c]
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A5A2E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A5A44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A5A4C
sub_080A5A4C: @ 0x080A5A4C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
_080A5A50:
	movs r5, #0
	movs r4, #0
	b _080A5A6E
_080A5A56:
	adds r0, r4, #0
	bl sub_08072AA4
	movs r1, #2
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5A6C
	movs r5, #1
_080A5A6C:
	adds r4, #1
_080A5A6E:
	bl sub_08072A88
	cmp r4, r0
	blt _080A5A56
	cmp r5, #1
	bne _080A5A8C
	ldr r0, _080A5A88 @ =0x00000279
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A5A50
	.align 2, 0
_080A5A88: .4byte 0x00000279
_080A5A8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A5A94
sub_080A5A94: @ 0x080A5A94
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A5AAE
	cmp r2, #1
	bne _080A5ACA
_080A5AAE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A5ACC
_080A5ACA:
	movs r0, #0
_080A5ACC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A5AD4
sub_080A5AD4: @ 0x080A5AD4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl unit_e8__4UnitUi
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5B08
	ldr r1, [r5, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080A5B08:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A5B10
sub_080A5B10: @ 0x080A5B10
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BA6
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BA6
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BA6
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5BA6
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A5BA8
_080A5BA6:
	movs r0, #0
_080A5BA8:
	cmp r0, #0
	bne _080A5BB0
	movs r0, #0
	b _080A5C7C
_080A5BB0:
	adds r0, r5, #0
	movs r1, #0x90
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5BD8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A5BD4 @ =0x00000277
	cmp r0, #0x32
	bge _080A5BD0
	subs r1, #1
_080A5BD0:
	adds r0, r1, #0
	b _080A5C10
	.align 2, 0
_080A5BD4: .4byte 0x00000277
_080A5BD8:
	ldr r1, _080A5C1C @ =0x00000276
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BF8
	ldr r1, _080A5C20 @ =0x00000277
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5C28
_080A5BF8:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A5C24 @ =0x0000027B
	cmp r1, #0x21
	blt _080A5C10
	adds r0, #2
	cmp r1, #0x42
	bge _080A5C10
	subs r0, #1
_080A5C10:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A5C7A
	.align 2, 0
_080A5C1C: .4byte 0x00000276
_080A5C20: .4byte 0x00000277
_080A5C24: .4byte 0x0000027B
_080A5C28:
	movs r1, #0xdd
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5C5C
	ldr r1, _080A5C84 @ =0x000001BB
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5C5C
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5C7A
_080A5C5C:
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
_080A5C7A:
	movs r0, #1
_080A5C7C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A5C84: .4byte 0x000001BB

	thumb_func_start sub_080A5C88
sub_080A5C88: @ 0x080A5C88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080A5D3C @ =0x000001BD
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5CAA
	movs r0, #0x90
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A5CAA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D40
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D40
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D40
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5D40
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A5D42
	.align 2, 0
_080A5D3C: .4byte 0x000001BD
_080A5D40:
	movs r0, #0
_080A5D42:
	cmp r0, #0
	bne _080A5D4A
	movs r0, #0
	b _080A5DC0
_080A5D4A:
	adds r0, r5, #0
	movs r1, #0x90
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5D7C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A5D78 @ =0x00000277
	cmp r0, #0x32
	bge _080A5D6A
	subs r1, #1
_080A5D6A:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A5DBE
	.align 2, 0
_080A5D78: .4byte 0x00000277
_080A5D7C:
	ldr r1, _080A5DC8 @ =0x00000276
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D9C
	ldr r1, _080A5DCC @ =0x00000277
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5DBE
_080A5D9C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A5DD0 @ =0x0000027B
	cmp r1, #0x21
	blt _080A5DB4
	adds r0, #2
	cmp r1, #0x42
	bge _080A5DB4
	subs r0, #1
_080A5DB4:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A5DBE:
	movs r0, #1
_080A5DC0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A5DC8: .4byte 0x00000276
_080A5DCC: .4byte 0x00000277
_080A5DD0: .4byte 0x0000027B

	thumb_func_start sub_080A5DD4
sub_080A5DD4: @ 0x080A5DD4
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A5DEE
	cmp r0, #1
	beq _080A5DF8
	movs r0, #0
	b _080A5E0E
_080A5DEE:
	ldr r1, [r2, #0x1c]
	movs r4, #0x8a
	lsls r4, r4, #3
	adds r1, r1, r4
	b _080A5E00
_080A5DF8:
	ldr r1, [r2, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
_080A5E00:
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
_080A5E0E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A5E14
sub_080A5E14: @ 0x080A5E14
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	b _080A5E94
_080A5E1C:
	adds r0, r6, #0
	bl sub_08072AA4
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5E90
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5E90
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5E90
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5E92
_080A5E90:
	adds r7, #1
_080A5E92:
	adds r6, #1
_080A5E94:
	bl sub_08072A88
	cmp r6, r0
	blt _080A5E1C
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A5EA4
sub_080A5EA4: @ 0x080A5EA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A5ED0
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x31
	bgt _080A5ED0
	movs r0, #0x90
	b _080A5F2C
_080A5ED0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A5F08
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A5F04 @ =0x00000277
	cmp r0, #0x37
	bge _080A5F2A
	b _080A5F28
	.align 2, 0
_080A5F04: .4byte 0x00000277
_080A5F08:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A5F38 @ =0x00000276
	cmp r0, #0x28
	blt _080A5F2A
	adds r1, #1
	cmp r0, #0x46
	blt _080A5F2A
	subs r1, #0xbd
	cmp r0, #0x55
	blt _080A5F2A
	adds r1, #2
	cmp r0, #0x5f
	bge _080A5F2A
_080A5F28:
	subs r1, #1
_080A5F2A:
	adds r0, r1, #0
_080A5F2C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A5F38: .4byte 0x00000276

	thumb_func_start sub_080A5F3C
sub_080A5F3C: @ 0x080A5F3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A5F68
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x31
	bgt _080A5F68
	movs r0, #0x90
	b _080A5F7A
_080A5F68:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A5F88 @ =0x00000277
	cmp r0, #0x3c
	bge _080A5F78
	subs r1, #1
_080A5F78:
	adds r0, r1, #0
_080A5F7A:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A5F88: .4byte 0x00000277

	thumb_func_start sub_080A5F8C
sub_080A5F8C: @ 0x080A5F8C
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A5FA4
	cmp r0, #1
	beq _080A5FAE
	movs r0, #0
	b _080A5FC2
_080A5FA4:
	ldr r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A5FB6
_080A5FAE:
	ldr r1, [r2, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
_080A5FB6:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080A5FC2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A5FC8
sub_080A5FC8: @ 0x080A5FC8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
_080A5FCC:
	movs r5, #0
	movs r4, #0
	b _080A5FEA
_080A5FD2:
	adds r0, r4, #0
	bl sub_08072AA4
	movs r1, #2
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5FE8
	movs r5, #1
_080A5FE8:
	adds r4, #1
_080A5FEA:
	bl sub_08072A88
	cmp r4, r0
	blt _080A5FD2
	cmp r5, #1
	bne _080A6008
	ldr r0, _080A6004 @ =0x00000279
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A5FCC
	.align 2, 0
_080A6004: .4byte 0x00000279
_080A6008:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6010
sub_080A6010: @ 0x080A6010
	push {lr}
	ldr r2, _080A6024 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A6028 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A6024: .4byte 0x09F642A0
_080A6028: .4byte 0x09F64318

	thumb_func_start sub_080A602C
sub_080A602C: @ 0x080A602C
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A6036
	adds r2, r1, #0
_080A6036:
	adds r1, r2, #0
	bl sub_08081494
	pop {r0}
	bx r0

	thumb_func_start sub_080A6040
sub_080A6040: @ 0x080A6040
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A6062
	movs r0, #0x9c
	lsls r0, r0, #2
	b _080A6064
_080A6062:
	ldr r0, _080A6070 @ =0x0000026F
_080A6064:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6070: .4byte 0x0000026F

	thumb_func_start sub_080A6074
sub_080A6074: @ 0x080A6074
	push {lr}
	ldr r2, _080A6088 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A608C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A6088: .4byte 0x09F642A0
_080A608C: .4byte 0x09F64318

	thumb_func_start sub_080A6090
sub_080A6090: @ 0x080A6090
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A609A
	adds r2, r1, #0
_080A609A:
	adds r1, r2, #0
	bl sub_08081494
	pop {r0}
	bx r0

	thumb_func_start sub_080A60A4
sub_080A60A4: @ 0x080A60A4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A60BE
	cmp r2, #1
	bne _080A60DA
_080A60BE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A60DC
_080A60DA:
	movs r0, #0
_080A60DC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A60E4
sub_080A60E4: @ 0x080A60E4
	bx lr
	.align 2, 0

	thumb_func_start sub_080A60E8
sub_080A60E8: @ 0x080A60E8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	cmp r4, r0
	bgt _080A6134
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
_080A6134:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A613C
sub_080A613C: @ 0x080A613C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl _call_via_r2
	cmp r4, r0
	bgt _080A6188
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl _call_via_r3
_080A6188:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6190
sub_080A6190: @ 0x080A6190
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x3c
	bl _call_via_r2
	cmp r4, r0
	bgt _080A61DC
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
_080A61DC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A61E4
sub_080A61E4: @ 0x080A61E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x50
	bl _call_via_r2
	cmp r4, r0
	bgt _080A6230
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080A6230:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6238
sub_080A6238: @ 0x080A6238
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl unit_a0__4UnitUi
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A62F6
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A62F6
	lsls r0, r0, #2
	ldr r1, _080A6270 @ =_080A6274
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6270: .4byte _080A6274
_080A6274: @ jump table
	.4byte _080A6288 @ case 0
	.4byte _080A629E @ case 1
	.4byte _080A62B4 @ case 2
	.4byte _080A62CA @ case 3
	.4byte _080A62E0 @ case 4
_080A6288:
	ldr r1, [r4, #0x1c]
	movs r2, #0x91
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A629E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x92
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A62B4:
	ldr r1, [r4, #0x1c]
	movs r0, #0x93
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A62CA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A62E0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x95
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A62F6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A62FC
sub_080A62FC: @ 0x080A62FC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	ldr r1, _080A6350 @ =0x01A90000
	cmp r0, r1
	bne _080A6346
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6354 @ =0x00000265
	cmp r0, #0xf
	blt _080A633A
	adds r1, #3
	cmp r0, #0x23
	blt _080A633A
	adds r1, #3
	cmp r0, #0x50
	bge _080A633A
	subs r1, #2
_080A633A:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6346:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6350: .4byte 0x01A90000
_080A6354: .4byte 0x00000265

	thumb_func_start sub_080A6358
sub_080A6358: @ 0x080A6358
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	ldr r1, _080A63B0 @ =0x01A90000
	cmp r0, r1
	bne _080A63A8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A63B4 @ =0x00000265
	cmp r0, #0xf
	blt _080A639C
	adds r1, #2
	cmp r0, #0x1e
	blt _080A639C
	adds r1, #1
	cmp r0, #0x46
	blt _080A639C
	adds r1, #3
	cmp r0, #0x50
	bge _080A639C
	subs r1, #1
_080A639C:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A63A8:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A63B0: .4byte 0x01A90000
_080A63B4: .4byte 0x00000265

	thumb_func_start sub_080A63B8
sub_080A63B8: @ 0x080A63B8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	ldr r1, _080A6410 @ =0x01A90000
	cmp r0, r1
	bne _080A6408
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6414 @ =0x00000265
	cmp r0, #0xf
	blt _080A63FC
	adds r1, #2
	cmp r0, #0x32
	blt _080A63FC
	adds r1, #3
	cmp r0, #0x41
	blt _080A63FC
	adds r1, #1
	cmp r0, #0x4b
	bge _080A63FC
	subs r1, #5
_080A63FC:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6408:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6410: .4byte 0x01A90000
_080A6414: .4byte 0x00000265

	thumb_func_start sub_080A6418
sub_080A6418: @ 0x080A6418
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	ldr r1, _080A6470 @ =0x01A90000
	cmp r0, r1
	bne _080A6468
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6474 @ =0x00000265
	cmp r0, #0x14
	blt _080A645C
	adds r1, #2
	cmp r0, #0x37
	blt _080A645C
	adds r1, #7
	cmp r0, #0x41
	blt _080A645C
	subs r1, #4
	cmp r0, #0x50
	bge _080A645C
	subs r1, #4
_080A645C:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6468:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6470: .4byte 0x01A90000
_080A6474: .4byte 0x00000265

	thumb_func_start sub_080A6478
sub_080A6478: @ 0x080A6478
	movs r0, #1
	bx lr

	thumb_func_start sub_080A647C
sub_080A647C: @ 0x080A647C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6512
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6512
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6512
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6512
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A6514
_080A6512:
	movs r0, #0
_080A6514:
	cmp r0, #0
	beq _080A6582
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A6582
	lsls r0, r0, #2
	ldr r1, _080A6530 @ =_080A6534
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6530: .4byte _080A6534
_080A6534: @ jump table
	.4byte _080A6548 @ case 0
	.4byte _080A6552 @ case 1
	.4byte _080A655A @ case 2
	.4byte _080A6562 @ case 3
	.4byte _080A656A @ case 4
_080A6548:
	ldr r1, [r4, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #3
	adds r1, r1, r2
	b _080A6572
_080A6552:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	b _080A6570
_080A655A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #3
	b _080A6570
_080A6562:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8f
	lsls r0, r0, #3
	b _080A6570
_080A656A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #3
_080A6570:
	adds r1, r1, r0
_080A6572:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _080A6584
_080A6582:
	movs r0, #0
_080A6584:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A658C
sub_080A658C: @ 0x080A658C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A65B0
	ldr r0, _080A65AC @ =0x000001A9
	b _080A660E
	.align 2, 0
_080A65AC: .4byte 0x000001A9
_080A65B0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A65E8 @ =0x00000269
	cmp r0, r5
	bne _080A65F0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A65EC @ =0x00000265
	cmp r1, #0x1e
	blt _080A660E
	adds r0, #6
	cmp r1, #0x41
	bge _080A660E
	subs r0, #3
	b _080A660E
	.align 2, 0
_080A65E8: .4byte 0x00000269
_080A65EC: .4byte 0x00000265
_080A65F0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A661C @ =0x00000265
	cmp r0, #0xf
	blt _080A660C
	adds r1, #3
	cmp r0, #0x23
	blt _080A660C
	adds r1, #3
	cmp r0, #0x50
	bge _080A660C
	adds r1, r5, #0
_080A660C:
	adds r0, r1, #0
_080A660E:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A661C: .4byte 0x00000265

	thumb_func_start sub_080A6620
sub_080A6620: @ 0x080A6620
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A6644
	ldr r0, _080A6640 @ =0x000001A9
	b _080A66AC
	.align 2, 0
_080A6640: .4byte 0x000001A9
_080A6644:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A6680 @ =0x0000026A
	cmp r0, r5
	bne _080A6688
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6684 @ =0x00000265
	cmp r0, #0x14
	blt _080A66AA
	adds r1, #2
	cmp r0, #0x28
	blt _080A66AA
	adds r1, #4
	cmp r0, #0x50
	bge _080A66AA
	subs r1, #3
	b _080A66AA
	.align 2, 0
_080A6680: .4byte 0x0000026A
_080A6684: .4byte 0x00000265
_080A6688:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A66B8 @ =0x00000265
	cmp r0, #0xf
	blt _080A66AA
	adds r1, #2
	cmp r0, #0x1e
	blt _080A66AA
	adds r1, #1
	cmp r0, #0x46
	blt _080A66AA
	adds r1, #3
	cmp r0, #0x50
	bge _080A66AA
	adds r1, r5, #0
_080A66AA:
	adds r0, r1, #0
_080A66AC:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A66B8: .4byte 0x00000265

	thumb_func_start sub_080A66BC
sub_080A66BC: @ 0x080A66BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A66E0
	ldr r0, _080A66DC @ =0x000001A9
	b _080A678C
	.align 2, 0
_080A66DC: .4byte 0x000001A9
_080A66E0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A671C @ =0x0000026A
	cmp r0, r5
	bne _080A6724
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6720 @ =0x00000265
	cmp r0, #0x14
	blt _080A678A
	adds r1, #2
	cmp r0, #0x3c
	blt _080A678A
	subs r1, #1
	cmp r0, #0x46
	bge _080A678A
	adds r1, #8
	b _080A678A
	.align 2, 0
_080A671C: .4byte 0x0000026A
_080A6720: .4byte 0x00000265
_080A6724:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080A6760 @ =0x00000266
	cmp r0, r6
	bne _080A6768
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6764 @ =0x00000265
	cmp r0, #0x14
	blt _080A678A
	adds r1, #2
	cmp r0, #0x3c
	blt _080A678A
	adds r1, #4
	cmp r0, #0x4b
	bge _080A678A
	adds r1, r5, #0
	b _080A678A
	.align 2, 0
_080A6760: .4byte 0x00000266
_080A6764: .4byte 0x00000265
_080A6768:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6798 @ =0x00000265
	cmp r0, #0xf
	blt _080A678A
	adds r1, #2
	cmp r0, #0x32
	blt _080A678A
	adds r1, r5, #0
	cmp r0, #0x41
	blt _080A678A
	ldr r1, _080A679C @ =0x0000026B
	cmp r0, #0x4b
	bge _080A678A
	adds r1, r6, #0
_080A678A:
	adds r0, r1, #0
_080A678C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A6798: .4byte 0x00000265
_080A679C: .4byte 0x0000026B

	thumb_func_start sub_080A67A0
sub_080A67A0: @ 0x080A67A0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A67C4
	ldr r0, _080A67C0 @ =0x000001A9
	b _080A6880
	.align 2, 0
_080A67C0: .4byte 0x000001A9
_080A67C4:
	ldr r1, [r4, #0x1c]
	movs r6, #0x85
	lsls r6, r6, #3
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r7, _080A6810 @ =0x0000026E
	cmp r0, r7
	beq _080A67FC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A6814 @ =0x00000266
	cmp r0, r5
	bne _080A681C
_080A67FC:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6818 @ =0x00000267
	cmp r0, #0x32
	bge _080A687E
	subs r1, #2
	b _080A687E
	.align 2, 0
_080A6810: .4byte 0x0000026E
_080A6814: .4byte 0x00000266
_080A6818: .4byte 0x00000267
_080A681C:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080A6854 @ =0x0000026A
	cmp r0, r6
	bne _080A685C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6858 @ =0x00000265
	cmp r0, #0x19
	blt _080A687E
	adds r1, #2
	cmp r0, #0x41
	blt _080A687E
	adds r1, r5, #0
	cmp r0, #0x50
	bge _080A687E
	adds r1, r7, #0
	b _080A687E
	.align 2, 0
_080A6854: .4byte 0x0000026A
_080A6858: .4byte 0x00000265
_080A685C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A688C @ =0x00000265
	cmp r0, #0x14
	blt _080A687E
	adds r1, #2
	cmp r0, #0x37
	blt _080A687E
	adds r1, r7, #0
	cmp r0, #0x41
	blt _080A687E
	adds r1, r6, #0
	cmp r0, #0x50
	bge _080A687E
	adds r1, r5, #0
_080A687E:
	adds r0, r1, #0
_080A6880:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A688C: .4byte 0x00000265

	thumb_func_start sub_080A6890
sub_080A6890: @ 0x080A6890
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080A68D4 @ =0x0000026E
	cmp r0, r6
	beq _080A68D0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A68D8 @ =0x00000266
	cmp r0, r5
	bne _080A68E0
_080A68D0:
	ldr r0, _080A68DC @ =0x00000265
	b _080A68F8
	.align 2, 0
_080A68D4: .4byte 0x0000026E
_080A68D8: .4byte 0x00000266
_080A68DC: .4byte 0x00000265
_080A68E0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A6904 @ =0x00000265
	cmp r1, #0x3c
	blt _080A68F8
	adds r0, r5, #0
	cmp r1, #0x50
	bge _080A68F8
	adds r0, r6, #0
_080A68F8:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A6904: .4byte 0x00000265

	thumb_func_start sub_080A6908
sub_080A6908: @ 0x080A6908
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A6974
	lsls r0, r0, #2
	ldr r1, _080A6924 @ =_080A6928
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6924: .4byte _080A6928
_080A6928: @ jump table
	.4byte _080A693C @ case 0
	.4byte _080A6946 @ case 1
	.4byte _080A694E @ case 2
	.4byte _080A6956 @ case 3
	.4byte _080A695E @ case 4
_080A693C:
	ldr r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A6966
_080A6946:
	ldr r1, [r2, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	b _080A6964
_080A694E:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	b _080A6964
_080A6956:
	ldr r1, [r2, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	b _080A6964
_080A695E:
	ldr r1, [r2, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
_080A6964:
	adds r1, r1, r0
_080A6966:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A6976
_080A6974:
	movs r0, #0
_080A6976:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A697C
sub_080A697C: @ 0x080A697C
	push {lr}
	ldr r2, _080A6990 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A6994 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A6990: .4byte 0x09F642A0
_080A6994: .4byte 0x09F64318

	thumb_func_start sub_080A6998
sub_080A6998: @ 0x080A6998
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #1
	bgt _080A69AC
	ldr r0, _080A69A8 @ =0x0000026D
	b _080A69DA
	.align 2, 0
_080A69A8: .4byte 0x0000026D
_080A69AC:
	bl sub_08072DFC
	cmp r0, #2
	bgt _080A69BA
	movs r0, #0x9b
	lsls r0, r0, #2
	b _080A69DA
_080A69BA:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xd7
	lsls r1, r1, #1
	cmp r0, #0x19
	blt _080A69D8
	adds r1, #1
	cmp r0, #0x32
	blt _080A69D8
	adds r1, #2
	cmp r0, #0x4b
	bge _080A69D8
	subs r1, #1
_080A69D8:
	adds r0, r1, #0
_080A69DA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A69E8
sub_080A69E8: @ 0x080A69E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #1
	bgt _080A69FC
	ldr r0, _080A69F8 @ =0x0000026D
	b _080A6A1C
	.align 2, 0
_080A69F8: .4byte 0x0000026D
_080A69FC:
	bl sub_08072DFC
	cmp r0, #2
	bgt _080A6A0A
	movs r0, #0x9b
	lsls r0, r0, #2
	b _080A6A1C
_080A6A0A:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6A28 @ =0x000001B9
	cmp r0, #0x37
	bge _080A6A1A
	subs r1, #0xf
_080A6A1A:
	adds r0, r1, #0
_080A6A1C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6A28: .4byte 0x000001B9

	thumb_func_start sub_080A6A2C
sub_080A6A2C: @ 0x080A6A2C
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6A44
	cmp r0, #1
	beq _080A6A4E
	movs r0, #0
	b _080A6A62
_080A6A44:
	ldr r1, [r2, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A6A56
_080A6A4E:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
_080A6A56:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080A6A62:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A6A68
sub_080A6A68: @ 0x080A6A68
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A6A82
	cmp r2, #1
	bne _080A6A9E
_080A6A82:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A6AA0
_080A6A9E:
	movs r0, #0
_080A6AA0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A6AA8
sub_080A6AA8: @ 0x080A6AA8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6ABE
	cmp r0, #1
	beq _080A6AE8
	b _080A6B10
_080A6ABE:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _080A6B10
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	b _080A6B10
_080A6AE8:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	movs r0, #2
	movs r1, #3
	bl sub_08070660
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080A6B10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6B18
sub_080A6B18: @ 0x080A6B18
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A6B42
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6B42:
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6B50
sub_080A6B50: @ 0x080A6B50
	push {lr}
	ldr r2, _080A6B64 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A6B68 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A6B64: .4byte 0x09F642A0
_080A6B68: .4byte 0x09F64318

	thumb_func_start sub_080A6B6C
sub_080A6B6C: @ 0x080A6B6C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xd7
	lsls r1, r1, #1
	cmp r0, #0x19
	blt _080A6B8E
	adds r1, #1
	cmp r0, #0x32
	blt _080A6B8E
	adds r1, #2
	cmp r0, #0x4b
	bge _080A6B8E
	subs r1, #1
_080A6B8E:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A6B9C
sub_080A6B9C: @ 0x080A6B9C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A6BC0 @ =0x000001B9
	cmp r0, #0x37
	bge _080A6BB0
	subs r1, #0xf
_080A6BB0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6BC0: .4byte 0x000001B9

	thumb_func_start sub_080A6BC4
sub_080A6BC4: @ 0x080A6BC4
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6BDC
	cmp r0, #1
	beq _080A6BE6
	movs r0, #0
	b _080A6BFA
_080A6BDC:
	ldr r1, [r2, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A6BEE
_080A6BE6:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
_080A6BEE:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080A6BFA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A6C00
sub_080A6C00: @ 0x080A6C00
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A6C1A
	cmp r2, #1
	bne _080A6C36
_080A6C1A:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A6C38
_080A6C36:
	movs r0, #0
_080A6C38:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A6C40
sub_080A6C40: @ 0x080A6C40
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6C56
	cmp r0, #1
	beq _080A6C80
	b _080A6CA8
_080A6C56:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _080A6CA8
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	b _080A6CA8
_080A6C80:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	movs r0, #2
	movs r1, #3
	bl sub_08070660
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080A6CA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6CB0
sub_080A6CB0: @ 0x080A6CB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A6CDA
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6CDA:
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6CE8
sub_080A6CE8: @ 0x080A6CE8
	push {lr}
	ldr r2, _080A6CFC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A6D00 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A6CFC: .4byte 0x09F642A0
_080A6D00: .4byte 0x09F64318

	thumb_func_start sub_080A6D04
sub_080A6D04: @ 0x080A6D04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	bl unit_98__4UnitUi
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A6D2A
	b _080A6E8C
_080A6D2A:
	ldr r1, [r6, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080A6D44
	b _080A6E8C
_080A6D44:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6D64
	b _080A6E8C
_080A6D64:
	movs r0, #0x14
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r0, _080A6EC0 @ =0x0000064E
	bl sub_08070824
	movs r0, #0x47
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	movs r2, #1
	bl sub_08073734
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x49
	adds r1, r4, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r0, sp, #0x1c
	bl sub_0806E274
	add r0, sp, #0x28
	bl sub_0806E274
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x1c
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x10
	movs r1, #2
	bl sub_0806E308
_080A6E8C:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A6F42
	adds r0, r6, #0
	movs r1, #1
	bl sub_08073FC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6EC4
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #3
	b _080A6F40
	.align 2, 0
_080A6EC0: .4byte 0x0000064E
_080A6EC4:
	adds r0, r6, #0
	movs r1, #0xf
	bl sub_0807404C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6F04
	adds r0, r6, #0
	movs r1, #0x10
	bl sub_0807404C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6F04
	adds r0, r6, #0
	movs r1, #0x11
	bl sub_0807404C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6F04
	adds r0, r6, #0
	movs r1, #0x12
	bl sub_0807404C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6F10
_080A6F04:
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #5
	b _080A6F40
_080A6F10:
	adds r0, r6, #0
	bl sub_08074020
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6F42
	ldr r1, [r6, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A6F42
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #4
_080A6F40:
	str r0, [r1]
_080A6F42:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6F4C
sub_080A6F4C: @ 0x080A6F4C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6FE2
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6FE2
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6FE2
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6FE2
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A6FE4
_080A6FE2:
	movs r0, #0
_080A6FE4:
	cmp r0, #0
	bne _080A6FEC
	movs r0, #0
	b _080A705C
_080A6FEC:
	ldr r6, _080A7024 @ =0x0000019F
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A702C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	adds r0, r6, #0
	cmp r1, #0x2d
	blt _080A7016
	ldr r0, _080A7028 @ =0x000001A3
	cmp r1, #0x50
	bge _080A7016
	subs r0, #1
_080A7016:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A705A
	.align 2, 0
_080A7024: .4byte 0x0000019F
_080A7028: .4byte 0x000001A3
_080A702C:
	movs r1, #0xd3
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A705A
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080A705A:
	movs r0, #1
_080A705C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A7064
sub_080A7064: @ 0x080A7064
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x12
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x13
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A710C
_080A7108:
	movs r0, #1
	b _080A710E
_080A710C:
	movs r0, #0
_080A710E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7114
sub_080A7114: @ 0x080A7114
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	b _080A71C8
_080A711C:
	adds r0, r6, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1b
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x31
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A71C6
_080A71C4:
	adds r7, #1
_080A71C6:
	adds r6, #1
_080A71C8:
	bl sub_080729DC
	cmp r6, r0
	blt _080A711C
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A71D8
sub_080A71D8: @ 0x080A71D8
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r5, #0
	b _080A7228
_080A71E0:
	adds r0, r5, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7224
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7226
_080A7224:
	adds r6, #1
_080A7226:
	adds r5, #1
_080A7228:
	bl sub_080729DC
	cmp r5, r0
	blt _080A71E0
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7238
sub_080A7238: @ 0x080A7238
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r5, #0
	b _080A7288
_080A7240:
	adds r0, r5, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7284
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7286
_080A7284:
	adds r6, #1
_080A7286:
	adds r5, #1
_080A7288:
	bl sub_080729DC
	cmp r5, r0
	blt _080A7240
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7298
sub_080A7298: @ 0x080A7298
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A72C0
	movs r3, #0xac
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #6
	str r0, [r1]
_080A72C0:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A72E4
	movs r3, #0xae
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
_080A72E4:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A7308
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
_080A7308:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080A732C
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #5
	str r0, [r1]
_080A732C:
	movs r4, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	movs r3, #0
	adds r2, r6, r1
_080A733A:
	ldr r1, [r2]
	cmp r1, r0
	ble _080A7344
	adds r4, r3, #0
	adds r0, r1, #0
_080A7344:
	adds r2, #4
	adds r3, #1
	cmp r3, #6
	ble _080A733A
	movs r2, #0
	movs r1, #6
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r0, r6, r3
_080A7356:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _080A7356
	cmp r4, #6
	bhi _080A73E8
	lsls r0, r4, #2
	ldr r1, _080A7370 @ =_080A7374
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A7370: .4byte _080A7374
_080A7374: @ jump table
	.4byte _080A7390 @ case 0
	.4byte _080A73A0 @ case 1
	.4byte _080A73AC @ case 2
	.4byte _080A73BC @ case 3
	.4byte _080A73C6 @ case 4
	.4byte _080A73D0 @ case 5
	.4byte _080A73DC @ case 6
_080A7390:
	ldr r0, _080A739C @ =0x000001A5
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
	.align 2, 0
_080A739C: .4byte 0x000001A5
_080A73A0:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73AC:
	ldr r0, _080A73B8 @ =0x000001A9
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
	.align 2, 0
_080A73B8: .4byte 0x000001A9
_080A73BC:
	movs r0, #0x90
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73C6:
	movs r0, #0x90
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73D0:
	movs r0, #0xc7
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73DC:
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73E8:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A7440
	ldr r0, [r6, #0x1c]
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A7440:
	movs r0, #0
_080A7442:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7448
sub_080A7448: @ 0x080A7448
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A746A
	movs r0, #0xd3
	lsls r0, r0, #1
	b _080A74D4
_080A746A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A74B0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A74AC @ =0x0000019F
	cmp r0, #0xf
	blt _080A74D2
	adds r1, #1
	cmp r0, #0x2d
	blt _080A74D2
	adds r1, #2
	cmp r0, #0x41
	bge _080A74D2
	subs r1, #1
	b _080A74D2
	.align 2, 0
_080A74AC: .4byte 0x0000019F
_080A74B0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A74E0 @ =0x0000019F
	cmp r0, #0xa
	blt _080A74D2
	adds r1, #1
	cmp r0, #0x23
	blt _080A74D2
	adds r1, #1
	cmp r0, #0x32
	blt _080A74D2
	adds r1, #5
	cmp r0, #0x46
	bge _080A74D2
	subs r1, #4
_080A74D2:
	adds r0, r1, #0
_080A74D4:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A74E0: .4byte 0x0000019F

	thumb_func_start sub_080A74E4
sub_080A74E4: @ 0x080A74E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A7518 @ =0x0000019F
	cmp r0, #0xf
	blt _080A750A
	adds r1, #1
	cmp r0, #0x32
	blt _080A750A
	adds r1, #1
	cmp r0, #0x46
	blt _080A750A
	adds r1, #2
	cmp r0, #0x5a
	bge _080A750A
	subs r1, #1
_080A750A:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A7518: .4byte 0x0000019F

	thumb_func_start sub_080A751C
sub_080A751C: @ 0x080A751C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A756C
	ldr r1, [r6, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #3
	bl sub_0807067C
	cmp r0, #0
	bne _080A756C
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A7602
_080A756C:
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A75D4
	cmp r0, #1
	beq _080A75EA
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A7600
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7602
_080A75D4:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A7602
_080A75EA:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A7602
_080A7600:
	movs r0, #0
_080A7602:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7608
sub_080A7608: @ 0x080A7608
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A7622
	cmp r2, #1
	bne _080A763E
_080A7622:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A7640
_080A763E:
	movs r0, #0
_080A7640:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A7648
sub_080A7648: @ 0x080A7648
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080A7694
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080A7694:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A769C
sub_080A769C: @ 0x080A769C
	push {lr}
	ldr r2, _080A76B0 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A76B4 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A76B0: .4byte 0x09F642A0
_080A76B4: .4byte 0x09F64318

	thumb_func_start sub_080A76B8
sub_080A76B8: @ 0x080A76B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A774E
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A774E
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A774E
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A774E
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A7750
_080A774E:
	movs r0, #0
_080A7750:
	cmp r0, #0
	bne _080A7758
	movs r0, #0
	b _080A7776
_080A7758:
	adds r0, r5, #0
	movs r1, #0xaa
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7774
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A7774:
	movs r0, #1
_080A7776:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A777C
sub_080A777C: @ 0x080A777C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A77C4
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A77C0 @ =0x00000241
	cmp r0, #0x3c
	blt _080A77BC
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x50
	blt _080A77BC
	movs r1, #0x6d
	cmp r0, #0x5a
	blt _080A77BC
	movs r1, #0xaa
	cmp r0, #0x5f
	bge _080A77BC
_080A77BA:
	movs r1, #0x4a
_080A77BC:
	adds r0, r1, #0
	b _080A7808
	.align 2, 0
_080A77C0: .4byte 0x00000241
_080A77C4:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080A77EE
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x1e
	blt _080A77BC
	movs r1, #0x6d
	cmp r0, #0x46
	blt _080A77BC
	movs r1, #0xaa
	cmp r0, #0x50
	bge _080A77BC
	b _080A77BA
_080A77EE:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A7808
	movs r0, #0x4a
	cmp r1, #0x50
	bge _080A7808
	movs r0, #0x6d
_080A7808:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7814
sub_080A7814: @ 0x080A7814
	push {lr}
	ldr r2, _080A7828 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A782C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A7828: .4byte 0x09F642A0
_080A782C: .4byte 0x09F64318

	thumb_func_start sub_080A7830
sub_080A7830: @ 0x080A7830
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl unit_a0__4UnitUi
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A789C
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A789C
	ldr r1, [r4, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080A789C
	ldr r1, [r5, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080A789C
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A789C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A78A4
sub_080A78A4: @ 0x080A78A4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl unit_88__4UnitUi
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A78CA
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
_080A78CA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A78D0
sub_080A78D0: @ 0x080A78D0
	push {r4, lr}
	movs r4, #0
	b _080A791C
_080A78D6:
	adds r0, r4, #0
	bl sub_08072EC4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #4
	beq _080A7912
	adds r0, r4, #0
	bl sub_08072EC4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #3
	bne _080A791A
_080A7912:
	adds r0, r4, #0
	bl sub_08072EC4
	b _080A7926
_080A791A:
	adds r4, #1
_080A791C:
	bl sub_08072EA8
	cmp r4, r0
	blt _080A78D6
	movs r0, #0
_080A7926:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A792C
sub_080A792C: @ 0x080A792C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080A7978 @ =0x0000019D
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A797C
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r3, r0, #0
	cmp r3, #0
	beq _080A797C
	ldr r1, [r5, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
	movs r0, #1
	b _080A7984
	.align 2, 0
_080A7978: .4byte 0x0000019D
_080A797C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08080EB8
_080A7984:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A798C
sub_080A798C: @ 0x080A798C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A79B0 @ =0x0000019D
	cmp r0, #0x46
	bge _080A79A0
	movs r1, #0x6d
_080A79A0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A79B0: .4byte 0x0000019D

	thumb_func_start sub_080A79B4
sub_080A79B4: @ 0x080A79B4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A79D0
	ldr r0, _080A79DC @ =0x00000129
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A79D0:
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A79DC: .4byte 0x00000129

	thumb_func_start sub_080A79E0
sub_080A79E0: @ 0x080A79E0
	push {lr}
	ldr r2, _080A79F4 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A79F8 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A79F4: .4byte 0x09F642A0
_080A79F8: .4byte 0x09F64318

	thumb_func_start sub_080A79FC
sub_080A79FC: @ 0x080A79FC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7A92
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7A92
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7A92
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7A92
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A7A94
_080A7A92:
	movs r0, #0
_080A7A94:
	cmp r0, #0
	bne _080A7A9C
	movs r0, #0
	b _080A7ABA
_080A7A9C:
	ldr r1, _080A7AC0 @ =0x00000243
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7AB8
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A7AB8:
	movs r0, #1
_080A7ABA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A7AC0: .4byte 0x00000243

	thumb_func_start sub_080A7AC4
sub_080A7AC4: @ 0x080A7AC4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080A7AF4
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x46
	blt _080A7B08
	ldr r0, _080A7AF0 @ =0x00000243
	cmp r1, #0x55
	bge _080A7B08
	subs r0, #0x6f
	b _080A7B08
	.align 2, 0
_080A7AF0: .4byte 0x00000243
_080A7AF4:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xea
	lsls r1, r1, #1
	cmp r0, #0x50
	bge _080A7B06
	subs r1, #0xd0
_080A7B06:
	adds r0, r1, #0
_080A7B08:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7B14
sub_080A7B14: @ 0x080A7B14
	push {lr}
	ldr r2, _080A7B28 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A7B2C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A7B28: .4byte 0x09F642A0
_080A7B2C: .4byte 0x09F64318

	thumb_func_start sub_080A7B30
sub_080A7B30: @ 0x080A7B30
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7BC6
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7BC6
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7BC6
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7BC6
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A7BC8
_080A7BC6:
	movs r0, #0
_080A7BC8:
	cmp r0, #0
	bne _080A7BD0
	movs r0, #0
	b _080A7BEE
_080A7BD0:
	adds r0, r5, #0
	movs r1, #0x50
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7BEC
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A7BEC:
	movs r0, #1
_080A7BEE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7BF4
sub_080A7BF4: @ 0x080A7BF4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080A7C48
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x19
	blt _080A7CEA
	ldr r0, _080A7C44 @ =0x0000022A
	cmp r1, #0x3c
	bge _080A7CEA
	movs r0, #0x6d
	b _080A7CEA
	.align 2, 0
_080A7C44: .4byte 0x0000022A
_080A7C48:
	bl sub_08072DFC
	cmp r0, #2
	bgt _080A7CA2
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080A7C7C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x14
	blt _080A7CE8
	movs r1, #0x23
	cmp r0, #0x37
	blt _080A7CE8
	movs r1, #0xc3
	cmp r0, #0x41
	bge _080A7CE8
	movs r1, #0x28
	b _080A7CE8
_080A7C7C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0xf
	blt _080A7CE8
	movs r1, #0x50
	cmp r0, #0x2d
	blt _080A7CE8
	movs r1, #0x23
	cmp r0, #0x4b
	blt _080A7CE8
	movs r1, #0xc3
	cmp r0, #0x50
	bge _080A7CE8
	movs r1, #0x28
	b _080A7CE8
_080A7CA2:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	ble _080A7CCA
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x1e
	blt _080A7CEA
	movs r0, #0x28
	cmp r1, #0x50
	bge _080A7CEA
	movs r0, #0x23
	b _080A7CEA
_080A7CCA:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x14
	blt _080A7CE8
	movs r1, #0x50
	cmp r0, #0x32
	blt _080A7CE8
	movs r1, #0x28
	cmp r0, #0x5a
	bge _080A7CE8
	movs r1, #0x23
_080A7CE8:
	adds r0, r1, #0
_080A7CEA:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A7CF8
sub_080A7CF8: @ 0x080A7CF8
	push {lr}
	ldr r2, _080A7D0C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A7D10 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A7D0C: .4byte 0x09F642A0
_080A7D10: .4byte 0x09F64318

	thumb_func_start sub_080A7D14
sub_080A7D14: @ 0x080A7D14
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r1, r5, #0
	bl unit_270__4UnitUi
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r5, #0x16
	bne _080A7D5E
	ldr r1, [r4, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	cmp r0, #0
	bgt _080A7D5E
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	b _080A7D94
_080A7D5E:
	cmp r5, #0x19
	bne _080A7D98
	ldr r1, [r4, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	cmp r0, #0
	bgt _080A7D98
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
_080A7D94:
	adds r1, r4, r2
	str r0, [r1]
_080A7D98:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7DA0
sub_080A7DA0: @ 0x080A7DA0
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	blt _080A7DBA
	cmp r2, #1
	bne _080A7DD6
_080A7DBA:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A7DD8
_080A7DD6:
	movs r0, #0
_080A7DD8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A7DE0
sub_080A7DE0: @ 0x080A7DE0
	push {r4, r5, r6, lr}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080A7E30
	ldr r1, [r5, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	b _080A7EEA
_080A7E30:
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x3c
	bl _call_via_r2
	cmp r4, r0
	bge _080A7EEA
	ldr r1, [r5, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7EEA
	ldr r0, _080A7EF4 @ =0x00000237
	adds r1, r5, #0
	bl sub_080741AC
	bl sub_08074234
	movs r0, #0x78
	bl sub_0807068C
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_0806E274
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	ldr r1, _080A7EF8 @ =0x000004EB
	str r4, [sp]
	add r0, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x34
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_080A7EEA:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7EF4: .4byte 0x00000237
_080A7EF8: .4byte 0x000004EB

	thumb_func_start sub_080A7EFC
sub_080A7EFC: @ 0x080A7EFC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7F92
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7F92
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7F92
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7F92
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A7F94
_080A7F92:
	movs r0, #0
_080A7F94:
	cmp r0, #0
	bne _080A7F9C
	movs r0, #0
	b _080A80A2
_080A7F9C:
	ldr r6, _080A7FD0 @ =0x00000243
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7FD4
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
	b _080A80A0
	.align 2, 0
_080A7FD0: .4byte 0x00000243
_080A7FD4:
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A804C
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A8020
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A801C @ =0x00000242
	cmp r0, #0x41
	bge _080A8018
	subs r1, #0x55
_080A8018:
	adds r0, r1, #0
	b _080A8038
	.align 2, 0
_080A801C: .4byte 0x00000242
_080A8020:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A8044 @ =0x000001ED
	cmp r1, #0x3c
	blt _080A8038
	adds r0, r6, #0
	cmp r1, #0x5a
	bge _080A8038
	ldr r0, _080A8048 @ =0x00000242
_080A8038:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A80A0
	.align 2, 0
_080A8044: .4byte 0x000001ED
_080A8048: .4byte 0x00000242
_080A804C:
	ldr r1, _080A80A8 @ =0x000001ED
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A806C
	ldr r1, _080A80AC @ =0x00000242
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A80A0
_080A806C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x45
	bgt _080A80A0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A80B0 @ =0x000001F1
	cmp r0, #0x19
	blt _080A8094
	adds r1, #1
	cmp r0, #0x32
	blt _080A8094
	subs r1, #2
	cmp r0, #0x4b
	bge _080A8094
	adds r1, #3
_080A8094:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A80A0:
	movs r0, #1
_080A80A2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A80A8: .4byte 0x000001ED
_080A80AC: .4byte 0x00000242
_080A80B0: .4byte 0x000001F1

	thumb_func_start sub_080A80B4
sub_080A80B4: @ 0x080A80B4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #6
	bgt _080A80E6
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xf7
	lsls r1, r1, #1
	cmp r0, #0x32
	bge _080A80E2
	subs r1, #1
_080A80E2:
	adds r0, r1, #0
	b _080A81FA
_080A80E6:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080A8112
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	bne _080A8112
	movs r0, #0xb5
	b _080A81FA
_080A8112:
	ldr r1, [r4, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #0
	bne _080A814E
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x2d
	blt _080A81FA
	movs r0, #0x88
	cmp r1, #0x50
	bge _080A81FA
	movs r0, #0x65
	b _080A81FA
_080A814E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #1
	beq _080A81F8
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #2
	bne _080A81A4
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x65
	cmp r0, #0x46
	bge _080A819A
	ldr r1, _080A81A0 @ =0x00000223
_080A819A:
	adds r0, r1, #0
	b _080A81FA
	.align 2, 0
_080A81A0: .4byte 0x00000223
_080A81A4:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #3
	beq _080A81F8
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #4
	bne _080A81F8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x23
	blt _080A81FA
	subs r0, #0xd5
	cmp r1, #0x37
	bge _080A81FA
	movs r0, #0xac
	b _080A81FA
_080A81F8:
	ldr r0, _080A8208 @ =0x000001F5
_080A81FA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A8208: .4byte 0x000001F5

	thumb_func_start sub_080A820C
sub_080A820C: @ 0x080A820C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x28
	bgt _080A823E
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xf7
	lsls r1, r1, #1
	cmp r0, #0x32
	bge _080A823A
	subs r1, #1
_080A823A:
	adds r0, r1, #0
	b _080A830A
_080A823E:
	ldr r1, [r4, #0x1c]
	movs r6, #0x84
	lsls r6, r6, #3
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A825A
_080A8256:
	movs r0, #0xb5
	b _080A830A
_080A825A:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080A827E
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	beq _080A8256
_080A827E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #3
	bl sub_0807067C
	cmp r0, #0
	bne _080A82BA
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x2d
	blt _080A830A
	movs r0, #0x88
	cmp r1, #0x50
	bge _080A830A
	movs r0, #0x65
	b _080A830A
_080A82BA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #3
	bl sub_0807067C
	cmp r0, #1
	bne _080A82F0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x65
	cmp r0, #0x46
	bge _080A823A
	ldr r1, _080A82EC @ =0x00000223
	b _080A823A
	.align 2, 0
_080A82EC: .4byte 0x00000223
_080A82F0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x23
	blt _080A830A
	subs r0, #0xd5
	cmp r1, #0x37
	bge _080A830A
	movs r0, #0xac
_080A830A:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A8318
sub_080A8318: @ 0x080A8318
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080A834A
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	bne _080A834A
	movs r0, #0xfa
	lsls r0, r0, #1
	b _080A83D6
_080A834A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A836C @ =0x00000191
	cmp r0, r5
	bne _080A8374
	ldr r0, _080A8370 @ =0x000001EF
	b _080A83D6
	.align 2, 0
_080A836C: .4byte 0x00000191
_080A8370: .4byte 0x000001EF
_080A8374:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A83B8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A83B0 @ =0x000001ED
	cmp r1, #0x28
	blt _080A83D6
	adds r0, r5, #0
	cmp r1, #0x50
	bge _080A83D6
	ldr r0, _080A83B4 @ =0x00000242
	b _080A83D6
	.align 2, 0
_080A83B0: .4byte 0x000001ED
_080A83B4: .4byte 0x00000242
_080A83B8:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A83E4 @ =0x000001ED
	cmp r0, #0x1e
	blt _080A83D4
	adds r1, #0x55
	cmp r0, #0x3c
	blt _080A83D4
	adds r1, #1
	cmp r0, #0x50
	bge _080A83D4
	adds r1, r5, #0
_080A83D4:
	adds r0, r1, #0
_080A83D6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A83E4: .4byte 0x000001ED

	thumb_func_start sub_080A83E8
sub_080A83E8: @ 0x080A83E8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080A841E
	cmp r0, #1
	bgt _080A8402
	cmp r0, #0
	beq _080A8408
	b _080A844A
_080A8402:
	cmp r0, #2
	beq _080A8434
	b _080A844A
_080A8408:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A84A4
_080A841E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A84A4
_080A8434:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A84A4
_080A844A:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A84A2
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A84A4
_080A84A2:
	movs r0, #0
_080A84A4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A84AC
sub_080A84AC: @ 0x080A84AC
	push {lr}
	ldr r2, _080A84C0 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A84C4 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A84C0: .4byte 0x09F642A0
_080A84C4: .4byte 0x09F64318

	thumb_func_start sub_080A84C8
sub_080A84C8: @ 0x080A84C8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A855E
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A855E
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A855E
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A855E
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A8560
_080A855E:
	movs r0, #0
_080A8560:
	cmp r0, #0
	bne _080A8568
	movs r0, #0
	b _080A8652
_080A8568:
	movs r6, #0xc9
	lsls r6, r6, #1
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A858E
	ldr r7, _080A85A8 @ =0x00000193
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A85AC
_080A858E:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	adds r0, r6, #0
	cmp r1, #0x21
	blt _080A85EE
	movs r0, #0xcb
	lsls r0, r0, #1
	cmp r1, #0x42
	bge _080A85EE
	b _080A85EC
	.align 2, 0
_080A85A8: .4byte 0x00000193
_080A85AC:
	adds r0, r5, #0
	movs r1, #0x90
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8600
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bgt _080A85D4
	ldr r0, _080A85D0 @ =0x00000195
	b _080A85EE
	.align 2, 0
_080A85D0: .4byte 0x00000195
_080A85D4:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	adds r0, r6, #0
	cmp r1, #0x19
	blt _080A85EE
	movs r0, #0xcb
	lsls r0, r0, #1
	cmp r1, #0x32
	bge _080A85EE
_080A85EC:
	ldr r0, _080A85FC @ =0x00000193
_080A85EE:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A8650
	.align 2, 0
_080A85FC: .4byte 0x00000193
_080A8600:
	ldr r1, _080A8658 @ =0x00000197
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A8632
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A8632
	ldr r1, _080A865C @ =0x00000195
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8650
_080A8632:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
_080A8650:
	movs r0, #1
_080A8652:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A8658: .4byte 0x00000197
_080A865C: .4byte 0x00000195

	thumb_func_start sub_080A8660
sub_080A8660: @ 0x080A8660
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	b _080A86E0
_080A8668:
	adds r0, r6, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A86DC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A86DC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A86DC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A86DE
_080A86DC:
	adds r7, #1
_080A86DE:
	adds r6, #1
_080A86E0:
	bl sub_080729DC
	cmp r6, r0
	blt _080A8668
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A86F0
sub_080A86F0: @ 0x080A86F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #2
	bgt _080A8724
_080A870C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A8720 @ =0x00000193
	cmp r0, #0x28
	bge _080A87E8
	subs r1, #1
	b _080A87E8
	.align 2, 0
_080A8720: .4byte 0x00000193
_080A8724:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	bgt _080A8740
	movs r0, #0x90
	b _080A87EA
_080A8740:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A8768
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x1d
	bgt _080A8768
	movs r0, #0x90
	b _080A87EA
_080A8768:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #4
	ble _080A870C
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A87BE
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xc9
	lsls r0, r0, #1
	cmp r1, #0x1e
	blt _080A87EA
	adds r0, #4
	cmp r1, #0x46
	bge _080A87EA
	subs r0, #3
	b _080A87EA
_080A87BE:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xc9
	lsls r1, r1, #1
	cmp r0, #0xf
	blt _080A87E8
	adds r1, #1
	cmp r0, #0x28
	blt _080A87E8
	adds r1, #3
	cmp r0, #0x37
	blt _080A87E8
	adds r1, #1
	cmp r0, #0x55
	blt _080A87E8
	subs r1, #2
	cmp r0, #0x5f
	bge _080A87E8
	adds r1, #3
_080A87E8:
	adds r0, r1, #0
_080A87EA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A87F8
sub_080A87F8: @ 0x080A87F8
	push {lr}
	ldr r2, _080A880C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A8810 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A880C: .4byte 0x09F642A0
_080A8810: .4byte 0x09F64318

	thumb_func_start sub_080A8814
sub_080A8814: @ 0x080A8814
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A882E
	cmp r2, #1
	bne _080A884A
_080A882E:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A884C
_080A884A:
	movs r0, #0
_080A884C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A8854
sub_080A8854: @ 0x080A8854
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A88EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A88EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A88EA
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A88EA
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A88EC
_080A88EA:
	movs r0, #0
_080A88EC:
	cmp r0, #0
	bne _080A88F4
	movs r0, #0
	b _080A89C2
_080A88F4:
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A891A
	ldr r1, [r4, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	b _080A898C
_080A891A:
	ldr r1, _080A8940 @ =0x000001FF
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8944
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	b _080A898C
	.align 2, 0
_080A8940: .4byte 0x000001FF
_080A8944:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A896A
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #3
	b _080A898C
_080A896A:
	ldr r1, _080A8994 @ =0x00000201
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8998
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #4
_080A898C:
	movs r2, #0
	bl _call_via_r3
	b _080A89C0
	.align 2, 0
_080A8994: .4byte 0x00000201
_080A8998:
	movs r1, #0x85
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A89C0
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_080A89C0:
	movs r0, #1
_080A89C2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A89C8
sub_080A89C8: @ 0x080A89C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A89F6
	movs r0, #5
	bl sub_08072AC4
	cmp r0, #0
	beq _080A89F2
	movs r0, #0xf7
	b _080A8A32
_080A89F2:
	movs r0, #0xfa
	b _080A8A32
_080A89F6:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A8A20
	movs r0, #5
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8A1C
	movs r0, #0xf8
	b _080A8A32
_080A8A1C:
	movs r0, #0xfa
	b _080A8A32
_080A8A20:
	movs r0, #5
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8A30
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8A32
_080A8A30:
	ldr r0, _080A8A40 @ =0x00000205
_080A8A32:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8A40: .4byte 0x00000205

	thumb_func_start sub_080A8A44
sub_080A8A44: @ 0x080A8A44
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A8A72
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8A6E
	movs r0, #0xf7
	b _080A8AB0
_080A8A6E:
	movs r0, #0xfa
	b _080A8AB0
_080A8A72:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A8A9C
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8A98
	movs r0, #0xf8
	b _080A8AB0
_080A8A98:
	movs r0, #0xfa
	b _080A8AB0
_080A8A9C:
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8AAC
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8AB0
_080A8AAC:
	movs r0, #0x81
	lsls r0, r0, #2
_080A8AB0:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A8ABC
sub_080A8ABC: @ 0x080A8ABC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A8AEA
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8AE6
	movs r0, #0xf7
	b _080A8B26
_080A8AE6:
	movs r0, #0xfa
	b _080A8B26
_080A8AEA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A8B14
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8B10
	movs r0, #0xf8
	b _080A8B26
_080A8B10:
	movs r0, #0xfa
	b _080A8B26
_080A8B14:
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8B24
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8B26
_080A8B24:
	ldr r0, _080A8B34 @ =0x00000203
_080A8B26:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8B34: .4byte 0x00000203

	thumb_func_start sub_080A8B38
sub_080A8B38: @ 0x080A8B38
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A8B66
	movs r0, #2
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8B62
	movs r0, #0xf7
	b _080A8BA2
_080A8B62:
	movs r0, #0xfa
	b _080A8BA2
_080A8B66:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A8B90
	movs r0, #2
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8B8C
	movs r0, #0xf8
	b _080A8BA2
_080A8B8C:
	movs r0, #0xfa
	b _080A8BA2
_080A8B90:
	movs r0, #2
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8BA0
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8BA2
_080A8BA0:
	ldr r0, _080A8BB0 @ =0x00000202
_080A8BA2:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8BB0: .4byte 0x00000202

	thumb_func_start sub_080A8BB4
sub_080A8BB4: @ 0x080A8BB4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A8BF0 @ =0x00000113
	cmp r0, #0xf
	blt _080A8BE2
	movs r1, #0xe3
	cmp r0, #0x14
	blt _080A8BE2
	movs r1, #0xff
	lsls r1, r1, #1
	cmp r0, #0x28
	blt _080A8BE2
	adds r1, #1
	cmp r0, #0x3c
	blt _080A8BE2
	adds r1, #2
	cmp r0, #0x50
	bge _080A8BE2
	subs r1, #1
_080A8BE2:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8BF0: .4byte 0x00000113

	thumb_func_start sub_080A8BF4
sub_080A8BF4: @ 0x080A8BF4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A8C96
	lsls r0, r0, #2
	ldr r1, _080A8C10 @ =_080A8C14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8C10: .4byte _080A8C14
_080A8C14: @ jump table
	.4byte _080A8C28 @ case 0
	.4byte _080A8C3E @ case 1
	.4byte _080A8C54 @ case 2
	.4byte _080A8C6A @ case 3
	.4byte _080A8C80 @ case 4
_080A8C28:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C3E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C54:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C6A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C80:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C96:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A8CEE
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A8CF0
_080A8CEE:
	movs r0, #0
_080A8CF0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A8CF8
sub_080A8CF8: @ 0x080A8CF8
	push {lr}
	ldr r2, _080A8D0C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A8D10 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A8D0C: .4byte 0x09F642A0
_080A8D10: .4byte 0x09F64318

	thumb_func_start sub_080A8D14
sub_080A8D14: @ 0x080A8D14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #2
	bgt _080A8D44
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A8D40 @ =0x00000113
	cmp r0, #0x37
	blt _080A8D60
	adds r1, #0xd
	cmp r0, #0x4b
	blt _080A8D60
	subs r1, #0x13
	cmp r0, #0x55
	bge _080A8D60
	movs r1, #0x8c
	b _080A8D60
	.align 2, 0
_080A8D40: .4byte 0x00000113
_080A8D44:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A8D70 @ =0x00000113
	cmp r0, #0x19
	blt _080A8D60
	ldr r1, _080A8D74 @ =0x0000024B
	cmp r0, #0x41
	blt _080A8D60
	movs r1, #0x8c
	cmp r0, #0x5a
	bge _080A8D60
	adds r1, #0x94
_080A8D60:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8D70: .4byte 0x00000113
_080A8D74: .4byte 0x0000024B

	thumb_func_start sub_080A8D78
sub_080A8D78: @ 0x080A8D78
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x76
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A8D94
sub_080A8D94: @ 0x080A8D94
	push {lr}
	ldr r2, _080A8DA8 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A8DAC @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A8DA8: .4byte 0x09F642A0
_080A8DAC: .4byte 0x09F64318

	thumb_func_start sub_080A8DB0
sub_080A8DB0: @ 0x080A8DB0
	push {lr}
	cmp r1, #0
	bne _080A8DFC
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A8DFC
	lsls r0, r0, #2
	ldr r1, _080A8DCC @ =_080A8DD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8DCC: .4byte _080A8DD0
_080A8DD0: @ jump table
	.4byte _080A8DFC @ case 0
	.4byte _080A8DE4 @ case 1
	.4byte _080A8DEC @ case 2
	.4byte _080A8DF2 @ case 3
	.4byte _080A8DFC @ case 4
_080A8DE4:
	ldr r0, _080A8DE8 @ =0x00000203
	b _080A8E00
	.align 2, 0
_080A8DE8: .4byte 0x00000203
_080A8DEC:
	movs r0, #0x81
	lsls r0, r0, #2
	b _080A8E00
_080A8DF2:
	ldr r0, _080A8DF8 @ =0x00000205
	b _080A8E00
	.align 2, 0
_080A8DF8: .4byte 0x00000205
_080A8DFC:
	movs r0, #0xf3
	lsls r0, r0, #1
_080A8E00:
	pop {r1}
	bx r1

	thumb_func_start sub_080A8E04
sub_080A8E04: @ 0x080A8E04
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A8E0E
	adds r2, r1, #0
_080A8E0E:
	adds r1, r2, #0
	bl sub_08081494
	pop {r0}
	bx r0

	thumb_func_start sub_080A8E18
sub_080A8E18: @ 0x080A8E18
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xac
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, r1
	bne _080A8E32
	cmp r2, #1
	beq _080A8E32
	b _080A8FD4
_080A8E32:
	str r1, [r3]
	cmp r1, #4
	bls _080A8E3A
	b _080A8FB0
_080A8E3A:
	lsls r0, r1, #2
	ldr r1, _080A8E44 @ =_080A8E48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8E44: .4byte _080A8E48
_080A8E48: @ jump table
	.4byte _080A8E5C @ case 0
	.4byte _080A8EB0 @ case 1
	.4byte _080A8EDA @ case 2
	.4byte _080A8F1C @ case 3
	.4byte _080A8F5E @ case 4
_080A8E5C:
	ldr r3, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #1
	bl _call_via_r3
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #2
	bl _call_via_r3
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #3
	bl _call_via_r3
	b _080A8FB0
_080A8EB0:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0x78
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	b _080A8F02
_080A8EDA:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0x78
_080A8F02:
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl _call_via_r3
	b _080A8FB0
_080A8F1C:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0x78
	bl _call_via_r3
	b _080A8FB0
_080A8F5E:
	ldr r3, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #1
	bl _call_via_r3
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #2
	bl _call_via_r3
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #3
	bl _call_via_r3
_080A8FB0:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	ldr r1, [r5, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A8FD6
_080A8FD4:
	movs r0, #0
_080A8FD6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A8FDC
sub_080A8FDC: @ 0x080A8FDC
	push {lr}
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _080A8FFE
	cmp r0, #2
	bgt _080A8FF4
	cmp r0, #1
	beq _080A8FFA
	b _080A9006
_080A8FF4:
	cmp r0, #3
	beq _080A9002
	b _080A9006
_080A8FFA:
	movs r0, #1
	b _080A9008
_080A8FFE:
	movs r0, #2
	b _080A9008
_080A9002:
	movs r0, #3
	b _080A9008
_080A9006:
	movs r0, #0
_080A9008:
	pop {r1}
	bx r1

	thumb_func_start sub_080A900C
sub_080A900C: @ 0x080A900C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r6, r0, #0
	adds r7, r1, #0
	bl unit_98__4UnitUi
	ldr r1, [r6, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A9032
	b _080A9194
_080A9032:
	ldr r1, [r7, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080A904C
	b _080A9194
_080A904C:
	ldr r1, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A906C
	b _080A9194
_080A906C:
	movs r0, #0x14
	bl sub_0807068C
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r0, _080A9230 @ =0x0000064E
	bl sub_08070824
	movs r0, #0x47
	adds r1, r6, #0
	adds r2, r6, #0
	bl sub_080730FC
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	movs r2, #1
	bl sub_08073734
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
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
	movs r0, #0x49
	adds r1, r4, #0
	bl sub_080730FC
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r0, sp, #0x1c
	bl sub_0806E274
	add r0, sp, #0x28
	bl sub_0806E274
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x1c
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x10
	movs r1, #2
	bl sub_0806E308
_080A9194:
	ldr r1, [r6, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A9226
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	subs r0, #1
	cmp r0, #2
	bhi _080A9226
	ldr r1, [r7, #0x1c]
	movs r2, #0xf8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _080A9226
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	ble _080A9226
	ldr r1, [r6, #0x1c]
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9226
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
_080A9226:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9230: .4byte 0x0000064E

	thumb_func_start sub_080A9234
sub_080A9234: @ 0x080A9234
	push {r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r7, r0, #0
	adds r4, r1, #0
	bl unit_88__4UnitUi
	ldr r1, _080A9264 @ =0x000001FB
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9268
	ldr r1, [r7, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #1
	b _080A92B0
	.align 2, 0
_080A9264: .4byte 0x000001FB
_080A9268:
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A928E
	ldr r1, [r7, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #2
	b _080A92B0
_080A928E:
	ldr r1, _080A92B8 @ =0x000001FD
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A92BC
	ldr r1, [r7, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #3
_080A92B0:
	movs r2, #0
	bl _call_via_r3
	b _080A9350
	.align 2, 0
_080A92B8: .4byte 0x000001FD
_080A92BC:
	ldr r1, _080A9358 @ =0x0000018B
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9350
	ldr r0, _080A935C @ =0x0000028A
	bl sub_08070824
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #0x78
	bl sub_0807068C
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_0806E274
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	movs r1, #0x9d
	lsls r1, r1, #3
	str r4, [sp]
	add r0, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x34
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r7, #0
	movs r1, #0
	bl sub_08081494
_080A9350:
	add sp, #0x38
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9358: .4byte 0x0000018B
_080A935C: .4byte 0x0000028A

	thumb_func_start sub_080A9360
sub_080A9360: @ 0x080A9360
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A9382
	movs r0, #0xfd
	lsls r0, r0, #1
	b _080A93E0
_080A9382:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A93A4
	ldr r0, _080A93A0 @ =0x0000018D
	b _080A93E0
	.align 2, 0
_080A93A0: .4byte 0x0000018D
_080A93A4:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #2
	bgt _080A93BE
	movs r0, #0xfd
	lsls r0, r0, #1
	b _080A93E0
_080A93BE:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	ble _080A93DC
	ldr r0, _080A93D8 @ =0x0000018B
	b _080A93E0
	.align 2, 0
_080A93D8: .4byte 0x0000018B
_080A93DC:
	movs r0, #0xc6
	lsls r0, r0, #1
_080A93E0:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A93EC
sub_080A93EC: @ 0x080A93EC
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9408
sub_080A9408: @ 0x080A9408
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9424
sub_080A9424: @ 0x080A9424
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A945C
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x13
	bgt _080A945C
_080A9452:
	ldr r0, _080A9458 @ =0x00000231
	b _080A9506
	.align 2, 0
_080A9458: .4byte 0x00000231
_080A945C:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9486
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x31
	ble _080A9452
_080A9486:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A94B0
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x45
	ble _080A9452
_080A94B0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080A94EC
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xfc
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A9506
	movs r0, #0x64
	cmp r1, #0x50
	bge _080A9506
	ldr r0, _080A94E8 @ =0x000001F7
	b _080A9506
	.align 2, 0
_080A94E8: .4byte 0x000001F7
_080A94EC:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xfb
	lsls r0, r0, #1
	cmp r1, #0x2d
	blt _080A9506
	movs r0, #0x63
	cmp r1, #0x46
	bge _080A9506
	ldr r0, _080A9514 @ =0x000001F9
_080A9506:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9514: .4byte 0x000001F9

	thumb_func_start sub_080A9518
sub_080A9518: @ 0x080A9518
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A9540 @ =0x000001FB
	cmp r1, #0x21
	blt _080A9534
	adds r0, #2
	cmp r1, #0x42
	bge _080A9534
	subs r0, #1
_080A9534:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9540: .4byte 0x000001FB

	thumb_func_start sub_080A9544
sub_080A9544: @ 0x080A9544
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A95E6
	lsls r0, r0, #2
	ldr r1, _080A9560 @ =_080A9564
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A9560: .4byte _080A9564
_080A9564: @ jump table
	.4byte _080A9578 @ case 0
	.4byte _080A958E @ case 1
	.4byte _080A95A4 @ case 2
	.4byte _080A95BA @ case 3
	.4byte _080A95D0 @ case 4
_080A9578:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A9640
_080A958E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A9640
_080A95A4:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A9640
_080A95BA:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A9640
_080A95D0:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A9640
_080A95E6:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A963E
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A9640
_080A963E:
	movs r0, #0
_080A9640:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9648
sub_080A9648: @ 0x080A9648
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xac
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #4
	beq _080A96B2
	ldr r1, [r4, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A96B2
	ldr r0, [r5]
	cmp r0, #0
	beq _080A969A
	ldr r1, [r4, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, _080A96B8 @ =0x00000189
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A969A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
_080A96B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A96B8: .4byte 0x00000189

	thumb_func_start sub_080A96BC
sub_080A96BC: @ 0x080A96BC
	push {lr}
	ldr r2, _080A96D0 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A96D4 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A96D0: .4byte 0x09F642A0
_080A96D4: .4byte 0x09F64318

	thumb_func_start sub_080A96D8
sub_080A96D8: @ 0x080A96D8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #2
	bgt _080A9708
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A9700 @ =0x00000113
	cmp r1, #0xf
	blt _080A971A
	movs r0, #0xc3
	cmp r1, #0x50
	bge _080A971A
	ldr r0, _080A9704 @ =0x000001D9
	b _080A971A
	.align 2, 0
_080A9700: .4byte 0x00000113
_080A9704: .4byte 0x000001D9
_080A9708:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A9728 @ =0x000001D9
	cmp r0, #0x19
	bge _080A9718
	subs r1, #0xc6
_080A9718:
	adds r0, r1, #0
_080A971A:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9728: .4byte 0x000001D9

	thumb_func_start sub_080A972C
sub_080A972C: @ 0x080A972C
	push {lr}
	ldr r2, _080A9740 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9744 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9740: .4byte 0x09F642A0
_080A9744: .4byte 0x09F64318

	thumb_func_start sub_080A9748
sub_080A9748: @ 0x080A9748
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A977C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A9778 @ =0x000001C5
	cmp r0, #0x23
	bge _080A97B8
	subs r1, #1
	b _080A97B8
	.align 2, 0
_080A9778: .4byte 0x000001C5
_080A977C:
	bl sub_08072DFC
	cmp r0, #2
	bgt _080A97A8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A97A0 @ =0x00000113
	cmp r1, #0xf
	blt _080A97BA
	movs r0, #0xc3
	cmp r1, #0x50
	bge _080A97BA
	ldr r0, _080A97A4 @ =0x000001D9
	b _080A97BA
	.align 2, 0
_080A97A0: .4byte 0x00000113
_080A97A4: .4byte 0x000001D9
_080A97A8:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A97C8 @ =0x000001D9
	cmp r0, #0x23
	bge _080A97B8
	subs r1, #0xc6
_080A97B8:
	adds r0, r1, #0
_080A97BA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A97C8: .4byte 0x000001D9

	thumb_func_start sub_080A97CC
sub_080A97CC: @ 0x080A97CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A982E
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080A982E
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_080A982E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9834
sub_080A9834: @ 0x080A9834
	push {lr}
	ldr r2, _080A9848 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A984C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9848: .4byte 0x09F642A0
_080A984C: .4byte 0x09F64318

	thumb_func_start sub_080A9850
sub_080A9850: @ 0x080A9850
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x30
	cmp r0, #0x4b
	bge _080A9864
	movs r1, #0xc
_080A9864:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9874
sub_080A9874: @ 0x080A9874
	push {lr}
	ldr r2, _080A9888 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A988C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9888: .4byte 0x09F642A0
_080A988C: .4byte 0x09F64318

	thumb_func_start sub_080A9890
sub_080A9890: @ 0x080A9890
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A98C0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xe3
	lsls r1, r1, #1
	cmp r0, #0x4b
	bge _080A98D0
	subs r1, #2
	b _080A98D0
_080A98C0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x30
	cmp r0, #0x4b
	bge _080A98D0
	movs r1, #0xc
_080A98D0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A98E0
sub_080A98E0: @ 0x080A98E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A9942
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080A9942
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_080A9942:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9948
sub_080A9948: @ 0x080A9948
	push {lr}
	ldr r2, _080A995C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9960 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A995C: .4byte 0x09F642A0
_080A9960: .4byte 0x09F64318

	thumb_func_start sub_080A9964
sub_080A9964: @ 0x080A9964
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xec
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A9982
	movs r0, #0x41
	cmp r1, #0x55
	bge _080A9982
	movs r0, #0x1e
_080A9982:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9990
sub_080A9990: @ 0x080A9990
	push {lr}
	ldr r2, _080A99A4 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A99A8 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A99A4: .4byte 0x09F642A0
_080A99A8: .4byte 0x09F64318

	thumb_func_start sub_080A99AC
sub_080A99AC: @ 0x080A99AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A99E4
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xdf
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A99FE
	adds r0, #3
	cmp r1, #0x55
	bge _080A99FE
	subs r0, #1
	b _080A99FE
_080A99E4:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xec
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A99FE
	movs r0, #0x41
	cmp r1, #0x55
	bge _080A99FE
	movs r0, #0x1e
_080A99FE:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9A0C
sub_080A9A0C: @ 0x080A9A0C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A9A6E
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080A9A6E
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_080A9A6E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9A74
sub_080A9A74: @ 0x080A9A74
	push {lr}
	ldr r2, _080A9A88 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9A8C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9A88: .4byte 0x09F642A0
_080A9A8C: .4byte 0x09F64318

	thumb_func_start sub_080A9A90
sub_080A9A90: @ 0x080A9A90
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A9AB4
	ldr r0, _080A9AB0 @ =0x00000151
	b _080A9B08
	.align 2, 0
_080A9AB0: .4byte 0x00000151
_080A9AB4:
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A9AE8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #1
	cmp r1, #0x41
	blt _080A9B08
	movs r0, #0xea
	cmp r1, #0x5f
	bge _080A9B08
	adds r0, #0x67
	b _080A9B08
_080A9AE8:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xa7
	lsls r1, r1, #1
	cmp r0, #0x32
	blt _080A9B06
	adds r1, #3
	cmp r0, #0x50
	blt _080A9B06
	subs r1, #2
	cmp r0, #0x55
	bge _080A9B06
	movs r1, #0xea
_080A9B06:
	adds r0, r1, #0
_080A9B08:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A9B14
sub_080A9B14: @ 0x080A9B14
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A9B76
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x3c
	bl _call_via_r2
	cmp r4, r0
	bge _080A9B76
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_080A9B76:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9B7C
sub_080A9B7C: @ 0x080A9B7C
	push {lr}
	ldr r2, _080A9B90 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9B94 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9B90: .4byte 0x09F642A0
_080A9B94: .4byte 0x09F64318

	thumb_func_start sub_080A9B98
sub_080A9B98: @ 0x080A9B98
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A9BBC
	ldr r0, _080A9BB8 @ =0x00000151
	b _080A9C28
	.align 2, 0
_080A9BB8: .4byte 0x00000151
_080A9BBC:
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	blt _080A9C08
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xa7
	lsls r0, r0, #1
	cmp r1, #0x41
	blt _080A9C28
	movs r0, #0xea
	cmp r1, #0x5f
	bge _080A9C28
	adds r0, #0x67
	b _080A9C28
_080A9C08:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xa7
	lsls r1, r1, #1
	cmp r0, #0x41
	blt _080A9C26
	adds r1, #3
	cmp r0, #0x5f
	blt _080A9C26
	subs r1, #2
	cmp r0, #0x64
	bge _080A9C26
	movs r1, #0xea
_080A9C26:
	adds r0, r1, #0
_080A9C28:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A9C34
sub_080A9C34: @ 0x080A9C34
	push {lr}
	ldr r2, _080A9C48 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9C4C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9C48: .4byte 0x09F642A0
_080A9C4C: .4byte 0x09F64318

	thumb_func_start sub_080A9C50
sub_080A9C50: @ 0x080A9C50
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9CE6
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9CE6
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9CE6
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9CE6
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A9CE8
_080A9CE6:
	movs r0, #0
_080A9CE8:
	cmp r0, #0
	bne _080A9CF0
	movs r0, #0
	b _080A9D54
_080A9CF0:
	ldr r6, _080A9D10 @ =0x00000213
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9D14
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A9D52
	.align 2, 0
_080A9D10: .4byte 0x00000213
_080A9D14:
	ldr r1, _080A9D5C @ =0x00000216
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9D34
	ldr r1, _080A9D60 @ =0x00000217
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9D52
_080A9D34:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x85
	lsls r1, r1, #2
	cmp r0, #0x41
	bge _080A9D46
	adds r1, r6, #0
_080A9D46:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A9D52:
	movs r0, #1
_080A9D54:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A9D5C: .4byte 0x00000216
_080A9D60: .4byte 0x00000217

	thumb_func_start sub_080A9D64
sub_080A9D64: @ 0x080A9D64
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080A9D94 @ =0x00000213
	cmp r0, #0x2d
	blt _080A9D84
	adds r1, #3
	cmp r0, #0x37
	blt _080A9D84
	subs r1, #2
	cmp r0, #0x41
	bge _080A9D84
	adds r1, #3
_080A9D84:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9D94: .4byte 0x00000213

	thumb_func_start sub_080A9D98
sub_080A9D98: @ 0x080A9D98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080A9DCC @ =0x00000215
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	adds r0, r4, #0
	bl sub_08080F54
	bl sub_0805D874
	ldr r1, [r0, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9DCC: .4byte 0x00000215

	thumb_func_start sub_080A9DD0
sub_080A9DD0: @ 0x080A9DD0
	push {lr}
	ldr r2, _080A9DE4 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9DE8 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9DE4: .4byte 0x09F642A0
_080A9DE8: .4byte 0x09F64318

	thumb_func_start sub_080A9DEC
sub_080A9DEC: @ 0x080A9DEC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080A9E14 @ =0x00000219
	cmp r1, #0x21
	blt _080A9E08
	adds r0, #8
	cmp r1, #0x42
	bge _080A9E08
	subs r0, #7
_080A9E08:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9E14: .4byte 0x00000219

	thumb_func_start sub_080A9E18
sub_080A9E18: @ 0x080A9E18
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A9E38
sub_080A9E38: @ 0x080A9E38
	push {lr}
	ldr r2, _080A9E4C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9E50 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9E4C: .4byte 0x09F642A0
_080A9E50: .4byte 0x09F64318

	thumb_func_start sub_080A9E54
sub_080A9E54: @ 0x080A9E54
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080A9EA8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x6d
	cmp r1, #0x2d
	blt _080A9EC0
	ldr r0, _080A9EA4 @ =0x0000020D
	cmp r1, #0x46
	bge _080A9EC0
	movs r0, #0xfe
	b _080A9EC0
	.align 2, 0
_080A9EA4: .4byte 0x0000020D
_080A9EA8:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x6d
	cmp r1, #0x37
	blt _080A9EC0
	movs r0, #0xfe
	cmp r1, #0x41
	bge _080A9EC0
	movs r0, #0x89
_080A9EC0:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A9ECC
sub_080A9ECC: @ 0x080A9ECC
	push {lr}
	ldr r2, _080A9EE0 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080A9EE4 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080A9EE0: .4byte 0x09F642A0
_080A9EE4: .4byte 0x09F64318

	thumb_func_start sub_080A9EE8
sub_080A9EE8: @ 0x080A9EE8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl unit_270__4UnitUi
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r4, #0x16
	bne _080A9F34
	ldr r1, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	cmp r0, #0
	bgt _080A9F34
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
_080A9F34:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A9F3C
sub_080A9F3C: @ 0x080A9F3C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9FD2
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9FD2
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9FD2
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9FD2
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A9FD4
_080A9FD2:
	movs r0, #0
_080A9FD4:
	cmp r0, #0
	bne _080A9FDC
	movs r0, #0
	b _080AA070
_080A9FDC:
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AA018
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA014 @ =0x000001ED
	cmp r1, #0x2d
	blt _080AA006
	adds r0, #1
	cmp r1, #0x50
	bge _080AA006
	adds r0, #0x24
_080AA006:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080AA06E
	.align 2, 0
_080AA014: .4byte 0x000001ED
_080AA018:
	ldr r1, _080AA078 @ =0x000001ED
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AA03A
	movs r1, #0xf7
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AA06E
_080AA03A:
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x45
	bgt _080AA06E
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AA07C @ =0x000001F1
	cmp r0, #0x19
	blt _080AA062
	adds r1, #1
	cmp r0, #0x32
	blt _080AA062
	subs r1, #2
	cmp r0, #0x4b
	bge _080AA062
	adds r1, #3
_080AA062:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AA06E:
	movs r0, #1
_080AA070:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA078: .4byte 0x000001ED
_080AA07C: .4byte 0x000001F1

	thumb_func_start sub_080AA080
sub_080AA080: @ 0x080AA080
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AA09C
sub_080AA09C: @ 0x080AA09C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AA0C0
	ldr r0, _080AA0BC @ =0x000001F5
	b _080AA10C
	.align 2, 0
_080AA0BC: .4byte 0x000001F5
_080AA0C0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080AA0E4 @ =0x00000191
	cmp r0, r5
	bne _080AA0EC
	ldr r0, _080AA0E8 @ =0x000001EF
	b _080AA10C
	.align 2, 0
_080AA0E4: .4byte 0x00000191
_080AA0E8: .4byte 0x000001EF
_080AA0EC:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AA118 @ =0x000001ED
	cmp r0, #0x14
	blt _080AA10A
	adds r1, #0x25
	cmp r0, #0x1e
	blt _080AA10A
	adds r1, r5, #0
	cmp r0, #0x37
	bge _080AA10A
	movs r1, #0xf7
	lsls r1, r1, #1
_080AA10A:
	adds r0, r1, #0
_080AA10C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA118: .4byte 0x000001ED

	thumb_func_start sub_080AA11C
sub_080AA11C: @ 0x080AA11C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AA140
	ldr r0, _080AA13C @ =0x00000191
	b _080AA18C
	.align 2, 0
_080AA13C: .4byte 0x00000191
_080AA140:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080AA164 @ =0x00000191
	cmp r0, r5
	bne _080AA16C
	ldr r0, _080AA168 @ =0x000001EF
	b _080AA18C
	.align 2, 0
_080AA164: .4byte 0x00000191
_080AA168: .4byte 0x000001EF
_080AA16C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AA198 @ =0x000001ED
	cmp r0, #0x14
	blt _080AA18A
	adds r1, #0x25
	cmp r0, #0x1e
	blt _080AA18A
	adds r1, r5, #0
	cmp r0, #0x37
	bge _080AA18A
	movs r1, #0xf7
	lsls r1, r1, #1
_080AA18A:
	adds r0, r1, #0
_080AA18C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA198: .4byte 0x000001ED

	thumb_func_start sub_080AA19C
sub_080AA19C: @ 0x080AA19C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080AA1CE
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	bne _080AA1CE
	movs r0, #0xfa
	lsls r0, r0, #1
	b _080AA1E6
_080AA1CE:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA1F4 @ =0x000001ED
	cmp r1, #0x2d
	blt _080AA1E6
	adds r0, #1
	cmp r1, #0x50
	bge _080AA1E6
	adds r0, #0x24
_080AA1E6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA1F4: .4byte 0x000001ED

	thumb_func_start sub_080AA1F8
sub_080AA1F8: @ 0x080AA1F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080AA232
	cmp r0, #1
	bgt _080AA212
	cmp r0, #0
	beq _080AA21C
	b _080AA274
_080AA212:
	cmp r0, #2
	beq _080AA248
	cmp r0, #3
	beq _080AA25E
	b _080AA274
_080AA21C:
	ldr r1, [r6, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AA2CE
_080AA232:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AA2CE
_080AA248:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AA2CE
_080AA25E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AA2CE
_080AA274:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AA2CC
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AA2CE
_080AA2CC:
	movs r0, #0
_080AA2CE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA2D4
sub_080AA2D4: @ 0x080AA2D4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	blt _080AA2EE
	cmp r2, #1
	bne _080AA30A
_080AA2EE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AA30C
_080AA30A:
	movs r0, #0
_080AA30C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AA314
sub_080AA314: @ 0x080AA314
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #2
	bne _080AA368
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0xa
	bl _call_via_r2
	cmp r4, r0
	bge _080AA368
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	b _080AA3B6
_080AA368:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _080AA3BE
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080AA3BE
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
_080AA3B6:
	movs r2, #0
	bl _call_via_r3
	b _080AA412
_080AA3BE:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080AA412
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080AA412
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080AA412:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AA418
sub_080AA418: @ 0x080AA418
	push {lr}
	ldr r2, _080AA42C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AA430 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AA42C: .4byte 0x09F642A0
_080AA430: .4byte 0x09F64318

	thumb_func_start sub_080AA434
sub_080AA434: @ 0x080AA434
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #1
	bgt _080AA45C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA458 @ =0x00000113
	cmp r1, #0x19
	blt _080AA474
	adds r0, #0x53
	cmp r1, #0x3c
	bge _080AA474
	b _080AA472
	.align 2, 0
_080AA458: .4byte 0x00000113
_080AA45C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA480 @ =0x00000113
	cmp r1, #0x23
	blt _080AA474
	movs r0, #0xa9
	cmp r1, #0x55
	bge _080AA474
_080AA472:
	ldr r0, _080AA484 @ =0x00000165
_080AA474:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AA480: .4byte 0x00000113
_080AA484: .4byte 0x00000165

	thumb_func_start sub_080AA488
sub_080AA488: @ 0x080AA488
	push {lr}
	ldr r2, _080AA49C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AA4A0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AA49C: .4byte 0x09F642A0
_080AA4A0: .4byte 0x09F64318

	thumb_func_start sub_080AA4A4
sub_080AA4A4: @ 0x080AA4A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #2
	bgt _080AA4D0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA4CC @ =0x000001D9
	cmp r1, #0x19
	blt _080AA4E4
	movs r0, #0xc3
	cmp r1, #0x55
	bge _080AA4E4
	movs r0, #0xed
	lsls r0, r0, #1
	b _080AA4E4
	.align 2, 0
_080AA4CC: .4byte 0x000001D9
_080AA4D0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xed
	lsls r1, r1, #1
	cmp r0, #0x23
	bge _080AA4E2
	subs r1, #1
_080AA4E2:
	adds r0, r1, #0
_080AA4E4:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA4F0
sub_080AA4F0: @ 0x080AA4F0
	push {lr}
	ldr r2, _080AA504 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AA508 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AA504: .4byte 0x09F642A0
_080AA508: .4byte 0x09F64318

	thumb_func_start sub_080AA50C
sub_080AA50C: @ 0x080AA50C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #3
	bl __modsi3
	cmp r0, #0
	bgt _080AA54A
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r1, #0x21
	blt _080AA5AC
	adds r0, #2
	cmp r1, #0x42
	bge _080AA5AC
	subs r0, #1
	b _080AA5AC
_080AA54A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #3
	bl __modsi3
	cmp r0, #1
	bgt _080AA588
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA584 @ =0x0000025B
	cmp r1, #0x21
	blt _080AA5AC
	adds r0, #2
	cmp r1, #0x42
	bge _080AA5AC
	subs r0, #1
	b _080AA5AC
	.align 2, 0
_080AA584: .4byte 0x0000025B
_080AA588:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AA5B8 @ =0x0000025E
	cmp r0, #0x14
	blt _080AA5AA
	adds r1, #1
	cmp r0, #0x28
	blt _080AA5AA
	adds r1, #1
	cmp r0, #0x3c
	blt _080AA5AA
	adds r1, #2
	cmp r0, #0x50
	bge _080AA5AA
	subs r1, #1
_080AA5AA:
	adds r0, r1, #0
_080AA5AC:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AA5B8: .4byte 0x0000025E

	thumb_func_start sub_080AA5BC
sub_080AA5BC: @ 0x080AA5BC
	push {lr}
	ldr r2, _080AA5D0 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AA5D4 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AA5D0: .4byte 0x09F642A0
_080AA5D4: .4byte 0x09F64318

	thumb_func_start sub_080AA5D8
sub_080AA5D8: @ 0x080AA5D8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AA5F2
	cmp r2, #1
	bne _080AA60E
_080AA5F2:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AA610
_080AA60E:
	movs r0, #0
_080AA610:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AA618
sub_080AA618: @ 0x080AA618
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r6, r0, #0
	adds r7, r1, #0
	bl unit_98__4UnitUi
	ldr r1, [r6, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AA63E
	b _080AA7A0
_080AA63E:
	ldr r1, [r7, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080AA658
	b _080AA7A0
_080AA658:
	ldr r1, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AA678
	b _080AA7A0
_080AA678:
	movs r0, #0x14
	bl sub_0807068C
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r0, _080AA814 @ =0x0000064E
	bl sub_08070824
	movs r0, #0x47
	adds r1, r6, #0
	adds r2, r6, #0
	bl sub_080730FC
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	movs r2, #1
	bl sub_08073734
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
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
	movs r0, #0x49
	adds r1, r4, #0
	bl sub_080730FC
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r0, sp, #0x1c
	bl sub_0806E274
	add r0, sp, #0x28
	bl sub_0806E274
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x1c
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x10
	movs r1, #2
	bl sub_0806E308
_080AA7A0:
	ldr r1, [r6, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AA80C
	ldr r1, [r7, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	bne _080AA80C
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	ble _080AA80C
	ldr r1, [r6, #0x1c]
	movs r2, #0x89
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AA80C
	movs r0, #0x43
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
_080AA80C:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA814: .4byte 0x0000064E

	thumb_func_start sub_080AA818
sub_080AA818: @ 0x080AA818
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AA828 @ =0x000001EB
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0
_080AA828: .4byte 0x000001EB

	thumb_func_start sub_080AA82C
sub_080AA82C: @ 0x080AA82C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	blt _080AA8B4
	ldr r1, [r5, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0xf6
	lsls r4, r4, #1
	cmp r0, r4
	bne _080AA892
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xf5
	lsls r1, r1, #1
	cmp r0, #0x28
	bge _080AA8C6
	b _080AA8C4
_080AA892:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AA8B0 @ =0x000001E9
	cmp r1, #0x28
	blt _080AA8C8
	adds r0, r4, #0
	cmp r1, #0x5a
	bge _080AA8C8
	movs r0, #0xf5
	lsls r0, r0, #1
	b _080AA8C8
	.align 2, 0
_080AA8B0: .4byte 0x000001E9
_080AA8B4:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xf5
	lsls r1, r1, #1
	cmp r0, #0x41
	bge _080AA8C6
_080AA8C4:
	subs r1, #1
_080AA8C6:
	adds r0, r1, #0
_080AA8C8:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA8D4
sub_080AA8D4: @ 0x080AA8D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080AA940
	cmp r0, #1
	beq _080AA956
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AA96C
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AA96E
_080AA940:
	ldr r1, [r6, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AA96E
_080AA956:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AA96E
_080AA96C:
	movs r0, #0
_080AA96E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA974
sub_080AA974: @ 0x080AA974
	push {lr}
	ldr r2, _080AA988 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AA98C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AA988: .4byte 0x09F642A0
_080AA98C: .4byte 0x09F64318

	thumb_func_start sub_080AA990
sub_080AA990: @ 0x080AA990
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x39
	bl sub_08072E38
	cmp r0, #0
	beq _080AA9B8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x1d
	cmp r1, #0x2d
	blt _080AA9D0
	movs r0, #0x42
	cmp r1, #0x55
	bge _080AA9D0
	adds r0, #0xc7
	b _080AA9D0
_080AA9B8:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x1d
	cmp r1, #0x32
	blt _080AA9D0
	movs r0, #0x42
	cmp r1, #0x55
	bge _080AA9D0
	ldr r0, _080AA9DC @ =0x000001D5
_080AA9D0:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AA9DC: .4byte 0x000001D5

	thumb_func_start sub_080AA9E0
sub_080AA9E0: @ 0x080AA9E0
	push {lr}
	ldr r2, _080AA9F4 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AA9F8 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AA9F4: .4byte 0x09F642A0
_080AA9F8: .4byte 0x09F64318

	thumb_func_start sub_080AA9FC
sub_080AA9FC: @ 0x080AA9FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #2
	bgt _080AAA22
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #4
	cmp r1, #0x32
	blt _080AAA34
	movs r0, #0xc3
	cmp r1, #0x55
	bge _080AAA34
	movs r0, #0x5d
	b _080AAA34
_080AAA22:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x5d
	cmp r0, #0x46
	bge _080AAA32
	movs r1, #4
_080AAA32:
	adds r0, r1, #0
_080AAA34:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AAA40
sub_080AAA40: @ 0x080AAA40
	push {lr}
	ldr r2, _080AAA54 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AAA58 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AAA54: .4byte 0x09F642A0
_080AAA58: .4byte 0x09F64318

	thumb_func_start sub_080AAA5C
sub_080AAA5C: @ 0x080AAA5C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	blt _080AAAAC
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x1a
	cmp r0, #0x23
	blt _080AAACA
	movs r1, #0x6d
	cmp r0, #0x50
	blt _080AAACA
	movs r1, #0x34
	cmp r0, #0x55
	bge _080AAACA
	b _080AAAC8
_080AAAAC:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x1a
	cmp r0, #0x1e
	blt _080AAACA
	movs r1, #0x6d
	cmp r0, #0x46
	blt _080AAACA
	movs r1, #0xe9
	lsls r1, r1, #1
	cmp r0, #0x4b
	bge _080AAACA
_080AAAC8:
	movs r1, #0x85
_080AAACA:
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AAAD8
sub_080AAAD8: @ 0x080AAAD8
	push {lr}
	ldr r2, _080AAAEC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AAAF0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AAAEC: .4byte 0x09F642A0
_080AAAF0: .4byte 0x09F64318

	thumb_func_start sub_080AAAF4
sub_080AAAF4: @ 0x080AAAF4
	push {r4, lr}
	movs r4, #0
	b _080AAB28
_080AAAFA:
	adds r0, r4, #0
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #1
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAB26
	adds r0, r4, #0
	bl sub_08072AA4
	b _080AAB32
_080AAB26:
	adds r4, #1
_080AAB28:
	bl sub_08072A88
	cmp r4, r0
	blt _080AAAFA
	movs r0, #0
_080AAB32:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AAB38
sub_080AAB38: @ 0x080AAB38
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080AAB84 @ =0x000001CD
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAB88
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r3, r0, #0
	cmp r3, #0
	beq _080AAB88
	ldr r1, [r5, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
	movs r0, #1
	b _080AAB90
	.align 2, 0
_080AAB84: .4byte 0x000001CD
_080AAB88:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08080EB8
_080AAB90:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAB98
sub_080AAB98: @ 0x080AAB98
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x8d
	bne _080AAC0E
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AABEC
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xbe
	lsls r0, r0, #1
	cmp r1, #0x2d
	blt _080AAC6E
	adds r0, #2
	cmp r1, #0x50
	bge _080AAC6E
	subs r0, #1
	b _080AAC6E
_080AABEC:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xbe
	lsls r1, r1, #1
	cmp r0, #0x1e
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x32
	blt _080AAC6C
	adds r1, #0x50
	cmp r0, #0x50
	bge _080AAC6C
	movs r1, #0xbf
	lsls r1, r1, #1
	b _080AAC6C
_080AAC0E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AAC48
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xbe
	lsls r1, r1, #1
	cmp r0, #0x28
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x46
	blt _080AAC6C
	movs r1, #0x8d
	cmp r0, #0x5f
	bge _080AAC6C
	movs r1, #0xbf
	lsls r1, r1, #1
	b _080AAC6C
_080AAC48:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xbe
	lsls r1, r1, #1
	cmp r0, #0x1e
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x32
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x50
	blt _080AAC6C
	movs r1, #0x8d
	cmp r0, #0x5f
	bge _080AAC6C
	ldr r1, _080AAC7C @ =0x000001CD
_080AAC6C:
	adds r0, r1, #0
_080AAC6E:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AAC7C: .4byte 0x000001CD

	thumb_func_start sub_080AAC80
sub_080AAC80: @ 0x080AAC80
	push {lr}
	ldr r2, _080AAC94 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AAC98 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AAC94: .4byte 0x09F642A0
_080AAC98: .4byte 0x09F64318

	thumb_func_start sub_080AAC9C
sub_080AAC9C: @ 0x080AAC9C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAD32
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAD32
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAD32
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAD32
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AAD34
_080AAD32:
	movs r0, #0
_080AAD34:
	cmp r0, #0
	bne _080AAD3C
	movs r0, #0
	b _080AAD5E
_080AAD3C:
	adds r0, r5, #0
	movs r1, #0x91
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAD50
	movs r0, #1
	b _080AAD5E
_080AAD50:
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AAD5E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AAD64
sub_080AAD64: @ 0x080AAD64
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x19
	cmp r0, #0xa
	blt _080AAD84
	movs r1, #0x1e
	cmp r0, #0x23
	blt _080AAD84
	movs r1, #0x91
	cmp r0, #0x32
	bge _080AAD84
	movs r1, #0x5c
_080AAD84:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAD94
sub_080AAD94: @ 0x080AAD94
	push {lr}
	ldr r2, _080AADA8 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AADAC @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AADA8: .4byte 0x09F642A0
_080AADAC: .4byte 0x09F64318

	thumb_func_start sub_080AADB0
sub_080AADB0: @ 0x080AADB0
	push {lr}
	adds r2, r0, #0
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #2
	beq _080AADCA
	movs r0, #0x3c
	cmp r0, r1
	bge _080AADC8
	adds r0, r1, #0
_080AADC8:
	adds r1, r0, #0
_080AADCA:
	adds r0, r2, #0
	bl sub_08081494
	pop {r0}
	bx r0

	thumb_func_start sub_080AADD4
sub_080AADD4: @ 0x080AADD4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	bl sub_0808110C
	ldr r1, [r6, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	movs r2, #1
	bl sub_0805CD30
	cmp r5, #0
	bne _080AAE36
	ldr r1, [r6, #0x1c]
	movs r0, #0x9a
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	b _080AAE4C
_080AAE36:
	ldr r1, [r6, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
_080AAE4C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AAE54
sub_080AAE54: @ 0x080AAE54
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AAE6E
	cmp r2, #1
	bne _080AAE8A
_080AAE6E:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AAE8C
_080AAE8A:
	movs r0, #0
_080AAE8C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAE94
sub_080AAE94: @ 0x080AAE94
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAF2A
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAF2A
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAF2A
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAF2A
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AAF2C
_080AAF2A:
	movs r0, #0
_080AAF2C:
	cmp r0, #0
	bne _080AAF34
	movs r0, #0
	b _080AAF8C
_080AAF34:
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAF60
	ldr r1, [r4, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	b _080AAF8A
_080AAF60:
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAF8A
	ldr r1, [r4, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
_080AAF8A:
	movs r0, #1
_080AAF8C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAF94
sub_080AAF94: @ 0x080AAF94
	push {lr}
	adds r1, r0, #0
	movs r0, #0xfc
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAFA4
sub_080AAFA4: @ 0x080AAFA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	ble _080AAFC6
	movs r0, #0xb9
	lsls r0, r0, #1
	b _080AAFC8
_080AAFC6:
	ldr r0, _080AAFD4 @ =0x00000171
_080AAFC8:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AAFD4: .4byte 0x00000171

	thumb_func_start sub_080AAFD8
sub_080AAFD8: @ 0x080AAFD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080AB00C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AB008 @ =0x00000173
	cmp r0, #0x32
	bge _080AB004
	subs r1, #4
_080AB004:
	adds r0, r1, #0
	b _080AB02C
	.align 2, 0
_080AB008: .4byte 0x00000173
_080AB00C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #2
	ble _080AB02A
	movs r0, #0xb8
	lsls r0, r0, #1
	b _080AB02C
_080AB02A:
	ldr r0, _080AB038 @ =0x0000021F
_080AB02C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB038: .4byte 0x0000021F

	thumb_func_start sub_080AB03C
sub_080AB03C: @ 0x080AB03C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080AB072
	cmp r0, #1
	bgt _080AB056
	cmp r0, #0
	beq _080AB05C
	b _080AB09E
_080AB056:
	cmp r0, #2
	beq _080AB088
	b _080AB09E
_080AB05C:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB0F8
_080AB072:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB0F8
_080AB088:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB0F8
_080AB09E:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AB0F6
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AB0F8
_080AB0F6:
	movs r0, #0
_080AB0F8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB100
sub_080AB100: @ 0x080AB100
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x3c
	bgt _080AB15E
	ldr r1, [r4, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB15E
	ldr r0, _080AB164 @ =0x0000021E
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_080AB15E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB164: .4byte 0x0000021E

	thumb_func_start sub_080AB168
sub_080AB168: @ 0x080AB168
	push {lr}
	ldr r2, _080AB17C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AB180 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AB17C: .4byte 0x09F642A0
_080AB180: .4byte 0x09F64318

	thumb_func_start sub_080AB184
sub_080AB184: @ 0x080AB184
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xb6
	lsls r0, r0, #1
	cmp r1, #0xf
	blt _080AB1A2
	adds r0, #2
	cmp r1, #0x1e
	bge _080AB1A2
	subs r0, #1
_080AB1A2:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB1B0
sub_080AB1B0: @ 0x080AB1B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AB1E0 @ =0x00000167
	cmp r0, #0x19
	blt _080AB1D0
	adds r1, #1
	cmp r0, #0x41
	blt _080AB1D0
	adds r1, #1
	cmp r0, #0x5f
	bge _080AB1D0
	adds r1, #2
_080AB1D0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB1E0: .4byte 0x00000167

	thumb_func_start sub_080AB1E4
sub_080AB1E4: @ 0x080AB1E4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080AB250
	cmp r0, #1
	beq _080AB266
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AB27C
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AB27E
_080AB250:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB27E
_080AB266:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB27E
_080AB27C:
	movs r0, #0
_080AB27E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB284
sub_080AB284: @ 0x080AB284
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AB29E
	cmp r2, #1
	bne _080AB2BA
_080AB29E:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AB2BC
_080AB2BA:
	movs r0, #0
_080AB2BC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB2C4
sub_080AB2C4: @ 0x080AB2C4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x41
	bl _call_via_r2
	cmp r4, r0
	bge _080AB326
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB326
	movs r0, #0xb5
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_080741AC
	bl sub_08074234
_080AB326:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AB32C
sub_080AB32C: @ 0x080AB32C
	push {lr}
	ldr r2, _080AB340 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AB344 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AB340: .4byte 0x09F642A0
_080AB344: .4byte 0x09F64318

	thumb_func_start sub_080AB348
sub_080AB348: @ 0x080AB348
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AB36C
	ldr r0, _080AB368 @ =0x0000011F
	b _080AB39C
	.align 2, 0
_080AB368: .4byte 0x0000011F
_080AB36C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	ble _080AB39A
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x1e
	blt _080AB39C
	movs r0, #0x3a
	cmp r1, #0x55
	bge _080AB39C
_080AB39A:
	movs r0, #0x59
_080AB39C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB3A8
sub_080AB3A8: @ 0x080AB3A8
	push {lr}
	ldr r2, _080AB3BC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AB3C0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AB3BC: .4byte 0x09F642A0
_080AB3C0: .4byte 0x09F64318

	thumb_func_start sub_080AB3C4
sub_080AB3C4: @ 0x080AB3C4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x83
	bl sub_08072E38
	adds r2, r0, #0
	cmp r2, #0
	beq _080AB3F2
	ldr r1, [r2, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x45
	bgt _080AB3F2
	movs r0, #0x91
	lsls r0, r0, #1
	b _080AB40A
_080AB3F2:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AB418 @ =0x00000127
	cmp r1, #0x37
	blt _080AB40A
	adds r0, #0x72
	cmp r1, #0x41
	bge _080AB40A
	movs r0, #0xca
_080AB40A:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB418: .4byte 0x00000127

	thumb_func_start sub_080AB41C
sub_080AB41C: @ 0x080AB41C
	push {lr}
	ldr r2, _080AB430 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AB434 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AB430: .4byte 0x09F642A0
_080AB434: .4byte 0x09F64318

	thumb_func_start sub_080AB438
sub_080AB438: @ 0x080AB438
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AB452
	cmp r2, #1
	bne _080AB46E
_080AB452:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AB470
_080AB46E:
	movs r0, #0
_080AB470:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB478
sub_080AB478: @ 0x080AB478
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	bl unit_98__4UnitUi
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AB49E
	b _080AB600
_080AB49E:
	ldr r1, [r6, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080AB4B8
	b _080AB600
_080AB4B8:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB4D8
	b _080AB600
_080AB4D8:
	movs r0, #0x14
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r0, _080AB64C @ =0x0000064E
	bl sub_08070824
	movs r0, #0x47
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	movs r2, #1
	bl sub_08073734
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x49
	adds r1, r4, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r0, sp, #0x1c
	bl sub_0806E274
	add r0, sp, #0x28
	bl sub_0806E274
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x1c
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x10
	movs r1, #2
	bl sub_0806E308
_080AB600:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AB642
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB642
	ldr r1, [r7, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
_080AB642:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AB64C: .4byte 0x0000064E

	thumb_func_start sub_080AB650
sub_080AB650: @ 0x080AB650
	push {lr}
	adds r1, r0, #0
	movs r0, #0xfc
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB660
sub_080AB660: @ 0x080AB660
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x4e
	bne _080AB694
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x2c
	cmp r0, #0x3c
	bge _080AB690
	movs r1, #0x73
_080AB690:
	adds r0, r1, #0
	b _080AB6AC
_080AB694:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x73
	cmp r1, #0x23
	blt _080AB6AC
	movs r0, #0x4e
	cmp r1, #0x3c
	bge _080AB6AC
	movs r0, #0x2c
_080AB6AC:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB6B8
sub_080AB6B8: @ 0x080AB6B8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080AB724
	cmp r0, #1
	beq _080AB73A
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AB750
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AB752
_080AB724:
	ldr r1, [r6, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB752
_080AB73A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB752
_080AB750:
	movs r0, #0
_080AB752:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB758
sub_080AB758: @ 0x080AB758
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x45
	bgt _080AB7A0
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB7A0
	movs r0, #0xfb
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AB7A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AB7A8
sub_080AB7A8: @ 0x080AB7A8
	push {lr}
	ldr r2, _080AB7BC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AB7C0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AB7BC: .4byte 0x09F642A0
_080AB7C0: .4byte 0x09F64318

	thumb_func_start sub_080AB7C4
sub_080AB7C4: @ 0x080AB7C4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r1, r5, #0
	bl unit_270__4UnitUi
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB7DE
	movs r0, #0
	b _080AB81E
_080AB7DE:
	cmp r5, #0x16
	bne _080AB81C
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB81C
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080AB81C:
	movs r0, #1
_080AB81E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB824
sub_080AB824: @ 0x080AB824
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB8BA
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB8BA
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB8BA
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB8BA
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AB8BC
_080AB8BA:
	movs r0, #0
_080AB8BC:
	cmp r0, #0
	bne _080AB8C4
	movs r0, #0
	b _080AB91E
_080AB8C4:
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB8F4
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
_080AB8F4:
	adds r0, r5, #0
	movs r1, #0xae
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB91C
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08074234
_080AB91C:
	movs r0, #1
_080AB91E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB924
sub_080AB924: @ 0x080AB924
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AB964
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AB960 @ =0x00000177
	cmp r0, #0x28
	bge _080AB95A
	subs r1, #1
_080AB95A:
	adds r0, r1, #0
	b _080AB97E
	.align 2, 0
_080AB960: .4byte 0x00000177
_080AB964:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xbb
	lsls r0, r0, #1
	cmp r1, #0x1e
	blt _080AB97E
	adds r0, #2
	cmp r1, #0x50
	bge _080AB97E
	subs r0, #1
_080AB97E:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB98C
sub_080AB98C: @ 0x080AB98C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #3
	cmp r0, r1
	bne _080AB9BC
	movs r0, #0xae
	adds r1, r4, #0
	bl sub_080741AC
	b _080ABA14
_080AB9BC:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, #1
	movs r1, #3
	bl sub_0807067C
	cmp r0, #0
	bne _080ABA00
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AB9FC @ =0x00000179
	cmp r1, #0x14
	blt _080AB9F4
	adds r0, #2
	cmp r1, #0x28
	bge _080AB9F4
	subs r0, #1
_080AB9F4:
	adds r1, r4, #0
	bl sub_080741AC
	b _080ABA14
	.align 2, 0
_080AB9FC: .4byte 0x00000179
_080ABA00:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080ABA14:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ABA1C
sub_080ABA1C: @ 0x080ABA1C
	push {lr}
	ldr r2, _080ABA30 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ABA34 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ABA30: .4byte 0x09F642A0
_080ABA34: .4byte 0x09F64318

	thumb_func_start sub_080ABA38
sub_080ABA38: @ 0x080ABA38
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl unit_a0__4UnitUi
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ABAA4
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080ABAA4
	ldr r1, [r4, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080ABAA4
	ldr r1, [r5, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080ABAA4
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080ABAA4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABAAC
sub_080ABAAC: @ 0x080ABAAC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl unit_88__4UnitUi
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ABAD2
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
_080ABAD2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080ABAD8
sub_080ABAD8: @ 0x080ABAD8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x9d
	cmp r0, #0x46
	bge _080ABAEC
	movs r1, #0x1f
_080ABAEC:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ABAFC
sub_080ABAFC: @ 0x080ABAFC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080ABB18
	movs r0, #0x77
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080ABB18:
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ABB24
sub_080ABB24: @ 0x080ABB24
	push {lr}
	ldr r2, _080ABB38 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ABB3C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ABB38: .4byte 0x09F642A0
_080ABB3C: .4byte 0x09F64318

	thumb_func_start sub_080ABB40
sub_080ABB40: @ 0x080ABB40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #2
	bgt _080ABB78
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #2
	cmp r0, #0x14
	blt _080ABB70
	movs r1, #0x2b
	cmp r0, #0x23
	blt _080ABB70
	movs r1, #0x8c
	lsls r1, r1, #2
	cmp r0, #0x28
	blt _080ABB70
	ldr r1, _080ABB74 @ =0x0000012B
	cmp r0, #0x41
	bge _080ABB70
	subs r1, #1
_080ABB70:
	adds r0, r1, #0
	b _080ABB92
	.align 2, 0
_080ABB74: .4byte 0x0000012B
_080ABB78:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080ABBA0 @ =0x00000113
	cmp r1, #0x3c
	blt _080ABB92
	movs r0, #0x8c
	lsls r0, r0, #2
	cmp r1, #0x50
	bge _080ABB92
	movs r0, #0x2b
_080ABB92:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080ABBA0: .4byte 0x00000113

	thumb_func_start sub_080ABBA4
sub_080ABBA4: @ 0x080ABBA4
	push {lr}
	ldr r2, _080ABBB8 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ABBBC @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ABBB8: .4byte 0x09F642A0
_080ABBBC: .4byte 0x09F64318

	thumb_func_start sub_080ABBC0
sub_080ABBC0: @ 0x080ABBC0
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	blt _080ABBDA
	cmp r2, #1
	bne _080ABBF6
_080ABBDA:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080ABBF8
_080ABBF6:
	movs r0, #0
_080ABBF8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ABC00
sub_080ABC00: @ 0x080ABC00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ABC96
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ABC96
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ABC96
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ABC96
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080ABC98
_080ABC96:
	movs r0, #0
_080ABC98:
	cmp r0, #0
	bne _080ABCA0
	movs r0, #0
	b _080ABCCA
_080ABCA0:
	ldr r1, _080ABCD0 @ =0x000001E7
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ABCC8
	ldr r1, [r4, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
_080ABCC8:
	movs r0, #1
_080ABCCA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ABCD0: .4byte 0x000001E7

	thumb_func_start sub_080ABCD4
sub_080ABCD4: @ 0x080ABCD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0xcf
	lsls r5, r5, #1
	cmp r0, r5
	bne _080ABCFE
	movs r0, #0xf4
	lsls r0, r0, #1
	b _080ABD18
_080ABCFE:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xf2
	lsls r0, r0, #1
	cmp r1, #0x19
	blt _080ABD18
	adds r0, r5, #0
	cmp r1, #0x3c
	bge _080ABD18
	ldr r0, _080ABD24 @ =0x000001E5
_080ABD18:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ABD24: .4byte 0x000001E5

	thumb_func_start sub_080ABD28
sub_080ABD28: @ 0x080ABD28
	push {lr}
	adds r1, r0, #0
	ldr r0, _080ABD38 @ =0x000001E7
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0
_080ABD38: .4byte 0x000001E7

	thumb_func_start sub_080ABD3C
sub_080ABD3C: @ 0x080ABD3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0xf3
	lsls r5, r5, #1
	cmp r0, r5
	bne _080ABD84
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080ABD80 @ =0x000001E3
	cmp r0, #0x14
	blt _080ABDA6
	adds r1, #1
	cmp r0, #0x2d
	blt _080ABDA6
	adds r1, #1
	cmp r0, #0x41
	bge _080ABDA6
	subs r1, #4
	b _080ABDA6
	.align 2, 0
_080ABD80: .4byte 0x000001E3
_080ABD84:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080ABDB4 @ =0x000001E3
	cmp r0, #0xa
	blt _080ABDA6
	adds r1, #1
	cmp r0, #0x23
	blt _080ABDA6
	subs r1, #3
	cmp r0, #0x37
	blt _080ABDA6
	adds r1, r5, #0
	cmp r0, #0x5a
	bge _080ABDA6
	ldr r1, _080ABDB8 @ =0x000001E5
_080ABDA6:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ABDB4: .4byte 0x000001E3
_080ABDB8: .4byte 0x000001E5

	thumb_func_start sub_080ABDBC
sub_080ABDBC: @ 0x080ABDBC
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080ABDE6
	cmp r0, #1
	bgt _080ABDD6
	cmp r0, #0
	beq _080ABDDC
	b _080ABE04
_080ABDD6:
	cmp r0, #2
	beq _080ABDEE
	b _080ABE04
_080ABDDC:
	ldr r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080ABDF6
_080ABDE6:
	ldr r1, [r2, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	b _080ABDF4
_080ABDEE:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
_080ABDF4:
	adds r1, r1, r0
_080ABDF6:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ABE06
_080ABE04:
	movs r0, #0
_080ABE06:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ABE0C
sub_080ABE0C: @ 0x080ABE0C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	cmp r4, r0
	bge _080ABE64
	ldr r1, [r5, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080ABE64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABE6C
sub_080ABE6C: @ 0x080ABE6C
	push {lr}
	ldr r2, _080ABE80 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ABE84 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ABE80: .4byte 0x09F642A0
_080ABE84: .4byte 0x09F64318

	thumb_func_start sub_080ABE88
sub_080ABE88: @ 0x080ABE88
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08081494
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	cmp r6, r0
	ble _080ABF10
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	cmp r4, r0
	bgt _080ABF10
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	b _080ABF72
_080ABF10:
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r6, r0
	ble _080ABF76
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bgt _080ABF76
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
_080ABF72:
	adds r1, r5, r2
	str r0, [r1]
_080ABF76:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080ABF7C
sub_080ABF7C: @ 0x080ABF7C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC012
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC012
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC012
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC012
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AC014
_080AC012:
	movs r0, #0
_080AC014:
	cmp r0, #0
	bne _080AC01C
	movs r0, #0
	b _080AC03A
_080AC01C:
	ldr r1, _080AC040 @ =0x000001DF
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC038
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AC038:
	movs r0, #1
_080AC03A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AC040: .4byte 0x000001DF

	thumb_func_start sub_080AC044
sub_080AC044: @ 0x080AC044
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC070
	movs r0, #0xf1
	lsls r0, r0, #1
	b _080AC1A4
_080AC070:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC098
	movs r0, #0xf1
	lsls r0, r0, #1
	b _080AC1A4
_080AC098:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AC0B8
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #9
	bgt _080AC0B8
	ldr r0, _080AC0B4 @ =0x000001DF
	b _080AC1A4
	.align 2, 0
_080AC0B4: .4byte 0x000001DF
_080AC0B8:
	ldr r1, [r4, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #2
	bgt _080AC120
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC102
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xee
	lsls r1, r1, #1
	cmp r0, #0x2d
	bge _080AC1A2
	subs r1, #1
	b _080AC1A2
_080AC102:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AC11C @ =0x000001DB
	cmp r1, #0x28
	blt _080AC1A4
	adds r0, #3
	cmp r1, #0x5a
	bge _080AC1A4
	subs r0, #2
	b _080AC1A4
	.align 2, 0
_080AC11C: .4byte 0x000001DB
_080AC120:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	bgt _080AC13E
	movs r0, #0xf0
	lsls r0, r0, #1
	b _080AC1A4
_080AC13E:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC180
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AC17C @ =0x000001DB
	cmp r0, #0xa
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x23
	blt _080AC1A2
	adds r1, #5
	cmp r0, #0x4b
	bge _080AC1A2
	subs r1, #4
	b _080AC1A2
	.align 2, 0
_080AC17C: .4byte 0x000001DB
_080AC180:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AC1B0 @ =0x000001DB
	cmp r0, #0xa
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x1e
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x46
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x5a
	bge _080AC1A2
	adds r1, #3
_080AC1A2:
	adds r0, r1, #0
_080AC1A4:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AC1B0: .4byte 0x000001DB

	thumb_func_start sub_080AC1B4
sub_080AC1B4: @ 0x080AC1B4
	push {lr}
	ldr r2, _080AC1C8 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AC1CC @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AC1C8: .4byte 0x09F642A0
_080AC1CC: .4byte 0x09F64318

	thumb_func_start sub_080AC1D0
sub_080AC1D0: @ 0x080AC1D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080AC200
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x4d
	cmp r0, #0x3c
	bge _080AC1FC
	movs r1, #0x1d
_080AC1FC:
	adds r0, r1, #0
	b _080AC202
_080AC200:
	movs r0, #0xc0
_080AC202:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AC210
sub_080AC210: @ 0x080AC210
	push {lr}
	ldr r2, _080AC224 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AC228 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AC224: .4byte 0x09F642A0
_080AC228: .4byte 0x09F64318

	thumb_func_start sub_080AC22C
sub_080AC22C: @ 0x080AC22C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080AC252
	cmp r5, #3
	bne _080AC252
	movs r0, #0x82
	b _080AC25A
_080AC252:
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_1f0__C4UnitUi
_080AC25A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC260
sub_080AC260: @ 0x080AC260
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AC290
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	movs r1, #0
	cmp r0, #0x45
	bgt _080AC28C
	movs r1, #0x9a
_080AC28C:
	adds r0, r1, #0
	b _080AC29A
_080AC290:
	adds r0, r4, #0
	bl sub_08080FEC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080AC29A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC2A0
sub_080AC2A0: @ 0x080AC2A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AC2D0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #7
	cmp r0, #0x41
	bge _080AC2CC
	movs r1, #0xd7
_080AC2CC:
	adds r0, r1, #0
	b _080AC2EA
_080AC2D0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AC2F8 @ =0x00000101
	cmp r1, #0x28
	blt _080AC2EA
	movs r0, #0x99
	lsls r0, r0, #2
	cmp r1, #0x4b
	bge _080AC2EA
	subs r0, #1
_080AC2EA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC2F8: .4byte 0x00000101

	thumb_func_start sub_080AC2FC
sub_080AC2FC: @ 0x080AC2FC
	push {r4, r5, lr}
	adds r5, r1, #0
	cmp r5, r0
	bne _080AC358
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AC358
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x46
	bl _call_via_r2
	cmp r4, r0
	bge _080AC358
	movs r0, #1
	adds r1, r5, #0
	bl sub_080741AC
	bl sub_08074234
_080AC358:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AC360
sub_080AC360: @ 0x080AC360
	push {lr}
	ldr r2, _080AC374 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AC378 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AC374: .4byte 0x09F642A0
_080AC378: .4byte 0x09F64318

	thumb_func_start sub_080AC37C
sub_080AC37C: @ 0x080AC37C
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AC396
	cmp r2, #1
	bne _080AC3B2
_080AC396:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AC3B4
_080AC3B2:
	movs r0, #0
_080AC3B4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AC3BC
sub_080AC3BC: @ 0x080AC3BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AC3DE
	movs r0, #0x81
	lsls r0, r0, #1
	b _080AC3F6
_080AC3DE:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AC404 @ =0x0000015B
	cmp r1, #0x19
	blt _080AC3F6
	adds r0, #1
	cmp r1, #0x55
	bge _080AC3F6
	adds r0, #3
_080AC3F6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC404: .4byte 0x0000015B

	thumb_func_start sub_080AC408
sub_080AC408: @ 0x080AC408
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x9b
	bl sub_08072E38
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x9c
	bl sub_08072E38
	cmp r0, #0
	beq _080AC424
	adds r4, #1
_080AC424:
	cmp r4, #1
	ble _080AC438
	ldr r0, _080AC434 @ =0x0000015D
	adds r1, r6, #0
	bl sub_080741AC
	b _080AC4A2
	.align 2, 0
_080AC434: .4byte 0x0000015D
_080AC438:
	cmp r4, #0
	ble _080AC448
	movs r0, #0xaf
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	b _080AC4A2
_080AC448:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AC4A0
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AC4A2
_080AC4A0:
	movs r0, #0
_080AC4A2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC4A8
sub_080AC4A8: @ 0x080AC4A8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080AC514
	cmp r0, #1
	beq _080AC52A
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AC540
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AC542
_080AC514:
	ldr r1, [r6, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AC542
_080AC52A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AC542
_080AC540:
	movs r0, #0
_080AC542:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC548
sub_080AC548: @ 0x080AC548
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #1
	bgt _080AC56C
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080AC56C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AC574
sub_080AC574: @ 0x080AC574
	push {lr}
	ldr r2, _080AC588 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AC58C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AC588: .4byte 0x09F642A0
_080AC58C: .4byte 0x09F64318

	thumb_func_start sub_080AC590
sub_080AC590: @ 0x080AC590
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC626
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC626
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC626
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC626
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AC628
_080AC626:
	movs r0, #0
_080AC628:
	cmp r0, #0
	bne _080AC630
	movs r0, #0
	b _080AC66C
_080AC630:
	ldr r1, _080AC674 @ =0x0000011D
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC64C
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AC64C:
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC66A
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AC66A:
	movs r0, #1
_080AC66C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AC674: .4byte 0x0000011D

	thumb_func_start sub_080AC678
sub_080AC678: @ 0x080AC678
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl sub_08072E38
	cmp r0, #0
	beq _080AC68A
	movs r0, #0
	b _080AC6DE
_080AC68A:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080AC69A
	movs r0, #3
	b _080AC6D8
_080AC69A:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080AC6BA
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xb2
	lsls r1, r1, #1
	cmp r0, #0x46
	bge _080AC6D6
	subs r1, #0x51
	b _080AC6D6
_080AC6BA:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AC6E4 @ =0x00000105
	cmp r0, #0x2d
	blt _080AC6D6
	adds r1, #0x18
	cmp r0, #0x4b
	blt _080AC6D6
	movs r1, #0xd7
	cmp r0, #0x5f
	bge _080AC6D6
	adds r1, #0x47
_080AC6D6:
	adds r0, r1, #0
_080AC6D8:
	adds r1, r4, #0
	bl sub_080741AC
_080AC6DE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC6E4: .4byte 0x00000105

	thumb_func_start sub_080AC6E8
sub_080AC6E8: @ 0x080AC6E8
	push {lr}
	ldr r2, _080AC6FC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AC700 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AC6FC: .4byte 0x09F642A0
_080AC700: .4byte 0x09F64318

	thumb_func_start sub_080AC704
sub_080AC704: @ 0x080AC704
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl sub_08072E38
	cmp r0, #0
	beq _080AC716
	movs r0, #0
	b _080AC72E
_080AC716:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x60
	cmp r0, #0x19
	bge _080AC726
	adds r1, #0xb3
_080AC726:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
_080AC72E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC734
sub_080AC734: @ 0x080AC734
	push {lr}
	ldr r2, _080AC748 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AC74C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AC748: .4byte 0x09F642A0
_080AC74C: .4byte 0x09F64318

	thumb_func_start sub_080AC750
sub_080AC750: @ 0x080AC750
	push {r4, lr}
	adds r4, r0, #0
	bl nullsub_36
	bl sub_08072DFC
	cmp r0, #1
	bgt _080AC77A
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x13
	bgt _080AC79A
	movs r0, #0xb7
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080AC79A
_080AC77A:
	bl sub_08072DFC
	cmp r0, #2
	bgt _080AC79A
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #9
	bgt _080AC79A
	movs r0, #0xb7
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AC79A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AC7A0
sub_080AC7A0: @ 0x080AC7A0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x32
	blt _080AC7BC
	movs r0, #0x2f
	cmp r1, #0x3c
	bge _080AC7BC
	movs r0, #0x8c
_080AC7BC:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC7C8
sub_080AC7C8: @ 0x080AC7C8
	push {lr}
	ldr r2, _080AC7DC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AC7E0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AC7DC: .4byte 0x09F642A0
_080AC7E0: .4byte 0x09F64318

	thumb_func_start sub_080AC7E4
sub_080AC7E4: @ 0x080AC7E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072EA8
	cmp r0, #2
	bgt _080AC810
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #2
	cmp r0, #0x23
	blt _080AC80C
	movs r1, #0x35
	cmp r0, #0x28
	blt _080AC80C
	movs r1, #0xc4
	cmp r0, #0x32
	bge _080AC80C
	movs r1, #0x7b
_080AC80C:
	adds r0, r1, #0
	b _080AC828
_080AC810:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x41
	blt _080AC828
	movs r0, #0x7b
	cmp r1, #0x55
	bge _080AC828
	movs r0, #0x35
_080AC828:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC834
sub_080AC834: @ 0x080AC834
	push {lr}
	ldr r2, _080AC848 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AC84C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AC848: .4byte 0x09F642A0
_080AC84C: .4byte 0x09F64318

	thumb_func_start sub_080AC850
sub_080AC850: @ 0x080AC850
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	blt _080AC8A0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #8
	cmp r0, #0xf
	blt _080AC8BC
	movs r1, #0x12
	cmp r0, #0x32
	blt _080AC8BC
	movs r1, #0xd7
	cmp r0, #0x50
	bge _080AC8BC
	b _080AC8BA
_080AC8A0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #8
	cmp r0, #0x14
	blt _080AC8BC
	movs r1, #0x12
	cmp r0, #0x32
	blt _080AC8BC
	movs r1, #0xd7
	cmp r0, #0x5f
	bge _080AC8BC
_080AC8BA:
	movs r1, #0x46
_080AC8BC:
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AC8CC
sub_080AC8CC: @ 0x080AC8CC
	push {lr}
	ldr r2, _080AC8E0 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AC8E4 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AC8E0: .4byte 0x09F642A0
_080AC8E4: .4byte 0x09F64318

	thumb_func_start sub_080AC8E8
sub_080AC8E8: @ 0x080AC8E8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AC902
	cmp r2, #1
	bne _080AC91E
_080AC902:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AC920
_080AC91E:
	movs r0, #0
_080AC920:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AC928
sub_080AC928: @ 0x080AC928
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072EA8
	cmp r0, #1
	bgt _080AC94C
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080AC94C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AC954
sub_080AC954: @ 0x080AC954
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AC978
	ldr r0, _080AC974 @ =0x0000014D
	b _080AC996
	.align 2, 0
_080AC974: .4byte 0x0000014D
_080AC978:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AC9A4 @ =0x0000014B
	cmp r0, #0x28
	blt _080AC994
	adds r1, #1
	cmp r0, #0x41
	blt _080AC994
	adds r1, #1
	cmp r0, #0x55
	bge _080AC994
	movs r1, #0xbe
_080AC994:
	adds r0, r1, #0
_080AC996:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC9A4: .4byte 0x0000014B

	thumb_func_start sub_080AC9A8
sub_080AC9A8: @ 0x080AC9A8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AC9D0 @ =0x0000014B
	cmp r1, #0x37
	blt _080AC9C4
	movs r0, #0xbe
	cmp r1, #0x55
	bge _080AC9C4
	adds r0, #0x8e
_080AC9C4:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC9D0: .4byte 0x0000014B

	thumb_func_start sub_080AC9D4
sub_080AC9D4: @ 0x080AC9D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080ACA40
	cmp r0, #1
	beq _080ACA56
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ACA6C
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080ACA6E
_080ACA40:
	ldr r1, [r6, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ACA6E
_080ACA56:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ACA6E
_080ACA6C:
	movs r0, #0
_080ACA6E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080ACA74
sub_080ACA74: @ 0x080ACA74
	push {lr}
	ldr r2, _080ACA88 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ACA8C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ACA88: .4byte 0x09F642A0
_080ACA8C: .4byte 0x09F64318

	thumb_func_start sub_080ACA90
sub_080ACA90: @ 0x080ACA90
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5d
	bl sub_08072EE4
	cmp r0, #0
	beq _080ACAB0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xf2
	cmp r0, #0x1e
	bge _080ACAC0
	movs r1, #0xd8
	b _080ACAC0
_080ACAB0:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xd7
	cmp r0, #0x46
	bge _080ACAC0
	movs r1, #2
_080ACAC0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ACAD0
sub_080ACAD0: @ 0x080ACAD0
	push {lr}
	ldr r2, _080ACAE4 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ACAE8 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ACAE4: .4byte 0x09F642A0
_080ACAE8: .4byte 0x09F64318

	thumb_func_start sub_080ACAEC
sub_080ACAEC: @ 0x080ACAEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ACB4E
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, _080ACB54 @ =0x000002BB
	cmp r0, r1
	bgt _080ACB4E
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080ACB4E
	movs r0, #0xab
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080ACB4E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACB54: .4byte 0x000002BB

	thumb_func_start sub_080ACB58
sub_080ACB58: @ 0x080ACB58
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080ACB7C
	ldr r0, _080ACB78 @ =0x00000157
	b _080ACBC6
	.align 2, 0
_080ACB78: .4byte 0x00000157
_080ACB7C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080ACB9A
	movs r0, #0xad
	lsls r0, r0, #1
	b _080ACBC6
_080ACB9A:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xac
	lsls r1, r1, #1
	cmp r0, #0x10
	blt _080ACBC4
	adds r1, #1
	cmp r0, #0x20
	blt _080ACBC4
	subs r1, #2
	cmp r0, #0x30
	blt _080ACBC4
	adds r1, #3
	cmp r0, #0x40
	blt _080ACBC4
	subs r1, #0x22
	cmp r0, #0x50
	bge _080ACBC4
	subs r1, #1
_080ACBC4:
	adds r0, r1, #0
_080ACBC6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ACBD4
sub_080ACBD4: @ 0x080ACBD4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xa9
	lsls r1, r1, #1
	cmp r0, #0x19
	blt _080ACBF6
	adds r1, #1
	cmp r0, #0x41
	blt _080ACBF6
	adds r1, #2
	cmp r0, #0x4b
	bge _080ACBF6
	subs r1, #1
_080ACBF6:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080ACC04
sub_080ACC04: @ 0x080ACC04
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080ACC70
	cmp r0, #1
	beq _080ACC86
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ACC9C
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080ACC9E
_080ACC70:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ACC9E
_080ACC86:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ACC9E
_080ACC9C:
	movs r0, #0
_080ACC9E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080ACCA4
sub_080ACCA4: @ 0x080ACCA4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080ACCBE
	cmp r2, #1
	bne _080ACCDA
_080ACCBE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080ACCDC
_080ACCDA:
	movs r0, #0
_080ACCDC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ACCE4
sub_080ACCE4: @ 0x080ACCE4
	push {lr}
	ldr r2, _080ACCF8 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ACCFC @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ACCF8: .4byte 0x09F642A0
_080ACCFC: .4byte 0x09F64318

	thumb_func_start sub_080ACD00
sub_080ACD00: @ 0x080ACD00
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl unit_a0__4UnitUi
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ACD7E
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080ACD7E
	ldr r1, [r4, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACD7E
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080ACD7E
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x13
	bgt _080ACD7E
	movs r0, #0xa7
	adds r1, r5, #0
	bl sub_080741AC
	bl sub_08074234
_080ACD7E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080ACD84
sub_080ACD84: @ 0x080ACD84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ACE1A
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ACE1A
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ACE1A
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACE1A
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080ACE1C
_080ACE1A:
	movs r0, #0
_080ACE1C:
	cmp r0, #0
	bne _080ACE24
	movs r0, #0
	b _080ACE5E
_080ACE24:
	adds r0, r5, #0
	movs r1, #0x85
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACE40
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ACE40:
	adds r0, r5, #0
	movs r1, #0xa7
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACE5C
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ACE5C:
	movs r0, #1
_080ACE5E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080ACE64
sub_080ACE64: @ 0x080ACE64
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080ACEDC
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080ACEC2
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x18
	cmp r0, #0x14
	blt _080ACF12
	movs r1, #0x1f
	cmp r0, #0x3c
	blt _080ACF12
	movs r1, #0xd6
	cmp r0, #0x46
	bge _080ACF12
	movs r1, #0x85
	b _080ACF12
_080ACEC2:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x18
	cmp r1, #0x14
	blt _080ACF14
	movs r0, #0xd6
	cmp r1, #0x3c
	bge _080ACF14
	movs r0, #0x1f
	b _080ACF14
_080ACEDC:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #1
	bgt _080ACF02
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x18
	cmp r1, #0x28
	blt _080ACF14
	movs r0, #0x85
	cmp r1, #0x5a
	bge _080ACF14
	movs r0, #0x1f
	b _080ACF14
_080ACF02:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x1f
	cmp r0, #0x32
	bge _080ACF12
	movs r1, #0x18
_080ACF12:
	adds r0, r1, #0
_080ACF14:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080ACF20
sub_080ACF20: @ 0x080ACF20
	push {lr}
	ldr r2, _080ACF34 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ACF38 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ACF34: .4byte 0x09F642A0
_080ACF38: .4byte 0x09F64318

	thumb_func_start sub_080ACF3C
sub_080ACF3C: @ 0x080ACF3C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ACFD2
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ACFD2
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ACFD2
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACFD2
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080ACFD4
_080ACFD2:
	movs r0, #0
_080ACFD4:
	cmp r0, #0
	bne _080ACFDC
	movs r0, #0
	b _080ACFFA
_080ACFDC:
	ldr r1, _080AD000 @ =0x00000103
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACFF8
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ACFF8:
	movs r0, #1
_080ACFFA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AD000: .4byte 0x00000103

	thumb_func_start sub_080AD004
sub_080AD004: @ 0x080AD004
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080AD050
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AD04C
	ldr r0, _080AD048 @ =0x00000103
	b _080AD068
	.align 2, 0
_080AD048: .4byte 0x00000103
_080AD04C:
	movs r0, #0xfd
	b _080AD068
_080AD050:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x4b
	blt _080AD068
	movs r0, #0xe6
	cmp r1, #0x5a
	bge _080AD068
	movs r0, #0x3f
_080AD068:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AD074
sub_080AD074: @ 0x080AD074
	push {lr}
	ldr r2, _080AD088 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AD08C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AD088: .4byte 0x09F642A0
_080AD08C: .4byte 0x09F64318

	thumb_func_start sub_080AD090
sub_080AD090: @ 0x080AD090
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r0, r7, #0
	movs r1, #0x3b
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD0FC
	movs r6, #0
	b _080AD0AC
_080AD0AA:
	adds r6, #1
_080AD0AC:
	bl sub_08072DFC
	cmp r6, r0
	bge _080AD0DC
	adds r0, r6, #0
	bl sub_08072E18
	cmp r0, r4
	beq _080AD0AA
	ldr r4, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	adds r0, r6, #0
	bl sub_08072E18
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_080AD0DC:
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0
	cmp r0, #0
	ble _080AD0F8
	movs r1, #1
_080AD0F8:
	adds r0, r1, #0
	b _080AD104
_080AD0FC:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08080EB8
_080AD104:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD10C
sub_080AD10C: @ 0x080AD10C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r7, #0
	movs r5, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	mov r8, r0
	b _080AD154
_080AD120:
	adds r0, r5, #0
	bl sub_08072E18
	ldr r2, [r0, #0x1c]
	add r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	bne _080AD152
	adds r7, #1
_080AD152:
	adds r5, #1
_080AD154:
	bl sub_08072DFC
	cmp r5, r0
	blt _080AD120
	cmp r7, #1
	ble _080AD170
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x31
	bgt _080AD170
	movs r0, #0x3b
	b _080AD188
_080AD170:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0xa
	cmp r1, #0x28
	blt _080AD188
	movs r0, #0xe6
	cmp r1, #0x5f
	bge _080AD188
	movs r0, #0x1d
_080AD188:
	adds r1, r6, #0
	bl sub_080741AC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080AD198
sub_080AD198: @ 0x080AD198
	push {lr}
	ldr r2, _080AD1AC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AD1B0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AD1AC: .4byte 0x09F642A0
_080AD1B0: .4byte 0x09F64318

	thumb_func_start sub_080AD1B4
sub_080AD1B4: @ 0x080AD1B4
	push {r4, lr}
	adds r4, r0, #0
	bl nullsub_36
	bl sub_08072DFC
	cmp r0, #1
	bgt _080AD1DE
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x13
	bgt _080AD1DE
	movs r0, #0x45
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080AD1FE
_080AD1DE:
	bl sub_08072DFC
	cmp r0, #2
	bgt _080AD1FE
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #9
	bgt _080AD1FE
	movs r0, #0x45
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AD1FE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD204
sub_080AD204: @ 0x080AD204
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD29A
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD29A
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD29A
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD29A
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AD29C
_080AD29A:
	movs r0, #0
_080AD29C:
	cmp r0, #0
	bne _080AD2A4
	movs r0, #0
	b _080AD2C2
_080AD2A4:
	adds r0, r5, #0
	movs r1, #0x81
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD2C0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AD2C0:
	movs r0, #1
_080AD2C2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AD2C8
sub_080AD2C8: @ 0x080AD2C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC
	cmp r0, #1
	bgt _080AD2F4
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080AD2F4
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x81
	cmp r0, #0x32
	bge _080AD2F0
	movs r1, #0x67
_080AD2F0:
	adds r0, r1, #0
	b _080AD2F6
_080AD2F4:
	movs r0, #0x67
_080AD2F6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD304
sub_080AD304: @ 0x080AD304
	push {lr}
	ldr r2, _080AD318 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AD31C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AD318: .4byte 0x09F642A0
_080AD31C: .4byte 0x09F64318

	thumb_func_start sub_080AD320
sub_080AD320: @ 0x080AD320
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xbe
	bne _080AD354
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xca
	cmp r0, #0x32
	bge _080AD350
	movs r1, #0x44
_080AD350:
	adds r0, r1, #0
	b _080AD356
_080AD354:
	movs r0, #0xbe
_080AD356:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD364
sub_080AD364: @ 0x080AD364
	push {lr}
	ldr r2, _080AD378 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AD37C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AD378: .4byte 0x09F642A0
_080AD37C: .4byte 0x09F64318

	thumb_func_start sub_080AD380
sub_080AD380: @ 0x080AD380
	push {lr}
	adds r2, r0, #0
	cmp r1, #3
	bne _080AD398
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #1
	bne _080AD398
	movs r0, #0x64
	b _080AD39E
_080AD398:
	adds r0, r2, #0
	bl unit_1f0__C4UnitUi
_080AD39E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD3A4
sub_080AD3A4: @ 0x080AD3A4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AD3BE
	cmp r2, #1
	bne _080AD3DA
_080AD3BE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AD3DC
_080AD3DA:
	movs r0, #0
_080AD3DC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD3E4
sub_080AD3E4: @ 0x080AD3E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD47A
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD47A
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD47A
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD47A
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AD47C
_080AD47A:
	movs r0, #0
_080AD47C:
	cmp r0, #0
	bne _080AD484
	movs r0, #0
	b _080AD4E0
_080AD484:
	ldr r1, _080AD4B0 @ =0x00000141
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD4B4
	ldr r1, [r4, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	b _080AD4DE
	.align 2, 0
_080AD4B0: .4byte 0x00000141
_080AD4B4:
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD4DE
	ldr r1, [r4, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
_080AD4DE:
	movs r0, #1
_080AD4E0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD4E8
sub_080AD4E8: @ 0x080AD4E8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AD518 @ =0x00000175
	cmp r0, #0x1e
	blt _080AD508
	subs r1, #0x35
	cmp r0, #0x41
	blt _080AD508
	adds r1, #1
	cmp r0, #0x46
	bge _080AD508
	adds r1, #1
_080AD508:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AD518: .4byte 0x00000175

	thumb_func_start sub_080AD51C
sub_080AD51C: @ 0x080AD51C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080AD544 @ =0x00000143
	cmp r0, r5
	bne _080AD548
	movs r0, #0xa2
	lsls r0, r0, #1
	b _080AD55C
	.align 2, 0
_080AD544: .4byte 0x00000143
_080AD548:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xa2
	lsls r1, r1, #1
	cmp r0, #0x46
	bge _080AD55A
	adds r1, r5, #0
_080AD55A:
	adds r0, r1, #0
_080AD55C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AD568
sub_080AD568: @ 0x080AD568
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	blt _080AD5BC
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AD5B8 @ =0x00000175
	cmp r1, #0x32
	blt _080AD5BE
	subs r0, #0x33
	cmp r1, #0x55
	bge _080AD5BE
	subs r0, #2
	b _080AD5BE
	.align 2, 0
_080AD5B8: .4byte 0x00000175
_080AD5BC:
	ldr r0, _080AD5CC @ =0x00000141
_080AD5BE:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AD5CC: .4byte 0x00000141

	thumb_func_start sub_080AD5D0
sub_080AD5D0: @ 0x080AD5D0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080AD606
	cmp r0, #1
	bgt _080AD5EA
	cmp r0, #0
	beq _080AD5F0
	b _080AD632
_080AD5EA:
	cmp r0, #2
	beq _080AD61C
	b _080AD632
_080AD5F0:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AD68C
_080AD606:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AD68C
_080AD61C:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AD68C
_080AD632:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AD68A
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AD68C
_080AD68A:
	movs r0, #0
_080AD68C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD694
sub_080AD694: @ 0x080AD694
	push {lr}
	ldr r2, _080AD6A8 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AD6AC @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AD6A8: .4byte 0x09F642A0
_080AD6AC: .4byte 0x09F64318

	thumb_func_start sub_080AD6B0
sub_080AD6B0: @ 0x080AD6B0
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #1
	beq _080AD6C8
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, r1
	beq _080AD6EA
_080AD6C8:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r3, r2
	str r1, [r0]
	ldr r1, [r3, #0x1c]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AD6EC
_080AD6EA:
	movs r0, #0
_080AD6EC:
	pop {r1}
	bx r1

	thumb_func_start sub_080AD6F0
sub_080AD6F0: @ 0x080AD6F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD786
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD786
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD786
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD786
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AD788
_080AD786:
	movs r0, #0
_080AD788:
	cmp r0, #0
	bne _080AD790
	movs r0, #0
	b _080AD7BA
_080AD790:
	ldr r1, _080AD7C0 @ =0x00000147
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD7B8
	ldr r1, [r4, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #1
	bl _call_via_r3
_080AD7B8:
	movs r0, #1
_080AD7BA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AD7C0: .4byte 0x00000147

	thumb_func_start sub_080AD7C4
sub_080AD7C4: @ 0x080AD7C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AD7E8
	ldr r0, _080AD7E4 @ =0x00000149
	b _080AD824
	.align 2, 0
_080AD7E4: .4byte 0x00000149
_080AD7E8:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080AD806
	movs r0, #0xa5
	lsls r0, r0, #1
	b _080AD824
_080AD806:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AD830 @ =0x00000145
	cmp r0, #0x23
	blt _080AD822
	adds r1, #1
	cmp r0, #0x41
	blt _080AD822
	adds r1, #1
	cmp r0, #0x50
	bge _080AD822
	adds r1, #1
_080AD822:
	adds r0, r1, #0
_080AD824:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AD830: .4byte 0x00000145

	thumb_func_start sub_080AD834
sub_080AD834: @ 0x080AD834
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AD844 @ =0x00000147
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0
_080AD844: .4byte 0x00000147

	thumb_func_start sub_080AD848
sub_080AD848: @ 0x080AD848
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	ldr r0, _080AD870 @ =0x00000145
	cmp r1, #0x2d
	blt _080AD864
	adds r0, #3
	cmp r1, #0x50
	bge _080AD864
	subs r0, #2
_080AD864:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AD870: .4byte 0x00000145

	thumb_func_start sub_080AD874
sub_080AD874: @ 0x080AD874
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080AD8AA
	cmp r0, #1
	bgt _080AD88E
	cmp r0, #0
	beq _080AD894
	b _080AD8D6
_080AD88E:
	cmp r0, #2
	beq _080AD8C0
	b _080AD8D6
_080AD894:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AD930
_080AD8AA:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AD930
_080AD8C0:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AD930
_080AD8D6:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AD92E
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AD930
_080AD92E:
	movs r0, #0
_080AD930:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD938
sub_080AD938: @ 0x080AD938
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl _call_via_r2
	cmp r4, r0
	bge _080AD990
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080AD990
	ldr r1, [r5, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080AD990:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AD998
sub_080AD998: @ 0x080AD998
	push {lr}
	ldr r2, _080AD9AC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AD9B0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AD9AC: .4byte 0x09F642A0
_080AD9B0: .4byte 0x09F64318

	thumb_func_start sub_080AD9B4
sub_080AD9B4: @ 0x080AD9B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ADA4A
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ADA4A
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ADA4A
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADA4A
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080ADA4C
_080ADA4A:
	movs r0, #0
_080ADA4C:
	cmp r0, #0
	bne _080ADA54
	movs r0, #0
	b _080ADA8E
_080ADA54:
	ldr r1, _080ADA94 @ =0x0000013D
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADA70
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ADA70:
	ldr r1, _080ADA98 @ =0x0000013F
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADA8C
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ADA8C:
	movs r0, #1
_080ADA8E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ADA94: .4byte 0x0000013D
_080ADA98: .4byte 0x0000013F

	thumb_func_start sub_080ADA9C
sub_080ADA9C: @ 0x080ADA9C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080ADAC6
	movs r0, #0x9d
	lsls r0, r0, #1
	b _080ADB3E
_080ADAC6:
	ldr r1, _080ADB18 @ =gUnknown_080F8E82
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #2
	ble _080ADAE2
	mov r1, sp
	ldr r0, _080ADB1C @ =0x00000139
	strh r0, [r1, #8]
_080ADAE2:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #0
	ble _080ADAF6
	mov r1, sp
	movs r0, #0x9f
	lsls r0, r0, #1
	strh r0, [r1, #6]
_080ADAF6:
	mov r5, sp
	mov r6, sp
	adds r6, #2
	add r7, sp, #4
	movs r0, #6
	add r0, sp
	mov sb, r0
	add r1, sp, #8
	mov r8, r1
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	cmp r0, #0x19
	bge _080ADB20
	ldrh r0, [r5]
	b _080ADB3E
	.align 2, 0
_080ADB18: .4byte gUnknown_080F8E82
_080ADB1C: .4byte 0x00000139
_080ADB20:
	cmp r0, #0x46
	bge _080ADB28
	ldrh r0, [r6]
	b _080ADB3E
_080ADB28:
	cmp r0, #0x5a
	bge _080ADB30
	ldrh r0, [r7]
	b _080ADB3E
_080ADB30:
	cmp r0, #0x5f
	bge _080ADB3A
	mov r2, sb
	ldrh r0, [r2]
	b _080ADB3E
_080ADB3A:
	mov r1, r8
	ldrh r0, [r1]
_080ADB3E:
	adds r1, r4, #0
	bl sub_080741AC
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ADB54
sub_080ADB54: @ 0x080ADB54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov r8, r0
	ldr r1, _080ADBB4 @ =gUnknown_080F8E78
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	cmp r0, #2
	ble _080ADB7E
	mov r1, sp
	movs r0, #0x9e
	lsls r0, r0, #1
	strh r0, [r1, #8]
_080ADB7E:
	movs r0, #0xa6
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	ble _080ADB92
	mov r1, sp
	movs r0, #0x9f
	lsls r0, r0, #1
	strh r0, [r1, #6]
_080ADB92:
	mov r4, sp
	mov r5, sp
	adds r5, #2
	add r6, sp, #4
	movs r0, #6
	add r0, sp
	mov sb, r0
	add r7, sp, #8
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	cmp r0, #0x1e
	bge _080ADBB8
	ldrh r0, [r4]
	b _080ADBD4
	.align 2, 0
_080ADBB4: .4byte gUnknown_080F8E78
_080ADBB8:
	cmp r0, #0x37
	bge _080ADBC0
	ldrh r0, [r5]
	b _080ADBD4
_080ADBC0:
	cmp r0, #0x55
	bge _080ADBC8
	ldrh r0, [r6]
	b _080ADBD4
_080ADBC8:
	cmp r0, #0x5a
	bge _080ADBD2
	mov r1, sb
	ldrh r0, [r1]
	b _080ADBD4
_080ADBD2:
	ldrh r0, [r7]
_080ADBD4:
	mov r1, r8
	bl sub_080741AC
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080ADBE8
sub_080ADBE8: @ 0x080ADBE8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080ADC54
	cmp r0, #1
	beq _080ADC6A
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ADC80
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080ADC82
_080ADC54:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ADC82
_080ADC6A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ADC82
_080ADC80:
	movs r0, #0
_080ADC82:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080ADC88
sub_080ADC88: @ 0x080ADC88
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080ADCA2
	cmp r2, #1
	bne _080ADCBE
_080ADCA2:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080ADCC0
_080ADCBE:
	movs r0, #0
_080ADCC0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ADCC8
sub_080ADCC8: @ 0x080ADCC8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080ADD14
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080ADD14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ADD1C
sub_080ADD1C: @ 0x080ADD1C
	push {lr}
	ldr r2, _080ADD30 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080ADD34 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080ADD30: .4byte 0x09F642A0
_080ADD34: .4byte 0x09F64318

	thumb_func_start sub_080ADD38
sub_080ADD38: @ 0x080ADD38
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ADDCE
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ADDCE
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ADDCE
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADDCE
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080ADDD0
_080ADDCE:
	movs r0, #0
_080ADDD0:
	cmp r0, #0
	bne _080ADDD8
	movs r0, #0
	b _080ADE2E
_080ADDD8:
	adds r0, r5, #0
	movs r1, #0x8c
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADDF4
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ADDF4:
	ldr r1, _080ADE34 @ =0x00000107
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADE10
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ADE10:
	adds r0, r5, #0
	movs r1, #0xf0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADE2C
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ADE2C:
	movs r0, #1
_080ADE2E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ADE34: .4byte 0x00000107

	thumb_func_start sub_080ADE38
sub_080ADE38: @ 0x080ADE38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #2
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
	ble _080ADE76
	adds r1, r0, #0
_080ADE68:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080ADE68
_080ADE76:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080ADE80
	bl __builtin_vec_delete
_080ADE80:
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
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080ADF04
	movs r0, #0x8c
	mov r1, sp
	adds r1, #0xe
	strh r0, [r1]
	mov r5, sp
	mov r8, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _080ADEF2
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _080ADEC0
	adds r0, r1, #0
_080ADEC0:
	adds r4, r0, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080ADEE4
	adds r1, r0, #0
_080ADED6:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080ADED6
_080ADEE4:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080ADEEE
	bl __builtin_vec_delete
_080ADEEE:
	str r4, [r5]
	str r6, [r5, #8]
_080ADEF2:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080ADF04:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080ADF74
	ldr r3, _080AE018 @ =0x00000107
	adds r0, r3, #0
	add r1, sp, #0x10
	strh r0, [r1]
	mov r5, sp
	mov r8, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _080ADF62
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _080ADF30
	adds r0, r1, #0
_080ADF30:
	adds r4, r0, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080ADF54
	adds r1, r0, #0
_080ADF46:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080ADF46
_080ADF54:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080ADF5E
	bl __builtin_vec_delete
_080ADF5E:
	str r4, [r5]
	str r6, [r5, #8]
_080ADF62:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080ADF74:
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080ADFE4
	movs r0, #0xf0
	mov r1, sp
	adds r1, #0x12
	strh r0, [r1]
	mov r5, sp
	mov r8, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _080ADFD2
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _080ADFA0
	adds r0, r1, #0
_080ADFA0:
	adds r4, r0, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080ADFC4
	adds r1, r0, #0
_080ADFB6:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080ADFB6
_080ADFC4:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080ADFCE
	bl __builtin_vec_delete
_080ADFCE:
	str r4, [r5]
	str r6, [r5, #8]
_080ADFD2:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080ADFE4:
	ldr r1, [sp, #4]
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r7, #0
	bl sub_080741AC
	adds r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080AE008
	bl __builtin_vec_delete
_080AE008:
	adds r0, r4, #0
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080AE018: .4byte 0x00000107

	thumb_func_start sub_080AE01C
sub_080AE01C: @ 0x080AE01C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2d
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AE038
sub_080AE038: @ 0x080AE038
	push {lr}
	ldr r2, _080AE04C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AE050 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AE04C: .4byte 0x09F642A0
_080AE050: .4byte 0x09F64318

	thumb_func_start sub_080AE054
sub_080AE054: @ 0x080AE054
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE0EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE0EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE0EA
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE0EA
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AE0EC
_080AE0EA:
	movs r0, #0
_080AE0EC:
	cmp r0, #0
	bne _080AE0F4
	movs r0, #0
	b _080AE112
_080AE0F4:
	adds r0, r5, #0
	movs r1, #0xe3
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE110
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AE110:
	movs r0, #1
_080AE112:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AE118
sub_080AE118: @ 0x080AE118
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080AE190
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AE176
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #9
	cmp r0, #0x14
	blt _080AE1C6
	movs r1, #0x11
	cmp r0, #0x37
	blt _080AE1C6
	movs r1, #0x99
	cmp r0, #0x3c
	bge _080AE1C6
	movs r1, #0xe3
	b _080AE1C6
_080AE176:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #9
	cmp r1, #0x14
	blt _080AE1C8
	movs r0, #0x99
	cmp r1, #0x37
	bge _080AE1C8
	movs r0, #0x11
	b _080AE1C8
_080AE190:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AE1B6
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #9
	cmp r1, #0x23
	blt _080AE1C8
	movs r0, #0xe3
	cmp r1, #0x55
	bge _080AE1C8
	movs r0, #0x11
	b _080AE1C8
_080AE1B6:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x11
	cmp r0, #0x23
	bge _080AE1C6
	movs r1, #9
_080AE1C6:
	adds r0, r1, #0
_080AE1C8:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AE1D4
sub_080AE1D4: @ 0x080AE1D4
	push {lr}
	ldr r2, _080AE1E8 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AE1EC @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AE1E8: .4byte 0x09F642A0
_080AE1EC: .4byte 0x09F64318

	thumb_func_start sub_080AE1F0
sub_080AE1F0: @ 0x080AE1F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE286
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE286
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE286
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE286
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AE288
_080AE286:
	movs r0, #0
_080AE288:
	cmp r0, #0
	bne _080AE290
	movs r0, #0
	b _080AE2E0
_080AE290:
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE2B8
	ldr r1, [r4, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_080AE2B8:
	ldr r1, _080AE2E8 @ =0x00000207
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE2DE
	ldr r1, [r4, #0x1c]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_080AE2DE:
	movs r0, #1
_080AE2E0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AE2E8: .4byte 0x00000207

	thumb_func_start sub_080AE2EC
sub_080AE2EC: @ 0x080AE2EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r7, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE30A
	b _080AE424
_080AE30A:
	movs r6, #0
	b _080AE400
_080AE30E:
	adds r0, r6, #0
	bl sub_08072AA4
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #2
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
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
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #5
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #7
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE3FE
_080AE3EA:
	ldr r1, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	b _080AE41C
_080AE3FE:
	adds r6, #1
_080AE400:
	bl sub_08072A88
	cmp r6, r0
	blt _080AE30E
	b _080AE47C
_080AE40A:
	ldr r1, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
_080AE41C:
	bl _call_via_r2
	movs r0, #1
	b _080AE484
_080AE424:
	ldr r1, _080AE438 @ =0x00000207
	adds r0, r7, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE47C
	movs r6, #0
	b _080AE474
	.align 2, 0
_080AE438: .4byte 0x00000207
_080AE43C:
	adds r0, r6, #0
	bl sub_08072AA4
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _080AE40A
	adds r6, #1
_080AE474:
	bl sub_08072A88
	cmp r6, r0
	blt _080AE43C
_080AE47C:
	mov r0, r8
	adds r1, r7, #0
	bl sub_08080EB8
_080AE484:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AE490
sub_080AE490: @ 0x080AE490
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
	b _080AE57C
_080AE498:
	adds r0, r6, #0
	bl sub_08072AA4
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #2
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
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
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #5
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #7
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE57A
_080AE574:
	movs r0, #0x82
	lsls r0, r0, #2
	b _080AE606
_080AE57A:
	adds r6, #1
_080AE57C:
	bl sub_08072A88
	cmp r6, r0
	blt _080AE498
	movs r6, #0
	b _080AE5C2
_080AE588:
	adds r0, r6, #0
	bl sub_08072AA4
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r1, [r1, #4]
	adds r0, r4, #0
	bl _call_via_r1
	cmp r5, r0
	blt _080AE5FC
	adds r6, #1
_080AE5C2:
	bl sub_08072A88
	cmp r6, r0
	blt _080AE588
	ldr r1, [r7, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	ble _080AE5EC
	ldr r0, _080AE5E8 @ =0x00000209
	b _080AE606
	.align 2, 0
_080AE5E8: .4byte 0x00000209
_080AE5EC:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	cmp r0, #0x28
	bge _080AE604
	movs r0, #0x7f
	b _080AE606
_080AE5FC:
	ldr r0, _080AE600 @ =0x00000207
	b _080AE606
	.align 2, 0
_080AE600: .4byte 0x00000207
_080AE604:
	movs r0, #0xe1
_080AE606:
	adds r1, r7, #0
	bl sub_080741AC
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AE614
sub_080AE614: @ 0x080AE614
	push {lr}
	ldr r2, _080AE628 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AE62C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AE628: .4byte 0x09F642A0
_080AE62C: .4byte 0x09F64318

	thumb_func_start sub_080AE630
sub_080AE630: @ 0x080AE630
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	b _080AE686
_080AE638:
	adds r0, r5, #0
	bl sub_08072EC4
	ldr r2, [r0, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08072EC4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r4, r0
	bge _080AE684
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x1d
	ble _080AE6B4
_080AE684:
	adds r5, #1
_080AE686:
	bl sub_08072EA8
	cmp r5, r0
	blt _080AE638
	bl sub_08072EA8
	cmp r0, #2
	bgt _080AE6A2
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	cmp r0, #0x46
	bge _080AE6A6
_080AE6A2:
	movs r0, #2
	b _080AE6BA
_080AE6A6:
	cmp r0, #0x55
	bge _080AE6B8
	ldr r0, _080AE6B0 @ =0x0000020E
	b _080AE6BA
	.align 2, 0
_080AE6B0: .4byte 0x0000020E
_080AE6B4:
	movs r0, #0x9f
	b _080AE6BA
_080AE6B8:
	movs r0, #0x22
_080AE6BA:
	adds r1, r6, #0
	bl sub_080741AC
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AE6C8
sub_080AE6C8: @ 0x080AE6C8
	push {lr}
	ldr r2, _080AE6DC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AE6E0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AE6DC: .4byte 0x09F642A0
_080AE6E0: .4byte 0x09F64318

	thumb_func_start sub_080AE6E4
sub_080AE6E4: @ 0x080AE6E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AE714
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x37
	cmp r0, #0x41
	bge _080AE710
	movs r1, #2
_080AE710:
	adds r0, r1, #0
	b _080AE72C
_080AE714:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x28
	blt _080AE72C
	movs r0, #0xf1
	cmp r1, #0x46
	bge _080AE72C
	movs r0, #0x37
_080AE72C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AE738
sub_080AE738: @ 0x080AE738
	push {lr}
	ldr r2, _080AE74C @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AE750 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AE74C: .4byte 0x09F642A0
_080AE750: .4byte 0x09F64318

	thumb_func_start sub_080AE754
sub_080AE754: @ 0x080AE754
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE7EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE7EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE7EA
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE7EA
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AE7EC
_080AE7EA:
	movs r0, #0
_080AE7EC:
	cmp r0, #0
	bne _080AE7F4
	movs r0, #0
	b _080AE812
_080AE7F4:
	adds r0, r5, #0
	movs r1, #0x84
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE810
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AE810:
	movs r0, #1
_080AE812:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AE818
sub_080AE818: @ 0x080AE818
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc2
	bne _080AE83C
	movs r0, #0x1d
	b _080AE874
_080AE83C:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080AE85C
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xc2
	cmp r0, #0x32
	bge _080AE858
	movs r1, #2
_080AE858:
	adds r0, r1, #0
	b _080AE874
_080AE85C:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x21
	blt _080AE874
	movs r0, #0xc2
	cmp r1, #0x42
	bge _080AE874
	movs r0, #0x84
_080AE874:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AE880
sub_080AE880: @ 0x080AE880
	push {lr}
	ldr r2, _080AE894 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AE898 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AE894: .4byte 0x09F642A0
_080AE898: .4byte 0x09F64318

	thumb_func_start sub_080AE89C
sub_080AE89C: @ 0x080AE89C
	push {lr}
	adds r2, r0, #0
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _080AE8B0
	movs r0, #0
	b _080AE8B6
_080AE8B0:
	adds r0, r2, #0
	bl unit_1f0__C4UnitUi
_080AE8B6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AE8BC
sub_080AE8BC: @ 0x080AE8BC
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AE8D6
	cmp r2, #1
	bne _080AE8F2
_080AE8D6:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AE8F4
_080AE8F2:
	movs r0, #0
_080AE8F4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AE8FC
sub_080AE8FC: @ 0x080AE8FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	bl unit_98__4UnitUi
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AE922
	b _080AEA84
_080AE922:
	ldr r1, [r6, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080AE93C
	b _080AEA84
_080AE93C:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE95C
	b _080AEA84
_080AE95C:
	movs r0, #0x14
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r0, _080AEACC @ =0x0000064E
	bl sub_08070824
	movs r0, #0x47
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	movs r2, #1
	bl sub_08073734
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x49
	adds r1, r4, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r0, sp, #0x1c
	bl sub_0806E274
	add r0, sp, #0x28
	bl sub_0806E274
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x1c
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #0x10
	movs r1, #2
	bl sub_0806E308
_080AEA84:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AEAC4
	adds r0, r6, #0
	movs r1, #0xaf
	bl sub_080740D8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AEAC4
	ldr r1, [r7, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080AEAC4:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AEACC: .4byte 0x0000064E

	thumb_func_start sub_080AEAD0
sub_080AEAD0: @ 0x080AEAD0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AEB66
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AEB66
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AEB66
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AEB66
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AEB68
_080AEB66:
	movs r0, #0
_080AEB68:
	cmp r0, #0
	bne _080AEB70
	movs r0, #0
	b _080AEBAA
_080AEB70:
	ldr r1, _080AEBB0 @ =0x00000133
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AEB8C
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080AEB8C:
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AEBA8
	ldr r0, _080AEBB4 @ =0x00000149
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080AEBA8:
	movs r0, #1
_080AEBAA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AEBB0: .4byte 0x00000133
_080AEBB4: .4byte 0x00000149

	thumb_func_start sub_080AEBB8
sub_080AEBB8: @ 0x080AEBB8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x46
	bl _call_via_r2
	cmp r4, r0
	bge _080AEC00
	ldr r1, _080AEBFC @ =0x00000149
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AEC00
_080AEBF6:
	movs r0, #0x99
	lsls r0, r0, #1
	b _080AEC7E
	.align 2, 0
_080AEBFC: .4byte 0x00000149
_080AEC00:
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080AEC3A
	ldr r1, _080AEC5C @ =0x00000149
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	bls _080AEBF6
_080AEC3A:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AEC64
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	ldr r1, _080AEC60 @ =0x00000131
	cmp r0, #0x32
	bge _080AEC56
	subs r1, #1
_080AEC56:
	adds r0, r1, #0
	b _080AEC7E
	.align 2, 0
_080AEC5C: .4byte 0x00000149
_080AEC60: .4byte 0x00000131
_080AEC64:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r0, #0
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, #0x21
	blt _080AEC7E
	adds r0, #3
	cmp r1, #0x42
	bge _080AEC7E
	subs r0, #2
_080AEC7E:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AEC8C
sub_080AEC8C: @ 0x080AEC8C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x96
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	adds r0, r4, #0
	bl sub_08080F54
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AECA8
sub_080AECA8: @ 0x080AECA8
	push {lr}
	ldr r2, _080AECBC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AECC0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AECBC: .4byte 0x09F642A0
_080AECC0: .4byte 0x09F64318

	thumb_func_start sub_080AECC4
sub_080AECC4: @ 0x080AECC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080AECEC @ =0x0000012F
	cmp r0, r5
	bne _080AECF4
	ldr r0, _080AECF0 @ =0x0000012D
	b _080AED08
	.align 2, 0
_080AECEC: .4byte 0x0000012F
_080AECF0: .4byte 0x0000012D
_080AECF4:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	adds r1, r5, #0
	cmp r0, #0x32
	bge _080AED06
	movs r1, #0x96
	lsls r1, r1, #1
_080AED06:
	adds r0, r1, #0
_080AED08:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AED14
sub_080AED14: @ 0x080AED14
	push {lr}
	ldr r2, _080AED28 @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AED2C @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AED28: .4byte 0x09F642A0
_080AED2C: .4byte 0x09F64318

	thumb_func_start sub_080AED30
sub_080AED30: @ 0x080AED30
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	muls r0, r4, r0
	movs r1, #0x64
	bl sub_0807066C
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AED58
sub_080AED58: @ 0x080AED58
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080AED64
sub_080AED64: @ 0x080AED64
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080AED70
sub_080AED70: @ 0x080AED70
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080AED7C
sub_080AED7C: @ 0x080AED7C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808110C
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, [r4, #0x1c]
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r5, #0
	movs r2, #1
	bl sub_0805CD30
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AEDC8
sub_080AEDC8: @ 0x080AEDC8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08080FD0
	adds r5, r0, #0
	ldr r1, [r4, #0x1c]
	movs r6, #0xa8
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x11
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AEDF2
	movs r5, #0
_080AEDF2:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AEE0E
	lsls r5, r5, #1
_080AEE0E:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AEE2E
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r5, r0, #1
_080AEE2E:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AEE38
sub_080AEE38: @ 0x080AEE38
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AEE52
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_100__4UnitUi
_080AEE52:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AEE58
sub_080AEE58: @ 0x080AEE58
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x3c
	adds r4, r0, #0
	adds r6, r1, #0
	bl unit_98__4UnitUi
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AEE82
	b _080AEFE2
_080AEE82:
	ldr r1, [r6, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080AEE9C
	b _080AEFE2
_080AEE9C:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AEEBC
	b _080AEFE2
_080AEEBC:
	movs r0, #0x14
	bl sub_0807068C
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x34
	movs r2, #0
	mov r8, r2
	mov r0, r8
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r0, _080AEFF0 @ =0x0000064E
	bl sub_08070824
	movs r0, #0x47
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	movs r2, #1
	bl sub_08073734
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x49
	adds r1, r5, #0
	bl sub_080730FC
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	movs r1, #0x9f
	lsls r1, r1, #2
	str r4, [sp]
	add r0, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x38
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_080AEFE2:
	add sp, #0x3c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AEFF0: .4byte 0x0000064E

	thumb_func_start sub_080AEFF4
sub_080AEFF4: @ 0x080AEFF4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AF00E
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_f8__4UnitUi
_080AF00E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AF014
sub_080AF014: @ 0x080AF014
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AF02E
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_f0__4UnitUi
_080AF02E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AF034
sub_080AF034: @ 0x080AF034
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r5, r0, #0
	ldr r4, _080AF0CC @ =gUnknown_080F8E6C
	ldr r1, [r6, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r5, r0
	bge _080AF10E
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #4
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
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r6, #0x1c]
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x13
	bgt _080AF0D0
	movs r0, #0xdb
	lsls r0, r0, #1
	b _080AF0EA
	.align 2, 0
_080AF0CC: .4byte gUnknown_080F8E6C
_080AF0D0:
	ldr r1, [r6, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x27
	bgt _080AF0FC
	ldr r0, _080AF0F8 @ =0x000001B7
_080AF0EA:
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
	b _080AF10A
	.align 2, 0
_080AF0F8: .4byte 0x000001B7
_080AF0FC:
	movs r0, #0xdc
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
_080AF10A:
	movs r0, #1
	b _080AF110
_080AF10E:
	movs r0, #0
_080AF110:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AF118
sub_080AF118: @ 0x080AF118
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	b _080AF15C
_080AF120:
	adds r0, r5, #0
	bl sub_08072E18
	adds r4, r0, #0
	cmp r4, r6
	beq _080AF15A
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xb
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AF15A
	movs r0, #0xb3
	adds r1, r6, #0
	bl sub_080741AC
	adds r1, r4, #0
	bl sub_080742EC
	b _080AF166
_080AF15A:
	adds r5, #1
_080AF15C:
	bl sub_08072DFC
	cmp r5, r0
	blt _080AF120
	movs r0, #0
_080AF166:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AF16C
sub_080AF16C: @ 0x080AF16C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AF1B2
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080AF1B2
	movs r0, #1
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080AF1B4
_080AF1B2:
	movs r0, #0
_080AF1B4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF1BC
sub_080AF1BC: @ 0x080AF1BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AF226
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AF226
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AF226
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AF22A
_080AF226:
	movs r0, #0
	b _080AF254
_080AF22A:
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
_080AF254:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF25C
sub_080AF25C: @ 0x080AF25C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AF27C
	movs r0, #0
	b _080AF2BA
_080AF27C:
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
_080AF2BA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AF2C0
sub_080AF2C0: @ 0x080AF2C0
	bx lr
	.align 2, 0

	thumb_func_start sub_080AF2C4
sub_080AF2C4: @ 0x080AF2C4
	bx lr
	.align 2, 0

	thumb_func_start sub_080AF2C8
sub_080AF2C8: @ 0x080AF2C8
	push {lr}
	ldr r2, _080AF2DC @ =0x09F642A0
	str r2, [r0, #0x20]
	ldr r2, _080AF2E0 @ =0x09F64318
	str r2, [r0, #0x1c]
	bl sub_08080DD0
	pop {r0}
	bx r0
	.align 2, 0
_080AF2DC: .4byte 0x09F642A0
_080AF2E0: .4byte 0x09F64318

	thumb_func_start sub_080AF2E4
sub_080AF2E4: @ 0x080AF2E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFD24
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF304
sub_080AF304: @ 0x080AF304
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFD40
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF324
sub_080AF324: @ 0x080AF324
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFD5C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF344
sub_080AF344: @ 0x080AF344
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFD78
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF364
sub_080AF364: @ 0x080AF364
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFD94
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF384
sub_080AF384: @ 0x080AF384
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFDB0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF3A4
sub_080AF3A4: @ 0x080AF3A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFDCC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF3C4
sub_080AF3C4: @ 0x080AF3C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFDE8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF3E4
sub_080AF3E4: @ 0x080AF3E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFE04
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF404
sub_080AF404: @ 0x080AF404
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFE20
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF424
sub_080AF424: @ 0x080AF424
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFE3C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF444
sub_080AF444: @ 0x080AF444
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFE58
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF464
sub_080AF464: @ 0x080AF464
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFE74
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF484
sub_080AF484: @ 0x080AF484
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFE90
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF4A4
sub_080AF4A4: @ 0x080AF4A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFEAC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF4C4
sub_080AF4C4: @ 0x080AF4C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFEC8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF4E4
sub_080AF4E4: @ 0x080AF4E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFEE4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF504
sub_080AF504: @ 0x080AF504
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFF00
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF524
sub_080AF524: @ 0x080AF524
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFF1C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF544
sub_080AF544: @ 0x080AF544
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFF38
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF564
sub_080AF564: @ 0x080AF564
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFF54
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF584
sub_080AF584: @ 0x080AF584
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFF70
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF5A4
sub_080AF5A4: @ 0x080AF5A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFF8C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF5C4
sub_080AF5C4: @ 0x080AF5C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFFA8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF5E4
sub_080AF5E4: @ 0x080AF5E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFFC4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF604
sub_080AF604: @ 0x080AF604
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFFE0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF624
sub_080AF624: @ 0x080AF624
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080AFFFC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF644
sub_080AF644: @ 0x080AF644
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0018
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF664
sub_080AF664: @ 0x080AF664
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0034
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF684
sub_080AF684: @ 0x080AF684
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0050
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF6A4
sub_080AF6A4: @ 0x080AF6A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B006C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF6C4
sub_080AF6C4: @ 0x080AF6C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0088
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF6E4
sub_080AF6E4: @ 0x080AF6E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B00A4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF704
sub_080AF704: @ 0x080AF704
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B00C0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF724
sub_080AF724: @ 0x080AF724
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x50
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B00DC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF744
sub_080AF744: @ 0x080AF744
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0120
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF764
sub_080AF764: @ 0x080AF764
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B013C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF784
sub_080AF784: @ 0x080AF784
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0158
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF7A4
sub_080AF7A4: @ 0x080AF7A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0174
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF7C4
sub_080AF7C4: @ 0x080AF7C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0190
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF7E4
sub_080AF7E4: @ 0x080AF7E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B01AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF804
sub_080AF804: @ 0x080AF804
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B01C8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF824
sub_080AF824: @ 0x080AF824
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B01E4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF844
sub_080AF844: @ 0x080AF844
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0200
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF864
sub_080AF864: @ 0x080AF864
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B021C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF884
sub_080AF884: @ 0x080AF884
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0238
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF8A4
sub_080AF8A4: @ 0x080AF8A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0254
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF8C4
sub_080AF8C4: @ 0x080AF8C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0270
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF8E4
sub_080AF8E4: @ 0x080AF8E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B028C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF904
sub_080AF904: @ 0x080AF904
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B02A8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF924
sub_080AF924: @ 0x080AF924
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B02C4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF944
sub_080AF944: @ 0x080AF944
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B02E0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF964
sub_080AF964: @ 0x080AF964
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B02FC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF984
sub_080AF984: @ 0x080AF984
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0318
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF9A4
sub_080AF9A4: @ 0x080AF9A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0334
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF9C4
sub_080AF9C4: @ 0x080AF9C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0350
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AF9E4
sub_080AF9E4: @ 0x080AF9E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B036C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFA04
sub_080AFA04: @ 0x080AFA04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x50
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0388
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFA24
sub_080AFA24: @ 0x080AFA24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B03A8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFA44
sub_080AFA44: @ 0x080AFA44
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B03C4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFA64
sub_080AFA64: @ 0x080AFA64
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B03E0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFA84
sub_080AFA84: @ 0x080AFA84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x50
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B03FC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFAA4
sub_080AFAA4: @ 0x080AFAA4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B041C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFAC4
sub_080AFAC4: @ 0x080AFAC4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x50
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0438
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFAE4
sub_080AFAE4: @ 0x080AFAE4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x50
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0458
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFB04
sub_080AFB04: @ 0x080AFB04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0478
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFB24
sub_080AFB24: @ 0x080AFB24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0494
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFB44
sub_080AFB44: @ 0x080AFB44
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B04B0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFB64
sub_080AFB64: @ 0x080AFB64
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B04CC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFB84
sub_080AFB84: @ 0x080AFB84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B04E8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFBA4
sub_080AFBA4: @ 0x080AFBA4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0504
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFBC4
sub_080AFBC4: @ 0x080AFBC4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0520
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFBE4
sub_080AFBE4: @ 0x080AFBE4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B053C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFC04
sub_080AFC04: @ 0x080AFC04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0558
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFC24
sub_080AFC24: @ 0x080AFC24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0574
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFC44
sub_080AFC44: @ 0x080AFC44
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0590
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFC64
sub_080AFC64: @ 0x080AFC64
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B05AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFC84
sub_080AFC84: @ 0x080AFC84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B05C8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFCA4
sub_080AFCA4: @ 0x080AFCA4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x50
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B05E4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFCC4
sub_080AFCC4: @ 0x080AFCC4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x50
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0604
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFCE4
sub_080AFCE4: @ 0x080AFCE4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0624
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFD04
sub_080AFD04: @ 0x080AFD04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B0640
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AFD24
sub_080AFD24: @ 0x080AFD24
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFD3C @ =0x09F64750
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFD3C: .4byte 0x09F64750

	thumb_func_start sub_080AFD40
sub_080AFD40: @ 0x080AFD40
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFD58 @ =0x09F64A00
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFD58: .4byte 0x09F64A00

	thumb_func_start sub_080AFD5C
sub_080AFD5C: @ 0x080AFD5C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFD74 @ =0x09F64CB0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFD74: .4byte 0x09F64CB0

	thumb_func_start sub_080AFD78
sub_080AFD78: @ 0x080AFD78
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFD90 @ =0x09F64F60
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFD90: .4byte 0x09F64F60

	thumb_func_start sub_080AFD94
sub_080AFD94: @ 0x080AFD94
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFDAC @ =0x09F65210
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFDAC: .4byte 0x09F65210

	thumb_func_start sub_080AFDB0
sub_080AFDB0: @ 0x080AFDB0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFDC8 @ =0x09F654C0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFDC8: .4byte 0x09F654C0

	thumb_func_start sub_080AFDCC
sub_080AFDCC: @ 0x080AFDCC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFDE4 @ =0x09F65770
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFDE4: .4byte 0x09F65770

	thumb_func_start sub_080AFDE8
sub_080AFDE8: @ 0x080AFDE8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFE00 @ =0x09F65A20
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFE00: .4byte 0x09F65A20

	thumb_func_start sub_080AFE04
sub_080AFE04: @ 0x080AFE04
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFE1C @ =0x09F65CD0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFE1C: .4byte 0x09F65CD0

	thumb_func_start sub_080AFE20
sub_080AFE20: @ 0x080AFE20
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFE38 @ =0x09F65F80
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFE38: .4byte 0x09F65F80

	thumb_func_start sub_080AFE3C
sub_080AFE3C: @ 0x080AFE3C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFE54 @ =0x09F66230
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFE54: .4byte 0x09F66230

	thumb_func_start sub_080AFE58
sub_080AFE58: @ 0x080AFE58
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFE70 @ =0x09F664E0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFE70: .4byte 0x09F664E0

	thumb_func_start sub_080AFE74
sub_080AFE74: @ 0x080AFE74
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFE8C @ =0x09F66790
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFE8C: .4byte 0x09F66790

	thumb_func_start sub_080AFE90
sub_080AFE90: @ 0x080AFE90
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFEA8 @ =0x09F66A40
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFEA8: .4byte 0x09F66A40

	thumb_func_start sub_080AFEAC
sub_080AFEAC: @ 0x080AFEAC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFEC4 @ =0x09F66CF0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFEC4: .4byte 0x09F66CF0

	thumb_func_start sub_080AFEC8
sub_080AFEC8: @ 0x080AFEC8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFEE0 @ =0x09F66FA0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFEE0: .4byte 0x09F66FA0

	thumb_func_start sub_080AFEE4
sub_080AFEE4: @ 0x080AFEE4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFEFC @ =0x09F67250
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFEFC: .4byte 0x09F67250

	thumb_func_start sub_080AFF00
sub_080AFF00: @ 0x080AFF00
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFF18 @ =0x09F67500
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFF18: .4byte 0x09F67500

	thumb_func_start sub_080AFF1C
sub_080AFF1C: @ 0x080AFF1C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFF34 @ =0x09F677B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFF34: .4byte 0x09F677B0

	thumb_func_start sub_080AFF38
sub_080AFF38: @ 0x080AFF38
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFF50 @ =0x09F67A60
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFF50: .4byte 0x09F67A60

	thumb_func_start sub_080AFF54
sub_080AFF54: @ 0x080AFF54
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFF6C @ =0x09F67D10
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFF6C: .4byte 0x09F67D10

	thumb_func_start sub_080AFF70
sub_080AFF70: @ 0x080AFF70
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFF88 @ =0x09F67FC0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFF88: .4byte 0x09F67FC0

	thumb_func_start sub_080AFF8C
sub_080AFF8C: @ 0x080AFF8C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFFA4 @ =0x09F68270
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFFA4: .4byte 0x09F68270

	thumb_func_start sub_080AFFA8
sub_080AFFA8: @ 0x080AFFA8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFFC0 @ =0x09F68520
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFFC0: .4byte 0x09F68520

	thumb_func_start sub_080AFFC4
sub_080AFFC4: @ 0x080AFFC4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFFDC @ =0x09F687D0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFFDC: .4byte 0x09F687D0

	thumb_func_start sub_080AFFE0
sub_080AFFE0: @ 0x080AFFE0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080AFFF8 @ =0x09F68A80
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AFFF8: .4byte 0x09F68A80

	thumb_func_start sub_080AFFFC
sub_080AFFFC: @ 0x080AFFFC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0014 @ =0x09F68D30
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0014: .4byte 0x09F68D30

	thumb_func_start sub_080B0018
sub_080B0018: @ 0x080B0018
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0030 @ =0x09F68FE0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0030: .4byte 0x09F68FE0

	thumb_func_start sub_080B0034
sub_080B0034: @ 0x080B0034
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B004C @ =0x09F69290
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B004C: .4byte 0x09F69290

	thumb_func_start sub_080B0050
sub_080B0050: @ 0x080B0050
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0068 @ =0x09F69548
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0068: .4byte 0x09F69548

	thumb_func_start sub_080B006C
sub_080B006C: @ 0x080B006C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0084 @ =0x09F697F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0084: .4byte 0x09F697F8

	thumb_func_start sub_080B0088
sub_080B0088: @ 0x080B0088
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B00A0 @ =0x09F69AA8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B00A0: .4byte 0x09F69AA8

	thumb_func_start sub_080B00A4
sub_080B00A4: @ 0x080B00A4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B00BC @ =0x09F69D58
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B00BC: .4byte 0x09F69D58

	thumb_func_start sub_080B00C0
sub_080B00C0: @ 0x080B00C0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B00D8 @ =0x09F6A008
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B00D8: .4byte 0x09F6A008

	thumb_func_start sub_080B00DC
sub_080B00DC: @ 0x080B00DC
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0118 @ =0x09F6A2B8
	str r0, [r5, #0x1c]
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r4, r0, #0
	bl sub_08072DFC
	movs r2, #0
	ldr r1, _080B011C @ =gUnknown_080F9558
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B010A
	movs r2, #1
_080B010A:
	adds r0, r5, #0
	adds r0, #0x4c
	strb r2, [r0]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B0118: .4byte 0x09F6A2B8
_080B011C: .4byte gUnknown_080F9558

	thumb_func_start sub_080B0120
sub_080B0120: @ 0x080B0120
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0138 @ =0x09F6A568
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0138: .4byte 0x09F6A568

	thumb_func_start sub_080B013C
sub_080B013C: @ 0x080B013C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0154 @ =0x09F6A818
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0154: .4byte 0x09F6A818

	thumb_func_start sub_080B0158
sub_080B0158: @ 0x080B0158
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0170 @ =0x09F6AAC8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0170: .4byte 0x09F6AAC8

	thumb_func_start sub_080B0174
sub_080B0174: @ 0x080B0174
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B018C @ =0x09F6AD78
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B018C: .4byte 0x09F6AD78

	thumb_func_start sub_080B0190
sub_080B0190: @ 0x080B0190
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B01A8 @ =0x09F6B028
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B01A8: .4byte 0x09F6B028

	thumb_func_start sub_080B01AC
sub_080B01AC: @ 0x080B01AC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B01C4 @ =0x09F6B2D8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B01C4: .4byte 0x09F6B2D8

	thumb_func_start sub_080B01C8
sub_080B01C8: @ 0x080B01C8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B01E0 @ =0x09F6B588
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B01E0: .4byte 0x09F6B588

	thumb_func_start sub_080B01E4
sub_080B01E4: @ 0x080B01E4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B01FC @ =0x09F6B848
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B01FC: .4byte 0x09F6B848

	thumb_func_start sub_080B0200
sub_080B0200: @ 0x080B0200
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0218 @ =0x09F6BAF8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0218: .4byte 0x09F6BAF8

	thumb_func_start sub_080B021C
sub_080B021C: @ 0x080B021C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0234 @ =0x09F6BDA8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0234: .4byte 0x09F6BDA8

	thumb_func_start sub_080B0238
sub_080B0238: @ 0x080B0238
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0250 @ =0x09F6C058
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0250: .4byte 0x09F6C058

	thumb_func_start sub_080B0254
sub_080B0254: @ 0x080B0254
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B026C @ =0x09F6C308
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B026C: .4byte 0x09F6C308

	thumb_func_start sub_080B0270
sub_080B0270: @ 0x080B0270
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0288 @ =0x09F6C5B8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0288: .4byte 0x09F6C5B8

	thumb_func_start sub_080B028C
sub_080B028C: @ 0x080B028C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B02A4 @ =0x09F6C868
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B02A4: .4byte 0x09F6C868

	thumb_func_start sub_080B02A8
sub_080B02A8: @ 0x080B02A8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B02C0 @ =0x09F6CB18
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B02C0: .4byte 0x09F6CB18

	thumb_func_start sub_080B02C4
sub_080B02C4: @ 0x080B02C4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B02DC @ =0x09F6CDC8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B02DC: .4byte 0x09F6CDC8

	thumb_func_start sub_080B02E0
sub_080B02E0: @ 0x080B02E0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B02F8 @ =0x09F6D078
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B02F8: .4byte 0x09F6D078

	thumb_func_start sub_080B02FC
sub_080B02FC: @ 0x080B02FC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0314 @ =0x09F6D328
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0314: .4byte 0x09F6D328

	thumb_func_start sub_080B0318
sub_080B0318: @ 0x080B0318
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0330 @ =0x09F6D5D8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0330: .4byte 0x09F6D5D8

	thumb_func_start sub_080B0334
sub_080B0334: @ 0x080B0334
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B034C @ =0x09F6D888
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B034C: .4byte 0x09F6D888

	thumb_func_start sub_080B0350
sub_080B0350: @ 0x080B0350
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0368 @ =0x09F6DB38
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0368: .4byte 0x09F6DB38

	thumb_func_start sub_080B036C
sub_080B036C: @ 0x080B036C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0384 @ =0x09F6DDE8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0384: .4byte 0x09F6DDE8

	thumb_func_start sub_080B0388
sub_080B0388: @ 0x080B0388
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B03A4 @ =0x09F6E098
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B03A4: .4byte 0x09F6E098

	thumb_func_start sub_080B03A8
sub_080B03A8: @ 0x080B03A8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B03C0 @ =0x09F6E348
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B03C0: .4byte 0x09F6E348

	thumb_func_start sub_080B03C4
sub_080B03C4: @ 0x080B03C4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B03DC @ =0x09F6E5F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B03DC: .4byte 0x09F6E5F8

	thumb_func_start sub_080B03E0
sub_080B03E0: @ 0x080B03E0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B03F8 @ =0x09F6E8A8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B03F8: .4byte 0x09F6E8A8

	thumb_func_start sub_080B03FC
sub_080B03FC: @ 0x080B03FC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0418 @ =0x09F6EB58
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0418: .4byte 0x09F6EB58

	thumb_func_start sub_080B041C
sub_080B041C: @ 0x080B041C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0434 @ =0x09F6EE08
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0434: .4byte 0x09F6EE08

	thumb_func_start sub_080B0438
sub_080B0438: @ 0x080B0438
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0454 @ =0x09F6F0B8
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0454: .4byte 0x09F6F0B8

	thumb_func_start sub_080B0458
sub_080B0458: @ 0x080B0458
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0474 @ =0x09F6F368
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0474: .4byte 0x09F6F368

	thumb_func_start sub_080B0478
sub_080B0478: @ 0x080B0478
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0490 @ =0x09F6F618
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0490: .4byte 0x09F6F618

	thumb_func_start sub_080B0494
sub_080B0494: @ 0x080B0494
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B04AC @ =0x09F6F8C8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B04AC: .4byte 0x09F6F8C8

	thumb_func_start sub_080B04B0
sub_080B04B0: @ 0x080B04B0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B04C8 @ =0x09F6FB78
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B04C8: .4byte 0x09F6FB78

	thumb_func_start sub_080B04CC
sub_080B04CC: @ 0x080B04CC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B04E4 @ =0x09F6FE28
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B04E4: .4byte 0x09F6FE28

	thumb_func_start sub_080B04E8
sub_080B04E8: @ 0x080B04E8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0500 @ =0x09F700D8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0500: .4byte 0x09F700D8

	thumb_func_start sub_080B0504
sub_080B0504: @ 0x080B0504
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B051C @ =0x09F70388
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B051C: .4byte 0x09F70388

	thumb_func_start sub_080B0520
sub_080B0520: @ 0x080B0520
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0538 @ =0x09F70638
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0538: .4byte 0x09F70638

	thumb_func_start sub_080B053C
sub_080B053C: @ 0x080B053C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0554 @ =0x09F708E8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0554: .4byte 0x09F708E8

	thumb_func_start sub_080B0558
sub_080B0558: @ 0x080B0558
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0570 @ =0x09F70B98
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0570: .4byte 0x09F70B98

	thumb_func_start sub_080B0574
sub_080B0574: @ 0x080B0574
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B058C @ =0x09F70E48
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B058C: .4byte 0x09F70E48

	thumb_func_start sub_080B0590
sub_080B0590: @ 0x080B0590
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B05A8 @ =0x09F710F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B05A8: .4byte 0x09F710F8

	thumb_func_start sub_080B05AC
sub_080B05AC: @ 0x080B05AC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B05C4 @ =0x09F713A8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B05C4: .4byte 0x09F713A8

	thumb_func_start sub_080B05C8
sub_080B05C8: @ 0x080B05C8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B05E0 @ =0x09F71660
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B05E0: .4byte 0x09F71660

	thumb_func_start sub_080B05E4
sub_080B05E4: @ 0x080B05E4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0600 @ =0x09F71910
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0600: .4byte 0x09F71910

	thumb_func_start sub_080B0604
sub_080B0604: @ 0x080B0604
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0620 @ =0x09F71BC0
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0620: .4byte 0x09F71BC0

	thumb_func_start sub_080B0624
sub_080B0624: @ 0x080B0624
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B063C @ =0x09F71E70
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B063C: .4byte 0x09F71E70

	thumb_func_start sub_080B0640
sub_080B0640: @ 0x080B0640
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082044
	ldr r0, _080B0658 @ =0x09F72120
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0658: .4byte 0x09F72120

	thumb_func_start sub_080B065C
sub_080B065C: @ 0x080B065C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sb, r0
	bl nullsub_37
	bl sub_080728F8
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xa0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r7, _080B0750 @ =gUnknown_080F9618
	movs r0, #0
	movs r1, #0xf
	bl sub_08070660
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	add r2, sp, #0xc
	movs r0, #0x20
	rsbs r0, r0, #0
	movs r3, #0x40
	mov sl, r3
	movs r3, #0
	mov r8, r3
	strh r0, [r2]
	mov r0, sl
	strh r0, [r2, #2]
	ldr r2, [sp, #0xc]
	add r0, sp, #0x10
	movs r6, #0x80
	lsls r6, r6, #1
	strh r6, [r0]
	strh r6, [r0, #2]
	ldr r3, [sp, #0x10]
	ldr r4, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r4
	bl sub_080728F8
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xa0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0
	movs r1, #0xf
	bl sub_08070660
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	add r2, sp, #0x14
	movs r0, #0x88
	lsls r0, r0, #1
	strh r0, [r2]
	mov r3, sl
	strh r3, [r2, #2]
	ldr r2, [sp, #0x14]
	add r0, sp, #0x18
	strh r6, [r0]
	strh r6, [r0, #2]
	ldr r3, [sp, #0x18]
	ldr r4, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r4
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	mov r0, sb
	ldr r3, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r3, r3, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B0754 @ =0x000004E1
	mov r0, sp
	ldr r3, [r3, #4]
	add r1, sb
	bl _call_via_r3
	add r1, sp, #0x1c
	mov r3, r8
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0750: .4byte gUnknown_080F9618
_080B0754: .4byte 0x000004E1

	thumb_func_start sub_080B0758
sub_080B0758: @ 0x080B0758
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B0770 @ =0x0000044C
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0770: .4byte 0x0000044C

	thumb_func_start sub_080B0774
sub_080B0774: @ 0x080B0774
	push {lr}
	ldr r2, _080B0784 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B0784: .4byte 0x09F72120

	thumb_func_start sub_080B0788
sub_080B0788: @ 0x080B0788
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x1c
	adds r6, r0, #0
	bl nullsub_37
	ldr r4, _080B0818 @ =gUnknown_080F95F8
	movs r0, #0
	movs r1, #0xf
	bl sub_08070660
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl sub_08072F54
	adds r3, r0, #0
	cmp r3, #0
	beq _080B080A
	ldr r4, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	ldr r0, _080B081C @ =0x000004E1
	mov r8, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0xc
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	mov r0, sp
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x18
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_080B080A:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B0818: .4byte gUnknown_080F95F8
_080B081C: .4byte 0x000004E1

	thumb_func_start sub_080B0820
sub_080B0820: @ 0x080B0820
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B0838 @ =0x0000044C
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0838: .4byte 0x0000044C

	thumb_func_start sub_080B083C
sub_080B083C: @ 0x080B083C
	push {lr}
	ldr r2, _080B084C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B084C: .4byte 0x09F72120

	thumb_func_start sub_080B0850
sub_080B0850: @ 0x080B0850
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B0890 @ =0x000003A5
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0890: .4byte 0x000003A5

	thumb_func_start sub_080B0894
sub_080B0894: @ 0x080B0894
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	bl nullsub_37
	movs r4, #0
	bl sub_08072DFC
	cmp r0, #1
	bne _080B08BC
	movs r0, #1
	movs r1, #2
	bl sub_08070660
	adds r4, r0, #0
	b _080B08C6
_080B08BC:
	bl sub_08072DFC
	cmp r0, #2
	bne _080B08C6
	movs r4, #1
_080B08C6:
	add r5, sp, #0xc
	cmp r4, #0
	ble _080B0908
	movs r0, #0xaa
	mov sl, r0
	movs r0, #0x84
	mov sb, r0
	movs r0, #0x20
	mov r8, r0
	movs r7, #0xa7
_080B08DA:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0xab
	cmp r0, #0x14
	blt _080B08FC
	mov r1, sl
	cmp r0, #0x28
	blt _080B08FC
	mov r1, sb
	cmp r0, #0x3c
	blt _080B08FC
	adds r1, r7, #0
	cmp r0, #0x50
	bge _080B08FC
	mov r1, r8
_080B08FC:
	adds r0, r1, #0
	bl sub_08072F54
	subs r4, #1
	cmp r4, #0
	bne _080B08DA
_080B0908:
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B094C @ =0x0000032A
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	movs r0, #0
	add r1, sp, #0xc
	strb r0, [r1]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, sp
	adds r1, r5, #0
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B094C: .4byte 0x0000032A

	thumb_func_start sub_080B0950
sub_080B0950: @ 0x080B0950
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r4, r0, #0
	bl sub_08072DFC
	movs r2, #0
	ldr r1, _080B0978 @ =gUnknown_080F95E8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B0970
	movs r2, #1
_080B0970:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0978: .4byte gUnknown_080F95E8

	thumb_func_start sub_080B097C
sub_080B097C: @ 0x080B097C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B0994 @ =0x0000044C
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0994: .4byte 0x0000044C

	thumb_func_start sub_080B0998
sub_080B0998: @ 0x080B0998
	push {lr}
	ldr r2, _080B09A8 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B09A8: .4byte 0x09F72120

	thumb_func_start sub_080B09AC
sub_080B09AC: @ 0x080B09AC
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_08078D1C
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B09F0 @ =0x0000049A
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B09F0: .4byte 0x0000049A

	thumb_func_start sub_080B09F4
sub_080B09F4: @ 0x080B09F4
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	bl nullsub_37
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B0A74 @ =0x00000483
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	bl sub_080729B0
	adds r4, r0, #0
	cmp r4, #0
	beq _080B0A6A
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_080B0A6A:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0A74: .4byte 0x00000483

	thumb_func_start sub_080B0A78
sub_080B0A78: @ 0x080B0A78
	push {lr}
	ldr r2, _080B0A88 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B0A88: .4byte 0x09F72120

	thumb_func_start sub_080B0A8C
sub_080B0A8C: @ 0x080B0A8C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r1, #0
	bl nullsub_37
	ldr r0, _080B0B28 @ =0x000003E5
	bl sub_08070824
	movs r5, #2
_080B0AA0:
	movs r0, #0xba
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_080730FC
	movs r0, #0xa
	bl sub_0807068C
	subs r5, #1
	cmp r5, #0
	bge _080B0AA0
	movs r0, #0x81
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_08073198
	movs r0, #0x1e
	bl sub_0807068C
	adds r0, r4, #0
	bl sub_08072DD0
	adds r2, r0, #0
	cmp r2, #0
	beq _080B0B1E
	ldr r1, [r2, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	bl sub_08073270
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B0B2C @ =0x000004EA
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_080B0B1E:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B0B28: .4byte 0x000003E5
_080B0B2C: .4byte 0x000004EA

	thumb_func_start sub_080B0B30
sub_080B0B30: @ 0x080B0B30
	push {lr}
	ldr r2, _080B0B40 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B0B40: .4byte 0x09F72120

	thumb_func_start sub_080B0B44
sub_080B0B44: @ 0x080B0B44
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B0B84 @ =0x000003A5
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0B84: .4byte 0x000003A5

	thumb_func_start sub_080B0B88
sub_080B0B88: @ 0x080B0B88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	bl nullsub_37
	bl sub_08072DFC
	adds r4, r0, #0
	adds r4, #1
	bl sub_08072DFC
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08063960
	add r4, sp, #0x20
	adds r0, r4, #0
	mov r1, sp
	bl sub_080639FC
	mov r0, sp
	movs r1, #2
	bl sub_080639B4
	ldr r0, _080B0C74 @ =0x00000563
	bl sub_08070824
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]

	thumb_func_start sub_080B0BDC
sub_080B0BDC: @ 0x080B0BDC
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r2, sp, #0x24
	movs r1, #0x19
	movs r7, #0
	strh r1, [r2]
	strh r1, [r2, #2]
	adds r1, r4, #0
	movs r3, #0x1e
	bl sub_08072F9C
	adds r3, r0, #0
	cmp r3, #0
	beq _080B0C66
	ldr r4, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	movs r0, #0xe9
	lsls r0, r0, #2
	mov sb, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x14
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	add r6, sp, #8
	adds r0, r6, #0
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, sb
	mov r3, r8
	bl _call_via_r4
	add r1, sp, #0x28
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	adds r0, r6, #0
	movs r2, #1
	bl sub_080735E0
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
_080B0C66:
	add sp, #0x2c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0C74: .4byte 0x00000563

	thumb_func_start sub_080B0C78
sub_080B0C78: @ 0x080B0C78
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r4, r0, #0
	bl sub_08072DFC
	movs r2, #0
	ldr r1, _080B0CA0 @ =gUnknown_080F95D8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B0C98
	movs r2, #1
_080B0C98:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0CA0: .4byte gUnknown_080F95D8

	thumb_func_start sub_080B0CA4
sub_080B0CA4: @ 0x080B0CA4
	push {lr}
	ldr r2, _080B0CB4 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B0CB4: .4byte 0x09F72120

	thumb_func_start sub_080B0CB8
sub_080B0CB8: @ 0x080B0CB8
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B0CF8 @ =0x000003A5
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0CF8: .4byte 0x000003A5

	thumb_func_start sub_080B0CFC
sub_080B0CFC: @ 0x080B0CFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x24
	adds r6, r0, #0
	bl nullsub_37
	ldr r0, _080B0D9C @ =0x0000055D
	bl sub_08070824
	add r1, sp, #0x18
	movs r0, #0xc8
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r7, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	add r2, sp, #0x1c
	adds r0, #0x38
	strh r0, [r2]
	strh r0, [r2, #2]
	movs r0, #0xb1
	movs r3, #0x1e
	bl sub_08072F9C
	adds r3, r0, #0
	cmp r3, #0
	beq _080B0D8E
	ldr r4, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	movs r0, #0xe9
	lsls r0, r0, #2
	mov r8, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0xc
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	mov r0, sp
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x20
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_080B0D8E:
	add sp, #0x24
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0D9C: .4byte 0x0000055D

	thumb_func_start sub_080B0DA0
sub_080B0DA0: @ 0x080B0DA0
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r4, r0, #0
	bl sub_08072DFC
	movs r2, #0
	ldr r1, _080B0DC8 @ =gUnknown_080F95C8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B0DC0
	movs r2, #1
_080B0DC0:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B0DC8: .4byte gUnknown_080F95C8

	thumb_func_start sub_080B0DCC
sub_080B0DCC: @ 0x080B0DCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B0DE4 @ =0x0000044C
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0DE4: .4byte 0x0000044C

	thumb_func_start sub_080B0DE8
sub_080B0DE8: @ 0x080B0DE8
	push {lr}
	ldr r2, _080B0DF8 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B0DF8: .4byte 0x09F72120

	thumb_func_start sub_080B0DFC
sub_080B0DFC: @ 0x080B0DFC
	push {r4, r5, lr}
	adds r4, r1, #0
	bl nullsub_37
	ldr r0, _080B0E4C @ =0x0000028A
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08072DD0
	adds r5, r0, #0
	cmp r5, #0
	beq _080B0E44
	movs r0, #0x82
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08073198
	adds r4, r0, #0
	movs r0, #0x32
	bl sub_0807068C
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	adds r0, r4, #0
	bl sub_0807323C
_080B0E44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0E4C: .4byte 0x0000028A

	thumb_func_start sub_080B0E50
sub_080B0E50: @ 0x080B0E50
	push {lr}
	ldr r2, _080B0E60 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B0E60: .4byte 0x09F72120

	thumb_func_start sub_080B0E64
sub_080B0E64: @ 0x080B0E64
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	adds r2, r0, #0
	cmp r2, #0
	beq _080B0EA2
	ldr r1, [r2, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r0, r4, #0
	bl sub_08078700
_080B0EA2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0EA8
sub_080B0EA8: @ 0x080B0EA8
	push {lr}
	ldr r2, _080B0EB8 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B0EB8: .4byte 0x09F72120

	thumb_func_start sub_080B0EBC
sub_080B0EBC: @ 0x080B0EBC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080B0F20 @ =0x000002EA
	bl sub_08070824
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	adds r5, r0, #0
	cmp r5, #0
	beq _080B0F18
	movs r0, #0x82
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08073198
	adds r4, r0, #0
	movs r0, #0x32
	bl sub_0807068C
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r0, r4, #0
	bl sub_0807323C
	adds r0, r6, #0
	bl sub_08078700
_080B0F18:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B0F20: .4byte 0x000002EA

	thumb_func_start sub_080B0F24
sub_080B0F24: @ 0x080B0F24
	push {lr}
	ldr r2, _080B0F34 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B0F34: .4byte 0x09F72120

	thumb_func_start sub_080B0F38
sub_080B0F38: @ 0x080B0F38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	bl nullsub_37
	ldr r0, _080B1134 @ =0x00000562
	bl sub_08070824
	mov r1, sp
	movs r5, #0x78
	movs r6, #0x50
	mov r0, sp
	strh r5, [r0]
	strh r6, [r1, #2]
	add r2, sp, #4
	movs r4, #0x19
	strh r4, [r2]
	strh r4, [r2, #2]
	movs r0, #0x23
	movs r3, #0
	bl sub_08072F9C
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _080B0F72
	b _080B1122
_080B0F72:
	add r1, sp, #8
	strh r5, [r1]
	strh r6, [r1, #2]
	add r2, sp, #0xc
	strh r4, [r2]
	strh r4, [r2, #2]
	movs r0, #0x23
	movs r3, #0
	bl sub_08072F9C
	str r0, [sp, #0x20]
	cmp r0, #0
	bne _080B0F8E
	b _080B1122
_080B0F8E:
	ldr r4, _080B1138 @ =gUnknown_02002970
	ldr r0, [r4]
	cmp r0, #0
	bne _080B0FDC
	ldr r0, _080B113C @ =gUnknown_02002950
	strh r5, [r0]
	strh r6, [r0, #2]
	adds r0, #4
	movs r1, #0x73
	movs r2, #0x32
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x64
	movs r2, #0x14
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0xa
	strh r6, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	movs r3, #0x3c
	movs r1, #0x1e
	strh r3, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	movs r1, #0x38
	strh r1, [r0]
	strh r3, [r0, #2]
	adds r0, #4
	movs r2, #0x44
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	strh r1, [r0]
	strh r3, [r0, #2]
	movs r0, #1
	str r0, [r4]
_080B0FDC:
	movs r0, #0
	str r0, [sp, #0x24]
	movs r7, #0
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x38]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	adds r3, #0x20
	str r3, [sp, #0x40]
	ldr r6, [sp, #0x20]
	adds r6, #0x20
	str r6, [sp, #0x34]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x2c]
_080B1000:
	movs r0, #0
	add r1, sp, #0x10
	mov sl, r1
	strh r0, [r1]
	mov r2, sp
	strh r0, [r2, #0x12]
	adds r2, #0x14
	str r2, [sp, #0x30]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2]
	adds r0, r3, #0
	mov r6, sp
	strh r0, [r6, #0x16]
	ldr r1, _080B113C @ =gUnknown_02002950
	ldr r2, [sp, #0x24]
	lsls r2, r2, #2
	mov sb, r2
	add sb, r1
	mov r3, sb
	movs r6, #0
	ldrsh r0, [r3, r6]
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x28]
	lsls r2, r2, #2
	mov r8, r2
	add r8, r1
	mov r3, r8
	movs r6, #0
	ldrsh r1, [r3, r6]
	ldr r5, _080B1140 @ =0x09F447A0
	ldr r2, [sp, #0x24]
	lsls r6, r2, #1
	adds r6, r6, r5
	ldrh r4, [r6]
	subs r2, r7, r4
	ldr r3, [sp, #0x28]
	lsls r3, r3, #1
	mov ip, r3
	add r5, ip
	ldrh r3, [r5]
	subs r3, r3, r4
	bl sub_08069558
	mov r1, sl
	strh r0, [r1]
	mov r2, sb
	movs r3, #2
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #2
	ldrsh r1, [r2, r3]
	ldrh r4, [r6]
	subs r2, r7, r4
	ldrh r3, [r5]
	subs r3, r3, r4
	bl sub_08069558
	mov r6, sp
	strh r0, [r6, #0x12]
	movs r2, #0x13
	cmp r2, r7
	ble _080B1082
	adds r2, r7, #0
_080B1082:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #0x13
	bl sub_08069558
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	ldr r2, [sp, #0x30]
	ldrh r0, [r2]
	mov r3, sp
	strh r0, [r3, #0x16]
	ldr r6, [sp, #0x1c]
	ldr r1, [r6, #0x20]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x40]
	adds r0, r3, r0
	ldr r2, [r1, #0x1c]
	add r1, sp, #0x10
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r6, #0xf4
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	add r1, sp, #0x14
	bl _call_via_r2
	ldr r6, [sp, #0x20]
	ldr r4, [r6, #0x20]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #0x34]
	adds r0, r2, r0
	ldr r3, [sp, #0x38]
	movs r6, #0
	ldrsh r1, [r3, r6]
	movs r2, #0xf0
	subs r2, r2, r1
	mov r1, sp
	movs r6, #0x12
	ldrsh r3, [r1, r6]
	add r1, sp, #0x18
	strh r2, [r1]
	ldr r1, [sp, #0x2c]
	strh r3, [r1, #2]
	ldr r2, [r4, #0x1c]
	ldr r1, [sp, #0x2c]
	bl _call_via_r2
	ldr r2, [sp, #0x20]
	ldr r1, [r2, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r6, #0
	ldrsh r0, [r1, r6]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	add r1, sp, #0x14
	bl _call_via_r2
	movs r0, #1
	bl sub_0807068C
	ldrh r5, [r5]
	cmp r7, r5
	blt _080B111A
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x24]
_080B111A:
	adds r7, #1
	cmp r7, #0x1c
	bgt _080B1122
	b _080B1000
_080B1122:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1134: .4byte 0x00000562
_080B1138: .4byte gUnknown_02002970
_080B113C: .4byte gUnknown_02002950
_080B1140: .4byte 0x09F447A0

	thumb_func_start sub_080B1144
sub_080B1144: @ 0x080B1144
	push {lr}
	ldr r2, _080B1154 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1154: .4byte 0x09F72120

	thumb_func_start sub_080B1158
sub_080B1158: @ 0x080B1158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r1
	bl nullsub_37
	movs r0, #0x20
	add r0, sb
	mov sl, r0
	mov r8, sp
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0x10]
	add r6, sp, #8
	movs r2, #0x27
	str r2, [sp, #0xc]
_080B117E:
	mov r3, sb
	ldr r2, [r3, #0x20]
	adds r5, r2, #0
	adds r5, #0x18
	str r5, [sp, #0x14]
	movs r7, #0x18
	ldrsh r4, [r2, r7]
	add r4, sl
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	add r1, sl
	bl _call_via_r2
	add r0, sp, #4
	movs r1, #4
	rsbs r1, r1, #0
	strh r1, [r0]
	movs r3, #0
	ldr r2, [sp, #0x10]
	strh r3, [r2, #2]
	mov r5, r8
	movs r7, #0
	ldrsh r2, [r5, r7]
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r7, #2
	ldrsh r1, [r5, r7]
	ldr r5, [sp, #0x10]
	movs r7, #2
	ldrsh r0, [r5, r7]
	adds r2, r2, r3
	adds r1, r1, r0
	add r0, sp, #8
	strh r2, [r0]
	strh r1, [r6, #2]
	ldr r0, [sp, #0x14]
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	movs r0, #1
	bl sub_0807068C
	ldr r1, [sp, #0xc]
	subs r1, #1
	str r1, [sp, #0xc]
	cmp r1, #0
	bge _080B117E
	mov r0, sb
	bl sub_08072DD0
	bl sub_08072FE0
	bl sub_080728B8
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xe8
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	movs r0, #0x1e
	movs r1, #0x32
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B1224
sub_080B1224: @ 0x080B1224
	push {lr}
	ldr r2, _080B1234 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1234: .4byte 0x09F72120

	thumb_func_start sub_080B1238
sub_080B1238: @ 0x080B1238
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _080B1258 @ =0x0000031A
	bl sub_08070824
	adds r0, r7, #0
	bl sub_08078784
	movs r5, #0
	mov r4, sp
	movs r6, #0xff
	b _080B1290
	.align 2, 0
_080B1258: .4byte 0x0000031A
_080B125C:
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r1, #0x20
	ldr r3, [r0, #0x20]
	movs r2, #0x30
	ldrsh r0, [r3, r2]
	adds r1, r1, r0
	strb r6, [r4]
	strb r6, [r4, #1]
	strb r6, [r4, #2]
	ldr r2, [sp]
	ldr r3, [r3, #0x34]
	adds r0, r1, #0
	adds r1, r5, #0
	bl _call_via_r3
	adds r5, #1
_080B1290:
	ldr r1, [r7, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	adds r2, #0x20
	ldr r1, [r0, #0x20]
	adds r1, #0x60
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	ldr r1, [r1, #4]
	adds r0, r2, #0
	bl _call_via_r1
	cmp r5, r0
	blt _080B125C
	ldr r0, _080B12CC @ =0x0000031B
	bl sub_080707E4
	movs r0, #0
	mov r8, r0
	b _080B1330
	.align 2, 0
_080B12CC: .4byte 0x0000031B
_080B12D0:
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	adds r5, #0x20
	ldr r0, [r0, #0x20]
	adds r6, r0, #0
	adds r6, #0x30
	movs r1, #0x30
	ldrsh r0, [r0, r1]
	adds r5, r5, r0
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	adds r4, #0x20
	ldr r2, [r0, #0x20]
	adds r2, #0x68
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r3, [r2, #4]
	adds r1, r4, r1
	mov r2, r8
	bl _call_via_r3
	ldr r2, [sp, #4]
	ldr r3, [r6, #4]
	adds r0, r5, #0
	mov r1, r8
	bl _call_via_r3
	movs r1, #1
	add r8, r1
_080B1330:
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	adds r2, #0x20
	ldr r1, [r0, #0x20]
	adds r1, #0x60
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	ldr r1, [r1, #4]
	adds r0, r2, #0
	bl _call_via_r1
	cmp r8, r0
	blt _080B12D0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B136C
sub_080B136C: @ 0x080B136C
	push {lr}
	ldr r2, _080B137C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B137C: .4byte 0x09F72120

	thumb_func_start sub_080B1380
sub_080B1380: @ 0x080B1380
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B13C0 @ =0x000003A5
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B13C0: .4byte 0x000003A5

	thumb_func_start sub_080B13C4
sub_080B13C4: @ 0x080B13C4
	push {lr}
	bl nullsub_37
	movs r0, #0xac
	bl sub_08072F54
	pop {r0}
	bx r0

	thumb_func_start sub_080B13D4
sub_080B13D4: @ 0x080B13D4
	push {r4, lr}
	movs r4, #0
	bl sub_08072DFC
	cmp r0, #2
	bgt _080B13EE
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x1d
	bgt _080B13EE
	movs r4, #1
_080B13EE:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B13F8
sub_080B13F8: @ 0x080B13F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B1410 @ =0x0000055F
	bl sub_080707E4
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1410: .4byte 0x0000055F

	thumb_func_start sub_080B1414
sub_080B1414: @ 0x080B1414
	push {lr}
	ldr r2, _080B1424 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1424: .4byte 0x09F72120

	thumb_func_start sub_080B1428
sub_080B1428: @ 0x080B1428
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078784
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	bl sub_08072DD0
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B1468
sub_080B1468: @ 0x080B1468
	push {lr}
	ldr r2, _080B1478 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1478: .4byte 0x09F72120

	thumb_func_start sub_080B147C
sub_080B147C: @ 0x080B147C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl nullsub_37
	adds r0, r5, #0
	bl sub_08072DD0
	adds r7, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x82
	adds r1, r6, #0
	bl sub_08073198
	movs r0, #0x14
	bl sub_0807068C
	ldr r0, _080B15A8 @ =0x00000614
	bl sub_08070824
	movs r0, #5
	bl sub_0807068C
	movs r5, #0xc0
	lsls r5, r5, #2
	movs r4, #2
_080B14D8:
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #4
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #4
	bl sub_0807068C
	subs r4, #1
	cmp r4, #0
	bge _080B14D8
	movs r5, #0xc0
	lsls r5, r5, #2
	movs r4, #2
_080B1514:
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #3
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #3
	bl sub_0807068C
	subs r4, #1
	cmp r4, #0
	bge _080B1514
	movs r5, #0xc0
	lsls r5, r5, #2
	movs r4, #2
_080B1550:
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #2
	bl sub_0807068C
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #2
	bl sub_0807068C
	subs r4, #1
	cmp r4, #0
	bge _080B1550
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	bl sub_08073270
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B15A8: .4byte 0x00000614

	thumb_func_start sub_080B15AC
sub_080B15AC: @ 0x080B15AC
	push {lr}
	ldr r2, _080B15BC @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B15BC: .4byte 0x09F72120

	thumb_func_start sub_080B15C0
sub_080B15C0: @ 0x080B15C0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	bl nullsub_37
	ldr r0, [r4, #0x1c]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r6, r0, r1
	movs r2, #0
	ldrsh r5, [r6, r2]
	adds r5, r4, r5
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	adds r1, r0, #0
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r6, r0, r1
	movs r2, #0
	ldrsh r5, [r6, r2]
	adds r5, r4, r5
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r1, [r1, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r1, #0x73
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_0807066C
	adds r1, r0, #0
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B163C
sub_080B163C: @ 0x080B163C
	push {lr}
	ldr r2, _080B164C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B164C: .4byte 0x09F72120

	thumb_func_start sub_080B1650
sub_080B1650: @ 0x080B1650
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B1690 @ =0x000003A5
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1690: .4byte 0x000003A5

	thumb_func_start sub_080B1694
sub_080B1694: @ 0x080B1694
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x1c
	adds r6, r0, #0
	bl nullsub_37
	movs r0, #0x9f
	bl sub_08072F54
	adds r3, r0, #0
	cmp r3, #0
	beq _080B170A
	ldr r4, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	movs r0, #0xe9
	lsls r0, r0, #2
	mov r8, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0xc
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	mov r0, sp
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x18
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_080B170A:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B1718
sub_080B1718: @ 0x080B1718
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r4, r0, #0
	bl sub_08072DFC
	movs r2, #0
	ldr r1, _080B1740 @ =gUnknown_080F95B8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B1738
	movs r2, #1
_080B1738:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B1740: .4byte gUnknown_080F95B8

	thumb_func_start sub_080B1744
sub_080B1744: @ 0x080B1744
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B175C @ =0x0000044C
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B175C: .4byte 0x0000044C

	thumb_func_start sub_080B1760
sub_080B1760: @ 0x080B1760
	push {lr}
	ldr r2, _080B1770 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1770: .4byte 0x09F72120

	thumb_func_start sub_080B1774
sub_080B1774: @ 0x080B1774
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B17B4 @ =0x000003A5
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B17B4: .4byte 0x000003A5

	thumb_func_start sub_080B17B8
sub_080B17B8: @ 0x080B17B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x1c
	adds r6, r0, #0
	bl nullsub_37
	movs r0, #0xa1
	bl sub_08072F54
	adds r3, r0, #0
	cmp r3, #0
	beq _080B182E
	ldr r4, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	movs r0, #0xe9
	lsls r0, r0, #2
	mov r8, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0xc
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	mov r0, sp
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x18
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_080B182E:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B183C
sub_080B183C: @ 0x080B183C
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r4, r0, #0
	bl sub_08072DFC
	movs r2, #0
	ldr r1, _080B1864 @ =gUnknown_080F95A8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B185C
	movs r2, #1
_080B185C:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B1864: .4byte gUnknown_080F95A8

	thumb_func_start sub_080B1868
sub_080B1868: @ 0x080B1868
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B1880 @ =0x0000044C
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1880: .4byte 0x0000044C

	thumb_func_start sub_080B1884
sub_080B1884: @ 0x080B1884
	push {lr}
	ldr r2, _080B1894 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1894: .4byte 0x09F72120

	thumb_func_start sub_080B1898
sub_080B1898: @ 0x080B1898
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl nullsub_37
	movs r0, #0xc7
	lsls r0, r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl sub_0807459C
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B18EC @ =0x00000482
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B18EC: .4byte 0x00000482

	thumb_func_start sub_080B18F0
sub_080B18F0: @ 0x080B18F0
	push {lr}
	ldr r2, _080B1900 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1900: .4byte 0x09F72120

	thumb_func_start sub_080B1904
sub_080B1904: @ 0x080B1904
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl nullsub_37
	ldr r0, _080B1954 @ =0x0000018F
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl sub_0807459C
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B1958 @ =0x00000482
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1954: .4byte 0x0000018F
_080B1958: .4byte 0x00000482

	thumb_func_start sub_080B195C
sub_080B195C: @ 0x080B195C
	push {lr}
	ldr r2, _080B196C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B196C: .4byte 0x09F72120

	thumb_func_start sub_080B1970
sub_080B1970: @ 0x080B1970
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	movs r2, #0xdd
	lsls r2, r2, #2
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B19B4
sub_080B19B4: @ 0x080B19B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc0
	str r0, [sp, #0xb8]
	adds r4, r1, #0
	bl nullsub_37
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl sub_080729B0
	mov r8, r0
	movs r6, #0
	add r0, sp, #0xc
	mov sb, r0
	b _080B1A9E
_080B19E0:
	mov r2, r8
	ldr r1, [r2, #0x1c]
	movs r4, #0x84
	lsls r4, r4, #3
	adds r1, r1, r4
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, r8
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	mov r2, r8
	movs r3, #0
	bl sub_080649AC
	mov r0, sb
	bl sub_08064F98
	cmp r0, #4
	beq _080B1A1E
	mov r0, sb
	bl sub_08064F98
	adds r7, r6, #1
	cmp r0, #6
	bne _080B1A94
_080B1A1E:
	mov r5, r8
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	add r1, sp, #0xac
	strh r0, [r1]
	mov r5, sp
	mov sl, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	adds r7, r6, #1
	cmp r0, r4
	bge _080B1A82
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _080B1A50
	adds r1, r0, #0
_080B1A50:
	adds r4, r1, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080B1A74
	adds r1, r0, #0
_080B1A66:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080B1A66
_080B1A74:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080B1A7E
	bl __builtin_vec_delete
_080B1A7E:
	str r4, [r5]
	str r6, [r5, #8]
_080B1A82:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sl
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080B1A94:
	mov r0, sb
	movs r1, #2
	bl sub_080649E8
	adds r6, r7, #0
_080B1A9E:
	mov r4, r8
	ldr r1, [r4, #0x1c]
	movs r5, #0x83
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _080B19E0
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _080B1AC0
	b _080B1BC8
_080B1AC0:
	mov r6, sp
	add r7, sp, #0x18
	add r3, sp, #0x5c
	mov sl, r3
	mov r4, sp
	adds r4, #0xb0
	str r4, [sp, #0xbc]
	cmp r0, #0
	ble _080B1B02
	adds r5, r0, #0
_080B1AD4:
	ldr r1, [r6, #4]
	subs r1, #1
	movs r0, #0
	bl sub_08069454
	adds r4, r0, #0
	ldr r1, [r6, #4]
	subs r1, #1
	movs r0, #0
	bl sub_08069454
	ldr r1, [r6, #8]
	lsls r4, r4, #1
	adds r4, r4, r1
	ldrh r2, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4]
	strh r2, [r0]
	subs r5, #1
	cmp r5, #0
	bne _080B1AD4
_080B1B02:
	mov r0, sb
	bl sub_0806E274
	ldr r5, [sp, #0xb8]
	ldr r3, [r5, #0x1c]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B1BC0 @ =0x00000372
	adds r0, r7, #0
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	mov r0, sb
	adds r1, r7, #0
	bl sub_0806E374
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806E308
	ldr r0, [sp, #8]
	ldrh r1, [r0]
	mov r0, sl
	mov r2, r8
	movs r3, #0
	bl sub_080649AC
	adds r0, r7, #0
	mov r1, sl
	bl sub_08064B30
	mov r0, sb
	adds r1, r7, #0
	bl sub_0806E374
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, sl
	movs r1, #2
	bl sub_080649E8
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B1BC4 @ =0x00000373
	adds r0, r7, #0
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	mov r0, sb
	adds r1, r7, #0
	bl sub_0806E374
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806E308
	mov r3, r8
	ldr r2, [r3, #0x1c]
	movs r4, #0x81
	lsls r4, r4, #3
	adds r2, r2, r4
	movs r5, #0
	ldrsh r0, [r2, r5]
	add r0, r8
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r0, #0
	add r1, sp, #0xb0
	strb r0, [r1]
	ldr r1, [sp, #0xbc]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sb
	ldr r1, [sp, #0xbc]
	movs r2, #1
	bl sub_080735E0
	mov r0, sb
	movs r1, #2
	bl sub_0806E308
	b _080B1C00
	.align 2, 0
_080B1BC0: .4byte 0x00000372
_080B1BC4: .4byte 0x00000373
_080B1BC8:
	ldr r2, [sp, #0xb8]
	ldr r3, [r2, #0x1c]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r5, #0
	ldrsh r1, [r3, r5]
	movs r2, #0xdd
	lsls r2, r2, #2
	mov r0, sb
	ldr r3, [r3, #4]
	ldr r4, [sp, #0xb8]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xb4
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sb
	movs r2, #1
	bl sub_080735E0
	mov r0, sb
	movs r1, #2
	bl sub_0806E308
_080B1C00:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080B1C0A
	bl __builtin_vec_delete
_080B1C0A:
	add sp, #0xc0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B1C1C
sub_080B1C1C: @ 0x080B1C1C
	push {lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	movs r1, #0
	cmp r0, #0x31
	bgt _080B1C2E
	movs r1, #1
_080B1C2E:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080B1C34
sub_080B1C34: @ 0x080B1C34
	push {lr}
	ldr r2, _080B1C44 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1C44: .4byte 0x09F72120

	thumb_func_start sub_080B1C48
sub_080B1C48: @ 0x080B1C48
	push {r4, lr}
	adds r4, r0, #0
	bl nullsub_37
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	bl sub_08072DD0
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B1C88
sub_080B1C88: @ 0x080B1C88
	push {lr}
	ldr r2, _080B1C98 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1C98: .4byte 0x09F72120

	thumb_func_start sub_080B1C9C
sub_080B1C9C: @ 0x080B1C9C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x30
	mov r8, r0
	bl nullsub_37
	add r5, sp, #0x20
	movs r0, #0
	mov sl, r0
	movs r0, #0
	strh r0, [r5]
	strh r0, [r5, #2]
	bl sub_08072DFC
	adds r4, r0, #0
	adds r4, #1
	bl sub_08072DFC
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08063960
	add r0, sp, #0x24
	mov r1, sp
	bl sub_080639FC
	ldr r0, [sp, #0x24]
	strh r0, [r5]
	mov r0, sp
	movs r1, #2
	bl sub_080639B4
	ldr r0, _080B1DA4 @ =0x0000FFE0
	strh r0, [r5, #2]
	mov r2, r8
	ldr r1, [r2, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r2, sp, #0x28
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	strh r1, [r2, #2]
	adds r1, r5, #0
	movs r3, #0x1e
	bl sub_08072F9C
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #2
	bl sub_08070824
	mov r0, r8
	ldr r4, [r0, #0x1c]
	movs r1, #0xac
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	add r8, r0
	movs r3, #0xe9
	lsls r3, r3, #2
	mov sb, r3
	ldr r2, [r5, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r6, sp, #0x14
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	add r5, sp, #8
	adds r0, r5, #0
	ldr r4, [r4, #4]
	mov r1, r8
	mov r2, sb
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x2c
	mov r0, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r0, r5, #0
	movs r2, #1
	bl sub_080735E0
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B1DA4: .4byte 0x0000FFE0

	thumb_func_start sub_080B1DA8
sub_080B1DA8: @ 0x080B1DA8
	push {lr}
	bl sub_08072DFC
	movs r1, #0
	cmp r0, #2
	ble _080B1DB6
	movs r1, #1
_080B1DB6:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080B1DBC
sub_080B1DBC: @ 0x080B1DBC
	push {lr}
	ldr r2, _080B1DCC @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1DCC: .4byte 0x09F72120

	thumb_func_start sub_080B1DD0
sub_080B1DD0: @ 0x080B1DD0
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	movs r2, #0xea
	lsls r2, r2, #2
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B1E14
sub_080B1E14: @ 0x080B1E14
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	bl nullsub_37
	bl sub_08072DFC
	adds r4, r0, #0
	adds r4, #1
	bl sub_08072DFC
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08063960
	add r4, sp, #0x20
	adds r0, r4, #0
	mov r1, sp
	bl sub_080639FC
	mov r0, sp
	movs r1, #2
	bl sub_080639B4
	ldr r0, _080B1F00 @ =0x000002FB
	bl sub_08070824
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r2, sp, #0x24
	movs r1, #0x19
	movs r7, #0
	strh r1, [r2]
	strh r1, [r2, #2]
	adds r1, r4, #0
	movs r3, #0x1e
	bl sub_08072F9C
	adds r3, r0, #0
	cmp r3, #0
	beq _080B1EF0
	ldr r4, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	ldr r0, _080B1F04 @ =0x000003A7
	mov sb, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x14
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	add r6, sp, #8
	adds r0, r6, #0
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, sb
	mov r3, r8
	bl _call_via_r4
	add r1, sp, #0x28
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	adds r0, r6, #0
	movs r2, #1
	bl sub_080735E0
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
_080B1EF0:
	add sp, #0x2c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1F00: .4byte 0x000002FB
_080B1F04: .4byte 0x000003A7

	thumb_func_start sub_080B1F08
sub_080B1F08: @ 0x080B1F08
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r4, r0, #0
	bl sub_08072DFC
	movs r2, #0
	ldr r1, _080B1F30 @ =gUnknown_080F9598
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B1F28
	movs r2, #1
_080B1F28:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B1F30: .4byte gUnknown_080F9598

	thumb_func_start sub_080B1F34
sub_080B1F34: @ 0x080B1F34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B1F4C @ =0x0000044C
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1F4C: .4byte 0x0000044C

	thumb_func_start sub_080B1F50
sub_080B1F50: @ 0x080B1F50
	push {lr}
	ldr r2, _080B1F60 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1F60: .4byte 0x09F72120

	thumb_func_start sub_080B1F64
sub_080B1F64: @ 0x080B1F64
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B1FA4 @ =0x000003A5
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1FA4: .4byte 0x000003A5

	thumb_func_start sub_080B1FA8
sub_080B1FA8: @ 0x080B1FA8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x1c
	adds r6, r0, #0
	bl nullsub_37
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08072F54
	adds r3, r0, #0
	cmp r3, #0
	beq _080B2048
	ldr r4, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	movs r0, #0xe9
	lsls r0, r0, #2
	mov r8, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0xc
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	mov r0, sp
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x18
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_080B2048:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2054
sub_080B2054: @ 0x080B2054
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r4, r0, #0
	bl sub_08072DFC
	movs r2, #0
	ldr r1, _080B207C @ =gUnknown_080F9588
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B2074
	movs r2, #1
_080B2074:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B207C: .4byte gUnknown_080F9588

	thumb_func_start sub_080B2080
sub_080B2080: @ 0x080B2080
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B2098 @ =0x0000044C
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2098: .4byte 0x0000044C

	thumb_func_start sub_080B209C
sub_080B209C: @ 0x080B209C
	push {lr}
	ldr r2, _080B20AC @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B20AC: .4byte 0x09F72120

	thumb_func_start sub_080B20B0
sub_080B20B0: @ 0x080B20B0
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B20F0 @ =0x000003A5
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B20F0: .4byte 0x000003A5

	thumb_func_start sub_080B20F4
sub_080B20F4: @ 0x080B20F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	bl nullsub_37
	movs r4, #0
	bl sub_08072DFC
	cmp r0, #1
	bne _080B211A
	movs r0, #1
	movs r1, #2
	bl sub_08070660
	adds r4, r0, #0
	b _080B2124
_080B211A:
	bl sub_08072DFC
	cmp r0, #2
	bne _080B2124
	movs r4, #1
_080B2124:
	add r5, sp, #0xc
	cmp r4, #0
	ble _080B215C
	movs r0, #0x9d
	mov sb, r0
	movs r0, #0x6c
	mov r8, r0
	movs r7, #0x74
_080B2134:
	movs r0, #0
	movs r1, #0x63
	bl sub_08069454
	movs r1, #0x3c
	cmp r0, #0x19
	blt _080B2150
	mov r1, sb
	cmp r0, #0x32
	blt _080B2150
	adds r1, r7, #0
	cmp r0, #0x4b
	bge _080B2150
	mov r1, r8
_080B2150:
	adds r0, r1, #0
	bl sub_08072F54
	subs r4, #1
	cmp r4, #0
	bne _080B2134
_080B215C:
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B21A0 @ =0x0000032B
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	movs r0, #0
	add r1, sp, #0xc
	strb r0, [r1]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, sp
	adds r1, r5, #0
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B21A0: .4byte 0x0000032B

	thumb_func_start sub_080B21A4
sub_080B21A4: @ 0x080B21A4
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r4, r0, #0
	bl sub_08072DFC
	movs r2, #0
	ldr r1, _080B21CC @ =gUnknown_080F9578
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B21C4
	movs r2, #1
_080B21C4:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B21CC: .4byte gUnknown_080F9578

	thumb_func_start sub_080B21D0
sub_080B21D0: @ 0x080B21D0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xac
	lsls r0, r0, #3
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B21E8
sub_080B21E8: @ 0x080B21E8
	push {lr}
	ldr r2, _080B21F8 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B21F8: .4byte 0x09F72120

	thumb_func_start sub_080B21FC
sub_080B21FC: @ 0x080B21FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	bl nullsub_37
	ldr r0, _080B2300 @ =0x00000611
	bl sub_08070824
	add r0, sp, #0xc
	mov r8, r0
	movs r7, #0xb0
	lsls r7, r7, #1
	movs r5, #2
_080B221A:
	ldr r1, [r6, #0x1c]
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, r1, r7
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0xba
	adds r1, r4, #0
	bl sub_080730FC
	movs r0, #0xa
	bl sub_0807068C
	subs r5, #1
	cmp r5, #0
	bge _080B221A
	ldr r1, [r6, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x81
	adds r1, r5, #0
	bl sub_08073198
	movs r0, #0x2d
	bl sub_0807068C
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #0x2d
	bl sub_0807068C
	bl sub_08073270
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B2304 @ =0x000003EA
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	movs r0, #0
	add r1, sp, #0xc
	strb r0, [r1]
	mov r3, r8
	strb r0, [r3, #1]
	strb r0, [r3, #2]
	mov r0, sp
	mov r1, r8
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2300: .4byte 0x00000611
_080B2304: .4byte 0x000003EA

	thumb_func_start sub_080B2308
sub_080B2308: @ 0x080B2308
	push {lr}
	ldr r2, _080B2318 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2318: .4byte 0x09F72120

	thumb_func_start sub_080B231C
sub_080B231C: @ 0x080B231C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r1, #0
	movs r1, #0
	mov r4, sp
	movs r6, #0x80
	lsls r6, r6, #1
	ldr r0, _080B233C @ =gUnknown_080EF880
	mov sb, r0
_080B2334:
	movs r0, #0
	adds r1, #1
	mov r8, r1
	b _080B238A
	.align 2, 0
_080B233C: .4byte gUnknown_080EF880
_080B2340:
	strh r6, [r4]
	strh r6, [r4, #2]
	ldr r2, _080B23AC @ =0x000003FF
	adds r1, r2, #0
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	rsbs r0, r0, #0
	lsrs r0, r0, #8
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0xc0
	bl sub_08069594
	adds r0, r0, r6
	strh r0, [r4]
	ldr r1, [r7, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	movs r0, #1
	bl sub_0807068C
	adds r0, r5, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080B238A:
	movs r1, #0x80
	lsls r1, r1, #2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, r1
	ble _080B2340
	mov r1, r8
	cmp r1, #1
	ble _080B2334
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B23AC: .4byte 0x000003FF

	thumb_func_start sub_080B23B0
sub_080B23B0: @ 0x080B23B0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _080B2424 @ =0x00000613
	bl sub_08070824
	ldr r0, [r5, #0x1c]
	movs r1, #0xac
	lsls r1, r1, #2
	adds r6, r0, r1
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r5, r4
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	adds r1, r0, #0
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r3, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B2428 @ =0x000003AB
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2424: .4byte 0x00000613
_080B2428: .4byte 0x000003AB

	thumb_func_start sub_080B242C
sub_080B242C: @ 0x080B242C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	bl nullsub_37
	ldr r0, _080B2550 @ =0x00000613
	bl sub_08070824
	ldr r1, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r5, r1, r0
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r6, #0xb0
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	bl sub_08072DFC
	adds r4, r0, #0
	adds r4, #1
	bl sub_08072DFC
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08063960
	add r4, sp, #0x20
	adds r0, r4, #0
	mov r1, sp
	bl sub_080639FC
	mov r0, sp
	movs r1, #2
	bl sub_080639B4
	ldr r0, _080B2554 @ =0x00000634
	bl sub_08070824
	ldr r1, [r7, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r2, sp, #0x24
	movs r1, #0x19
	movs r3, #0
	mov sl, r3
	strh r1, [r2]
	strh r1, [r2, #2]
	adds r1, r4, #0
	movs r3, #0x1e
	bl sub_08072F9C
	adds r3, r0, #0
	cmp r3, #0
	beq _080B253E
	ldr r4, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	ldr r0, _080B2558 @ =0x000003AA
	mov sb, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x14
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	add r6, sp, #8
	adds r0, r6, #0
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, sb
	mov r3, r8
	bl _call_via_r4
	add r1, sp, #0x28
	mov r2, sl
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	adds r0, r6, #0
	movs r2, #1
	bl sub_080735E0
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
_080B253E:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2550: .4byte 0x00000613
_080B2554: .4byte 0x00000634
_080B2558: .4byte 0x000003AA

	thumb_func_start sub_080B255C
sub_080B255C: @ 0x080B255C
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r4, r0, #0
	bl sub_08072DFC
	movs r2, #0
	ldr r1, _080B2584 @ =gUnknown_080F9568
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B257C
	movs r2, #1
_080B257C:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B2584: .4byte gUnknown_080F9568

	thumb_func_start sub_080B2588
sub_080B2588: @ 0x080B2588
	push {lr}
	ldr r2, _080B2598 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2598: .4byte 0x09F72120

	thumb_func_start sub_080B259C
sub_080B259C: @ 0x080B259C
	push {r4, lr}
	bl nullsub_37
	movs r0, #0x5d
	bl sub_08072EE4
	adds r4, r0, #0
	cmp r4, #0
	beq _080B25BA
	ldr r0, _080B25C0 @ =0x0000060E
	bl sub_080707E4
	adds r0, r4, #0
	bl sub_08072FE0
_080B25BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B25C0: .4byte 0x0000060E

	thumb_func_start sub_080B25C4
sub_080B25C4: @ 0x080B25C4
	push {lr}
	ldr r2, _080B25D4 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B25D4: .4byte 0x09F72120

	thumb_func_start sub_080B25D8
sub_080B25D8: @ 0x080B25D8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078700
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	bl sub_08072DD0
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r0, _080B261C @ =0x00000612
	bl sub_080707E4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B261C: .4byte 0x00000612

	thumb_func_start sub_080B2620
sub_080B2620: @ 0x080B2620
	push {lr}
	ldr r2, _080B2630 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2630: .4byte 0x09F72120

	thumb_func_start sub_080B2634
sub_080B2634: @ 0x080B2634
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x1c
	ldr r1, [r0, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r4, r1, r2
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r0, r5
	ldr r2, _080B26B8 @ =0x000003A5
	mov r8, r2
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r2, r1, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r6, sp, #0xc
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	mov r0, sp
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x18
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B26B8: .4byte 0x000003A5

	thumb_func_start sub_080B26BC
sub_080B26BC: @ 0x080B26BC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x1c
	adds r6, r0, #0
	bl nullsub_37
	movs r0, #0x95
	bl sub_08072F54
	adds r3, r0, #0
	cmp r3, #0
	beq _080B2732
	ldr r4, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	movs r0, #0xe9
	lsls r0, r0, #2
	mov r8, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0xc
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	mov r0, sp
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x18
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_080B2732:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2740
sub_080B2740: @ 0x080B2740
	push {r4, lr}
	movs r4, #0
	bl sub_08072DFC
	cmp r0, #2
	bgt _080B275A
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x1d
	bgt _080B275A
	movs r4, #1
_080B275A:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B2764
sub_080B2764: @ 0x080B2764
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B277C @ =0x0000055F
	bl sub_080707E4
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B277C: .4byte 0x0000055F

	thumb_func_start sub_080B2780
sub_080B2780: @ 0x080B2780
	push {lr}
	ldr r2, _080B2790 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2790: .4byte 0x09F72120

	thumb_func_start sub_080B2794
sub_080B2794: @ 0x080B2794
	push {r4, lr}
	adds r4, r0, #0
	bl nullsub_37
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	bl sub_08072DD0
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B27D4
sub_080B27D4: @ 0x080B27D4
	push {lr}
	ldr r2, _080B27E4 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B27E4: .4byte 0x09F72120

	thumb_func_start sub_080B27E8
sub_080B27E8: @ 0x080B27E8
	push {r4, lr}
	adds r4, r0, #0
	bl nullsub_37
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	bl sub_08072DD0
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #0xa4
	lsls r0, r0, #2
	bl sub_080707E4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2830
sub_080B2830: @ 0x080B2830
	push {lr}
	ldr r2, _080B2840 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2840: .4byte 0x09F72120

	thumb_func_start nullsub_141
nullsub_141: @ 0x080B2844
	bx lr
	.align 2, 0

	thumb_func_start sub_080B2848
sub_080B2848: @ 0x080B2848
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r7, r0, #0
	bl nullsub_37
	add r5, sp, #0x20
	movs r0, #0
	mov sl, r0
	movs r0, #0
	strh r0, [r5]
	strh r0, [r5, #2]
	bl sub_08072DFC
	adds r4, r0, #0
	adds r4, #1
	bl sub_08072DFC
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08063960
	add r0, sp, #0x24
	mov r1, sp
	bl sub_080639FC
	ldr r0, [sp, #0x24]
	strh r0, [r5]
	mov r0, sp
	movs r1, #2
	bl sub_080639B4
	ldr r0, _080B294C @ =0x0000FFE0
	strh r0, [r5, #2]
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
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
	add r2, sp, #0x28
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	strh r1, [r2, #2]
	adds r1, r5, #0
	movs r3, #0x1e
	bl sub_08072F9C
	adds r6, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #2
	bl sub_08070824
	cmp r6, #0
	beq _080B293C
	ldr r4, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	movs r3, #0xe9
	lsls r3, r3, #2
	mov sb, r3
	ldr r2, [r6, #0x1c]
	adds r0, #0x30
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r0, sp, #0x14
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl _call_via_r2
	add r6, sp, #8
	adds r0, r6, #0
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, sb
	mov r3, r8
	bl _call_via_r4
	add r1, sp, #0x2c
	mov r2, sl
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	adds r0, r6, #0
	movs r2, #1
	bl sub_080735E0
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
_080B293C:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B294C: .4byte 0x0000FFE0

	thumb_func_start sub_080B2950
sub_080B2950: @ 0x080B2950
	adds r0, #0x4c
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080B2958
sub_080B2958: @ 0x080B2958
	push {lr}
	adds r1, r0, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #1
	bne _080B296A
	adds r0, r1, #0
	bl sub_08078700
_080B296A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2970
sub_080B2970: @ 0x080B2970
	push {lr}
	ldr r2, _080B2980 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2980: .4byte 0x09F72120

	thumb_func_start sub_080B2984
sub_080B2984: @ 0x080B2984
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B29C4 @ =0x000003A5
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B29C4: .4byte 0x000003A5

	thumb_func_start sub_080B29C8
sub_080B29C8: @ 0x080B29C8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x1c
	adds r6, r0, #0
	bl nullsub_37
	ldr r0, _080B2A50 @ =0x0000055D
	bl sub_08070824
	movs r0, #0x41
	bl sub_08072F54
	adds r3, r0, #0
	cmp r3, #0
	beq _080B2A44
	ldr r4, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	movs r0, #0xe9
	lsls r0, r0, #2
	mov r8, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0xc
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	mov r0, sp
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x18
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_080B2A44:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2A50: .4byte 0x0000055D

	thumb_func_start sub_080B2A54
sub_080B2A54: @ 0x080B2A54
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r4, r0, #0
	bl sub_08072DFC
	movs r2, #0
	ldr r1, _080B2A7C @ =gUnknown_080F9548
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B2A74
	movs r2, #1
_080B2A74:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B2A7C: .4byte gUnknown_080F9548

	thumb_func_start sub_080B2A80
sub_080B2A80: @ 0x080B2A80
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B2A98 @ =0x0000044C
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2A98: .4byte 0x0000044C

	thumb_func_start sub_080B2A9C
sub_080B2A9C: @ 0x080B2A9C
	push {lr}
	ldr r2, _080B2AAC @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2AAC: .4byte 0x09F72120

	thumb_func_start sub_080B2AB0
sub_080B2AB0: @ 0x080B2AB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	bl nullsub_37
	movs r0, #0xb0
	lsls r0, r0, #1
	mov sl, r0
	mov r8, sp
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0xc]
	movs r2, #0x3b
	mov sb, r2
	mov r3, sp
	adds r3, #8
	str r3, [sp, #0x10]
_080B2ADA:
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r7, #0
	ldrsh r0, [r1, r7]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	adds r4, #0x20
	ldr r0, [r0, #0x20]
	adds r5, r0, #0
	adds r5, #0x18
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	adds r4, r4, r0
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r3, r0, #0
	adds r3, #0x20
	ldr r2, [r0, #0x20]
	adds r2, #0x40
	movs r7, #0
	ldrsh r1, [r2, r7]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	movs r1, #0
	add r0, sp, #4
	movs r2, #3
	strh r2, [r0]
	ldr r3, [sp, #0xc]
	strh r1, [r3, #2]
	mov r7, r8
	movs r2, #0
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r3, #2
	ldrsh r2, [r7, r3]
	adds r1, r1, r0
	add r0, sp, #8
	strh r1, [r0]
	ldr r7, [sp, #0x10]
	strh r2, [r7, #2]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	ldr r1, [sp, #0x10]
	bl _call_via_r2
	movs r0, #1
	bl sub_0807068C
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	cmp r1, #0
	bge _080B2ADA
	ldr r1, [r6, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	bl sub_08072FE0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2B8C
sub_080B2B8C: @ 0x080B2B8C
	push {lr}
	ldr r2, _080B2B9C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2B9C: .4byte 0x09F72120

	thumb_func_start sub_080B2BA0
sub_080B2BA0: @ 0x080B2BA0
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B2BE0 @ =0x000003A5
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2BE0: .4byte 0x000003A5

	thumb_func_start sub_080B2BE4
sub_080B2BE4: @ 0x080B2BE4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x1c
	adds r6, r0, #0
	bl nullsub_37
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08072F54
	adds r3, r0, #0
	cmp r3, #0
	beq _080B2C84
	ldr r4, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	movs r0, #0xe9
	lsls r0, r0, #2
	mov r8, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0xc
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	mov r0, sp
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x18
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_080B2C84:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2C90
sub_080B2C90: @ 0x080B2C90
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r4, r0, #0
	bl sub_08072DFC
	movs r2, #0
	ldr r1, _080B2CB8 @ =gUnknown_080F9538
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B2CB0
	movs r2, #1
_080B2CB0:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B2CB8: .4byte gUnknown_080F9538

	thumb_func_start sub_080B2CBC
sub_080B2CBC: @ 0x080B2CBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B2CD4 @ =0x0000044C
	bl sub_08070824
	adds r0, r4, #0
	bl sub_08078700
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2CD4: .4byte 0x0000044C

	thumb_func_start sub_080B2CD8
sub_080B2CD8: @ 0x080B2CD8
	push {lr}
	ldr r2, _080B2CE8 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2CE8: .4byte 0x09F72120

	thumb_func_start sub_080B2CEC
sub_080B2CEC: @ 0x080B2CEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	bl sub_08072FE0
	adds r0, r4, #0
	bl sub_080821A0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2D18
sub_080B2D18: @ 0x080B2D18
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl nullsub_37
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, #0x20
	ldr r2, [r1, #0x20]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl _call_via_r2
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B2D84 @ =0x000003D7
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2D84: .4byte 0x000003D7

	thumb_func_start sub_080B2D88
sub_080B2D88: @ 0x080B2D88
	push {lr}
	ldr r2, _080B2D98 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2D98: .4byte 0x09F72120

	thumb_func_start sub_080B2D9C
sub_080B2D9C: @ 0x080B2D9C
	push {r4, lr}
	adds r4, r0, #0
	bl nullsub_37
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	bl sub_08072DD0
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080B2DF0
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	b _080B2E06
_080B2DF0:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_080B2E06:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2E0C
sub_080B2E0C: @ 0x080B2E0C
	push {lr}
	ldr r2, _080B2E1C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2E1C: .4byte 0x09F72120

	thumb_func_start sub_080B2E20
sub_080B2E20: @ 0x080B2E20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r4, r1, #0
	movs r5, #0
	ldr r1, [r4, #0x1c]
	movs r7, #0xa8
	lsls r7, r7, #2
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B2E60
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	movs r5, #1
_080B2E60:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B2E92
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	adds r5, #1
_080B2E92:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B2EC4
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	adds r5, #1
_080B2EC4:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B2EF6
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	adds r5, #1
_080B2EF6:
	cmp r5, #0
	ble _080B2F34
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B2F30 @ =0x00000439
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	b _080B2F68
	.align 2, 0
_080B2F30: .4byte 0x00000439
_080B2F34:
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0x86
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x10
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_080B2F68:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2F70
sub_080B2F70: @ 0x080B2F70
	push {lr}
	ldr r2, _080B2F80 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2F80: .4byte 0x09F72120

	thumb_func_start sub_080B2F84
sub_080B2F84: @ 0x080B2F84
	ldr r0, _080B2F90 @ =gUnknown_080F951C
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bx lr
	.align 2, 0
_080B2F90: .4byte gUnknown_080F951C

	thumb_func_start sub_080B2F94
sub_080B2F94: @ 0x080B2F94
	movs r0, #0xd
	bx lr

	thumb_func_start sub_080B2F98
sub_080B2F98: @ 0x080B2F98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov r8, r0
	add r1, sp, #0x10
	mov sl, r1
	b _080B302E
_080B2FB2:
	movs r2, #1
	add r2, r8
	mov sb, r2
	b _080B2FF4
_080B2FBA:
	ldr r1, [r6, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	mov r4, sp
	movs r1, #0
	strb r1, [r4]
	ldr r4, [r3, #4]
	adds r1, r7, #0
	movs r3, #0x64
	bl _call_via_r4
_080B2FF4:
	ldr r4, [r7, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r4, r4, r2
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	ldr r1, [r6, #0x1c]
	adds r2, #0x18
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B2FBA
	mov r8, sb
_080B302E:
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r8, r0
	blt _080B2FB2
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B308C @ =0x00000437
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	movs r0, #0
	add r1, sp, #0x10
	strb r0, [r1]
	mov r1, sl
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B308C: .4byte 0x00000437

	thumb_func_start sub_080B3090
sub_080B3090: @ 0x080B3090
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_08078C3C
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B30D4 @ =0x00000437
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B30D4: .4byte 0x00000437

	thumb_func_start sub_080B30D8
sub_080B30D8: @ 0x080B30D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	movs r7, #0
	b _080B3126
_080B30E6:
	mov r0, r8
	ldr r4, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r4, r4, r2
	movs r0, #0
	ldrsh r5, [r4, r0]
	add r5, r8
	ldr r1, [r6, #0x1c]
	adds r2, #0x18
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B3124
	movs r0, #0
	b _080B3140
_080B3124:
	adds r7, #1
_080B3126:
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	blt _080B30E6
	movs r0, #1
_080B3140:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B314C
sub_080B314C: @ 0x080B314C
	push {lr}
	ldr r2, _080B315C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B315C: .4byte 0x09F72120

	thumb_func_start sub_080B3160
sub_080B3160: @ 0x080B3160
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov sb, r0
	adds r5, r1, #0
	movs r0, #0
	mov r8, r0
	movs r6, #0
_080B3174:
	lsls r7, r6, #1
	b _080B31A2
_080B3178:
	ldr r1, [r5, #0x1c]
	movs r2, #0xae
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	movs r2, #0
	cmp r0, #1
	bgt _080B3196
	movs r2, #1
_080B3196:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08073EE8
	movs r0, #1
	add r8, r0
_080B31A2:
	ldr r2, [r5, #0x1c]
	movs r1, #0xae
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	ldr r1, _080B3214 @ =gUnknown_080F950C
	adds r1, r7, r1
	ldrh r4, [r1]
	ldr r2, [r2, #4]
	adds r1, r4, #0
	bl _call_via_r2
	cmp r0, #0
	bgt _080B3178
	mov r2, r8
	cmp r2, #0
	bgt _080B3204
	adds r6, #1
	cmp r6, #7
	bls _080B3174
	mov r0, sb
	ldr r3, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0x86
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	add r1, sb
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_080B3204:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3214: .4byte gUnknown_080F950C

	thumb_func_start sub_080B3218
sub_080B3218: @ 0x080B3218
	push {lr}
	ldr r2, _080B3228 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3228: .4byte 0x09F72120

	thumb_func_start sub_080B322C
sub_080B322C: @ 0x080B322C
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B326C @ =0x0000042D
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B326C: .4byte 0x0000042D

	thumb_func_start sub_080B3270
sub_080B3270: @ 0x080B3270
	push {lr}
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x23
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B32A0
sub_080B32A0: @ 0x080B32A0
	push {lr}
	ldr r2, _080B32B0 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B32B0: .4byte 0x09F72120

	thumb_func_start sub_080B32B4
sub_080B32B4: @ 0x080B32B4
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	movs r1, #0x12
	movs r2, #1
	bl sub_08073E3C
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #1
	bl sub_08073E3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B32D4
sub_080B32D4: @ 0x080B32D4
	push {lr}
	ldr r2, _080B32E4 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B32E4: .4byte 0x09F72120

	thumb_func_start sub_080B32E8
sub_080B32E8: @ 0x080B32E8
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #1
	bl sub_08073E3C
	adds r0, r4, #0
	movs r1, #0x1d
	movs r2, #1
	bl sub_08073E3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3308
sub_080B3308: @ 0x080B3308
	push {lr}
	ldr r2, _080B3318 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3318: .4byte 0x09F72120

	thumb_func_start sub_080B331C
sub_080B331C: @ 0x080B331C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x27
	bgt _080B334C
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	movs r2, #5
	b _080B338A
_080B334C:
	cmp r0, #0x45
	bgt _080B336C
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	movs r2, #2
	b _080B338A
_080B336C:
	cmp r0, #0x54
	bgt _080B3392
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	movs r2, #4
_080B338A:
	movs r3, #0x64
	bl _call_via_r4
	b _080B33C4
_080B3392:
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B33CC @ =0x00000437
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0x10
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
_080B33C4:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B33CC: .4byte 0x00000437

	thumb_func_start sub_080B33D0
sub_080B33D0: @ 0x080B33D0
	push {lr}
	ldr r2, _080B33E0 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B33E0: .4byte 0x09F72120

	thumb_func_start sub_080B33E4
sub_080B33E4: @ 0x080B33E4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x9e
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	mov r8, r3
	add r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r5, [r2, #4]
	adds r1, r4, #0
	movs r2, #0x1a
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	movs r3, #0
	mov sb, r3
	strb r3, [r2]
	ldr r5, [r1, #4]
	adds r1, r4, #0
	movs r2, #0x1a
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r6, r6, r0
	mov r0, sp
	mov r3, sb
	strb r3, [r0]
	ldr r5, [r1, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x1a
	movs r3, #0x64
	bl _call_via_r5
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3498
sub_080B3498: @ 0x080B3498
	push {lr}
	ldr r2, _080B34A8 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B34A8: .4byte 0x09F72120

	thumb_func_start sub_080B34AC
sub_080B34AC: @ 0x080B34AC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x9e
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	mov r8, r3
	add r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r5, [r2, #4]
	adds r1, r4, #0
	movs r2, #0x19
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	movs r3, #0
	mov sb, r3
	strb r3, [r2]
	ldr r5, [r1, #4]
	adds r1, r4, #0
	movs r2, #0x19
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r6, r6, r0
	mov r0, sp
	mov r3, sb
	strb r3, [r0]
	ldr r5, [r1, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x19
	movs r3, #0x64
	bl _call_via_r5
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3560
sub_080B3560: @ 0x080B3560
	push {lr}
	ldr r2, _080B3570 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3570: .4byte 0x09F72120

	thumb_func_start sub_080B3574
sub_080B3574: @ 0x080B3574
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x9e
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	mov r8, r3
	add r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r5, [r2, #4]
	adds r1, r4, #0
	movs r2, #0x17
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	movs r3, #0
	mov sb, r3
	strb r3, [r2]
	ldr r5, [r1, #4]
	adds r1, r4, #0
	movs r2, #0x17
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r6, r6, r0
	mov r0, sp
	mov r3, sb
	strb r3, [r0]
	ldr r5, [r1, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x17
	movs r3, #0x64
	bl _call_via_r5
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3628
sub_080B3628: @ 0x080B3628
	push {lr}
	ldr r2, _080B3638 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3638: .4byte 0x09F72120

	thumb_func_start sub_080B363C
sub_080B363C: @ 0x080B363C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r0, r1, #0
	bl sub_080729B0
	adds r6, r0, #0
	cmp r6, #0
	bne _080B3650
	b _080B3792
_080B3650:
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x31
	bgt _080B3678
	ldr r2, [r5, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #5
	b _080B36B6
_080B3678:
	cmp r0, #0x39
	bgt _080B3698
	ldr r2, [r5, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #2
	b _080B36B6
_080B3698:
	cmp r0, #0x40
	bgt _080B36BE
	ldr r2, [r5, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #4
_080B36B6:
	movs r3, #0x64
	bl _call_via_r4
	b _080B3792
_080B36BE:
	cmp r0, #0x45
	bgt _080B3760
	ldr r1, [r5, #0x1c]
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r6, #0
	bl sub_080730FC
	ldr r3, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B375C @ =0x00000483
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x10
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	b _080B3792
	.align 2, 0
_080B375C: .4byte 0x00000483
_080B3760:
	ldr r3, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B379C @ =0x00000437
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x14
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
_080B3792:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B379C: .4byte 0x00000437

	thumb_func_start sub_080B37A0
sub_080B37A0: @ 0x080B37A0
	push {lr}
	ldr r2, _080B37B0 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B37B0: .4byte 0x09F72120

	thumb_func_start sub_080B37B4
sub_080B37B4: @ 0x080B37B4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x9e
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	mov r8, r3
	add r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r5, [r2, #4]
	adds r1, r4, #0
	movs r2, #0x16
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	movs r3, #0
	mov sb, r3
	strb r3, [r2]
	ldr r5, [r1, #4]
	adds r1, r4, #0
	movs r2, #0x16
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r6, r6, r0
	mov r0, sp
	mov r3, sb
	strb r3, [r0]
	ldr r5, [r1, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x16
	movs r3, #0x64
	bl _call_via_r5
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3868
sub_080B3868: @ 0x080B3868
	push {lr}
	ldr r2, _080B3878 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3878: .4byte 0x09F72120

	thumb_func_start sub_080B387C
sub_080B387C: @ 0x080B387C
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B38BC @ =0x0000049A
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B38BC: .4byte 0x0000049A

	thumb_func_start sub_080B38C0
sub_080B38C0: @ 0x080B38C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _080B38F8 @ =0x0000055E
	bl sub_080707E4
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
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
	movs r2, #0x27
	movs r3, #0x64
	bl _call_via_r5
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B38F8: .4byte 0x0000055E

	thumb_func_start sub_080B38FC
sub_080B38FC: @ 0x080B38FC
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08078BB0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B3924
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x27
	bl _call_via_r2
	b _080B3926
_080B3924:
	movs r0, #1
_080B3926:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080B392C
sub_080B392C: @ 0x080B392C
	push {lr}
	ldr r2, _080B393C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B393C: .4byte 0x09F72120

	thumb_func_start sub_080B3940
sub_080B3940: @ 0x080B3940
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	bl sub_08072FE0
	adds r0, r4, #0
	bl sub_080821A0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B396C
sub_080B396C: @ 0x080B396C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
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
	subs r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_08073C4C
	ldr r0, _080B39EC @ =0x0000060F
	bl sub_080707E4
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B39F0 @ =0x0000043C
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B39EC: .4byte 0x0000060F
_080B39F0: .4byte 0x0000043C

	thumb_func_start sub_080B39F4
sub_080B39F4: @ 0x080B39F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078700
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, #0x20
	ldr r2, [r1, #0x20]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3A2C
sub_080B3A2C: @ 0x080B3A2C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl nullsub_38
	movs r0, #0x83
	bl sub_08072EE4
	adds r5, r0, #0
	cmp r5, #0
	beq _080B3A6A
	ldr r1, [r4, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080B3A6A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3A70
sub_080B3A70: @ 0x080B3A70
	push {lr}
	ldr r2, _080B3A80 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3A80: .4byte 0x09F72120

	thumb_func_start sub_080B3A84
sub_080B3A84: @ 0x080B3A84
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x90
	adds r1, r6, #0
	bl sub_080730FC
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3AC4
sub_080B3AC4: @ 0x080B3AC4
	push {lr}
	ldr r2, _080B3AD4 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3AD4: .4byte 0x09F72120

	thumb_func_start sub_080B3AD8
sub_080B3AD8: @ 0x080B3AD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080B3AEC @ =gUnknown_02004F14
	movs r2, #9
	bl sub_0806E238
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B3AEC: .4byte gUnknown_02004F14

	thumb_func_start sub_080B3AF0
sub_080B3AF0: @ 0x080B3AF0
	push {lr}
	ldr r2, _080B3B00 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3B00: .4byte 0x09F72120

	thumb_func_start sub_080B3B04
sub_080B3B04: @ 0x080B3B04
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B3B44 @ =0x0000042E
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3B44: .4byte 0x0000042E

	thumb_func_start sub_080B3B48
sub_080B3B48: @ 0x080B3B48
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08078784
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080787CC
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start nullsub_142
nullsub_142: @ 0x080B3B60
	bx lr
	.align 2, 0

	thumb_func_start sub_080B3B64
sub_080B3B64: @ 0x080B3B64
	push {lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	movs r1, #0
	cmp r0, #0x45
	bgt _080B3B76
	movs r1, #1
_080B3B76:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080B3B7C
sub_080B3B7C: @ 0x080B3B7C
	push {lr}
	ldr r2, _080B3B8C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3B8C: .4byte 0x09F72120

	thumb_func_start sub_080B3B90
sub_080B3B90: @ 0x080B3B90
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_08078D1C
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B3BD4 @ =0x00000437
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3BD4: .4byte 0x00000437

	thumb_func_start sub_080B3BD8
sub_080B3BD8: @ 0x080B3BD8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08079FD0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x4c]
	movs r2, #1
	bl sub_08073D98
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B3C3C @ =0x00000434
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3C3C: .4byte 0x00000434

	thumb_func_start sub_080B3C40
sub_080B3C40: @ 0x080B3C40
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	mov r8, r1
	ldr r0, [r4, #0x1c]
	adds r6, r0, #0
	adds r6, #0xe0
	movs r1, #0
	ldrsh r5, [r6, r1]
	adds r5, r4, r5
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [r6, #4]
	adds r0, r5, #0
	mov r2, r8
	bl _call_via_r3
	adds r1, r0, #0
	mov r0, r8
	movs r2, #1
	bl sub_08073CF0
	ldr r1, [r4, #0x4c]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	ldr r0, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r3, [r0, #4]
	adds r0, r4, #0
	mov r1, r8
	movs r2, #0
	bl _call_via_r3
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3CA8
sub_080B3CA8: @ 0x080B3CA8
	push {lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	movs r1, #0
	cmp r0, #0x45
	bgt _080B3CBA
	movs r1, #1
_080B3CBA:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080B3CC0
sub_080B3CC0: @ 0x080B3CC0
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B3D00 @ =0x00000435
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3D00: .4byte 0x00000435

	thumb_func_start sub_080B3D04
sub_080B3D04: @ 0x080B3D04
	push {lr}
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0
	cmp r0, #0
	bgt _080B3D24
	movs r1, #1
_080B3D24:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B3D2C
sub_080B3D2C: @ 0x080B3D2C
	push {lr}
	ldr r2, _080B3D3C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3D3C: .4byte 0x09F72120

	thumb_func_start sub_080B3D40
sub_080B3D40: @ 0x080B3D40
	ldr r0, _080B3D44 @ =0x0000069E
	bx lr
	.align 2, 0
_080B3D44: .4byte 0x0000069E

	thumb_func_start sub_080B3D48
sub_080B3D48: @ 0x080B3D48
	ldr r0, _080B3D4C @ =0x0000069E
	bx lr
	.align 2, 0
_080B3D4C: .4byte 0x0000069E

	thumb_func_start sub_080B3D50
sub_080B3D50: @ 0x080B3D50
	ldr r0, _080B3D54 @ =0x0000069E
	bx lr
	.align 2, 0
_080B3D54: .4byte 0x0000069E

	thumb_func_start sub_080B3D58
sub_080B3D58: @ 0x080B3D58
	push {lr}
	ldr r2, _080B3D68 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3D68: .4byte 0x09F72120

	thumb_func_start sub_080B3D6C
sub_080B3D6C: @ 0x080B3D6C
	push {r4, lr}
	adds r0, r1, #0
	bl sub_080729B0
	adds r4, r0, #0
	cmp r4, #0
	beq _080B3DA6
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_080B3DA6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3DAC
sub_080B3DAC: @ 0x080B3DAC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08078784
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x92
	adds r1, r6, #0
	bl sub_080730FC
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3DEC
sub_080B3DEC: @ 0x080B3DEC
	push {lr}
	ldr r2, _080B3DFC @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3DFC: .4byte 0x09F72120

	thumb_func_start sub_080B3E00
sub_080B3E00: @ 0x080B3E00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xbc
	str r0, [sp, #0xb4]
	adds r4, r1, #0
	bl sub_08079018
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x3b
	ble _080B3E22
	b _080B4028
_080B3E22:
	adds r0, r4, #0
	bl sub_080729B0
	adds r7, r0, #0
	cmp r7, #0
	bne _080B3E30
	b _080B4028
_080B3E30:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r6, #0
	b _080B3EFE
_080B3E3C:
	add r4, sp, #0xc
	ldr r1, [r7, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_080649AC
	adds r0, r4, #0
	bl sub_08064F98
	mov sl, r4
	cmp r0, #4
	beq _080B3E7E
	mov r0, sl
	bl sub_08064F98
	adds r3, r6, #1
	mov r8, r3
	cmp r0, #6
	bne _080B3EF4
_080B3E7E:
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	add r1, sp, #0xac
	strh r0, [r1]
	mov r5, sp
	mov sb, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	adds r6, #1
	mov r8, r6
	cmp r0, r4
	bge _080B3EE2
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _080B3EB0
	adds r1, r0, #0
_080B3EB0:
	adds r4, r1, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080B3ED4
	adds r1, r0, #0
_080B3EC6:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080B3EC6
_080B3ED4:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080B3EDE
	bl __builtin_vec_delete
_080B3EDE:
	str r4, [r5]
	str r6, [r5, #8]
_080B3EE2:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sb
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080B3EF4:
	mov r0, sl
	movs r1, #2
	bl sub_080649E8
	mov r6, r8
_080B3EFE:
	ldr r1, [r7, #0x1c]
	movs r4, #0x83
	lsls r4, r4, #3
	adds r1, r1, r4
	movs r5, #0
	ldrsh r0, [r1, r5]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _080B3E3C
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _080B3F1E
	b _080B401E
_080B3F1E:
	mov r6, sp
	add r1, sp, #0xc
	mov sl, r1
	add r2, sp, #0x18
	mov r8, r2
	add r3, sp, #0x5c
	mov sb, r3
	mov r4, sp
	adds r4, #0xb0
	str r4, [sp, #0xb8]
	cmp r0, #0
	ble _080B3F66
	adds r5, r0, #0
_080B3F38:
	ldr r1, [r6, #4]
	subs r1, #1
	movs r0, #0
	bl sub_08069454
	adds r4, r0, #0
	ldr r1, [r6, #4]
	subs r1, #1
	movs r0, #0
	bl sub_08069454
	ldr r1, [r6, #8]
	lsls r4, r4, #1
	adds r4, r4, r1
	ldrh r2, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4]
	strh r2, [r0]
	subs r5, #1
	cmp r5, #0
	bne _080B3F38
_080B3F66:
	mov r0, sl
	bl sub_0806E274
	ldr r5, [sp, #0xb4]
	ldr r3, [r5, #0x1c]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B4038 @ =0x0000044F
	mov r0, r8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	mov r0, sl
	mov r1, r8
	bl sub_0806E374
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	ldr r0, [sp, #8]
	ldrh r1, [r0]
	mov r0, sb
	adds r2, r7, #0
	movs r3, #0
	bl sub_080649AC
	mov r0, r8
	mov r1, sb
	bl sub_08064B30
	mov r0, sl
	mov r1, r8
	bl sub_0806E374
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	mov r0, sb
	movs r1, #2
	bl sub_080649E8
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B403C @ =0x00000373
	mov r0, r8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	mov r0, sl
	mov r1, r8
	bl sub_0806E374
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	ldr r2, [r7, #0x1c]
	movs r3, #0x81
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r0, r7, r0
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r0, #0
	add r1, sp, #0xb0
	strb r0, [r1]
	ldr r5, [sp, #0xb8]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, sl
	ldr r1, [sp, #0xb8]
	movs r2, #1
	bl sub_080735E0
	mov r0, sl
	movs r1, #2
	bl sub_0806E308
_080B401E:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080B4028
	bl __builtin_vec_delete
_080B4028:
	add sp, #0xbc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B4038: .4byte 0x0000044F
_080B403C: .4byte 0x00000373

	thumb_func_start sub_080B4040
sub_080B4040: @ 0x080B4040
	push {lr}
	ldr r2, _080B4050 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4050: .4byte 0x09F72120

	thumb_func_start sub_080B4054
sub_080B4054: @ 0x080B4054
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	ble _080B4086
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, #0x20
	ldr r2, [r1, #0x20]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #1
	bl _call_via_r2
_080B4086:
	adds r0, r4, #0
	bl sub_080821A0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B4094
sub_080B4094: @ 0x080B4094
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bgt _080B40D0
	adds r0, r4, #0
	bl sub_08078700
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, #0x20
	ldr r2, [r1, #0x20]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl _call_via_r2
	b _080B4102
_080B40D0:
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B410C @ =0x0000040B
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_080B4102:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B410C: .4byte 0x0000040B

	thumb_func_start sub_080B4110
sub_080B4110: @ 0x080B4110
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bgt _080B4120
	adds r0, r1, #0
	bl sub_0808213C
_080B4120:
	pop {r0}
	bx r0

	thumb_func_start sub_080B4124
sub_080B4124: @ 0x080B4124
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	movs r4, #0
	str r4, [r6, #0x4c]
	bl sub_08082088
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B4144
	movs r0, #0
	b _080B4250
_080B4144:
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r7, #0
	b _080B41E2
_080B414E:
	ldr r1, [r6, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	str r0, [sp, #0xc]
	mov r5, sp
	add r0, sp, #0xc
	mov r8, r0
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	adds r7, #1
	mov sb, r7
	cmp r0, r4
	bge _080B41B2
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _080B4184
	adds r1, r0, #0
_080B4184:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [sp, #8]
	adds r2, r7, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080B41A4
	adds r1, r0, #0
_080B419A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080B419A
_080B41A4:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080B41AE
	bl __builtin_vec_delete
_080B41AE:
	str r4, [r5]
	str r7, [r5, #8]
_080B41B2:
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	adds r3, r0, #4
	lsls r1, r2, #2
	subs r1, #4
	adds r4, r0, r1
	adds r3, r3, r1
	adds r7, r0, #0
	cmp r2, #0
	ble _080B41D6
	adds r1, r2, #0
_080B41C8:
	ldr r0, [r4]
	str r0, [r3]
	subs r4, #4
	subs r3, #4
	subs r1, #1
	cmp r1, #0
	bne _080B41C8
_080B41D6:
	mov r1, r8
	ldr r0, [r1]
	str r0, [r7]
	adds r0, r2, #1
	str r0, [r5, #4]
	mov r7, sb
_080B41E2:
	ldr r1, [r6, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	blt _080B414E
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r4, #0
	b _080B4230
_080B4212:
	ldr r3, [r6, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	lsls r2, r4, #2
	ldr r1, [sp, #8]
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [r3, #4]
	bl _call_via_r2
	adds r4, #1
_080B4230:
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _080B4212
	ldr r0, [r6, #0x4c]
	adds r0, #1
	str r0, [r6, #0x4c]
	adds r0, r6, #0
	bl sub_08082088
	adds r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080B424E
	bl __builtin_vec_delete
_080B424E:
	adds r0, r4, #0
_080B4250:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B4260
sub_080B4260: @ 0x080B4260
	push {lr}
	ldr r2, _080B4270 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4270: .4byte 0x09F72120

	thumb_func_start sub_080B4274
sub_080B4274: @ 0x080B4274
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08073270
	adds r0, r4, #0
	bl sub_080821A0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4288
sub_080B4288: @ 0x080B4288
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #1
	bne _080B42D0
	ldr r1, [r5, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r6, #0
	bl sub_08073198
	b _080B4308
_080B42D0:
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r6, #0
	bl sub_08073198
_080B4308:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B4310
sub_080B4310: @ 0x080B4310
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08079018
	ldr r1, [r4, #0x1c]
	movs r6, #0xcc
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080B43FA
	movs r0, #0x18
	bl sub_0807068C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08079018
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080B43FA
	movs r0, #0xc
	bl sub_0807068C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08079018
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080B43FA
	movs r0, #0xc
	bl sub_0807068C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08079018
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080B43FA
	movs r0, #0x18
	bl sub_0807068C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08079018
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080B43FA
	movs r0, #0x30
	bl sub_0807068C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08079018
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080B43FA
	movs r0, #0x18
	bl sub_0807068C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08079018
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080B43FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4400
sub_080B4400: @ 0x080B4400
	push {lr}
	ldr r2, _080B4410 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4410: .4byte 0x09F72120

	thumb_func_start sub_080B4414
sub_080B4414: @ 0x080B4414
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, [r5, #0x4c]
	bl sub_08072EA8
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0807067C
	bl sub_08072EC4
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_08073198
	ldr r0, [r4, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080707E4
	bl sub_08073270
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08079018
	ldr r0, [r5, #0x4c]
	adds r0, #1
	str r0, [r5, #0x4c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4484
sub_080B4484: @ 0x080B4484
	push {lr}
	ldr r2, _080B4494 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4494: .4byte 0x09F72120

	thumb_func_start sub_080B4498
sub_080B4498: @ 0x080B4498
	movs r0, #0
	bx lr

	thumb_func_start sub_080B449C
sub_080B449C: @ 0x080B449C
	movs r0, #0
	bx lr

	thumb_func_start sub_080B44A0
sub_080B44A0: @ 0x080B44A0
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	bl sub_08072E18
	str r0, [sp]
	movs r0, #1
	bl sub_08072E18
	str r0, [sp, #4]
	movs r0, #0
	bl sub_08072E18
	str r0, [sp, #8]
	movs r0, #2
	bl sub_08072E18
	str r0, [sp, #0xc]
	ldr r1, [r4, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r4, #0x4c]
	lsls r1, r1, #2
	add r1, sp
	ldr r2, [r1]
	adds r1, r2, #0
	bl sub_08073198
	ldr r0, [r4, #0x4c]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r3, #0x82
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080707E4
	bl sub_08073270
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08079018
	ldr r0, [r4, #0x4c]
	adds r0, #1
	str r0, [r4, #0x4c]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B452C
sub_080B452C: @ 0x080B452C
	push {lr}
	ldr r2, _080B453C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B453C: .4byte 0x09F72120

	thumb_func_start sub_080B4540
sub_080B4540: @ 0x080B4540
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08079018
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B4584
sub_080B4584: @ 0x080B4584
	push {lr}
	ldr r2, _080B4594 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4594: .4byte 0x09F72120

	thumb_func_start sub_080B4598
sub_080B4598: @ 0x080B4598
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #2
_080B45A0:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080787CC
	subs r4, #1
	cmp r4, #0
	bge _080B45A0
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B45B4
sub_080B45B4: @ 0x080B45B4
	push {lr}
	ldr r2, _080B45C4 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B45C4: .4byte 0x09F72120

	thumb_func_start sub_080B45C8
sub_080B45C8: @ 0x080B45C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080787CC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080787CC
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B45E0
sub_080B45E0: @ 0x080B45E0
	push {lr}
	ldr r2, _080B45F0 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B45F0: .4byte 0x09F72120

	thumb_func_start sub_080B45F4
sub_080B45F4: @ 0x080B45F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	adds r2, r0, #0
	cmp r2, #0
	beq _080B4632
	ldr r1, [r2, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r0, r4, #0
	bl sub_080821A0
_080B4632:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4638
sub_080B4638: @ 0x080B4638
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r7, #0xc4
	lsls r7, r7, #1
	b _080B467C
_080B4644:
	ldr r1, [r5, #0x1c]
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, r1, r7
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r2, r0, #0
	movs r0, #0x95
	adds r1, r4, #0
	bl sub_08073198
	movs r0, #0x14
	bl sub_0807068C
	adds r6, #1
_080B467C:
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _080B4644
	bl sub_08073270
	ldr r1, [r5, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	adds r2, r0, #0
	cmp r2, #0
	beq _080B4714
	ldr r1, [r2, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #0x1e
	bl sub_0807068C
	movs r0, #0xc2
	lsls r0, r0, #3
	bl sub_08070824
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0xb6
	adds r1, r4, #0
	bl sub_080730FC
	adds r0, r5, #0
	bl sub_08078784
_080B4714:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B471C
sub_080B471C: @ 0x080B471C
	push {lr}
	ldr r2, _080B472C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B472C: .4byte 0x09F72120

	thumb_func_start sub_080B4730
sub_080B4730: @ 0x080B4730
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	adds r4, r0, #0
	cmp r4, #0
	beq _080B47BE
	adds r5, r4, #0
	adds r5, #0x20
	add r6, sp, #8
	b _080B4796
_080B475C:
	mov r2, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #2]
	ldr r2, [r4, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	str r0, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #4
	mov r1, sp
	strh r0, [r1]
	ldr r1, [r4, #0x20]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0x1c]
	mov r1, sp
	bl _call_via_r2
_080B4796:
	ldr r2, [r4, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	ldr r1, _080B47C8 @ =0x010F0000
	cmp r0, r1
	ble _080B475C
	adds r0, r4, #0
	bl sub_08072FE0
	adds r0, r7, #0
	bl sub_080821A0
_080B47BE:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B47C8: .4byte 0x010F0000

	thumb_func_start sub_080B47CC
sub_080B47CC: @ 0x080B47CC
	push {lr}
	ldr r2, _080B47DC @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B47DC: .4byte 0x09F72120

	thumb_func_start sub_080B47E0
sub_080B47E0: @ 0x080B47E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	bl sub_08072FE0
	adds r0, r4, #0
	bl sub_080821A0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B480C
sub_080B480C: @ 0x080B480C
	push {lr}
	ldr r2, _080B481C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B481C: .4byte 0x09F72120

	thumb_func_start sub_080B4820
sub_080B4820: @ 0x080B4820
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_08078D4C
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B4864 @ =0x0000045B
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B4864: .4byte 0x0000045B

	thumb_func_start sub_080B4868
sub_080B4868: @ 0x080B4868
	push {lr}
	ldr r2, _080B4878 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4878: .4byte 0x09F72120

	thumb_func_start sub_080B487C
sub_080B487C: @ 0x080B487C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	bl sub_08072FE0
	adds r0, r4, #0
	bl sub_080821A0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B48A8
sub_080B48A8: @ 0x080B48A8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_08078D4C
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B48EC @ =0x00000493
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B48EC: .4byte 0x00000493

	thumb_func_start sub_080B48F0
sub_080B48F0: @ 0x080B48F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078784
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, #0x20
	ldr r2, [r1, #0x20]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4928
sub_080B4928: @ 0x080B4928
	push {lr}
	ldr r2, _080B4938 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4938: .4byte 0x09F72120

	thumb_func_start sub_080B493C
sub_080B493C: @ 0x080B493C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	ldr r0, _080B49B8 @ =0x00000615
	bl sub_080707E4
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B49BC @ =0x00000416
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	bl sub_080821A0
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B49B8: .4byte 0x00000615
_080B49BC: .4byte 0x00000416

	thumb_func_start sub_080B49C0
sub_080B49C0: @ 0x080B49C0
	push {lr}
	ldr r2, _080B49D0 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B49D0: .4byte 0x09F72120

	thumb_func_start sub_080B49D4
sub_080B49D4: @ 0x080B49D4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_08078D1C
	ldr r2, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xea
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4A18
sub_080B4A18: @ 0x080B4A18
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08079FD0
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	movs r0, #0x7c
	adds r2, r5, #0
	bl sub_080730FC
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4A4C
sub_080B4A4C: @ 0x080B4A4C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08078D4C
	ldr r0, [r4, #0x1c]
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	subs r5, r5, r0
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r5, #0
	movs r2, #1
	bl sub_08073C4C
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0x87
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4AE8
sub_080B4AE8: @ 0x080B4AE8
	push {lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	movs r1, #0
	cmp r0, #0x4f
	bgt _080B4AFA
	movs r1, #1
_080B4AFA:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080B4B00
sub_080B4B00: @ 0x080B4B00
	push {lr}
	ldr r2, _080B4B10 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4B10: .4byte 0x09F72120

	thumb_func_start sub_080B4B14
sub_080B4B14: @ 0x080B4B14
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #5
_080B4B1C:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080787CC
	subs r4, #1
	cmp r4, #0
	bge _080B4B1C
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4B30
sub_080B4B30: @ 0x080B4B30
	push {lr}
	ldr r2, _080B4B40 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4B40: .4byte 0x09F72120

	thumb_func_start sub_080B4B44
sub_080B4B44: @ 0x080B4B44
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r1, #0
	movs r5, #0
	mov r4, sp
	movs r7, #0x80
	lsls r7, r7, #1
_080B4B52:
	strh r7, [r4]
	strh r7, [r4, #2]
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0x40
	bl sub_080694C8
	subs r0, r7, r0
	strh r0, [r4]
	strh r0, [r4, #2]
	ldr r1, [r6, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	movs r0, #1
	bl sub_0807068C
	adds r5, #1
	cmp r5, #8
	ble _080B4B52
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4B90
sub_080B4B90: @ 0x080B4B90
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08073198
	movs r0, #5
	bl sub_0807068C
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r6, r1, r0
	movs r2, #0
	ldrsh r5, [r6, r2]
	adds r5, r4, r5
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r1, [r1, #4]
	adds r0, r4, #0
	bl _call_via_r1
	bl sub_08072DD0
	adds r1, r0, #0
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r0, #0x28
	bl sub_0807068C
	bl sub_08073270
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4C30
sub_080B4C30: @ 0x080B4C30
	push {lr}
	ldr r2, _080B4C40 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4C40: .4byte 0x09F72120

	thumb_func_start sub_080B4C44
sub_080B4C44: @ 0x080B4C44
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072DD0
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	adds r0, r4, #0
	bl sub_08078784
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B4C84
sub_080B4C84: @ 0x080B4C84
	push {lr}
	ldr r2, _080B4C94 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4C94: .4byte 0x09F72120

	thumb_func_start sub_080B4C98
sub_080B4C98: @ 0x080B4C98
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_08078D1C
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B4CDC @ =0x00000437
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B4CDC: .4byte 0x00000437

	thumb_func_start sub_080B4CE0
sub_080B4CE0: @ 0x080B4CE0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08079FD0
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x7c
	adds r1, r6, #0
	bl sub_080730FC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x4c]
	movs r2, #1
	bl sub_08073D98
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B4D70 @ =0x00000434
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B4D70: .4byte 0x00000434

	thumb_func_start sub_080B4D74
sub_080B4D74: @ 0x080B4D74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08070660
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #1
	bl sub_08073CF0
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r3, [r0, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl _call_via_r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4DD8
sub_080B4DD8: @ 0x080B4DD8
	push {lr}
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	movs r1, #0
	cmp r0, #0x4f
	bgt _080B4DEA
	movs r1, #1
_080B4DEA:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080B4DF0
sub_080B4DF0: @ 0x080B4DF0
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080B4E30 @ =0x00000435
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B4E30: .4byte 0x00000435

	thumb_func_start sub_080B4E34
sub_080B4E34: @ 0x080B4E34
	push {lr}
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0
	cmp r0, #0
	bgt _080B4E54
	movs r1, #1
_080B4E54:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B4E5C
sub_080B4E5C: @ 0x080B4E5C
	push {lr}
	ldr r2, _080B4E6C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4E6C: .4byte 0x09F72120

	thumb_func_start sub_080B4E70
sub_080B4E70: @ 0x080B4E70
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08079FD0
	ldr r1, [r4, #0x1c]
	movs r6, #0xb0
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r8, r0
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x7c
	mov r1, r8
	bl sub_080730FC
	ldr r0, [r5, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r5, r5, r1
	ldr r1, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r1
	ldr r1, [r4, #0x4c]
	subs r1, r1, r0
	str r1, [r4, #0x4c]
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x4c]
	movs r2, #1
	bl sub_08073C4C
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0x87
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4F28
sub_080B4F28: @ 0x080B4F28
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08078D4C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B4F54
sub_080B4F54: @ 0x080B4F54
	push {lr}
	ldr r2, _080B4F64 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4F64: .4byte 0x09F72120

	thumb_func_start sub_080B4F68
sub_080B4F68: @ 0x080B4F68
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xc2
	lsls r0, r0, #3
	bl sub_08070824
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0xb6
	adds r1, r6, #0
	bl sub_080730FC
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4FB0
sub_080B4FB0: @ 0x080B4FB0
	push {lr}
	ldr r2, _080B4FC0 @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4FC0: .4byte 0x09F72120

	thumb_func_start sub_080B4FC4
sub_080B4FC4: @ 0x080B4FC4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808234C
	adds r5, r0, #0
	cmp r5, #0x63
	bgt _080B5042
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
	bne _080B5042
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
	beq _080B5034
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
	bne _080B5042
_080B5034:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r5, r0, #0
_080B5042:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B504C
sub_080B504C: @ 0x080B504C
	push {lr}
	ldr r2, _080B505C @ =0x09F72120
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B505C: .4byte 0x09F72120

	thumb_func_start sub_080B5060
sub_080B5060: @ 0x080B5060
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B56C0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5080
sub_080B5080: @ 0x080B5080
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B56DC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B50A0
sub_080B50A0: @ 0x080B50A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B56F8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B50C0
sub_080B50C0: @ 0x080B50C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B5714
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B50E0
sub_080B50E0: @ 0x080B50E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B57D0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5100
sub_080B5100: @ 0x080B5100
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B588C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5120
sub_080B5120: @ 0x080B5120
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B5948
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5140
sub_080B5140: @ 0x080B5140
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B5A04
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5160
sub_080B5160: @ 0x080B5160
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B5AC0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5180
sub_080B5180: @ 0x080B5180
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B5B7C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B51A0
sub_080B51A0: @ 0x080B51A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B5C38
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B51C0
sub_080B51C0: @ 0x080B51C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B5CF4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B51E0
sub_080B51E0: @ 0x080B51E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B5DB0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5200
sub_080B5200: @ 0x080B5200
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B5E6C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5220
sub_080B5220: @ 0x080B5220
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B5F28
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5240
sub_080B5240: @ 0x080B5240
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B5FE4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5260
sub_080B5260: @ 0x080B5260
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B60A0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5280
sub_080B5280: @ 0x080B5280
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B615C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B52A0
sub_080B52A0: @ 0x080B52A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6218
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B52C0
sub_080B52C0: @ 0x080B52C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B62D4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B52E0
sub_080B52E0: @ 0x080B52E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6390
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5300
sub_080B5300: @ 0x080B5300
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B644C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5320
sub_080B5320: @ 0x080B5320
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6508
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5340
sub_080B5340: @ 0x080B5340
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B65C4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5360
sub_080B5360: @ 0x080B5360
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6680
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5380
sub_080B5380: @ 0x080B5380
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x60
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B673C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B53A0
sub_080B53A0: @ 0x080B53A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6800
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B53C0
sub_080B53C0: @ 0x080B53C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x5c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B68BC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B53E0
sub_080B53E0: @ 0x080B53E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6978
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5400
sub_080B5400: @ 0x080B5400
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B699C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5420
sub_080B5420: @ 0x080B5420
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B69B8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5440
sub_080B5440: @ 0x080B5440
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B69E4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5460
sub_080B5460: @ 0x080B5460
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6A10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5480
sub_080B5480: @ 0x080B5480
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6A2C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B54A0
sub_080B54A0: @ 0x080B54A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6A48
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B54C0
sub_080B54C0: @ 0x080B54C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6A64
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B54E0
sub_080B54E0: @ 0x080B54E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6A80
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5500
sub_080B5500: @ 0x080B5500
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6A9C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5520
sub_080B5520: @ 0x080B5520
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6AC0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5540
sub_080B5540: @ 0x080B5540
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6AEC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5560
sub_080B5560: @ 0x080B5560
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6B10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5580
sub_080B5580: @ 0x080B5580
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6B2C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B55A0
sub_080B55A0: @ 0x080B55A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x38
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6B48
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B55C0
sub_080B55C0: @ 0x080B55C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6B70
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B55E0
sub_080B55E0: @ 0x080B55E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6B8C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5600
sub_080B5600: @ 0x080B5600
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6BA8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5620
sub_080B5620: @ 0x080B5620
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6BC4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5640
sub_080B5640: @ 0x080B5640
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6BE0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5660
sub_080B5660: @ 0x080B5660
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6BFC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B5680
sub_080B5680: @ 0x080B5680
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6C28
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B56A0
sub_080B56A0: @ 0x080B56A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x34
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080B6C44
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B56C0
sub_080B56C0: @ 0x080B56C0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B56D8 @ =0x09F723D0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B56D8: .4byte 0x09F723D0

	thumb_func_start sub_080B56DC
sub_080B56DC: @ 0x080B56DC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B56F4 @ =0x09F72518
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B56F4: .4byte 0x09F72518

	thumb_func_start sub_080B56F8
sub_080B56F8: @ 0x080B56F8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B5710 @ =0x09F72660
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B5710: .4byte 0x09F72660

	thumb_func_start sub_080B5714
sub_080B5714: @ 0x080B5714
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B57C8 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B57CC @ =0x09F727A8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B57C8: .4byte 0x09F754F8
_080B57CC: .4byte 0x09F727A8

	thumb_func_start sub_080B57D0
sub_080B57D0: @ 0x080B57D0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B5884 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B5888 @ =0x09F72978
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B5884: .4byte 0x09F754F8
_080B5888: .4byte 0x09F72978

	thumb_func_start sub_080B588C
sub_080B588C: @ 0x080B588C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B5940 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B5944 @ =0x09F72B48
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B5940: .4byte 0x09F754F8
_080B5944: .4byte 0x09F72B48

	thumb_func_start sub_080B5948
sub_080B5948: @ 0x080B5948
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B59FC @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B5A00 @ =0x09F72D18
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B59FC: .4byte 0x09F754F8
_080B5A00: .4byte 0x09F72D18

	thumb_func_start sub_080B5A04
sub_080B5A04: @ 0x080B5A04
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B5AB8 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B5ABC @ =0x09F72EE8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B5AB8: .4byte 0x09F754F8
_080B5ABC: .4byte 0x09F72EE8

	thumb_func_start sub_080B5AC0
sub_080B5AC0: @ 0x080B5AC0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B5B74 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B5B78 @ =0x09F730B8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B5B74: .4byte 0x09F754F8
_080B5B78: .4byte 0x09F730B8

	thumb_func_start sub_080B5B7C
sub_080B5B7C: @ 0x080B5B7C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B5C30 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B5C34 @ =0x09F73288
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B5C30: .4byte 0x09F754F8
_080B5C34: .4byte 0x09F73288

	thumb_func_start sub_080B5C38
sub_080B5C38: @ 0x080B5C38
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B5CEC @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B5CF0 @ =0x09F73458
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B5CEC: .4byte 0x09F754F8
_080B5CF0: .4byte 0x09F73458

	thumb_func_start sub_080B5CF4
sub_080B5CF4: @ 0x080B5CF4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B5DA8 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B5DAC @ =0x09F73628
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B5DA8: .4byte 0x09F754F8
_080B5DAC: .4byte 0x09F73628

	thumb_func_start sub_080B5DB0
sub_080B5DB0: @ 0x080B5DB0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B5E64 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B5E68 @ =0x09F737F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B5E64: .4byte 0x09F754F8
_080B5E68: .4byte 0x09F737F8

	thumb_func_start sub_080B5E6C
sub_080B5E6C: @ 0x080B5E6C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B5F20 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B5F24 @ =0x09F739C8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B5F20: .4byte 0x09F754F8
_080B5F24: .4byte 0x09F739C8

	thumb_func_start sub_080B5F28
sub_080B5F28: @ 0x080B5F28
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B5FDC @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B5FE0 @ =0x09F73B98
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B5FDC: .4byte 0x09F754F8
_080B5FE0: .4byte 0x09F73B98

	thumb_func_start sub_080B5FE4
sub_080B5FE4: @ 0x080B5FE4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6098 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B609C @ =0x09F73D68
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6098: .4byte 0x09F754F8
_080B609C: .4byte 0x09F73D68

	thumb_func_start sub_080B60A0
sub_080B60A0: @ 0x080B60A0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6154 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B6158 @ =0x09F73F38
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6154: .4byte 0x09F754F8
_080B6158: .4byte 0x09F73F38

	thumb_func_start sub_080B615C
sub_080B615C: @ 0x080B615C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6210 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B6214 @ =0x09F74108
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6210: .4byte 0x09F754F8
_080B6214: .4byte 0x09F74108

	thumb_func_start sub_080B6218
sub_080B6218: @ 0x080B6218
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B62CC @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B62D0 @ =0x09F742D8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B62CC: .4byte 0x09F754F8
_080B62D0: .4byte 0x09F742D8

	thumb_func_start sub_080B62D4
sub_080B62D4: @ 0x080B62D4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6388 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B638C @ =0x09F744A8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6388: .4byte 0x09F754F8
_080B638C: .4byte 0x09F744A8

	thumb_func_start sub_080B6390
sub_080B6390: @ 0x080B6390
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6444 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B6448 @ =0x09F74678
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6444: .4byte 0x09F754F8
_080B6448: .4byte 0x09F74678

	thumb_func_start sub_080B644C
sub_080B644C: @ 0x080B644C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6500 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B6504 @ =0x09F74848
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6500: .4byte 0x09F754F8
_080B6504: .4byte 0x09F74848

	thumb_func_start sub_080B6508
sub_080B6508: @ 0x080B6508
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B65BC @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B65C0 @ =0x09F74A18
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B65BC: .4byte 0x09F754F8
_080B65C0: .4byte 0x09F74A18

	thumb_func_start sub_080B65C4
sub_080B65C4: @ 0x080B65C4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6678 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B667C @ =0x09F74BE8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6678: .4byte 0x09F754F8
_080B667C: .4byte 0x09F74BE8

	thumb_func_start sub_080B6680
sub_080B6680: @ 0x080B6680
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6734 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B6738 @ =0x09F74DB8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6734: .4byte 0x09F754F8
_080B6738: .4byte 0x09F74DB8

	thumb_func_start sub_080B673C
sub_080B673C: @ 0x080B673C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B67F8 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B67FC @ =0x09F74F88
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08082678
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B67F8: .4byte 0x09F754F8
_080B67FC: .4byte 0x09F74F88

	thumb_func_start sub_080B6800
sub_080B6800: @ 0x080B6800
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B68B4 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B68B8 @ =0x09F75158
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B68B4: .4byte 0x09F754F8
_080B68B8: .4byte 0x09F75158

	thumb_func_start sub_080B68BC
sub_080B68BC: @ 0x080B68BC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6970 @ =0x09F754F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B6974 @ =0x09F75328
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6970: .4byte 0x09F754F8
_080B6974: .4byte 0x09F75328

	thumb_func_start sub_080B6978
sub_080B6978: @ 0x080B6978
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6998 @ =0x09F756C8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08082678
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6998: .4byte 0x09F756C8

	thumb_func_start sub_080B699C
sub_080B699C: @ 0x080B699C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B69B4 @ =0x09F75810
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B69B4: .4byte 0x09F75810

	thumb_func_start sub_080B69B8
sub_080B69B8: @ 0x080B69B8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B69E0 @ =0x09F75958
	str r0, [r4, #0x1c]
	movs r0, #1
	movs r1, #2
	bl sub_08070660
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08082680
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B69E0: .4byte 0x09F75958

	thumb_func_start sub_080B69E4
sub_080B69E4: @ 0x080B69E4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6A0C @ =0x09F75AA0
	str r0, [r4, #0x1c]
	movs r0, #2
	movs r1, #3
	bl sub_08070660
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08082680
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6A0C: .4byte 0x09F75AA0

	thumb_func_start sub_080B6A10
sub_080B6A10: @ 0x080B6A10
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6A28 @ =0x09F75BE8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6A28: .4byte 0x09F75BE8

	thumb_func_start sub_080B6A2C
sub_080B6A2C: @ 0x080B6A2C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6A44 @ =0x09F75D30
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6A44: .4byte 0x09F75D30

	thumb_func_start sub_080B6A48
sub_080B6A48: @ 0x080B6A48
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6A60 @ =0x09F75E78
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6A60: .4byte 0x09F75E78

	thumb_func_start sub_080B6A64
sub_080B6A64: @ 0x080B6A64
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6A7C @ =0x09F75FC0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6A7C: .4byte 0x09F75FC0

	thumb_func_start sub_080B6A80
sub_080B6A80: @ 0x080B6A80
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6A98 @ =0x09F76108
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6A98: .4byte 0x09F76108

	thumb_func_start sub_080B6A9C
sub_080B6A9C: @ 0x080B6A9C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6ABC @ =0x09F76250
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08082678
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6ABC: .4byte 0x09F76250

	thumb_func_start sub_080B6AC0
sub_080B6AC0: @ 0x080B6AC0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6AE8 @ =0x09F76398
	str r0, [r4, #0x1c]
	movs r0, #2
	movs r1, #3
	bl sub_08070660
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08082680
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6AE8: .4byte 0x09F76398

	thumb_func_start sub_080B6AEC
sub_080B6AEC: @ 0x080B6AEC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6B0C @ =0x09F764E0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08082678
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6B0C: .4byte 0x09F764E0

	thumb_func_start sub_080B6B10
sub_080B6B10: @ 0x080B6B10
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6B28 @ =0x09F76628
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6B28: .4byte 0x09F76628

	thumb_func_start sub_080B6B2C
sub_080B6B2C: @ 0x080B6B2C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6B44 @ =0x09F76770
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6B44: .4byte 0x09F76770

	thumb_func_start sub_080B6B48
sub_080B6B48: @ 0x080B6B48
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6B6C @ =0x09F768B8
	str r0, [r4, #0x1c]
	movs r0, #2
	movs r1, #3
	bl sub_08070660
	str r0, [r4, #0x34]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6B6C: .4byte 0x09F768B8

	thumb_func_start sub_080B6B70
sub_080B6B70: @ 0x080B6B70
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6B88 @ =0x09F76A00
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6B88: .4byte 0x09F76A00

	thumb_func_start sub_080B6B8C
sub_080B6B8C: @ 0x080B6B8C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6BA4 @ =0x09F76B48
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6BA4: .4byte 0x09F76B48

	thumb_func_start sub_080B6BA8
sub_080B6BA8: @ 0x080B6BA8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6BC0 @ =0x09F76C90
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6BC0: .4byte 0x09F76C90

	thumb_func_start sub_080B6BC4
sub_080B6BC4: @ 0x080B6BC4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6BDC @ =0x09F76DD8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6BDC: .4byte 0x09F76DD8

	thumb_func_start sub_080B6BE0
sub_080B6BE0: @ 0x080B6BE0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6BF8 @ =0x09F76F20
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6BF8: .4byte 0x09F76F20

	thumb_func_start sub_080B6BFC
sub_080B6BFC: @ 0x080B6BFC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6C24 @ =0x09F77068
	str r0, [r4, #0x1c]
	movs r0, #1
	movs r1, #2
	bl sub_08070660
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08082680
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6C24: .4byte 0x09F77068

	thumb_func_start sub_080B6C28
sub_080B6C28: @ 0x080B6C28
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6C40 @ =0x09F771B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6C40: .4byte 0x09F771B0

	thumb_func_start sub_080B6C44
sub_080B6C44: @ 0x080B6C44
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6C5C @ =0x09F772F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6C5C: .4byte 0x09F772F8

	thumb_func_start sub_080B6C60
sub_080B6C60: @ 0x080B6C60
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B6CBA
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B6CBA
	movs r0, #0
	b _080B6CBC
_080B6CBA:
	movs r0, #1
_080B6CBC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B6CC4
sub_080B6CC4: @ 0x080B6CC4
	push {lr}
	ldr r2, _080B6CD4 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B6CD4: .4byte 0x09F772F8

	thumb_func_start sub_080B6CD8
sub_080B6CD8: @ 0x080B6CD8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B6D32
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B6D32
	movs r0, #0
	b _080B6D34
_080B6D32:
	movs r0, #1
_080B6D34:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B6D3C
sub_080B6D3C: @ 0x080B6D3C
	push {lr}
	ldr r2, _080B6D4C @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B6D4C: .4byte 0x09F772F8

	thumb_func_start sub_080B6D50
sub_080B6D50: @ 0x080B6D50
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B6DA6
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	cmp r0, #1
	bgt _080B6DA6
	movs r0, #0
	b _080B6DA8
_080B6DA6:
	movs r0, #1
_080B6DA8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B6DB0
sub_080B6DB0: @ 0x080B6DB0
	push {lr}
	ldr r2, _080B6DC0 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B6DC0: .4byte 0x09F772F8

	thumb_func_start sub_080B6DC4
sub_080B6DC4: @ 0x080B6DC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B6DEC
	rsbs r1, r1, #0
_080B6DEC:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B6E54
sub_080B6E54: @ 0x080B6E54
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080B6E90
sub_080B6E90: @ 0x080B6E90
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B6EEA
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B6EEA
	movs r0, #0
	b _080B6EEC
_080B6EEA:
	movs r0, #1
_080B6EEC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B6EF4
sub_080B6EF4: @ 0x080B6EF4
	push {lr}
	ldr r2, _080B6F04 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B6F04: .4byte 0x09F772F8

	thumb_func_start sub_080B6F08
sub_080B6F08: @ 0x080B6F08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B6F30
	rsbs r1, r1, #0
_080B6F30:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B6F98
sub_080B6F98: @ 0x080B6F98
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080B6FD4
sub_080B6FD4: @ 0x080B6FD4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B702E
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B702E
	movs r0, #0
	b _080B7030
_080B702E:
	movs r0, #1
_080B7030:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B7038
sub_080B7038: @ 0x080B7038
	push {lr}
	ldr r2, _080B7048 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B7048: .4byte 0x09F772F8

	thumb_func_start sub_080B704C
sub_080B704C: @ 0x080B704C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B7074
	rsbs r1, r1, #0
_080B7074:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B70DC
sub_080B70DC: @ 0x080B70DC
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B7118
sub_080B7118: @ 0x080B7118
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B71B4
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B71B4
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B71B4
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #1
	bne _080B71B6
_080B71B4:
	movs r1, #1
_080B71B6:
	cmp r1, #0
	bne _080B7240
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7240
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7240
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7240
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7240
	movs r0, #0
	b _080B7242
_080B7240:
	movs r0, #1
_080B7242:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B7248
sub_080B7248: @ 0x080B7248
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B72A6
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B72A6
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #1
	bne _080B72A8
_080B72A6:
	movs r1, #1
_080B72A8:
	cmp r1, #0
	bne _080B72FC
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B72FC
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B72FC
	movs r0, #0
	b _080B72FE
_080B72FC:
	movs r0, #1
_080B72FE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080B7304
sub_080B7304: @ 0x080B7304
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B73C6
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x32
	movs r2, #0x1d
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B73C6
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1e
	movs r2, #0x32
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B73C6
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x2d
	movs r2, #0x22
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B73C6
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x14
	movs r2, #0x22
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B73C6
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x22
	movs r2, #0x15
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #1
	bne _080B73C8
_080B73C6:
	movs r1, #1
_080B73C8:
	cmp r1, #0
	bne _080B7420
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x32
	movs r2, #0x1d
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7420
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1e
	movs r2, #0x32
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7420
	movs r0, #0
	b _080B7422
_080B7420:
	movs r0, #1
_080B7422:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080B7428
sub_080B7428: @ 0x080B7428
	push {lr}
	ldr r2, _080B7438 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B7438: .4byte 0x09F772F8

	thumb_func_start sub_080B743C
sub_080B743C: @ 0x080B743C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B7464
	rsbs r1, r1, #0
_080B7464:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B74CC
sub_080B74CC: @ 0x080B74CC
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B7508
sub_080B7508: @ 0x080B7508
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B75F2
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r6, #0xa8
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B75F2
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x12
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B75F2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B75F2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x13
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B75F2
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B75F2
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B75F2
	movs r0, #0
	b _080B75F4
_080B75F2:
	movs r0, #1
_080B75F4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B75FC
sub_080B75FC: @ 0x080B75FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B765C
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B765C
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1b
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B765C
	movs r0, #0
	b _080B765E
_080B765C:
	movs r0, #1
_080B765E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080B7664
sub_080B7664: @ 0x080B7664
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B76C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x31
	movs r2, #0x1b
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B76C8
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1c
	movs r2, #0x31
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B76C8
	movs r0, #0
	b _080B76CA
_080B76C8:
	movs r0, #1
_080B76CA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080B76D0
sub_080B76D0: @ 0x080B76D0
	push {lr}
	ldr r2, _080B76E0 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B76E0: .4byte 0x09F772F8

	thumb_func_start sub_080B76E4
sub_080B76E4: @ 0x080B76E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B770C
	rsbs r1, r1, #0
_080B770C:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B7774
sub_080B7774: @ 0x080B7774
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x32
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B77A8
sub_080B77A8: @ 0x080B77A8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7802
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7802
	movs r0, #0
	b _080B7804
_080B7802:
	movs r0, #1
_080B7804:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B780C
sub_080B780C: @ 0x080B780C
	push {lr}
	ldr r2, _080B781C @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B781C: .4byte 0x09F772F8

	thumb_func_start sub_080B7820
sub_080B7820: @ 0x080B7820
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B7848
	rsbs r1, r1, #0
_080B7848:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B78B0
sub_080B78B0: @ 0x080B78B0
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x96
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B78E4
sub_080B78E4: @ 0x080B78E4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B793E
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B793E
	movs r0, #0
	b _080B7940
_080B793E:
	movs r0, #1
_080B7940:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B7948
sub_080B7948: @ 0x080B7948
	push {lr}
	ldr r2, _080B7958 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B7958: .4byte 0x09F772F8

	thumb_func_start sub_080B795C
sub_080B795C: @ 0x080B795C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B7984
	rsbs r1, r1, #0
_080B7984:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B79EC
sub_080B79EC: @ 0x080B79EC
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B7A24
sub_080B7A24: @ 0x080B7A24
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7AC0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x1e
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7AC0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7AC0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #1
	bne _080B7AC2
_080B7AC0:
	movs r1, #1
_080B7AC2:
	cmp r1, #0
	bne _080B7B4C
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7B4C
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7B4C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7B4C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7B4C
	movs r0, #0
	b _080B7B4E
_080B7B4C:
	movs r0, #1
_080B7B4E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B7B54
sub_080B7B54: @ 0x080B7B54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7BB2
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7BB2
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #1
	bne _080B7BB4
_080B7BB2:
	movs r1, #1
_080B7BB4:
	cmp r1, #0
	beq _080B7BBC
	movs r0, #1
	b _080B7C06
_080B7BBC:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7C04
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080B7C04:
	movs r0, #0
_080B7C06:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080B7C0C
sub_080B7C0C: @ 0x080B7C0C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7CCE
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x29
	movs r2, #0x32
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7CCE
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1d
	movs r2, #0x32
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7CCE
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x32
	movs r2, #0x1e
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7CCE
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x22
	movs r2, #0x14
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7CCE
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x15
	movs r2, #0x22
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #1
	bne _080B7CD0
_080B7CCE:
	movs r1, #1
_080B7CD0:
	cmp r1, #0
	bne _080B7D28
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x22
	movs r2, #0x14
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7D28
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x15
	movs r2, #0x22
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7D28
	movs r0, #0
	b _080B7D2A
_080B7D28:
	movs r0, #1
_080B7D2A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080B7D30
sub_080B7D30: @ 0x080B7D30
	push {lr}
	ldr r2, _080B7D40 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B7D40: .4byte 0x09F772F8

	thumb_func_start sub_080B7D44
sub_080B7D44: @ 0x080B7D44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B7D6C
	rsbs r1, r1, #0
_080B7D6C:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B7DD4
sub_080B7DD4: @ 0x080B7DD4
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B7E0C
sub_080B7E0C: @ 0x080B7E0C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7EF6
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r6, #0xa8
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7EF6
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1b
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7EF6
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x31
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7EF6
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7EF6
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7EF6
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7EF6
	movs r0, #0
	b _080B7EF8
_080B7EF6:
	movs r0, #1
_080B7EF8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B7F00
sub_080B7F00: @ 0x080B7F00
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7F60
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7F60
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x12
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7F60
	movs r0, #0
	b _080B7F62
_080B7F60:
	movs r0, #1
_080B7F62:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080B7F68
sub_080B7F68: @ 0x080B7F68
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7FCC
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x21
	movs r2, #0x12
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7FCC
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x13
	movs r2, #0x21
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7FCC
	movs r0, #0
	b _080B7FCE
_080B7FCC:
	movs r0, #1
_080B7FCE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080B7FD4
sub_080B7FD4: @ 0x080B7FD4
	push {lr}
	ldr r2, _080B7FE4 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B7FE4: .4byte 0x09F772F8

	thumb_func_start sub_080B7FE8
sub_080B7FE8: @ 0x080B7FE8
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B8024
sub_080B8024: @ 0x080B8024
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B8060
sub_080B8060: @ 0x080B8060
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B809C
sub_080B809C: @ 0x080B809C
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B80D8
sub_080B80D8: @ 0x080B80D8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8160
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8160
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r4, r4, r3
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8160
	movs r0, #0
	b _080B8162
_080B8160:
	movs r0, #1
_080B8162:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080B8168
sub_080B8168: @ 0x080B8168
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B817A
	b _080B847A
_080B817A:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B81BE
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	b _080B8476
_080B81BE:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1b
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B81F0
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1b
	b _080B8476
_080B81F0:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x31
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B821E
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x31
	b _080B8476
_080B821E:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B824C
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1c
	b _080B8476
_080B824C:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B827A
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	b _080B8476
_080B827A:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B82A8
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	b _080B8476
_080B82A8:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B82D6
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	b _080B8476
_080B82D6:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8304
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	b _080B8476
_080B8304:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8332
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2c
	b _080B8476
_080B8332:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x12
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8360
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x12
	b _080B8476
_080B8360:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B838E
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	b _080B8476
_080B838E:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x13
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B83BC
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x13
	b _080B8476
_080B83BC:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B83EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2d
	b _080B8476
_080B83EA:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8418
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	b _080B8476
_080B8418:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8446
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	b _080B8476
_080B8446:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8464
	movs r0, #0
	b _080B847C
_080B8464:
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
_080B8476:
	bl _call_via_r2
_080B847A:
	movs r0, #1
_080B847C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B8484
sub_080B8484: @ 0x080B8484
	push {lr}
	ldr r2, _080B8494 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B8494: .4byte 0x09F772F8

	thumb_func_start sub_080B8498
sub_080B8498: @ 0x080B8498
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B84D0
sub_080B84D0: @ 0x080B84D0
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B8508
sub_080B8508: @ 0x080B8508
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x32
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B853C
sub_080B853C: @ 0x080B853C
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x32
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B8570
sub_080B8570: @ 0x080B8570
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B85F8
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r4, r4, r3
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B85F8
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B85F8
	movs r0, #0
	b _080B85FA
_080B85F8:
	movs r0, #1
_080B85FA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080B8600
sub_080B8600: @ 0x080B8600
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8612
	b _080B8912
_080B8612:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8656
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	b _080B890E
_080B8656:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1b
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8688
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1b
	b _080B890E
_080B8688:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x31
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B86B6
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x31
	b _080B890E
_080B86B6:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B86E4
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1c
	b _080B890E
_080B86E4:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8712
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	b _080B890E
_080B8712:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8740
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	b _080B890E
_080B8740:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B876E
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	b _080B890E
_080B876E:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B879C
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	b _080B890E
_080B879C:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B87CA
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2c
	b _080B890E
_080B87CA:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x12
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B87F8
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x12
	b _080B890E
_080B87F8:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8826
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	b _080B890E
_080B8826:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x13
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8854
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x13
	b _080B890E
_080B8854:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8882
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2d
	b _080B890E
_080B8882:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B88B0
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	b _080B890E
_080B88B0:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B88DE
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	b _080B890E
_080B88DE:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B88FC
	movs r0, #0
	b _080B8914
_080B88FC:
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
_080B890E:
	bl _call_via_r2
_080B8912:
	movs r0, #1
_080B8914:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B891C
sub_080B891C: @ 0x080B891C
	push {lr}
	ldr r2, _080B892C @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B892C: .4byte 0x09F772F8

	thumb_func_start sub_080B8930
sub_080B8930: @ 0x080B8930
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B8958
	rsbs r1, r1, #0
_080B8958:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B89C0
sub_080B89C0: @ 0x080B89C0
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B89F8
sub_080B89F8: @ 0x080B89F8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8A92
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8A92
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8A92
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8A92
	movs r0, #0
	b _080B8A94
_080B8A92:
	movs r0, #1
_080B8A94:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B8A9C
sub_080B8A9C: @ 0x080B8A9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8ACE
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8ACE
	movs r0, #0
	b _080B8AD0
_080B8ACE:
	movs r0, #1
_080B8AD0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B8AD8
sub_080B8AD8: @ 0x080B8AD8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8B58
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x29
	movs r2, #0x32
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8B58
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x14
	movs r2, #0x32
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8B58
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x22
	movs r2, #0x1d
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8B58
	movs r0, #0
	b _080B8B5A
_080B8B58:
	movs r0, #1
_080B8B5A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B8B60
sub_080B8B60: @ 0x080B8B60
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8BBA
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r1, #0x29
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8BB6
	adds r0, r4, #0
	movs r1, #0x1d
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8BBA
	adds r0, r4, #0
	movs r1, #0x32
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8BBA
_080B8BB6:
	movs r0, #0
	b _080B8BBC
_080B8BBA:
	movs r0, #1
_080B8BBC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B8BC4
sub_080B8BC4: @ 0x080B8BC4
	push {lr}
	ldr r2, _080B8BD4 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B8BD4: .4byte 0x09F772F8

	thumb_func_start sub_080B8BD8
sub_080B8BD8: @ 0x080B8BD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B8C00
	rsbs r1, r1, #0
_080B8C00:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B8C68
sub_080B8C68: @ 0x080B8C68
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B8CA0
sub_080B8CA0: @ 0x080B8CA0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8D3A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8D3A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8D3A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8D3A
	movs r0, #0
	b _080B8D3C
_080B8D3A:
	movs r0, #1
_080B8D3C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B8D44
sub_080B8D44: @ 0x080B8D44
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8D76
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8D76
	movs r0, #0
	b _080B8D78
_080B8D76:
	movs r0, #1
_080B8D78:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B8D80
sub_080B8D80: @ 0x080B8D80
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8E54
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x29
	movs r2, #0x1e
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8E54
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1d
	movs r2, #0x1e
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8E54
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x32
	movs r2, #0x1e
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8E54
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x29
	movs r2, #0x1d
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8E54
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x14
	movs r2, #0x1d
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8E54
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x15
	movs r2, #0x14
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8E54
	movs r0, #0
	b _080B8E56
_080B8E54:
	movs r0, #1
_080B8E56:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B8E5C
sub_080B8E5C: @ 0x080B8E5C
	push {lr}
	ldr r2, _080B8E6C @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B8E6C: .4byte 0x09F772F8

	thumb_func_start sub_080B8E70
sub_080B8E70: @ 0x080B8E70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B8E98
	rsbs r1, r1, #0
_080B8E98:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B8F00
sub_080B8F00: @ 0x080B8F00
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B8F38
sub_080B8F38: @ 0x080B8F38
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8FD2
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8FD2
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8FD2
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B8FD2
	movs r0, #0
	b _080B8FD4
_080B8FD2:
	movs r0, #1
_080B8FD4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B8FDC
sub_080B8FDC: @ 0x080B8FDC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B903C
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B903C
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B903C
	movs r0, #0
	b _080B903E
_080B903C:
	movs r0, #1
_080B903E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080B9044
sub_080B9044: @ 0x080B9044
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B90FC
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x29
	movs r2, #0x32
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B90FC
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1d
	movs r2, #0x32
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B90FC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x32
	movs r2, #0x1e
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B90FC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x22
	movs r2, #0x14
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B90FC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x15
	movs r2, #0x22
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B90FC
	movs r0, #0
	b _080B90FE
_080B90FC:
	movs r0, #1
_080B90FE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B9104
sub_080B9104: @ 0x080B9104
	push {lr}
	ldr r2, _080B9114 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B9114: .4byte 0x09F772F8

	thumb_func_start sub_080B9118
sub_080B9118: @ 0x080B9118
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B9140
	rsbs r1, r1, #0
_080B9140:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B91A8
sub_080B91A8: @ 0x080B91A8
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B91E0
sub_080B91E0: @ 0x080B91E0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B927A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x1c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B927A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B927A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B927A
	movs r0, #0
	b _080B927C
_080B927A:
	movs r0, #1
_080B927C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B9284
sub_080B9284: @ 0x080B9284
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B92B6
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x13
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B92B6
	movs r0, #0
	b _080B92B8
_080B92B6:
	movs r0, #1
_080B92B8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B92C0
sub_080B92C0: @ 0x080B92C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9340
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x2c
	movs r2, #0x31
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9340
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x12
	movs r2, #0x31
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9340
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x21
	movs r2, #0x1b
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9340
	movs r0, #0
	b _080B9342
_080B9340:
	movs r0, #1
_080B9342:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B9348
sub_080B9348: @ 0x080B9348
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B93A2
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B93A2
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B93A2
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B93A2
	movs r0, #0
	b _080B93A4
_080B93A2:
	movs r0, #1
_080B93A4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B93AC
sub_080B93AC: @ 0x080B93AC
	push {lr}
	ldr r2, _080B93BC @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B93BC: .4byte 0x09F772F8

	thumb_func_start sub_080B93C0
sub_080B93C0: @ 0x080B93C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B93E8
	rsbs r1, r1, #0
_080B93E8:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B9450
sub_080B9450: @ 0x080B9450
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B9488
sub_080B9488: @ 0x080B9488
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9522
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x1c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9522
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9522
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9522
	movs r0, #0
	b _080B9524
_080B9522:
	movs r0, #1
_080B9524:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B952C
sub_080B952C: @ 0x080B952C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B955E
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B955E
	movs r0, #0
	b _080B9560
_080B955E:
	movs r0, #1
_080B9560:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B9568
sub_080B9568: @ 0x080B9568
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B963C
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x28
	movs r2, #0x1c
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B963C
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1b
	movs r2, #0x1c
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B963C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x31
	movs r2, #0x1c
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B963C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x2c
	movs r2, #0x1b
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B963C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x12
	movs r2, #0x1b
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B963C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x13
	movs r2, #0x12
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B963C
	movs r0, #0
	b _080B963E
_080B963C:
	movs r0, #1
_080B963E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B9644
sub_080B9644: @ 0x080B9644
	push {lr}
	ldr r2, _080B9654 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B9654: .4byte 0x09F772F8

	thumb_func_start sub_080B9658
sub_080B9658: @ 0x080B9658
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B9680
	rsbs r1, r1, #0
_080B9680:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B96E8
sub_080B96E8: @ 0x080B96E8
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	pop {r1}
	bx r1

	thumb_func_start sub_080B9720
sub_080B9720: @ 0x080B9720
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B97BA
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x1c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B97BA
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B97BA
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B97BA
	movs r0, #0
	b _080B97BC
_080B97BA:
	movs r0, #1
_080B97BC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B97C4
sub_080B97C4: @ 0x080B97C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9824
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9824
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x12
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9824
	movs r0, #0
	b _080B9826
_080B9824:
	movs r0, #1
_080B9826:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080B982C
sub_080B982C: @ 0x080B982C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B98E4
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x28
	movs r2, #0x31
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B98E4
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1b
	movs r2, #0x31
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B98E4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x31
	movs r2, #0x1c
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B98E4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x21
	movs r2, #0x12
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B98E4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x13
	movs r2, #0x21
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B98E4
	movs r0, #0
	b _080B98E6
_080B98E4:
	movs r0, #1
_080B98E6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B98EC
sub_080B98EC: @ 0x080B98EC
	push {lr}
	ldr r2, _080B98FC @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B98FC: .4byte 0x09F772F8

	thumb_func_start sub_080B9900
sub_080B9900: @ 0x080B9900
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B9928
	rsbs r1, r1, #0
_080B9928:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B9990
sub_080B9990: @ 0x080B9990
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B99CC
sub_080B99CC: @ 0x080B99CC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9A66
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9A66
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9A66
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9A66
	movs r0, #0
	b _080B9A68
_080B9A66:
	movs r0, #1
_080B9A68:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B9A70
sub_080B9A70: @ 0x080B9A70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9AA2
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9AA2
	movs r0, #0
	b _080B9AA4
_080B9AA2:
	movs r0, #1
_080B9AA4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B9AAC
sub_080B9AAC: @ 0x080B9AAC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9B2C
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x29
	movs r2, #0x22
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9B2C
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1d
	movs r2, #0x22
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9B2C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x32
	movs r2, #0x14
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9B2C
	movs r0, #0
	b _080B9B2E
_080B9B2C:
	movs r0, #1
_080B9B2E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B9B34
sub_080B9B34: @ 0x080B9B34
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9B8E
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r1, #0x2d
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9B8E
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9B8E
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9B8E
	movs r0, #0
	b _080B9B90
_080B9B8E:
	movs r0, #1
_080B9B90:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B9B98
sub_080B9B98: @ 0x080B9B98
	push {lr}
	ldr r2, _080B9BA8 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B9BA8: .4byte 0x09F772F8

	thumb_func_start sub_080B9BAC
sub_080B9BAC: @ 0x080B9BAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B9BD4
	rsbs r1, r1, #0
_080B9BD4:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B9C3C
sub_080B9C3C: @ 0x080B9C3C
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B9C78
sub_080B9C78: @ 0x080B9C78
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9D12
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9D12
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9D12
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9D12
	movs r0, #0
	b _080B9D14
_080B9D12:
	movs r0, #1
_080B9D14:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B9D1C
sub_080B9D1C: @ 0x080B9D1C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9D4E
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9D4E
	movs r0, #0
	b _080B9D50
_080B9D4E:
	movs r0, #1
_080B9D50:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B9D58
sub_080B9D58: @ 0x080B9D58
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9E2C
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x29
	movs r2, #0x14
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9E2C
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1d
	movs r2, #0x14
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9E2C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1e
	movs r2, #0x1d
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9E2C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x2d
	movs r2, #0x15
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9E2C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x14
	movs r2, #0x15
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9E2C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x22
	movs r2, #0x15
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9E2C
	movs r0, #0
	b _080B9E2E
_080B9E2C:
	movs r0, #1
_080B9E2E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B9E34
sub_080B9E34: @ 0x080B9E34
	push {lr}
	ldr r2, _080B9E44 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080B9E44: .4byte 0x09F772F8

	thumb_func_start sub_080B9E48
sub_080B9E48: @ 0x080B9E48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B9E70
	rsbs r1, r1, #0
_080B9E70:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B9ED8
sub_080B9ED8: @ 0x080B9ED8
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B9F14
sub_080B9F14: @ 0x080B9F14
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9FAE
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9FAE
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9FAE
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B9FAE
	movs r0, #0
	b _080B9FB0
_080B9FAE:
	movs r0, #1
_080B9FB0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B9FB8
sub_080B9FB8: @ 0x080B9FB8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA018
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA018
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA018
	movs r0, #0
	b _080BA01A
_080BA018:
	movs r0, #1
_080BA01A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080BA020
sub_080BA020: @ 0x080BA020
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA0D8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x32
	movs r2, #0x1d
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA0D8
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1e
	movs r2, #0x32
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA0D8
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x2d
	movs r2, #0x22
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA0D8
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x14
	movs r2, #0x22
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA0D8
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x22
	movs r2, #0x15
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA0D8
	movs r0, #0
	b _080BA0DA
_080BA0D8:
	movs r0, #1
_080BA0DA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080BA0E0
sub_080BA0E0: @ 0x080BA0E0
	push {lr}
	ldr r2, _080BA0F0 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BA0F0: .4byte 0x09F772F8

	thumb_func_start sub_080BA0F4
sub_080BA0F4: @ 0x080BA0F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080BA11C
	rsbs r1, r1, #0
_080BA11C:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080BA184
sub_080BA184: @ 0x080BA184
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BA1C0
sub_080BA1C0: @ 0x080BA1C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA25A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x13
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA25A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA25A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA25A
	movs r0, #0
	b _080BA25C
_080BA25A:
	movs r0, #1
_080BA25C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BA264
sub_080BA264: @ 0x080BA264
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA296
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA296
	movs r0, #0
	b _080BA298
_080BA296:
	movs r0, #1
_080BA298:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BA2A0
sub_080BA2A0: @ 0x080BA2A0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA320
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x28
	movs r2, #0x21
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA320
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1b
	movs r2, #0x21
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA320
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x31
	movs r2, #0x12
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA320
	movs r0, #0
	b _080BA322
_080BA320:
	movs r0, #1
_080BA322:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080BA328
sub_080BA328: @ 0x080BA328
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA382
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA382
	adds r0, r4, #0
	movs r1, #0x12
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA382
	adds r0, r4, #0
	movs r1, #0x21
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA382
	movs r0, #0
	b _080BA384
_080BA382:
	movs r0, #1
_080BA384:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BA38C
sub_080BA38C: @ 0x080BA38C
	push {lr}
	ldr r2, _080BA39C @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BA39C: .4byte 0x09F772F8

	thumb_func_start sub_080BA3A0
sub_080BA3A0: @ 0x080BA3A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080BA3C8
	rsbs r1, r1, #0
_080BA3C8:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080BA430
sub_080BA430: @ 0x080BA430
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BA46C
sub_080BA46C: @ 0x080BA46C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA506
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x13
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA506
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA506
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA506
	movs r0, #0
	b _080BA508
_080BA506:
	movs r0, #1
_080BA508:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BA510
sub_080BA510: @ 0x080BA510
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA552
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x31
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA552
	movs r0, #0
	b _080BA554
_080BA552:
	movs r0, #1
_080BA554:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BA55C
sub_080BA55C: @ 0x080BA55C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA630
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x28
	movs r2, #0x12
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA630
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1b
	movs r2, #0x12
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA630
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1c
	movs r2, #0x1b
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA630
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x28
	movs r2, #0x13
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA630
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x12
	movs r2, #0x13
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA630
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x21
	movs r2, #0x13
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA630
	movs r0, #0
	b _080BA632
_080BA630:
	movs r0, #1
_080BA632:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080BA638
sub_080BA638: @ 0x080BA638
	push {lr}
	ldr r2, _080BA648 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BA648: .4byte 0x09F772F8

	thumb_func_start sub_080BA64C
sub_080BA64C: @ 0x080BA64C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080BA674
	rsbs r1, r1, #0
_080BA674:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080BA6DC
sub_080BA6DC: @ 0x080BA6DC
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BA718
sub_080BA718: @ 0x080BA718
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA7C2
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x13
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA7C2
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
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
	movs r1, #0x24
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA7C2
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA7C2
	movs r0, #0
	b _080BA7C4
_080BA7C2:
	movs r0, #1
_080BA7C4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BA7CC
sub_080BA7CC: @ 0x080BA7CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA82C
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA82C
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1b
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA82C
	movs r0, #0
	b _080BA82E
_080BA82C:
	movs r0, #1
_080BA82E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080BA834
sub_080BA834: @ 0x080BA834
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA8EC
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x31
	movs r2, #0x1b
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA8EC
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1c
	movs r2, #0x31
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA8EC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x28
	movs r2, #0x21
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA8EC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x12
	movs r2, #0x21
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA8EC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x21
	movs r2, #0x13
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BA8EC
	movs r0, #0
	b _080BA8EE
_080BA8EC:
	movs r0, #1
_080BA8EE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080BA8F4
sub_080BA8F4: @ 0x080BA8F4
	push {lr}
	ldr r2, _080BA904 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BA904: .4byte 0x09F772F8

	thumb_func_start sub_080BA908
sub_080BA908: @ 0x080BA908
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_080729B0
	ldr r1, [r0, #0x1c]
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r6, r1, r3
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r0, r4
	adds r3, #0x48
	adds r2, r1, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r0, r5, #0
	bl nullsub_39
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BA960
sub_080BA960: @ 0x080BA960
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_08082670
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BA9D4
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_080729B0
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xe6
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	asrs r1, r1, #0x11
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	subs r0, r0, r6
	adds r1, r7, #0
	adds r1, #0x5c
	strh r0, [r1]
	movs r0, #1
	b _080BA9D6
_080BA9D4:
	movs r0, #0
_080BA9D6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080BA9DC
sub_080BA9DC: @ 0x080BA9DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BAA36
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BAA36
	movs r0, #0
	b _080BAA38
_080BAA36:
	movs r0, #1
_080BAA38:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BAA40
sub_080BAA40: @ 0x080BAA40
	push {lr}
	ldr r2, _080BAA50 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BAA50: .4byte 0x09F772F8

	thumb_func_start sub_080BAA54
sub_080BAA54: @ 0x080BAA54
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BAAAE
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BAAAE
	movs r0, #0
	b _080BAAB0
_080BAAAE:
	movs r0, #1
_080BAAB0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BAAB8
sub_080BAAB8: @ 0x080BAAB8
	push {lr}
	ldr r2, _080BAAC8 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BAAC8: .4byte 0x09F772F8

	thumb_func_start sub_080BAACC
sub_080BAACC: @ 0x080BAACC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BAB26
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BAB26
	movs r0, #0
	b _080BAB28
_080BAB26:
	movs r0, #1
_080BAB28:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BAB30
sub_080BAB30: @ 0x080BAB30
	push {lr}
	ldr r2, _080BAB40 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BAB40: .4byte 0x09F772F8

	thumb_func_start sub_080BAB44
sub_080BAB44: @ 0x080BAB44
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BABC4
	ldr r1, [r5, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	adds r2, r6, #0
	bl sub_080730FC
	ldr r2, [r5, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #1
	b _080BABC6
_080BABC4:
	movs r0, #0
_080BABC6:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BABD0
sub_080BABD0: @ 0x080BABD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08073EE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BAC82
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08073E3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BAC82
	ldr r1, [r5, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	cmp r0, #0
	beq _080BAC82
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_080730FC
	ldr r2, [r6, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl _call_via_r2
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #1
	b _080BAC84
_080BAC82:
	movs r0, #0
_080BAC84:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080BAC8C
sub_080BAC8C: @ 0x080BAC8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BACC0
sub_080BACC0: @ 0x080BACC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BACF4
sub_080BACF4: @ 0x080BACF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xec
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x3c]
	subs r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BAD28
sub_080BAD28: @ 0x080BAD28
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x38]
	subs r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BAD5C
sub_080BAD5C: @ 0x080BAD5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x34]
	subs r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BAD90
sub_080BAD90: @ 0x080BAD90
	ldr r0, [r0, #0x58]
	bx lr

	thumb_func_start sub_080BAD94
sub_080BAD94: @ 0x080BAD94
	ldr r0, [r0, #0x54]
	bx lr

	thumb_func_start sub_080BAD98
sub_080BAD98: @ 0x080BAD98
	ldr r0, [r0, #0x50]
	bx lr

	thumb_func_start sub_080BAD9C
sub_080BAD9C: @ 0x080BAD9C
	ldr r0, [r0, #0x4c]
	bx lr

	thumb_func_start sub_080BADA0
sub_080BADA0: @ 0x080BADA0
	ldr r0, [r0, #0x48]
	bx lr

	thumb_func_start sub_080BADA4
sub_080BADA4: @ 0x080BADA4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [r6, #0x48]
	subs r1, r1, r0
	mov r0, r8
	ldr r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [r6, #0x4c]
	subs r1, r1, r0
	mov r0, r8
	ldr r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [r6, #0x50]
	subs r1, r1, r0
	mov r0, r8
	ldr r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [r6, #0x54]
	subs r1, r1, r0
	mov r0, r8
	ldr r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xac
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r1, [r1, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [r6, #0x58]
	subs r1, r1, r0
	mov r0, r8
	ldr r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r0, r6, #0
	bl nullsub_39
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BAECC
sub_080BAECC: @ 0x080BAECC
	movs r0, #0
	bx lr

	thumb_func_start sub_080BAED0
sub_080BAED0: @ 0x080BAED0
	movs r0, #0
	bx lr

	thumb_func_start sub_080BAED4
sub_080BAED4: @ 0x080BAED4
	movs r0, #0
	bx lr

	thumb_func_start sub_080BAED8
sub_080BAED8: @ 0x080BAED8
	movs r0, #0
	bx lr

	thumb_func_start sub_080BAEDC
sub_080BAEDC: @ 0x080BAEDC
	movs r0, #0
	bx lr

	thumb_func_start sub_080BAEE0
sub_080BAEE0: @ 0x080BAEE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	bl sub_08082670
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BAEFC
	b _080BB0EC
_080BAEFC:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r4, #0x1c]
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp]
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #8]
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0xc]
	ldr r5, [r4, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r1, #0
	ldrsh r6, [r5, r1]
	adds r6, r4, r6
	ldr r1, [r7, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #1
	mov r8, r2
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	add r1, sl
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	ldr r5, [r4, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r1, #0
	ldrsh r6, [r5, r1]
	adds r6, r4, r6
	ldr r1, [r7, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #1
	mov sb, r2
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp]
	adds r1, r0, r1
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	ldr r5, [r4, #0x1c]
	add r5, r8
	movs r1, #0
	ldrsh r6, [r5, r1]
	adds r6, r4, r6
	ldr r1, [r7, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	mov r8, r2
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp, #4]
	adds r1, r0, r1
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	ldr r5, [r4, #0x1c]
	add r5, sb
	movs r1, #0
	ldrsh r6, [r5, r1]
	adds r6, r4, r6
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp, #8]
	adds r1, r0, r1
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	ldr r5, [r4, #0x1c]
	add r5, r8
	movs r1, #0
	ldrsh r6, [r5, r1]
	adds r6, r4, r6
	ldr r1, [r7, #0x1c]
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	adds r1, r0, r1
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r0, r1
	str r0, [r7, #0x48]
	ldr r1, [r4, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp]
	subs r0, r0, r1
	str r0, [r7, #0x4c]
	ldr r1, [r4, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #4]
	subs r0, r0, r1
	str r0, [r7, #0x50]
	ldr r1, [r4, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #8]
	subs r0, r0, r1
	str r0, [r7, #0x54]
	ldr r0, [r4, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	str r0, [r7, #0x58]
	movs r0, #1
	b _080BB0EE
_080BB0EC:
	movs r0, #0
_080BB0EE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB100
sub_080BB100: @ 0x080BB100
	push {lr}
	ldr r2, _080BB110 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB110: .4byte 0x09F772F8

	thumb_func_start sub_080BB114
sub_080BB114: @ 0x080BB114
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB16E
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB16E
	movs r0, #0
	b _080BB170
_080BB16E:
	movs r0, #1
_080BB170:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB178
sub_080BB178: @ 0x080BB178
	push {lr}
	ldr r2, _080BB188 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB188: .4byte 0x09F772F8

	thumb_func_start sub_080BB18C
sub_080BB18C: @ 0x080BB18C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB1E6
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB1E6
	movs r0, #0
	b _080BB1E8
_080BB1E6:
	movs r0, #1
_080BB1E8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB1F0
sub_080BB1F0: @ 0x080BB1F0
	push {lr}
	ldr r2, _080BB200 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB200: .4byte 0x09F772F8

	thumb_func_start sub_080BB204
sub_080BB204: @ 0x080BB204
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB25E
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB25E
	movs r0, #0
	b _080BB260
_080BB25E:
	movs r0, #1
_080BB260:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB268
sub_080BB268: @ 0x080BB268
	push {lr}
	ldr r2, _080BB278 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB278: .4byte 0x09F772F8

	thumb_func_start sub_080BB27C
sub_080BB27C: @ 0x080BB27C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB2D6
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB2D6
	movs r0, #0
	b _080BB2D8
_080BB2D6:
	movs r0, #1
_080BB2D8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB2E0
sub_080BB2E0: @ 0x080BB2E0
	push {lr}
	ldr r2, _080BB2F0 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB2F0: .4byte 0x09F772F8

	thumb_func_start sub_080BB2F4
sub_080BB2F4: @ 0x080BB2F4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB34E
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB34E
	movs r0, #0
	b _080BB350
_080BB34E:
	movs r0, #1
_080BB350:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB358
sub_080BB358: @ 0x080BB358
	push {lr}
	ldr r2, _080BB368 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB368: .4byte 0x09F772F8

	thumb_func_start sub_080BB36C
sub_080BB36C: @ 0x080BB36C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB3C6
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB3C6
	movs r0, #0
	b _080BB3C8
_080BB3C6:
	movs r0, #1
_080BB3C8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB3D0
sub_080BB3D0: @ 0x080BB3D0
	push {lr}
	ldr r2, _080BB3E0 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB3E0: .4byte 0x09F772F8

	thumb_func_start sub_080BB3E4
sub_080BB3E4: @ 0x080BB3E4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB43E
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB43E
	movs r0, #0
	b _080BB440
_080BB43E:
	movs r0, #1
_080BB440:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB448
sub_080BB448: @ 0x080BB448
	push {lr}
	ldr r2, _080BB458 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB458: .4byte 0x09F772F8

	thumb_func_start sub_080BB45C
sub_080BB45C: @ 0x080BB45C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB4B6
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB4B6
	movs r0, #0
	b _080BB4B8
_080BB4B6:
	movs r0, #1
_080BB4B8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB4C0
sub_080BB4C0: @ 0x080BB4C0
	push {lr}
	ldr r2, _080BB4D0 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB4D0: .4byte 0x09F772F8

	thumb_func_start sub_080BB4D4
sub_080BB4D4: @ 0x080BB4D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB52E
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB52E
	movs r0, #0
	b _080BB530
_080BB52E:
	movs r0, #1
_080BB530:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB538
sub_080BB538: @ 0x080BB538
	push {lr}
	ldr r2, _080BB548 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB548: .4byte 0x09F772F8

	thumb_func_start sub_080BB54C
sub_080BB54C: @ 0x080BB54C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB5A6
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB5A6
	movs r0, #0
	b _080BB5A8
_080BB5A6:
	movs r0, #1
_080BB5A8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB5B0
sub_080BB5B0: @ 0x080BB5B0
	push {lr}
	ldr r2, _080BB5C0 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB5C0: .4byte 0x09F772F8

	thumb_func_start sub_080BB5C4
sub_080BB5C4: @ 0x080BB5C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072D58
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BB600
	bl sub_08074614
	cmp r0, #0
	beq _080BB600
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xf0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_080BB600:
	adds r0, r4, #0
	bl nullsub_39
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BB60C
sub_080BB60C: @ 0x080BB60C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082670
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB620
	movs r0, #0
	b _080BB65A
_080BB620:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072D58
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BB658
	bl sub_08074614
	cmp r0, #0
	beq _080BB658
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_080BB658:
	movs r0, #1
_080BB65A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080BB660
sub_080BB660: @ 0x080BB660
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB6BA
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB6BA
	movs r0, #0
	b _080BB6BC
_080BB6BA:
	movs r0, #1
_080BB6BC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB6C4
sub_080BB6C4: @ 0x080BB6C4
	push {lr}
	ldr r2, _080BB6D4 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB6D4: .4byte 0x09F772F8

	thumb_func_start sub_080BB6D8
sub_080BB6D8: @ 0x080BB6D8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB732
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB732
	movs r0, #0
	b _080BB734
_080BB732:
	movs r0, #1
_080BB734:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB73C
sub_080BB73C: @ 0x080BB73C
	push {lr}
	ldr r2, _080BB74C @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB74C: .4byte 0x09F772F8

	thumb_func_start sub_080BB750
sub_080BB750: @ 0x080BB750
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08082A10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB768
	movs r0, #0
	b _080BB7E2
_080BB768:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	bne _080BB7E0
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r5, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0xa
	bl sub_0807066C
	movs r1, #1
	cmp r1, r0
	bge _080BB7CE
	adds r1, r0, #0
_080BB7CE:
	adds r0, r5, #0
	movs r2, #1
	bl sub_08073C4C
	movs r0, #0x1a
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_080730FC
_080BB7E0:
	movs r0, #1
_080BB7E2:
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB7EC
sub_080BB7EC: @ 0x080BB7EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB846
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB846
	movs r0, #0
	b _080BB848
_080BB846:
	movs r0, #1
_080BB848:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB850
sub_080BB850: @ 0x080BB850
	push {lr}
	ldr r2, _080BB860 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB860: .4byte 0x09F772F8

	thumb_func_start sub_080BB864
sub_080BB864: @ 0x080BB864
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB8BE
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB8BE
	movs r0, #0
	b _080BB8C0
_080BB8BE:
	movs r0, #1
_080BB8C0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB8C8
sub_080BB8C8: @ 0x080BB8C8
	push {lr}
	ldr r2, _080BB8D8 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB8D8: .4byte 0x09F772F8

	thumb_func_start sub_080BB8DC
sub_080BB8DC: @ 0x080BB8DC
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	bl nullsub_40
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	bne _080BB980
	ldr r1, [r4, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x34]
	cmp r0, r1
	blt _080BB980
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x4b
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_080730FC
	movs r0, #0x82
	movs r1, #0x96
	bl sub_08070660
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #1
	bl sub_08073734
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08073EE8
_080BB980:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080BB988
sub_080BB988: @ 0x080BB988
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB9E2
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB9E2
	movs r0, #0
	b _080BB9E4
_080BB9E2:
	movs r0, #1
_080BB9E4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BB9EC
sub_080BB9EC: @ 0x080BB9EC
	push {lr}
	ldr r2, _080BB9FC @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB9FC: .4byte 0x09F772F8

	thumb_func_start sub_080BBA00
sub_080BBA00: @ 0x080BBA00
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBA56
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	cmp r0, #2
	bgt _080BBA56
	movs r0, #0
	b _080BBA58
_080BBA56:
	movs r0, #1
_080BBA58:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BBA60
sub_080BBA60: @ 0x080BBA60
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBB1A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BBAB4
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	b _080BBB16
_080BBAB4:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BBAE6
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	b _080BBB16
_080BBAE6:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBB04
	movs r0, #0
	b _080BBB1C
_080BBB04:
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
_080BBB16:
	bl _call_via_r2
_080BBB1A:
	movs r0, #1
_080BBB1C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BBB24
sub_080BBB24: @ 0x080BBB24
	push {lr}
	ldr r2, _080BBB34 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BBB34: .4byte 0x09F772F8

	thumb_func_start sub_080BBB38
sub_080BBB38: @ 0x080BBB38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBB8E
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	cmp r0, #2
	bgt _080BBB8E
	movs r0, #0
	b _080BBB90
_080BBB8E:
	movs r0, #1
_080BBB90:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BBB98
sub_080BBB98: @ 0x080BBB98
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBC52
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BBBEC
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	b _080BBC4E
_080BBBEC:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BBC1E
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	b _080BBC4E
_080BBC1E:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBC3C
	movs r0, #0
	b _080BBC54
_080BBC3C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
_080BBC4E:
	bl _call_via_r2
_080BBC52:
	movs r0, #1
_080BBC54:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BBC5C
sub_080BBC5C: @ 0x080BBC5C
	push {lr}
	ldr r2, _080BBC6C @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BBC6C: .4byte 0x09F772F8

	thumb_func_start sub_080BBC70
sub_080BBC70: @ 0x080BBC70
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBCCA
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBCCA
	movs r0, #0
	b _080BBCCC
_080BBCCA:
	movs r0, #1
_080BBCCC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BBCD4
sub_080BBCD4: @ 0x080BBCD4
	push {lr}
	ldr r2, _080BBCE4 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BBCE4: .4byte 0x09F772F8

	thumb_func_start sub_080BBCE8
sub_080BBCE8: @ 0x080BBCE8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBD3E
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	cmp r0, #2
	bgt _080BBD3E
	movs r0, #0
	b _080BBD40
_080BBD3E:
	movs r0, #1
_080BBD40:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BBD48
sub_080BBD48: @ 0x080BBD48
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBE02
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BBD9C
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	b _080BBDFE
_080BBD9C:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BBDCE
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	b _080BBDFE
_080BBDCE:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBDEC
	movs r0, #0
	b _080BBE04
_080BBDEC:
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
_080BBDFE:
	bl _call_via_r2
_080BBE02:
	movs r0, #1
_080BBE04:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BBE0C
sub_080BBE0C: @ 0x080BBE0C
	push {lr}
	ldr r2, _080BBE1C @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BBE1C: .4byte 0x09F772F8

	thumb_func_start sub_080BBE20
sub_080BBE20: @ 0x080BBE20
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBE76
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	cmp r0, #2
	bgt _080BBE76
	movs r0, #0
	b _080BBE78
_080BBE76:
	movs r0, #1
_080BBE78:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BBE80
sub_080BBE80: @ 0x080BBE80
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBF3A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BBED4
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	b _080BBF36
_080BBED4:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BBF06
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	b _080BBF36
_080BBF06:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBF24
	movs r0, #0
	b _080BBF3C
_080BBF24:
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
_080BBF36:
	bl _call_via_r2
_080BBF3A:
	movs r0, #1
_080BBF3C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BBF44
sub_080BBF44: @ 0x080BBF44
	push {lr}
	ldr r2, _080BBF54 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BBF54: .4byte 0x09F772F8

	thumb_func_start sub_080BBF58
sub_080BBF58: @ 0x080BBF58
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08082A10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBF70
	movs r0, #0
	b _080BBFE4
_080BBF70:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	bne _080BBFE2
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r5, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	bl sub_0807066C
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #1
	bl sub_08073734
	movs r0, #0xaa
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_080730FC
_080BBFE2:
	movs r0, #1
_080BBFE4:
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080BBFEC
sub_080BBFEC: @ 0x080BBFEC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BC046
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BC046
	movs r0, #0
	b _080BC048
_080BC046:
	movs r0, #1
_080BC048:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC050
sub_080BC050: @ 0x080BC050
	push {lr}
	ldr r2, _080BC060 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BC060: .4byte 0x09F772F8

	thumb_func_start sub_080BC064
sub_080BC064: @ 0x080BC064
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08082A10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BC07C
	movs r0, #0
	b _080BC0F0
_080BC07C:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	bne _080BC0EE
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r5, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	bl sub_0807066C
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #1
	bl sub_08073734
	movs r0, #0xaa
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_080730FC
_080BC0EE:
	movs r0, #1
_080BC0F0:
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080BC0F8
sub_080BC0F8: @ 0x080BC0F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0808266C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BC152
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BC152
	movs r0, #0
	b _080BC154
_080BC152:
	movs r0, #1
_080BC154:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC15C
sub_080BC15C: @ 0x080BC15C
	push {lr}
	ldr r2, _080BC16C @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BC16C: .4byte 0x09F772F8

	thumb_func_start sub_080BC170
sub_080BC170: @ 0x080BC170
	push {lr}
	ldr r2, _080BC180 @ =0x09F772F8
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BC180: .4byte 0x09F772F8

	thumb_func_start sub_080BC184
sub_080BC184: @ 0x080BC184
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC344
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC1A4
sub_080BC1A4: @ 0x080BC1A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC360
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC1C4
sub_080BC1C4: @ 0x080BC1C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC37C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC1E4
sub_080BC1E4: @ 0x080BC1E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC398
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC204
sub_080BC204: @ 0x080BC204
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC3B4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC224
sub_080BC224: @ 0x080BC224
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC3D0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC244
sub_080BC244: @ 0x080BC244
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC3EC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC264
sub_080BC264: @ 0x080BC264
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC408
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC284
sub_080BC284: @ 0x080BC284
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC424
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC2A4
sub_080BC2A4: @ 0x080BC2A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x50
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC440
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC2C4
sub_080BC2C4: @ 0x080BC2C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC460
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC2E4
sub_080BC2E4: @ 0x080BC2E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC47C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC304
sub_080BC304: @ 0x080BC304
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC498
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC324
sub_080BC324: @ 0x080BC324
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080BC4B4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BC344
sub_080BC344: @ 0x080BC344
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC35C @ =0x09F77440
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC35C: .4byte 0x09F77440

	thumb_func_start sub_080BC360
sub_080BC360: @ 0x080BC360
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC378 @ =0x09F776F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC378: .4byte 0x09F776F8

	thumb_func_start sub_080BC37C
sub_080BC37C: @ 0x080BC37C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC394 @ =0x09F779B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC394: .4byte 0x09F779B0

	thumb_func_start sub_080BC398
sub_080BC398: @ 0x080BC398
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC3B0 @ =0x09F77C68
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC3B0: .4byte 0x09F77C68

	thumb_func_start sub_080BC3B4
sub_080BC3B4: @ 0x080BC3B4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC3CC @ =0x09F77F20
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC3CC: .4byte 0x09F77F20

	thumb_func_start sub_080BC3D0
sub_080BC3D0: @ 0x080BC3D0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC3E8 @ =0x09F781D8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC3E8: .4byte 0x09F781D8

	thumb_func_start sub_080BC3EC
sub_080BC3EC: @ 0x080BC3EC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC404 @ =0x09F78490
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC404: .4byte 0x09F78490

	thumb_func_start sub_080BC408
sub_080BC408: @ 0x080BC408
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC420 @ =0x09F78748
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC420: .4byte 0x09F78748

	thumb_func_start sub_080BC424
sub_080BC424: @ 0x080BC424
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC43C @ =0x09F78A08
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC43C: .4byte 0x09F78A08

	thumb_func_start sub_080BC440
sub_080BC440: @ 0x080BC440
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC45C @ =0x09F78CC0
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC45C: .4byte 0x09F78CC0

	thumb_func_start sub_080BC460
sub_080BC460: @ 0x080BC460
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC478 @ =0x09F78F78
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC478: .4byte 0x09F78F78

	thumb_func_start sub_080BC47C
sub_080BC47C: @ 0x080BC47C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC494 @ =0x09F79230
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC494: .4byte 0x09F79230

	thumb_func_start sub_080BC498
sub_080BC498: @ 0x080BC498
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC4B0 @ =0x09F794E8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC4B0: .4byte 0x09F794E8

	thumb_func_start sub_080BC4B4
sub_080BC4B4: @ 0x080BC4B4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC4CC @ =0x09F797A0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC4CC: .4byte 0x09F797A0

	thumb_func_start sub_080BC4D0
sub_080BC4D0: @ 0x080BC4D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #0x10]
	adds r6, r1, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BC524
	ldr r0, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r6, r4
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	b _080BC5B0
_080BC524:
	movs r0, #0
	mov r8, r0
	add r1, sp, #0xc
	mov sb, r1
	ldr r2, _080BC538 @ =gUnknown_080FA358
	mov sl, r2
_080BC530:
	lsls r5, r0, #1
	adds r7, r0, #1
	b _080BC54A
	.align 2, 0
_080BC538: .4byte gUnknown_080FA358
_080BC53C:
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08073EE8
	movs r3, #1
	add r8, r3
_080BC54A:
	ldr r2, [r6, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	mov r3, sl
	adds r1, r5, r3
	ldrh r4, [r1]
	ldr r2, [r2, #4]
	adds r1, r4, #0
	bl _call_via_r2
	cmp r0, #0
	bgt _080BC53C
	adds r0, r7, #0
	cmp r0, #7
	bls _080BC530
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r3, r0, r2
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0x10]
	adds r1, r2, r0
	ldr r2, _080BC5C0 @ =0x00000139
	mov r0, r8
	cmp r0, #0
	ble _080BC58C
	adds r2, #1
_080BC58C:
	mov r0, sp
	ldr r3, [r3, #4]
	bl _call_via_r3
	movs r0, #0
	add r1, sp, #0xc
	strb r0, [r1]
	mov r1, sb
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_080BC5B0:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BC5C0: .4byte 0x00000139

	thumb_func_start sub_080BC5C4
sub_080BC5C4: @ 0x080BC5C4
	push {lr}
	ldr r2, _080BC5D4 @ =0x09F797A0
	str r2, [r0, #0x1c]
	bl  sub_08082BA8
	pop {r0}
	bx r0
	.align 2, 0
_080BC5D4: .4byte 0x09F797A0

	thumb_func_start sub_080BC5D8
sub_080BC5D8: @ 0x080BC5D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #0x10]
	adds r5, r1, #0
	movs r0, #0
	mov r8, r0
	add r1, sp, #0xc
	mov sb, r1
	ldr r2, _080BC5FC @ =gUnknown_080FA348
	mov sl, r2
_080BC5F4:
	lsls r6, r0, #1
	adds r7, r0, #1
	b _080BC60E
	.align 2, 0
_080BC5FC: .4byte gUnknown_080FA348
_080BC600:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08073EE8
	movs r3, #1
	add r8, r3
_080BC60E:
	ldr r2, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	mov r3, sl
	adds r1, r6, r3
	ldrh r4, [r1]
	ldr r2, [r2, #4]
	adds r1, r4, #0
	bl _call_via_r2
	cmp r0, #0
	bgt _080BC600
	adds r0, r7, #0
	cmp r0, #7
	bls _080BC5F4
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r3, r0, r2
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0x10]
	adds r1, r2, r0
	ldr r2, _080BC684 @ =0x00000139
	mov r0, r8
	cmp r0, #0
	ble _080BC650
	adds r2, #1
_080BC650:
	mov r0, sp
	ldr r3, [r3, #4]
	bl _call_via_r3
	movs r0, #0
	add r1, sp, #0xc
	strb r0, [r1]
	mov r1, sb
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BC684: .4byte 0x00000139

	thumb_func_start sub_080BC688
sub_080BC688: @ 0x080BC688
	push {lr}
	ldr r2, _080BC698 @ =0x09F797A0
	str r2, [r0, #0x1c]
	bl  sub_08082BA8
	pop {r0}
	bx r0
	.align 2, 0
_080BC698: .4byte 0x09F797A0

	thumb_func_start sub_080BC69C
sub_080BC69C: @ 0x080BC69C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov sb, r0
	adds r5, r1, #0
	movs r0, #0
	mov r8, r0
	movs r6, #0
_080BC6B0:
	lsls r7, r6, #1
	b _080BC6DE
_080BC6B4:
	ldr r1, [r5, #0x1c]
	movs r2, #0xae
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	movs r2, #0
	cmp r0, #1
	bgt _080BC6D2
	movs r2, #1
_080BC6D2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08073EE8
	movs r0, #1
	add r8, r0
_080BC6DE:
	ldr r2, [r5, #0x1c]
	movs r1, #0xae
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	ldr r1, _080BC74C @ =gUnknown_080FA338
	adds r1, r7, r1
	ldrh r4, [r1]
	ldr r2, [r2, #4]
	adds r1, r4, #0
	bl _call_via_r2
	cmp r0, #0
	bgt _080BC6B4
	mov r2, r8
	cmp r2, #0
	bgt _080BC73E
	adds r6, #1
	cmp r6, #7
	bls _080BC6B0
	mov r0, sb
	ldr r3, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080BC750 @ =0x00000139
	mov r0, sp
	ldr r3, [r3, #4]
	add r1, sb
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_080BC73E:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BC74C: .4byte gUnknown_080FA338
_080BC750: .4byte 0x00000139

	thumb_func_start sub_080BC754
sub_080BC754: @ 0x080BC754
	push {lr}
	ldr r2, _080BC764 @ =0x09F797A0
	str r2, [r0, #0x1c]
	bl  sub_08082BA8
	pop {r0}
	bx r0
	.align 2, 0
_080BC764: .4byte 0x09F797A0

	thumb_func_start sub_080BC768
sub_080BC768: @ 0x080BC768
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x9e
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	mov r8, r3
	add r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r5, [r2, #4]
	adds r1, r4, #0
	movs r2, #0x1a
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	movs r3, #0
	mov sb, r3
	strb r3, [r2]
	ldr r5, [r1, #4]
	adds r1, r4, #0
	movs r2, #0x1a
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r6, r6, r0
	mov r0, sp
	mov r3, sb
	strb r3, [r0]
	ldr r5, [r1, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x1a
	movs r3, #0x64
	bl _call_via_r5
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080BC81C
sub_080BC81C: @ 0x080BC81C
	push {lr}
	ldr r2, _080BC82C @ =0x09F797A0
	str r2, [r0, #0x1c]
	bl  sub_08082BA8
	pop {r0}
	bx r0
	.align 2, 0
_080BC82C: .4byte 0x09F797A0

	thumb_func_start sub_080BC830
sub_080BC830: @ 0x080BC830
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x9e
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	mov r8, r3
	add r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r5, [r2, #4]
	adds r1, r4, #0
	movs r2, #0x19
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	movs r3, #0
	mov sb, r3
	strb r3, [r2]
	ldr r5, [r1, #4]
	adds r1, r4, #0
	movs r2, #0x19
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r6, r6, r0
	mov r0, sp
	mov r3, sb
	strb r3, [r0]
	ldr r5, [r1, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x19
	movs r3, #0x64
	bl _call_via_r5
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080BC8E4
sub_080BC8E4: @ 0x080BC8E4
	push {lr}
	ldr r2, _080BC8F4 @ =0x09F797A0
	str r2, [r0, #0x1c]
	bl  sub_08082BA8
	pop {r0}
	bx r0
	.align 2, 0
_080BC8F4: .4byte 0x09F797A0

	thumb_func_start sub_080BC8F8
sub_080BC8F8: @ 0x080BC8F8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x9e
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	mov r8, r3
	add r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r5, [r2, #4]
	adds r1, r4, #0
	movs r2, #0x17
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	movs r3, #0
	mov sb, r3
	strb r3, [r2]
	ldr r5, [r1, #4]
	adds r1, r4, #0
	movs r2, #0x17
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r6, r6, r0
	mov r0, sp
	mov r3, sb
	strb r3, [r0]
	ldr r5, [r1, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x17
	movs r3, #0x64
	bl _call_via_r5
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080BC9AC
sub_080BC9AC: @ 0x080BC9AC
	push {lr}
	ldr r2, _080BC9BC @ =0x09F797A0
	str r2, [r0, #0x1c]
	bl  sub_08082BA8
	pop {r0}
	bx r0
	.align 2, 0
_080BC9BC: .4byte 0x09F797A0

	thumb_func_start sub_080BC9C0
sub_080BC9C0: @ 0x080BC9C0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x9e
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	mov r8, r3
	add r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r5, [r2, #4]
	adds r1, r4, #0
	movs r2, #0x16
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	movs r3, #0
	mov sb, r3
	strb r3, [r2]
	ldr r5, [r1, #4]
	adds r1, r4, #0
	movs r2, #0x16
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r6, r6, r0
	mov r0, sp
	mov r3, sb
	strb r3, [r0]
	ldr r5, [r1, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x16
	movs r3, #0x64
	bl _call_via_r5
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080BCA74
sub_080BCA74: @ 0x080BCA74
	push {lr}
	ldr r2, _080BCA84 @ =0x09F797A0
	str r2, [r0, #0x1c]
	bl  sub_08082BA8
	pop {r0}
	bx r0
	.align 2, 0
_080BCA84: .4byte 0x09F797A0

	thumb_func_start sub_080BCA88
sub_080BCA88: @ 0x080BCA88
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_08072D58
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BCA9C
	b _080BCDD0
_080BCA9C:
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BCAAA
	b _080BCDD0
_080BCAAA:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r0, #0xbd
	bls _080BCACA
	b _080BCDD4
_080BCACA:
	lsls r0, r0, #2
	ldr r1, _080BCAD4 @ =_080BCAD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BCAD4: .4byte _080BCAD8
_080BCAD8: @ jump table
	.4byte _080BCDD0 @ case 0
	.4byte _080BCDD0 @ case 1
	.4byte _080BCDD0 @ case 2
	.4byte _080BCDD0 @ case 3
	.4byte _080BCDD0 @ case 4
	.4byte _080BCDD0 @ case 5
	.4byte _080BCDD0 @ case 6
	.4byte _080BCDD4 @ case 7
	.4byte _080BCDD4 @ case 8
	.4byte _080BCDD4 @ case 9
	.4byte _080BCDD0 @ case 10
	.4byte _080BCDD0 @ case 11
	.4byte _080BCDD0 @ case 12
	.4byte _080BCDD0 @ case 13
	.4byte _080BCDD0 @ case 14
	.4byte _080BCDD0 @ case 15
	.4byte _080BCDD0 @ case 16
	.4byte _080BCDD4 @ case 17
	.4byte _080BCDD0 @ case 18
	.4byte _080BCDD4 @ case 19
	.4byte _080BCDD4 @ case 20
	.4byte _080BCDD0 @ case 21
	.4byte _080BCDD4 @ case 22
	.4byte _080BCDD0 @ case 23
	.4byte _080BCDD4 @ case 24
	.4byte _080BCDD0 @ case 25
	.4byte _080BCDD0 @ case 26
	.4byte _080BCDD0 @ case 27
	.4byte _080BCDD4 @ case 28
	.4byte _080BCDD4 @ case 29
	.4byte _080BCDD4 @ case 30
	.4byte _080BCDD4 @ case 31
	.4byte _080BCDD4 @ case 32
	.4byte _080BCDD4 @ case 33
	.4byte _080BCDD4 @ case 34
	.4byte _080BCDD4 @ case 35
	.4byte _080BCDD4 @ case 36
	.4byte _080BCDD4 @ case 37
	.4byte _080BCDD4 @ case 38
	.4byte _080BCDD4 @ case 39
	.4byte _080BCDD4 @ case 40
	.4byte _080BCDD4 @ case 41
	.4byte _080BCDD4 @ case 42
	.4byte _080BCDD4 @ case 43
	.4byte _080BCDD4 @ case 44
	.4byte _080BCDD0 @ case 45
	.4byte _080BCDD4 @ case 46
	.4byte _080BCDD4 @ case 47
	.4byte _080BCDD4 @ case 48
	.4byte _080BCDD4 @ case 49
	.4byte _080BCDD4 @ case 50
	.4byte _080BCDD4 @ case 51
	.4byte _080BCDD4 @ case 52
	.4byte _080BCDD4 @ case 53
	.4byte _080BCDD4 @ case 54
	.4byte _080BCDD4 @ case 55
	.4byte _080BCDD4 @ case 56
	.4byte _080BCDD4 @ case 57
	.4byte _080BCDD4 @ case 58
	.4byte _080BCDD4 @ case 59
	.4byte _080BCDD4 @ case 60
	.4byte _080BCDD4 @ case 61
	.4byte _080BCDD4 @ case 62
	.4byte _080BCDD4 @ case 63
	.4byte _080BCDD4 @ case 64
	.4byte _080BCDD4 @ case 65
	.4byte _080BCDD4 @ case 66
	.4byte _080BCDD4 @ case 67
	.4byte _080BCDD4 @ case 68
	.4byte _080BCDD4 @ case 69
	.4byte _080BCDD4 @ case 70
	.4byte _080BCDD4 @ case 71
	.4byte _080BCDD4 @ case 72
	.4byte _080BCDD4 @ case 73
	.4byte _080BCDD4 @ case 74
	.4byte _080BCDD4 @ case 75
	.4byte _080BCDD4 @ case 76
	.4byte _080BCDD4 @ case 77
	.4byte _080BCDD4 @ case 78
	.4byte _080BCDD4 @ case 79
	.4byte _080BCDD4 @ case 80
	.4byte _080BCDD4 @ case 81
	.4byte _080BCDD4 @ case 82
	.4byte _080BCDD0 @ case 83
	.4byte _080BCDD4 @ case 84
	.4byte _080BCDD4 @ case 85
	.4byte _080BCDD4 @ case 86
	.4byte _080BCDD4 @ case 87
	.4byte _080BCDD4 @ case 88
	.4byte _080BCDD4 @ case 89
	.4byte _080BCDD4 @ case 90
	.4byte _080BCDD0 @ case 91
	.4byte _080BCDD4 @ case 92
	.4byte _080BCDD4 @ case 93
	.4byte _080BCDD4 @ case 94
	.4byte _080BCDD4 @ case 95
	.4byte _080BCDD4 @ case 96
	.4byte _080BCDD4 @ case 97
	.4byte _080BCDD4 @ case 98
	.4byte _080BCDD4 @ case 99
	.4byte _080BCDD0 @ case 100
	.4byte _080BCDD4 @ case 101
	.4byte _080BCDD4 @ case 102
	.4byte _080BCDD4 @ case 103
	.4byte _080BCDD4 @ case 104
	.4byte _080BCDD4 @ case 105
	.4byte _080BCDD4 @ case 106
	.4byte _080BCDD4 @ case 107
	.4byte _080BCDD4 @ case 108
	.4byte _080BCDD4 @ case 109
	.4byte _080BCDD4 @ case 110
	.4byte _080BCDD4 @ case 111
	.4byte _080BCDD4 @ case 112
	.4byte _080BCDD4 @ case 113
	.4byte _080BCDD4 @ case 114
	.4byte _080BCDD4 @ case 115
	.4byte _080BCDD4 @ case 116
	.4byte _080BCDD4 @ case 117
	.4byte _080BCDD4 @ case 118
	.4byte _080BCDD4 @ case 119
	.4byte _080BCDD4 @ case 120
	.4byte _080BCDD4 @ case 121
	.4byte _080BCDD4 @ case 122
	.4byte _080BCDD0 @ case 123
	.4byte _080BCDD0 @ case 124
	.4byte _080BCDD4 @ case 125
	.4byte _080BCDD4 @ case 126
	.4byte _080BCDD4 @ case 127
	.4byte _080BCDD4 @ case 128
	.4byte _080BCDD4 @ case 129
	.4byte _080BCDD4 @ case 130
	.4byte _080BCDD4 @ case 131
	.4byte _080BCDD4 @ case 132
	.4byte _080BCDD4 @ case 133
	.4byte _080BCDD4 @ case 134
	.4byte _080BCDD4 @ case 135
	.4byte _080BCDD4 @ case 136
	.4byte _080BCDD4 @ case 137
	.4byte _080BCDD4 @ case 138
	.4byte _080BCDD4 @ case 139
	.4byte _080BCDD4 @ case 140
	.4byte _080BCDD0 @ case 141
	.4byte _080BCDD4 @ case 142
	.4byte _080BCDD4 @ case 143
	.4byte _080BCDD0 @ case 144
	.4byte _080BCDD4 @ case 145
	.4byte _080BCDD4 @ case 146
	.4byte _080BCDD4 @ case 147
	.4byte _080BCDD4 @ case 148
	.4byte _080BCDD4 @ case 149
	.4byte _080BCDD4 @ case 150
	.4byte _080BCDD4 @ case 151
	.4byte _080BCDD4 @ case 152
	.4byte _080BCDD4 @ case 153
	.4byte _080BCDD4 @ case 154
	.4byte _080BCDD4 @ case 155
	.4byte _080BCDD4 @ case 156
	.4byte _080BCDD4 @ case 157
	.4byte _080BCDD4 @ case 158
	.4byte _080BCDD4 @ case 159
	.4byte _080BCDD4 @ case 160
	.4byte _080BCDD0 @ case 161
	.4byte _080BCDD4 @ case 162
	.4byte _080BCDD4 @ case 163
	.4byte _080BCDD4 @ case 164
	.4byte _080BCDD4 @ case 165
	.4byte _080BCDD4 @ case 166
	.4byte _080BCDD4 @ case 167
	.4byte _080BCDD0 @ case 168
	.4byte _080BCDD4 @ case 169
	.4byte _080BCDD4 @ case 170
	.4byte _080BCDD4 @ case 171
	.4byte _080BCDD4 @ case 172
	.4byte _080BCDD0 @ case 173
	.4byte _080BCDD4 @ case 174
	.4byte _080BCDD4 @ case 175
	.4byte _080BCDD4 @ case 176
	.4byte _080BCDD4 @ case 177
	.4byte _080BCDD4 @ case 178
	.4byte _080BCDD0 @ case 179
	.4byte _080BCDD0 @ case 180
	.4byte _080BCDD4 @ case 181
	.4byte _080BCDD4 @ case 182
	.4byte _080BCDD4 @ case 183
	.4byte _080BCDD4 @ case 184
	.4byte _080BCDD4 @ case 185
	.4byte _080BCDD0 @ case 186
	.4byte _080BCDD0 @ case 187
	.4byte _080BCDD0 @ case 188
	.4byte _080BCDD0 @ case 189
_080BCDD0:
	movs r0, #0
	b _080BCDD6
_080BCDD4:
	movs r0, #1
_080BCDD6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080BCDDC
sub_080BCDDC: @ 0x080BCDDC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	movs r1, #7
	bl sub_08072D84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BCE08
	movs r4, #0x55
	movs r0, #0xa
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r6, #0
	b _080BCE34
_080BCE08:
	movs r4, #0x3c
	movs r2, #0xf
	mov r8, r2
	movs r3, #0xa
	mov sb, r3
	ldr r1, [r7, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0
	cmp r0, #1
	bne _080BCE34
	movs r6, #0xa
_080BCE34:
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	adds r1, r0, #0
	cmp r1, r4
	bge _080BCE5E
	ldr r2, [r7, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	movs r2, #5
	b _080BCEA2
_080BCE5E:
	mov r2, r8
	adds r0, r4, r2
	cmp r1, r0
	bge _080BCE82
	ldr r2, [r7, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	movs r2, #2
	b _080BCEA2
_080BCE82:
	add r0, sb
	cmp r1, r0
	bge _080BCEAA
	ldr r2, [r7, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	movs r2, #4
_080BCEA2:
	movs r3, #0x64
	bl _call_via_r4
	b _080BCF8A
_080BCEAA:
	adds r0, r0, r6
	cmp r1, r0
	bge _080BCF56
	adds r0, r5, #0
	bl sub_08072DD0
	adds r6, r0, #0
	cmp r6, #0
	beq _080BCF8A
	ldr r2, [r6, #0x20]
	adds r0, #0x20
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r4, [r6, #0x1c]
	movs r3, #0xc2
	lsls r3, r3, #2
	adds r4, r4, r3
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	add r0, sp, #4
	bl sub_0806E274
	ldr r2, [r4, #4]
	adds r0, r5, #0
	movs r1, #2
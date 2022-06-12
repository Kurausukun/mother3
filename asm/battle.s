.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0805E59C
sub_0805E59C: @ 0x0805E59C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4, #0x40]
	cmp r0, #5
	bne _0805E5AE
	movs r0, #1
	b _0805E65E
_0805E5AE:
	cmp r1, #1
	bne _0805E5C2
	movs r0, #1
	movs r1, #1
	bl sub_08073018__Fii
	bl sub_08072B70__Fv
	bl sub_08072D0C__Fv
_0805E5C2:
	ldr r1, [r4, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _0805E608
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E608
	adds r0, r4, #0
	movs r1, #3
	b _0805E652
_0805E608:
	bl sub_08072A88__Fv
	cmp r0, #0
	bgt _0805E62E
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E62E
	adds r0, r4, #0
	movs r1, #4
	b _0805E652
_0805E62E:
	bl sub_08072EA8
	cmp r0, #0
	bgt _0805E65C
	ldr r1, [r4, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E65C
	adds r0, r4, #0
	movs r1, #2
_0805E652:
	movs r2, #0
	bl sub_0805E670__6BattleiUc
	movs r0, #1
	b _0805E65E
_0805E65C:
	movs r0, #0
_0805E65E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805E664
sub_0805E664: @ 0x0805E664
	movs r0, #1
	bx lr

	thumb_func_start sub_0805E668
sub_0805E668: @ 0x0805E668
	movs r0, #1
	bx lr

	thumb_func_start sub_0805E66C
sub_0805E66C: @ 0x0805E66C
	movs r0, #1
	bx lr

	thumb_func_start sub_0805E670__6BattleiUc
sub_0805E670__6BattleiUc: @ 0x0805E670
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x40]
	cmp r0, r1
	bne _0805E682
	cmp r2, #1
	bne _0805E688
_0805E682:
	str r1, [r3, #0x40]
	movs r0, #1
	b _0805E68A
_0805E688:
	movs r0, #0
_0805E68A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805E690
sub_0805E690: @ 0x0805E690
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #3
	beq _0805E6B4
	cmp r0, #3
	bgt _0805E6A4
	cmp r0, #2
	beq _0805E6AE
	b _0805E6E4
_0805E6A4:
	cmp r0, #4
	beq _0805E6BA
	cmp r0, #5
	beq _0805E6D0
	b _0805E6E4
_0805E6AE:
	ldr r1, [r4, #0x1c]
	adds r1, #0xf0
	b _0805E6C2
_0805E6B4:
	ldr r1, [r4, #0x1c]
	adds r1, #0xf8
	b _0805E6C2
_0805E6BA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
_0805E6C2:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0805E6E4
_0805E6D0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_0805E6E4:
	ldr r1, [r4, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805E700
sub_0805E700: @ 0x0805E700
	push {r4, r5, r6, lr}
	mov r6, r8

	thumb_func_start sub_0805E704
sub_0805E704: @ 0x0805E704
	push {r6}
	sub sp, #0x20
	adds r6, r0, #0
	ldr r4, [r6, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	mov r0, sp
	bl __4Base
	ldr r1, _0805E800 @ =_vt.3Unk
	mov r8, r1
	ldr r0, _0805E804 @ =vt_09F453B0
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r1, [r6, #0x1c]
	movs r3, #0xf8
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0
	bl sub_0807459C__FUsiii
	adds r0, r6, #0
	bl sub_0805E808
	ldr r5, [r6, #0x4c]
	ldr r4, [r5, #0x1c]
	adds r4, #0xd8
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r5, r5, r0
	ldr r0, [r6, #0x54]
	ldr r1, [r0, #0x1c]
	movs r2, #0x94
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r5, [r6, #0x4c]
	ldr r4, [r5, #0x1c]
	adds r4, #0xe0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, [r6, #0x54]
	ldr r1, [r0, #0x1c]
	movs r2, #0x98
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
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r5, [r6, #0x4c]
	ldr r4, [r5, #0x1c]
	adds r4, #0xf0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, [r6, #0x54]
	ldr r1, [r0, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r0, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl sub_0807459C__FUsiii
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E800: .4byte _vt.3Unk
_0805E804: .4byte vt_09F453B0

	thumb_func_start sub_0805E808
sub_0805E808: @ 0x0805E808
	push {r4, r5, r6, lr}
	sub sp, #0xd0
	mov r0, sp
	bl sub_0806DC78
	ldr r1, _0805E894 @ =0x00000293
	add r5, sp, #0xa4
	adds r0, r5, #0
	bl sub_080706A0
	add r6, sp, #0xb0
	adds r0, r6, #0
	movs r1, #4
	bl sub_080706A0
	ldr r1, _0805E898 @ =0x00000285
	add r4, sp, #0xbc
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, sp
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806DDA0
	ldr r0, _0805E89C @ =_vt.1D
	str r0, [r4, #8]
	str r0, [r6, #8]
	str r0, [r5, #8]
	mov r0, sp
	movs r1, #2
	bl sub_0806DEEC
	add r1, sp, #0xc8
	movs r0, #0x78
	movs r2, #0x14
	movs r4, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sp
	bl sub_0806DF48
	adds r0, r5, #0
	bl __3Msg
	ldr r1, _0805E8A0 @ =0x0000FF33
	adds r0, r5, #0
	bl sub_0806E34C
	add r1, sp, #0xcc
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r5, #0
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, sp
	movs r1, #2
	bl sub_0806DD48
	add sp, #0xd0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E894: .4byte 0x00000293
_0805E898: .4byte 0x00000285
_0805E89C: .4byte _vt.1D
_0805E8A0: .4byte 0x0000FF33

	thumb_func_start sub_0805E8A4
sub_0805E8A4: @ 0x0805E8A4
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r0, sp
	bl __4Base
	ldr r6, _0805E8E8 @ =_vt.3Unk
	ldr r0, _0805E8EC @ =vt_09F45330
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	str r6, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	movs r0, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl sub_0807459C__FUsiii
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E8E8: .4byte _vt.3Unk
_0805E8EC: .4byte vt_09F45330

	thumb_func_start onBattleLost
onBattleLost: @ 0x0805E8F0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x40
	mov r8, r0
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	add r5, r8
	add r0, sp, #4
	bl __4Base
	ldr r6, _0805E9B4 @ =_vt.3Unk
	ldr r0, _0805E9B8 @ =vt_09F452B0
	str r0, [sp, #0x20]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	bl _call_via_r2
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	mov r2, r8
	ldr r1, [r2, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0
	bl sub_0807459C__FUsiii
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x24
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x30
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x78
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x3c
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
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
	mov r0, r8
	bl sub_0805E9BC
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E9B4: .4byte _vt.3Unk
_0805E9B8: .4byte vt_09F452B0

	thumb_func_start sub_0805E9BC
sub_0805E9BC: @ 0x0805E9BC
	push {lr}
	movs r0, #0x17
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E9D0
	movs r0, #0
	b _0805E9E8
_0805E9D0:
	bl sub_0806FDB0
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
_0805E9E8:
	pop {r1}
	bx r1

	thumb_func_start sub_0805E9EC
sub_0805E9EC: @ 0x0805E9EC
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r0, sp
	bl __4Base
	ldr r6, _0805EA30 @ =_vt.3Unk
	ldr r0, _0805EA34 @ =vt_09F453B0
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	str r6, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	movs r0, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl sub_0807459C__FUsiii
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EA30: .4byte _vt.3Unk
_0805EA34: .4byte vt_09F453B0

	thumb_func_start sub_0805EA38
sub_0805EA38: @ 0x0805EA38
	push {lr}
	sub sp, #8
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0
	movs r2, #0x20
	movs r3, #1
	bl sub_08074414
	add sp, #8
	pop {r0}
	bx r0

	thumb_func_start sub_0805EA5C
sub_0805EA5C: @ 0x0805EA5C
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_51
nullsub_51: @ 0x0805EA78
	bx lr
	.align 2, 0

	thumb_func_start sub_0805EA7C
sub_0805EA7C: @ 0x0805EA7C
	ldrh r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_0805EA80
sub_0805EA80: @ 0x0805EA80
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_0805EA84
sub_0805EA84: @ 0x0805EA84
	ldr r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0805EA88
sub_0805EA88: @ 0x0805EA88
	ldr r0, [r0, #0x30]
	bx lr

	thumb_func_start sub_0805EA8C
sub_0805EA8C: @ 0x0805EA8C
	ldr r0, [r0, #0x34]
	bx lr

	thumb_func_start sub_0805EA90
sub_0805EA90: @ 0x0805EA90
	push {lr}
	movs r1, #0
	ldr r0, _0805EAA4 @ =gEncounter
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805EA9E
	movs r1, #1
_0805EA9E:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805EAA4: .4byte gEncounter

	thumb_func_start sub_0805EAA8
sub_0805EAA8: @ 0x0805EAA8
	ldr r0, _0805EABC @ =gEncounter
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805EAC0 @ =gUnknown_080C7D28
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0805EABC: .4byte gEncounter
_0805EAC0: .4byte gUnknown_080C7D28

	thumb_func_start sub_0805EAC4
sub_0805EAC4: @ 0x0805EAC4
	push {lr}
	movs r1, #0
	ldr r0, _0805EAD8 @ =gEncounter
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805EAD2
	movs r1, #1
_0805EAD2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805EAD8: .4byte gEncounter

	thumb_func_start sub_0805EADC
sub_0805EADC: @ 0x0805EADC
	ldr r0, _0805EAE8 @ =gEncounter
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #4
	ldr r1, _0805EAEC @ =gBattleGroupTable
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0805EAE8: .4byte gEncounter
_0805EAEC: .4byte gBattleGroupTable

	thumb_func_start sub_0805EAF0
sub_0805EAF0: @ 0x0805EAF0
	push {lr}
	movs r1, #0
	ldr r0, _0805EB04 @ =gEncounter
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805EAFE
	movs r1, #1
_0805EAFE:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805EB04: .4byte gEncounter

	thumb_func_start sub_0805EB08
sub_0805EB08: @ 0x0805EB08
	ldr r0, _0805EB1C @ =gEncounter
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805EB20 @ =gUnknown_080C7D28
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0805EB1C: .4byte gEncounter
_0805EB20: .4byte gUnknown_080C7D28

	thumb_func_start sub_0805EB24
sub_0805EB24: @ 0x0805EB24
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x38]
	cmp r0, #0
	bne _0805EB30
	movs r1, #1
_0805EB30:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EB38
sub_0805EB38: @ 0x0805EB38
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x38]
	cmp r0, #1
	bne _0805EB44
	movs r1, #1
_0805EB44:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EB4C
sub_0805EB4C: @ 0x0805EB4C
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x38]
	cmp r0, #2
	bne _0805EB58
	movs r1, #1
_0805EB58:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EB60
sub_0805EB60: @ 0x0805EB60
	push {r4, r5, lr}
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
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805EB94
	movs r1, #0
	ldr r0, _0805EB90 @ =gEncounter
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0805EB8C
	movs r1, #1
_0805EB8C:
	adds r0, r1, #0
	b _0805EBFA
	.align 2, 0
_0805EB90: .4byte gEncounter
_0805EB94:
	ldr r1, [r4, #0x1c]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805EBE0
	movs r5, #0
	ldr r0, _0805EBDC @ =gEncounter
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0805EBD4
	ldr r1, [r4, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _0805EBD6
_0805EBD4:
	movs r5, #1
_0805EBD6:
	adds r0, r5, #0
	b _0805EBFA
	.align 2, 0
_0805EBDC: .4byte gEncounter
_0805EBE0:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r0, #1
_0805EBFA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805EC00
sub_0805EC00: @ 0x0805EC00
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x40]
	cmp r0, #1
	bne _0805EC0C
	movs r1, #1
_0805EC0C:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EC14
sub_0805EC14: @ 0x0805EC14
	ldr r0, [r0, #0x3c]
	bx lr

	thumb_func_start sub_0805EC18
sub_0805EC18: @ 0x0805EC18
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x40]
	subs r0, #2
	cmp r0, #3
	bhi _0805EC26
	movs r1, #1
_0805EC26:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_0805EC2C
sub_0805EC2C: @ 0x0805EC2C
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x40]
	cmp r0, #2
	bne _0805EC38
	movs r1, #1
_0805EC38:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EC40
sub_0805EC40: @ 0x0805EC40
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x40]
	cmp r0, #3
	bne _0805EC4C
	movs r1, #1
_0805EC4C:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EC54
sub_0805EC54: @ 0x0805EC54
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x40]
	cmp r0, #4
	bne _0805EC60
	movs r1, #1
_0805EC60:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EC68
sub_0805EC68: @ 0x0805EC68
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x40]
	cmp r0, #5
	bne _0805EC74
	movs r1, #1
_0805EC74:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EC7C
sub_0805EC7C: @ 0x0805EC7C
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
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805ECA4
	ldr r1, [r4, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	b _0805ECFE
_0805ECA4:
	ldr r1, [r4, #0x1c]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805ECD8
	ldr r1, [r4, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldrh r0, [r0, #0xc]
	b _0805ED0E
_0805ECD8:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805ECF8
	movs r0, #0
	b _0805ED0E
_0805ECF8:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
_0805ECFE:
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldrh r0, [r0, #0xe]
_0805ED0E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805ED14
sub_0805ED14: @ 0x0805ED14
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
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805ED3C
	ldr r1, [r4, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	b _0805ED96
_0805ED3C:
	ldr r1, [r4, #0x1c]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805ED70
	ldr r1, [r4, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldrh r0, [r0, #0xe]
	b _0805EDA6
_0805ED70:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805ED90
	movs r0, #0
	b _0805EDA6
_0805ED90:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
_0805ED96:
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldrh r0, [r0, #0x10]
_0805EDA6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805EDAC
sub_0805EDAC: @ 0x0805EDAC
	movs r0, #3
	bx lr

	thumb_func_start sub_0805EDB0
sub_0805EDB0: @ 0x0805EDB0
	ldr r0, _0805EDB4 @ =gUnknown_0200506E
	bx lr
	.align 2, 0
_0805EDB4: .4byte gUnknown_0200506E

	thumb_func_start sub_0805EDB8
sub_0805EDB8: @ 0x0805EDB8
	ldr r0, [r0, #0x44]
	bx lr

	thumb_func_start sub_0805EDBC
sub_0805EDBC: @ 0x0805EDBC
	ldr r0, [r0, #0x48]
	bx lr

	thumb_func_start sub_0805EDC0
sub_0805EDC0: @ 0x0805EDC0
	ldr r0, [r0, #0x4c]
	bx lr

	thumb_func_start sub_0805EDC4
sub_0805EDC4: @ 0x0805EDC4
	ldr r0, [r0, #0x50]
	bx lr

	thumb_func_start sub_0805EDC8
sub_0805EDC8: @ 0x0805EDC8
	ldr r0, [r0, #0x54]
	bx lr

	thumb_func_start sub_0805EDCC
sub_0805EDCC: @ 0x0805EDCC
	ldr r0, [r0, #0x58]
	bx lr

	thumb_func_start sub_0805EDD0
sub_0805EDD0: @ 0x0805EDD0
	ldr r0, [r0, #0x5c]
	bx lr

	thumb_func_start nullsub_95
nullsub_95: @ 0x0805EDD4
	bx lr
	.align 2, 0

	thumb_func_start sub_0805EDD8
sub_0805EDD8: @ 0x0805EDD8
	push {r4, lr}
	ldr r4, _0805EE40 @ =gUnknown_02002004
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE44 @ =vt_09F45618
	str r0, [r4, #8]
	ldr r4, _0805EE48 @ =gUnknown_02001FF8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE4C @ =vt_09F45598
	str r0, [r4, #8]
	ldr r4, _0805EE50 @ =gUnknown_02001FEC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE54 @ =vt_09F45518
	str r0, [r4, #8]
	ldr r4, _0805EE58 @ =gUnknown_02001FE0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE5C @ =vt_09F45498
	str r0, [r4, #8]
	ldr r4, _0805EE60 @ =gUnknown_02001FD4
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE64 @ =vt_09F45418
	str r0, [r4, #8]
	ldr r4, _0805EE68 @ =gUnknown_02001FC8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE6C @ =vt_09F45398
	str r0, [r4, #8]
	ldr r4, _0805EE70 @ =gUnknown_02001FBC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE74 @ =vt_09F45318
	str r0, [r4, #8]
	ldr r4, _0805EE78 @ =gUnknown_02001FB0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE7C @ =vt_09F45298
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EE40: .4byte gUnknown_02002004
_0805EE44: .4byte vt_09F45618
_0805EE48: .4byte gUnknown_02001FF8
_0805EE4C: .4byte vt_09F45598
_0805EE50: .4byte gUnknown_02001FEC
_0805EE54: .4byte vt_09F45518
_0805EE58: .4byte gUnknown_02001FE0
_0805EE5C: .4byte vt_09F45498
_0805EE60: .4byte gUnknown_02001FD4
_0805EE64: .4byte vt_09F45418
_0805EE68: .4byte gUnknown_02001FC8
_0805EE6C: .4byte vt_09F45398
_0805EE70: .4byte gUnknown_02001FBC
_0805EE74: .4byte vt_09F45318
_0805EE78: .4byte gUnknown_02001FB0
_0805EE7C: .4byte vt_09F45298

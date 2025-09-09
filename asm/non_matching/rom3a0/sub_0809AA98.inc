	.syntax unified
sub_0809AA98:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r3, #0x80
	lsls r3, r3, #1
	mov sl, r3
	mov r0, sp
	movs r5, #1
	strb r5, [r0]
	add r4, sp, #4
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x80
	mov r1, sl
	movs r2, #0x5a
	movs r3, #1
	bl sub_08074414__FiiibN23
	ldr r2, [r6, #0x1c]
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	movs r1, #0xaa
	lsls r1, r1, #1
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r0, _0809AE88
	movs r1, #0x3c
	movs r2, #0
	movs r3, #0
	bl sub_0807459C__FUsiii
	ldr r3, [r6, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #2
	mov sb, r2
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE8C
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x14
	movs r2, #0
	mov r8, r2
	mov r3, r8
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	add r0, sp, #8
	bl print__3MsgRC5Colorb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	ldr r1, [r6, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r6, #0x1c]
	movs r3, #0xb6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sp
	strb r5, [r0]
	mov r3, r8
	strb r3, [r4]
	movs r0, #0x80
	mov r1, sl
	movs r2, #0x1e
	movs r3, #1
	bl sub_08074394
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE90
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x18
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	movs r0, #0x82
	lsls r0, r0, #1
	bl __builtin_new
	movs r1, #0
	bl __5GuestUs
	adds r7, r0, #0
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE94
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x1c
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE98
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x20
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0xc
	adds r1, r7, #0
	bl sub_08073F88
	bl triggerMonsterSkill
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE9C
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x24
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEA0
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x28
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0xe
	adds r1, r7, #0
	bl sub_08073F88
	bl triggerMonsterSkill
	ldr r1, [r6, #0x1c]
	movs r3, #0x8a
	lsls r3, r3, #2
	mov sl, r3
	add r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xb8
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r5, r5, r0
	movs r0, #0x1b
	bl sub_08072E38
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEA4
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x2c
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEA8
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x30
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x10
	adds r1, r7, #0
	bl sub_08073F88
	bl triggerMonsterSkill
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xb8
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0xb4
	bl sub_08072E38
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEAC
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x34
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEB0
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x38
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x12
	adds r1, r7, #0
	bl sub_08073F88
	bl triggerMonsterSkill
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xb8
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0xb5
	bl sub_08072E38
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r6, #0x1c]
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r6, r6, r1
	ldr r1, [r0, #4]
	adds r0, r6, #0
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #1
	bl _call_via_r3
	cmp r7, #0
	beq _0809AE76
	ldr r1, [r7, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0809AE76:
	movs r0, #1
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809AE88: .4byte 0x00000791
_0809AE8C: .4byte 0x00000632
_0809AE90: .4byte 0x00000633
_0809AE94: .4byte 0x00000634
_0809AE98: .4byte 0x0000063B
_0809AE9C: .4byte 0x00000635
_0809AEA0: .4byte 0x0000063C
_0809AEA4: .4byte 0x00000636
_0809AEA8: .4byte 0x0000063D
_0809AEAC: .4byte 0x00000637
_0809AEB0: .4byte 0x00000649
	.syntax divided

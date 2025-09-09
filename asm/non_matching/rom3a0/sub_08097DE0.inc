	.syntax unified
sub_08097DE0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x12c
	adds r7, r0, #0
	add r0, sp, #8
	movs r1, #0
	bl __5GuestUs
	ldr r0, _08097EFC
	ldr r1, _08097F00
	adds r1, r1, r7
	mov sb, r1
	ldr r1, [r1]
	bl getMonsterSkill
	add r1, sp, #8
	bl sub_080742EC
	movs r0, #0x78
	bl setsleep
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r2, [r0]
	movs r0, #0xc3
	adds r1, r2, #0
	bl PlayAnimation
	movs r0, #0x3c
	bl setsleep
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	mov r8, r0
	add r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08097F04
	add r5, sp, #0x10c
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0x118
	movs r4, #0
	adds r0, r1, #0
	strb r4, [r0]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r5, #0
	movs r2, #0
	bl print__3MsgRC5Colorb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	movs r0, #0x78
	bl setsleep
	mov r3, sb
	ldr r2, [r3]
	movs r0, #0xc0
	adds r1, r2, #0
	bl PlayAnimation
	movs r0, #0x96
	lsls r0, r0, #1
	mov sb, r0
	bl setsleep
	ldr r3, [r7, #0x1c]
	add r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xcc
	lsls r2, r2, #3
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0x11c
	adds r0, r1, #0
	strb r4, [r0]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r5, #0
	movs r2, #0
	bl print__3MsgRC5Colorb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r0, sp, #4
	strb r4, [r0]
	movs r0, #0x90
	mov r2, sb
	movs r3, #1
	bl sub_08074518
	ldr r1, [r7, #0x1c]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	add r6, sp, #0x120
	movs r0, #0x92
	lsls r0, r0, #1
	add r0, sp
	mov sb, r0
	movs r1, #0x94
	lsls r1, r1, #1
	add r1, sp
	mov sl, r1
	b _08097F26
	.align 2, 0
_08097EFC: .4byte 0x0000027A
_08097F00: .4byte 0x00000F94
_08097F04: .4byte 0x0000065F
_08097F08:
	adds r0, r4, #0
	bl GetPlayer
	adds r1, r0, #0
	adds r1, #0x20
	ldr r2, [r0, #0x20]
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	ldr r2, [r2, #0x14]
	adds r0, r1, #0
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
_08097F26:
	bl getPartyCount
	cmp r4, r0
	blt _08097F08
	movs r4, #0
	b _08097F50
_08097F32:
	adds r0, r4, #0
	bl sub_08072E18__Fi
	adds r1, r0, #0
	adds r1, #0x20
	ldr r2, [r0, #0x20]
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	ldr r2, [r2, #0x14]
	adds r0, r1, #0
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
_08097F50:
	bl sub_08072DFC__Fv
	cmp r4, r0
	blt _08097F32
	movs r0, #0x96
	lsls r0, r0, #1
	mov r8, r0
	bl setsleep
	ldr r3, [r7, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098028
	add r5, sp, #0x10c
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	movs r4, #0
	add r0, sp, #0x120
	strb r4, [r0]
	strb r4, [r6, #1]
	strb r4, [r6, #2]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl print__3MsgRC5Colorb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	bl setsleep
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809802C
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r0, sp, #0x124
	strb r4, [r0]
	mov r3, sb
	strb r4, [r3, #1]
	strb r4, [r3, #2]
	adds r0, r5, #0
	mov r1, sb
	movs r2, #0
	bl print__3MsgRC5Colorb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	bl setsleep
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098030
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r0, sp, #0x128
	strb r4, [r0]
	mov r3, sl
	strb r4, [r3, #1]
	strb r4, [r3, #2]
	adds r0, r5, #0
	mov r1, sl
	movs r2, #0
	bl print__3MsgRC5Colorb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #8
	movs r1, #2
	bl _._5Guest
	movs r0, #1
	add sp, #0x12c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08098028: .4byte 0x00000661
_0809802C: .4byte 0x00000662
_08098030: .4byte 0x00000663
	.syntax divided

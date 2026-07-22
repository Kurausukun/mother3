	.syntax unified
sub_0809AFA8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	adds r6, r0, #0
	add r1, sp, #0x34
	movs r0, #0x78
	movs r2, #0x30
	rsbs r2, r2, #0
	movs r3, #0
	mov sb, r3
	strh r0, [r1]
	strh r2, [r1, #2]
	add r2, sp, #0x38
	adds r0, #0x88
	strh r0, [r2]
	strh r0, [r2, #2]
	movs r0, #0xa9
	movs r3, #0x1e
	bl sub_08072F9C
	adds r7, r0, #0
	ldr r0, _0809B084
	bl playSound
	movs r0, #0x5a
	bl setsleep
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r0, sp, #0x10
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	ldr r1, _0809B088
	str r4, [sp]
	add r0, sp, #4
	mov r2, r8
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x3c
	mov r2, sb
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #4
	movs r2, #0
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
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r0, _0809B08C
	adds r1, r7, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	ldr r1, [r6, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r4
	cmp r0, #1
	beq _0809B090
	bl sub_08072A88__Fv
	cmp r0, #0
	bgt _0809B090
_0809B07E:
	movs r0, #0
	b _0809B352
	.align 2, 0
_0809B084: .4byte 0x00000676
_0809B088: .4byte 0x00000631
_0809B08C: .4byte 0x0000026D
_0809B090:
	add r1, sp, #0x40
	movs r0, #0xb8
	movs r2, #0x30
	rsbs r2, r2, #0
	movs r4, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	add r2, sp, #0x44
	adds r0, #0x48
	strh r0, [r2]
	strh r0, [r2, #2]
	movs r0, #0x91
	movs r3, #0x1e
	bl sub_08072F9C
	adds r7, r0, #0
	ldr r0, _0809B120
	bl playSound
	movs r0, #0x5a
	bl setsleep
	ldr r2, [r7, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r0, sp, #0x1c
	bl __3Msg
	mov r0, sl
	bl __3Msg
	ldr r1, _0809B124
	mov r2, sl
	str r2, [sp]
	add r0, sp, #4
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x48
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x1c
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x10
	movs r1, #2
	bl _._3Msg
	b _0809B13E
	.align 2, 0
_0809B120: .4byte 0x00000676
_0809B124: .4byte 0x00000631
_0809B128:
	adds r0, r6, #0
	bl battle_98__6Battle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809B13E
	bl sub_08072A88__Fv
	cmp r0, #0
	ble _0809B07E
_0809B13E:
	bl sub_08072DFC__Fv
	cmp r0, #0
	bgt _0809B128
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r6, #0x1c]
	movs r3, #0x8a
	lsls r3, r3, #2
	mov sb, r3
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	add r1, sp, #0x4c
	movs r7, #0x88
	lsls r7, r7, #1
	movs r2, #0x20
	mov r8, r2
	strh r7, [r1]
	mov r3, r8
	strh r3, [r1, #2]
	ldr r2, [sp, #0x4c]
	add r1, sp, #0x50
	movs r5, #0x80
	lsls r5, r5, #1
	strh r5, [r1]
	strh r5, [r1, #2]
	ldr r3, [sp, #0x50]
	ldr r4, [r4, #4]
	movs r1, #0x1b
	bl _call_via_r4
	ldr r1, [r6, #0x1c]
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	add r1, sp, #0x54
	strh r7, [r1]
	mov r2, r8
	strh r2, [r1, #2]
	ldr r2, [sp, #0x54]
	add r1, sp, #0x58
	strh r5, [r1]
	strh r5, [r1, #2]
	ldr r3, [sp, #0x58]
	ldr r4, [r4, #4]
	movs r1, #0xb4
	bl _call_via_r4
	ldr r1, [r6, #0x1c]
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	add r1, sp, #0x5c
	strh r7, [r1]
	mov r3, r8
	strh r3, [r1, #2]
	ldr r2, [sp, #0x5c]
	add r1, sp, #0x60
	strh r5, [r1]
	strh r5, [r1, #2]
	ldr r3, [sp, #0x60]
	ldr r4, [r4, #4]
	movs r1, #0xb5
	bl _call_via_r4
	ldr r1, [r6, #0x1c]
	add r1, sb
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
	movs r1, #0
	movs r2, #1
	bl _call_via_r3
	movs r0, #0x1b
	bl sub_08072E38
	adds r2, r0, #0
	adds r2, #0x20
	ldr r3, [r0, #0x20]
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r2, r2, r0
	add r1, sp, #0x64
	movs r5, #0x78
	movs r4, #0x30
	rsbs r4, r4, #0
	strh r5, [r1]
	strh r4, [r1, #2]
	ldr r3, [r3, #0x1c]
	adds r0, r2, #0
	bl _call_via_r3
	movs r0, #0xb4
	bl sub_08072E38
	adds r2, r0, #0
	adds r2, #0x20
	ldr r3, [r0, #0x20]
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r2, r2, r0
	add r1, sp, #0x68
	movs r0, #0x38
	mov r8, r0
	mov r0, r8
	strh r0, [r1]
	strh r4, [r1, #2]
	ldr r3, [r3, #0x1c]
	adds r0, r2, #0
	bl _call_via_r3
	movs r0, #0xb5
	bl sub_08072E38
	adds r2, r0, #0
	adds r2, #0x20
	ldr r3, [r0, #0x20]
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r2, r2, r0
	add r1, sp, #0x6c
	movs r7, #0xb8
	strh r7, [r1]
	strh r4, [r1, #2]
	ldr r3, [r3, #0x1c]
	adds r0, r2, #0
	bl _call_via_r3
	movs r0, #0x1b
	bl sub_08072E38
	add r1, sp, #0x70
	movs r2, #0x50
	strh r5, [r1]
	strh r2, [r1, #2]
	movs r2, #0x1e
	bl sub_08073070
	ldr r4, _0809B364
	adds r0, r4, #0
	bl playSound
	movs r0, #0xb4
	bl sub_08072E38
	add r1, sp, #0x74
	movs r5, #0x3c
	mov r2, r8
	strh r2, [r1]
	strh r5, [r1, #2]
	movs r2, #0x1e
	bl sub_08073070
	adds r0, r4, #0
	bl playSound
	movs r0, #0xb5
	bl sub_08072E38
	add r1, sp, #0x78
	strh r7, [r1]
	strh r5, [r1, #2]
	movs r2, #0x1e
	bl sub_08073070
	adds r0, r4, #0
	bl playSound
	movs r0, #0x1b
	bl sub_08072E38
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r0, sp, #0x1c
	bl __3Msg
	mov r0, sl
	bl __3Msg
	movs r1, #0xc6
	lsls r1, r1, #3
	mov r2, sl
	str r2, [sp]
	add r0, sp, #4
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x7c
	movs r3, #0
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x1c
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x10
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	movs r0, #1
_0809B352:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809B364: .4byte 0x00000676
	.syntax divided

	.syntax unified
sub_0809C61C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r6, r0, #0
	adds r7, r1, #0
	bl unit_a0__4UnitP6Action
	movs r1, #0x88
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0809C63E
	b _0809C7D6
_0809C63E:
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809C658
	b _0809C7D6
_0809C658:
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl typeIsMonster
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809C67A
	b _0809C7D6
_0809C67A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x87
	lsls r1, r1, #2
	adds r5, r6, r1
	ldr r1, [r5]
	cmp r0, r1
	bgt _0809C69C
	b _0809C7D6
_0809C69C:
	ldr r1, [r6, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [r5]
	subs r4, r4, r0
	movs r0, #0x6e
	muls r0, r4, r0
	movs r1, #0x64
	bl sub_0807066C
	str r0, [sp, #0x44]
	lsls r0, r4, #6
	adds r0, r0, r4
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	mov sb, r0
	ldr r0, _0809C7E8
	bl playSound
	ldr r2, [r7, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x10
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	ldr r2, [r7, #0x1c]
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x1c
	mov sl, r0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r4, #0xc4
	lsls r4, r4, #1
	adds r2, r2, r4
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r5, sp, #0x28
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl _call_via_r2
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
	ldr r2, [r1, #0x1c]
	adds r2, r2, r4
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r4, sp, #0x34
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	str r4, [sp]
	add r0, sp, #4
	mov r1, r8
	mov r2, sl
	adds r3, r5, #0
	bl StrFmt
	add r1, sp, #0x40
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
	mov r0, sl
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [sp, #0x44]
	mov r1, sb
	bl randS32
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl hitPlayer
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
	movs r0, #1
	adds r1, r6, #0
	bl PlayAnimation
_0809C7D6:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809C7E8: .4byte 0x000002FF
	.syntax divided

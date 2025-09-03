	.syntax unified
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
	ldr r1, _0807BA30
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
	bl ROMStrFmt__FiRC3MsgN21
	add r0, sp, #4
	adds r1, r4, #0
	bl replace__3MsgRC3Msg
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
	ldr r0, _0807BA34
	cmp r1, r0
	bne _0807BA06
	add r0, sp, #4
	bl len__3Msg
	adds r1, r0, #0
	subs r1, #1
	add r0, sp, #4
	bl sub_0806E334__3Msgi
	ldr r2, _0807BA38
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
	.syntax divided

	.syntax unified
evtFlintIntervene:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	adds r6, r0, #0
	movs r4, #0
_08099250:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099308
	adds r4, #1
	cmp r4, #3
	ble _08099250
	ldr r1, [r6, #0x1c]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099308
	ldr r1, [r6, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080992E6
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r6, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_080992E6:
	ldr r2, [r6, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r6, r0
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r1, r6, r1
	str r1, [sp, #0x50]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809930C
_08099308:
	movs r0, #0
	b _080995C0
_0809930C:
	ldr r2, _080995D0
	adds r7, r6, r2
	ldr r1, [r7]
	ldr r0, _080995D4
	bl getMonsterSkill
	adds r4, r0, #0
	movs r0, #0x9b
	lsls r0, r0, #2
	bl playSound
	ldr r2, [r7]
	movs r0, #0x47
	adds r1, r2, #0
	bl PlayAnimation
	ldr r2, [r4, #0x1c]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r3, sp, #0x10
	mov sl, r3
	mov r0, sl
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	add r0, sp, #0x1c
	mov sb, r0
	bl __3Msg
	add r1, sp, #0x28
	mov r8, r1
	mov r0, r8
	bl __3Msg
	mov r2, r8
	str r2, [sp]
	add r0, sp, #4
	ldr r1, _080995D8
	mov r2, sl
	mov r3, sb
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	movs r1, #2
	bl _._3Msg
	ldr r2, [r7]
	movs r0, #0x90
	adds r1, r2, #0
	bl PlayAnimation
	ldr r1, [r7]
	ldr r3, [sp, #0x50]
	ldr r2, [r3]
	movs r0, #0x91
	bl PlayAnimation
	cmp r4, #0
	beq _080993C4
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080993C4:
	ldr r1, [r6, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080995DC
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080995E0
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x3c
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	ldr r1, [r7]
	movs r0, #0x44
	movs r2, #0
	movs r3, #0
	bl PlayAnimationForEach
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xcd
	lsls r2, r2, #3
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x40
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080995E4
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x44
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_0807367C
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	movs r0, #0xb4
	bl setsleep
	ldr r1, [r7]
	ldr r0, _080995D4
	bl getMonsterSkill
	adds r4, r0, #0
	movs r0, #0x9b
	lsls r0, r0, #2
	bl playSound
	ldr r2, [r7]
	movs r0, #0x47
	adds r1, r2, #0
	bl PlayAnimation
	ldr r2, [r4, #0x1c]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sl
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	mov r0, sb
	bl __3Msg
	mov r0, r8
	bl __3Msg
	mov r1, r8
	str r1, [sp]
	add r0, sp, #4
	ldr r1, _080995D8
	mov r2, sl
	mov r3, sb
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x48
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	movs r1, #2
	bl _._3Msg
	ldr r2, [r7]
	movs r0, #0x90
	adds r1, r2, #0
	bl PlayAnimation
	ldr r1, [r7]
	ldr r3, [sp, #0x50]
	ldr r2, [r3]
	movs r0, #0x91
	bl PlayAnimation
	cmp r4, #0
	beq _0809955A
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0809955A:
	ldr r1, [r7]
	movs r0, #0x45
	movs r2, #0
	movs r3, #0
	bl PlayAnimationForEach
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080995E8
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x4c
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	ldr r1, [r6, #0x1c]
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #0xb4
	bl setsleep
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080995C0:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080995D0: .4byte 0x00000F94
_080995D4: .4byte 0x000001BD
_080995D8: .4byte 0x00000667
_080995DC: .4byte 0x00000675
_080995E0: .4byte 0x00000652
_080995E4: .4byte 0x00000654
_080995E8: .4byte 0x00000655
	.syntax divided

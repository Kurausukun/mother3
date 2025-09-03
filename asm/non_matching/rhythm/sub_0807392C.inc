	.syntax unified
sub_0807392C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x30
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073962
	movs r6, #0
_08073962:
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r5, r1, r0
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r0, sb
	cmp r0, #1
	bne _08073A92
	movs r0, #0xb8
	bl __builtin_new
	adds r5, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x34
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080862D8
	adds r0, r7, #0
	bl IsPlayer
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073A92
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08073A92
	movs r0, #0x4d
	adds r1, r7, #0
	adds r2, r7, #0
	bl PlayAnimation
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x7b
	adds r2, r6, #0
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x38
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
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
_08073A92:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r1, r0
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

	.syntax unified
sub_08062E7C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	adds r7, r0, #0
	mov sb, r1
	str r2, [sp, #0x4c]
	mov r0, sp
	movs r2, #2
	mov r1, sp
	adds r1, #0xc
	str r1, [sp, #0x5c]
	mov r3, sp
	adds r3, #0x24
	str r3, [sp, #0x58]
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
_08062EA4:
	strh r1, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	subs r2, #1
	cmp r2, r3
	bne _08062EA4
	ldr r0, [sp, #0x5c]
	movs r1, #2
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
_08062EBA:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, r3
	bne _08062EBA
	ldr r0, [sp, #0x58]
	movs r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #1
	rsbs r3, r3, #0
_08062ED2:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, r3
	bne _08062ED2
	movs r0, #0
	mov r8, r0
	add r6, sp, #0x30
	mov r5, sp
	b _08062F76
_08062EE8:
	adds r0, r6, #0
	mov r1, sb
	mov r2, r8
	bl sub_08063960
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	mov r3, r8
	lsls r4, r3, #2
	adds r3, r0, #0
	adds r3, #0x20
	ldr r2, [r0, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x38
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [sp, #0x38]
	str r0, [r5]
	add r0, sp, #0x3c
	adds r1, r6, #0
	bl sub_080639FC
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_08063A90
	add r1, sp, #0x18
	adds r1, r1, r4
	str r0, [r1]
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x40
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldr r0, [sp, #0x40]
	str r0, [r5, #0x24]
	adds r0, r6, #0
	movs r1, #2
	bl _._15struct_08063998
	adds r5, #4
	movs r1, #1
	add r8, r1
_08062F76:
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r8, r0
	blt _08062EE8
	movs r3, #0
	str r3, [sp, #0x50]
	ldr r0, [sp, #0x4c]
	cmp r3, r0
	ble _08062F96
	b _080630C6
_08062F96:
	add r1, sp, #0x44
	mov sb, r1
	add r2, sp, #0x48
	mov r8, r2
_08062F9E:
	movs r3, #0
	mov sl, r3
	ldr r0, [sp, #0x50]
	adds r0, #1
	str r0, [sp, #0x54]
	b _0806309E
_08062FAA:
	movs r0, #0
	mov r1, sb
	strh r0, [r1]
	strh r0, [r1, #2]
	movs r3, #0x80
	lsls r3, r3, #1
	mov r2, r8
	strh r3, [r2]
	adds r0, r3, #0
	strh r0, [r2, #2]
	mov r1, sl
	lsls r6, r1, #2
	mov r2, sp
	adds r5, r2, r6
	movs r3, #0
	ldrsh r0, [r5, r3]
	ldr r1, [sp, #0x5c]
	adds r4, r1, r6
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x4c]
	bl sub_08069558
	mov r3, sb
	strh r0, [r3]
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x4c]
	bl sub_08069558
	mov r3, sb
	strh r0, [r3, #2]
	ldr r0, [sp, #0x58]
	adds r4, r0, r6
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x4c]
	bl sub_08069558
	mov r2, r8
	strh r0, [r2]
	movs r3, #2
	ldrsh r0, [r4, r3]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x4c]
	bl sub_08069558
	mov r1, r8
	strh r0, [r1, #2]
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	adds r2, r0, #0
	adds r2, #0x20
	ldr r1, [r0, #0x20]
	movs r3, #0x18
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	ldr r3, [r1, #0x1c]
	adds r0, r2, #0
	mov r1, sb
	bl _call_via_r3
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	adds r2, r0, #0
	adds r2, #0x20
	ldr r3, [r0, #0x20]
	movs r1, #0x20
	ldrsh r0, [r3, r1]
	adds r2, r2, r0
	add r0, sp, #0x18
	adds r0, r0, r6
	ldr r1, [r0]
	ldr r3, [r3, #0x24]
	adds r0, r2, #0
	bl _call_via_r3
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	mov r1, r8
	bl _call_via_r2
	movs r0, #1
	add sl, r0
_0806309E:
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sl, r0
	bge _080630B4
	b _08062FAA
_080630B4:
	movs r0, #1
	bl setsleep
	ldr r3, [sp, #0x54]
	str r3, [sp, #0x50]
	ldr r0, [sp, #0x4c]
	cmp r3, r0
	bgt _080630C6
	b _08062F9E
_080630C6:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

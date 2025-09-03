	.syntax unified
sub_08063478:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	mov sb, r0
	str r1, [sp, #0x44]
	mov r6, sb
	adds r6, #0x70
	add r7, sp, #0x44
	movs r5, #0
	ldr r3, [r6, #4]
	mov r8, r7
	cmp r5, r3
	bge _080634D4
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_0806349E:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _080634C8
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _080634C0
	adds r2, r0, #0
_080634B6:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _080634B6
_080634C0:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _080634D6
_080634C8:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _0806349E
_080634D4:
	movs r0, #0
_080634D6:
	cmp r0, #0
	bne _080634DC
	b _080636EC
_080634DC:
	mov r6, sb
	adds r6, #0x80
	mov r7, r8
	movs r5, #0
	ldr r3, [r6, #4]
	add r0, sp, #0x20
	mov sl, r0
	mov r1, sb
	adds r1, #0x8e
	str r1, [sp, #0x48]
	cmp r5, r3
	bge _0806352E
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_080634FA:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08063522
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _0806351C
	adds r2, r0, #0
_08063512:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08063512
_0806351C:
	subs r0, r4, #1
	str r0, [r6, #4]
	b _0806352E
_08063522:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _080634FA
_0806352E:
	mov r2, sb
	ldr r4, [r2, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _080636FC
	mov r8, r0
	ldr r0, _08063700
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r1, r8
	str r1, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _08063704
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x3c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r3, sb
	ldr r4, [r3, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _08063708
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r1, r8
	str r1, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	mov r2, sb
	ldr r0, [r2, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r6, r0, r3
	movs r1, #0
	ldrsh r5, [r6, r1]
	add r5, sb
	movs r2, #0x94
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r4, r0
	ldr r2, [r6, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	mov r0, sb
	ldr r4, [r0, #0x1c]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sb
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r3, #0xba
	lsls r3, r3, #2
	adds r1, r1, r3
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
	mov r1, sb
	ldr r0, [r1, #0x1c]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r6, r0, r2
	movs r3, #0
	ldrsh r5, [r6, r3]
	add r5, sb
	adds r2, #0x18
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xbc
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r4, r0
	ldr r2, [r6, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, _0806370C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r4, #5]
	cmp r0, r1
	bhs _080636D0
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x3d
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
_080636D0:
	mov r0, sb
	ldr r2, [r0, #0x1c]
	adds r2, #0x68
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sb
	ldr r1, [sp, #0x44]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [sp, #0x48]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_080636EC:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080636FC: .4byte _vt.3Unk
_08063700: .4byte _vt.7Suspend
_08063704: .4byte _vt.7UnitDie
_08063708: .4byte _vt.6Resume
_0806370C: .4byte gEncounter
	.syntax divided

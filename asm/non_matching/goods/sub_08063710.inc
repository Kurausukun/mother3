	.syntax unified
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
	bge _0806376C
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08063736:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08063760
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08063758
	adds r2, r0, #0
_0806374E:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0806374E
_08063758:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _0806376E
_08063760:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08063736
_0806376C:
	movs r0, #0
_0806376E:
	cmp r0, #0
	bne _08063774
	b _08063896
_08063774:
	mov r5, sb
	adds r5, #0x80
	mov r7, r8
	movs r6, #0
	ldr r3, [r5, #4]
	mov r0, sb
	ldr r0, [r0, #0x1c]
	mov r8, r0
	add r1, sp, #0x20
	mov sl, r1
	mov r2, sb
	adds r2, #0x90
	str r2, [sp, #0x48]
	cmp r6, r3
	bge _080637CC
	ldr r0, [r5, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08063798:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _080637C0
	adds r0, r6, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r5, #4]
	cmp r0, #0
	ble _080637BA
	adds r2, r0, #0
_080637B0:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _080637B0
_080637BA:
	subs r0, r4, #1
	str r0, [r5, #4]
	b _080637CC
_080637C0:
	adds r4, #4
	adds r2, #4
	adds r6, #1
	ldr r3, [r5, #4]
	cmp r6, r3
	blt _08063798
_080637CC:
	mov r5, r8
	adds r5, #0x50
	movs r3, #0
	ldrsh r4, [r5, r3]
	add r4, sb
	mov r0, sp
	bl __4Base
	ldr r0, _080638A8
	mov r8, r0
	ldr r0, _080638AC
	str r0, [sp, #0x1c]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r2
	mov r1, r8
	str r1, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	mov r2, sb
	ldr r4, [r2, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	add r5, sb
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _080638B0
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x3c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r1, sb
	ldr r4, [r1, #0x1c]
	adds r4, #0x50
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _080638B4
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
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
	ldr r1, _080638B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, #0x3d
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
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
_08063896:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080638A8: .4byte _vt.3Unk
_080638AC: .4byte _vt.7Suspend
_080638B0: .4byte _vt.7UnitDie
_080638B4: .4byte _vt.6Resume
_080638B8: .4byte gEncounter
	.syntax divided

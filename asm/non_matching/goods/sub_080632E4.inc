	.syntax unified
sub_080632E4:
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
	bge _08063340
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_0806330A:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08063334
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _0806332C
	adds r2, r0, #0
_08063322:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08063322
_0806332C:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _08063342
_08063334:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _0806330A
_08063340:
	movs r0, #0
_08063342:
	cmp r0, #0
	bne _08063348
	b _08063458
_08063348:
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
	mov r0, sb
	adds r0, #0x8c
	str r0, [sp, #0x48]
	cmp r6, r3
	bge _080633A0
	ldr r0, [r5, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_0806336C:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08063394
	adds r0, r6, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r5, #4]
	cmp r0, #0
	ble _0806338E
	adds r2, r0, #0
_08063384:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08063384
_0806338E:
	subs r0, r4, #1
	str r0, [r5, #4]
	b _080633A0
_08063394:
	adds r4, #4
	adds r2, #4
	adds r6, #1
	ldr r3, [r5, #4]
	cmp r6, r3
	blt _0806336C
_080633A0:
	mov r5, r8
	adds r5, #0x50
	movs r1, #0
	ldrsh r4, [r5, r1]
	add r4, sb
	mov r0, sp
	bl __4Base
	ldr r3, _08063468
	mov r8, r3
	ldr r0, _0806346C
	str r0, [sp, #0x1c]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
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
	ldr r0, _08063470
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x3c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _08063474
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
	mov r0, sb
	ldr r2, [r0, #0x1c]
	adds r2, #0x68
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sb
	ldr r1, [sp, #0x44]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r3, [sp, #0x48]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
_08063458:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063468: .4byte _vt.3Unk
_0806346C: .4byte _vt.7Suspend
_08063470: .4byte _vt.10UnitEscape
_08063474: .4byte _vt.6Resume
	.syntax divided

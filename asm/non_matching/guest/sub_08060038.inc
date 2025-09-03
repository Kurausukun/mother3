	.syntax unified
sub_08060038:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r7, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08061004
	str r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08060072
	b _080601CC
_08060072:
	adds r4, r7, #0
	adds r4, #0x5c
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x5c]
	movs r1, #0x68
	adds r1, r1, r7
	mov sl, r1
	add r2, sp, #0x20
	mov sb, r2
	cmp r0, r5
	bge _080600C6
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08060098
	adds r0, r1, #0
_08060098:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080600B8
	adds r1, r0, #0
_080600AE:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080600AE
_080600B8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080600C2
	bl __builtin_vec_delete
_080600C2:
	str r5, [r4]
	str r6, [r4, #8]
_080600C6:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r4, sl
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x68]
	cmp r0, r5
	bge _08060120
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080600F2
	adds r0, r1, #0
_080600F2:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08060112
	adds r1, r0, #0
_08060108:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08060108
_08060112:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806011C
	bl __builtin_vec_delete
_0806011C:
	str r5, [r4]
	str r6, [r4, #8]
_08060120:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r1, _080601BC
	mov r8, r1
	ldr r0, _080601C0
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r7, r5
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _080601C4
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sb
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x3c]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r0, _080601C8
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	b _08060320
	.align 2, 0
_080601BC: .4byte _vt.3Unk
_080601C0: .4byte _vt.7Suspend
_080601C4: .4byte _vt.8UnitJoin
_080601C8: .4byte _vt.6Resume
_080601CC:
	adds r4, r7, #0
	adds r4, #0x5c
	add r3, sp, #0x44
	mov r8, r3
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	adds r1, r1, r7
	mov sb, r1
	cmp r0, r5
	bge _0806021C
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080601EE
	adds r0, r1, #0
_080601EE:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0806020E
	adds r1, r0, #0
_08060204:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08060204
_0806020E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08060218
	bl __builtin_vec_delete
_08060218:
	str r5, [r4]
	str r6, [r4, #8]
_0806021C:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r4, sb
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _08060276
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08060248
	adds r0, r1, #0
_08060248:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08060268
	adds r1, r0, #0
_0806025E:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0806025E
_08060268:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08060272
	bl __builtin_vec_delete
_08060272:
	str r5, [r4]
	str r6, [r4, #8]
_08060276:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r1, _08060330
	mov r8, r1
	ldr r0, _08060334
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r7, r5
	ldr r6, [sp, #0x44]
	mov r0, sp
	bl __4Base
	str r6, [sp, #0x20]
	ldr r0, _08060338
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r0, _0806033C
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
_08060320:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060330: .4byte _vt.3Unk
_08060334: .4byte _vt.7Suspend
_08060338: .4byte _vt.7UnitDie
_0806033C: .4byte _vt.6Resume
	.syntax divided

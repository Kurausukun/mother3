	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r7, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	ldr r5, [sp, #0x6c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08063EC4
	str r0, [sp, #0x44]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r4, #0
	bl _call_via_r2
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	adds r0, r7, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r0, #0
	bne _08063154
	bl sub_08072718
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08063154
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	b _0806316C
_08063154:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_0806316C:
	adds r4, r7, #0
	adds r4, #0x70
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x70]
	adds r1, r7, #0
	adds r1, #0x7c
	str r1, [sp, #0x48]
	movs r2, #0x80
	adds r2, r2, r7
	mov sl, r2
	add r3, sp, #0x20
	mov sb, r3
	cmp r0, r5
	bge _080631C6
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08063198
	adds r0, r1, #0
_08063198:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080631B8
	adds r1, r0, #0
_080631AE:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080631AE
_080631B8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080631C2
	bl __builtin_vec_delete
_080631C2:
	str r5, [r4]
	str r6, [r4, #8]
_080631C6:
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
	ldr r0, [r4]
	cmp r0, r5
	bge _08063220
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080631F2
	adds r0, r1, #0
_080631F2:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08063212
	adds r1, r0, #0
_08063208:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08063208
_08063212:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806321C
	bl __builtin_vec_delete
_0806321C:
	str r5, [r4]
	str r6, [r4, #8]
_08063220:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r1, [sp, #0x48]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r3, _080632D4
	mov r8, r3
	ldr r0, _080632D8
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
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _080632DC
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sb
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x3c]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r0, _080632E0
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
	ldr r0, [sp, #0x44]
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080632D4: .4byte _vt.3Unk
_080632D8: .4byte _vt.7Suspend
_080632DC: .4byte _vt.8UnitJoin
_080632E0: .4byte _vt.6Resume
	.syntax divided

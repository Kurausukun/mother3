	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov sb, r0
	str r1, [sp, #0x44]
	mov r6, sb
	adds r6, #0x80
	add r7, sp, #0x44
	movs r5, #0
	ldr r3, [r6, #4]
	mov r8, r7
	cmp r5, r3
	bge _08060918
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_080608E2:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _0806090C
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08060904
	adds r2, r0, #0
_080608FA:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _080608FA
_08060904:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _0806091A
_0806090C:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _080608E2
_08060918:
	movs r0, #0
_0806091A:
	cmp r0, #0
	bne _08060920
	b _08060A26
_08060920:
	mov r4, sb
	adds r4, #0x68
	ldr r0, [r4, #4]
	adds r5, r0, #1
	mov r1, sb
	ldr r0, [r1, #0x68]
	adds r6, r4, #0
	add r3, sp, #0x20
	mov sl, r3
	cmp r0, r5
	bge _0806096E
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08060940
	adds r0, r1, #0
_08060940:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r6, #8]
	adds r2, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _08060960
	adds r1, r0, #0
_08060956:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08060956
_08060960:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806096A
	bl __builtin_vec_delete
_0806096A:
	str r5, [r4]
	str r7, [r4, #8]
_0806096E:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	adds r1, r6, #0
	bl sub_08060A48
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r3, _08060A38
	mov r8, r3
	ldr r0, _08060A3C
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
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
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
	ldr r0, _08060A40
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
	ldr r0, _08060A44
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
_08060A26:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060A38: .4byte _vt.3Unk
_08060A3C: .4byte _vt.7Suspend
_08060A40: .4byte _vt.10UnitRevive
_08060A44: .4byte _vt.6Resume
	.syntax divided

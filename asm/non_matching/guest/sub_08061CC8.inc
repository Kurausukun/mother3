	.syntax unified
sub_08061CC8:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x48
	adds r7, r0, #0
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	bl create__12GuestFactoryUs
	str r0, [sp, #0x44]
	adds r4, r7, #0
	adds r4, #0x34
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x34]
	add r1, sp, #0x20
	mov sb, r1
	cmp r0, r5
	bge _08061D2C
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08061CFE
	adds r0, r1, #0
_08061CFE:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08061D1E
	adds r1, r0, #0
_08061D14:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08061D14
_08061D1E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08061D28
	bl __builtin_vec_delete
_08061D28:
	str r5, [r4]
	str r6, [r4, #8]
_08061D2C:
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
	ldr r1, _08061DD4
	mov r8, r1
	ldr r0, _08061DD8
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
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _08061DDC
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sb
	bl _call_via_r2
	mov r1, r8
	str r1, [sp, #0x3c]
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
	ldr r0, _08061DE0
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
	add sp, #0x48
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061DD4: .4byte _vt.3Unk
_08061DD8: .4byte _vt.7Suspend
_08061DDC: .4byte _vt.8UnitJoin
_08061DE0: .4byte _vt.6Resume
	.syntax divided

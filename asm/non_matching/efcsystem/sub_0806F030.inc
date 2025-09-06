	.syntax unified
sub_0806F030:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x34
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_080894BC
	ldr r0, _0806F178
	str r0, [r7, #0x1c]
	movs r0, #0x34
	adds r0, r0, r7
	mov sb, r0
	bl sub_0806D64C
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	bl _call_via_r2
	bl sub_0806EC08
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	strh r5, [r7, #0x2c]
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	str r0, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0xa0
	mov r1, r8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	adds r0, #0x74
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0xa8
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0xaa
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0806F1EC
	ldr r3, [r4, #0x1c]
	adds r3, #0x98
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x30]
	ldrh r2, [r0, #2]
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	ldr r3, [r4, #0x1c]
	adds r3, #0x98
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r7, #0x30]
	ldrh r2, [r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r2, sp, #0x1c
	ldr r0, [r7, #0x30]
	adds r0, #4
	movs r1, #0x40
	ldr r4, _0806F17C
	str r4, [sp, #0x24]
	str r0, [sp, #0x1c]
	str r1, [r2, #4]
	adds r5, #2
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r2, [sp]
	mov r0, sb
	adds r1, r5, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_0806D744
	str r4, [sp, #0x24]
	str r4, [sp, #0x18]
	str r4, [sp, #0xc]
	add r1, sp, #0x28
	mov r2, r8
	strh r2, [r1]
	strh r2, [r1, #2]
	mov r0, sb
	bl sub_0806D814
	add r1, sp, #0x2c
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r0, [r1, #2]
	mov r0, sb
	bl sub_0806D828
	add r1, sp, #0x30
	mov r0, r8
	strh r0, [r1]
	strh r0, [r1, #2]
	mov r0, sb
	bl sub_0806D83C
	movs r5, #0x44
	movs r4, #3
_0806F14A:
	movs r0, #0x34
	bl __builtin_new
	ldr r2, [r7, #0x30]
	adds r2, r2, r5
	adds r1, r7, #0
	bl sub_0806F56C
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bge _0806F14A
	ldr r0, [r7, #0x30]
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #1
	beq _0806F180
	cmp r0, #1
	ble _0806F1A2
	cmp r0, #2
	beq _0806F192
	b _0806F1A2
	.align 2, 0
_0806F178: .4byte vt_09F80238
_0806F17C: .4byte _vt.6ResPtr
_0806F180:
	movs r0, #0x38
	bl __builtin_new
	ldr r2, [r7, #0x30]
	adds r2, #0x88
	adds r1, r7, #0
	bl sub_0806F97C
	b _0806F1A2
_0806F192:
	movs r0, #0x38
	bl __builtin_new
	ldr r2, [r7, #0x30]
	adds r2, #0x88
	adds r1, r7, #0
	bl sub_0806F7EC
_0806F1A2:
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806F1E0
	ldr r0, _0806F1E4
	str r0, [sp, #0x20]
	ldr r0, _0806F1E8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x34
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806F1E0: .4byte _vt.3Unk
_0806F1E4: .4byte _vt.8AppClock
_0806F1E8: .4byte gUnknown_081006B4
	.syntax divided

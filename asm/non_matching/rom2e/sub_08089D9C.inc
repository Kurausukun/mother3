	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_080895A0
	ldr r0, _08089F4C
	str r0, [r7, #0x1c]
	ldr r1, [r6, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r0, _08089F50
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x34
	bl sub_0806D64C
	bl sub_0806FBA8
	mov sb, r0
	str r4, [r7, #0x2c]
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r0, [r2, r3]
	add r0, sb
	ldrh r1, [r4, #8]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r0, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	add r0, sp, #0x28
	mov r8, r0
	ldrh r0, [r4, #0xc]
	subs r0, #0x80
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r4, #0xe]
	subs r0, #0x80
	strh r0, [r1, #2]
	movs r3, #0x10
	ldrsh r2, [r4, r3]
	mov sl, r2
	ldr r2, [r6, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x2c
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl _call_via_r2
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0
	ldrsh r5, [r4, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	movs r2, #2
	ldrsh r3, [r4, r2]
	add r2, sp, #0x30
	adds r1, r1, r5
	adds r0, r0, r3
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x28]
	ldr r0, [r6, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r6, r6, r1
	ldr r1, [r0, #4]
	adds r0, r6, #0
	bl _call_via_r1
	add r0, sl
	movs r3, #0
	mov sl, r3
	cmp r0, #0
	blt _08089E72
	mov sl, r0
	cmp r0, #7
	ble _08089E72
	movs r0, #7
	mov sl, r0
_08089E72:
	mov r1, sb
	ldr r3, [r1, #0x1c]
	adds r3, #0x78
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x30]
	ldrh r2, [r0, #8]
	add r0, sp, #4
	ldr r3, [r3, #4]
	add r1, sb
	bl _call_via_r3
	mov r0, sb
	ldr r3, [r0, #0x1c]
	adds r3, #0x78
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x30]
	ldrh r2, [r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r3, [r3, #4]
	add r1, sb
	bl _call_via_r3
	mov r0, sb
	ldr r3, [r0, #0x1c]
	adds r3, #0x78
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x30]
	ldrh r2, [r0, #2]
	add r4, sp, #0x1c
	adds r0, r4, #0
	ldr r3, [r3, #4]
	add r1, sb
	bl _call_via_r3
	adds r5, r7, #0
	adds r5, #0x34
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #1
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_0806D744
	ldr r0, _08089F54
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	mov r1, r8
	bl sub_0806D814
	add r1, sp, #0x34
	movs r0, #0x80
	lsls r0, r0, #1
	movs r4, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	bl sub_0806D828
	add r1, sp, #0x38
	strh r4, [r1]
	strh r4, [r1, #2]
	adds r0, r5, #0
	bl sub_0806D83C
	bl sub_0806B070
	movs r1, #1
	mov r2, sl
	bl sub_0806BACC
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _08089F58
	ldr r0, _08089F5C
	str r0, [sp, #0x20]
	ldr r0, _08089F60
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
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08089F4C: .4byte vt_09F85378
_08089F50: .4byte vt_09F852E0
_08089F54: .4byte _vt.1D
_08089F58: .4byte _vt.3Unk
_08089F5C: .4byte _vt.8AppClock
_08089F60: .4byte gUnknown_0811600C
	.syntax divided

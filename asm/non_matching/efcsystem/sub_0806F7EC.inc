	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080894BC
	ldr r0, _0806F888
	str r0, [r5, #0x1c]
	movs r0, #0
	strh r0, [r5, #0x34]
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	str r6, [r5, #0x2c]
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	strh r0, [r5, #0x30]
	ldr r0, [r4, #0x1c]
	adds r0, #0xf0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	strh r0, [r5, #0x32]
	ldr r0, _0806F88C
	ands r7, r0
	str r7, [r5, #0x34]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0806F890
	mov r8, r0
	ldr r0, _0806F894
	str r0, [sp, #0x20]
	ldr r0, _0806F898
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806F888: .4byte vt_09F803D8
_0806F88C: .4byte 0xFFFF0000
_0806F890: .4byte _vt.3Unk
_0806F894: .4byte _vt.8AppClock
_0806F898: .4byte gUnknown_08101944
	.syntax divided

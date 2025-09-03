	.syntax unified
sub_08086750:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _080867B0
	str r0, [r5, #0x1c]
	movs r0, #0
	strh r0, [r5, #0x24]
	strh r0, [r5, #0x26]
	str r0, [r5, #0x28]
	movs r0, #1
	strh r0, [r5, #0x2c]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080867B4
	mov r8, r0
	ldr r0, _080867B8
	str r0, [sp, #0x20]
	ldr r0, _080867BC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080867B0: .4byte vt_09F84948
_080867B4: .4byte _vt.3Unk
_080867B8: .4byte _vt.8AppClock
_080867BC: .4byte gUnknown_08112188
	.syntax divided

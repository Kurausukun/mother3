	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_0806FF6C
	ldr r0, _080746FC
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08074710
	str r0, [r5, #0x3c]
	movs r1, #0
	str r1, [r5, #0x40]
	str r1, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x48
	strb r1, [r0]
	str r1, [r5, #0x4c]
	adds r0, #8
	movs r2, #0
	strh r1, [r0]
	movs r0, #2
	str r0, [r5, #0x58]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r2, [r0]
	bl get__10IrcManager
	ldr r1, _08074700
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r5, #0
	bl sub_08069A50__3IrcUiG5Intr2
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08074704
	mov r8, r0
	ldr r0, _08074708
	str r0, [sp, #0x20]
	ldr r0, _0807470C
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
_080746FC: .4byte vt_09F812F8
_08074700: .4byte gUnknown_08105CD0
_08074704: .4byte _vt.3Unk
_08074708: .4byte _vt.8AppClock
_0807470C: .4byte gUnknown_08105CD8
	.syntax divided

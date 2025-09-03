	.syntax unified
sub_080869BC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0806D8EC
	ldr r0, _08086A80
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x94
	str r4, [r0]
	adds r0, r5, #0
	bl sub_08086C3C
	movs r1, #0x98
	adds r1, r1, r5
	mov r8, r1
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0x9c
	movs r0, #0
	str r0, [r1]
	ldr r1, _08086A84
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #2
	bl sub_080706A0
	ldr r1, _08086A88
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08086A8C
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r0, r8
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08086C40
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08086C68
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r1, _08086A90
	mov r8, r1
	ldr r0, _08086A94
	str r0, [sp, #0x20]
	ldr r0, _08086A98
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
_08086A80: .4byte vt_09F849F0
_08086A84: .4byte 0x00000291
_08086A88: .4byte 0x00000283
_08086A8C: .4byte _vt.1D
_08086A90: .4byte _vt.3Unk
_08086A94: .4byte _vt.11PreAppClock
_08086A98: .4byte gUnknown_08112810
	.syntax divided

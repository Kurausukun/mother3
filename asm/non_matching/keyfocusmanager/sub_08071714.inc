	.syntax unified
sub_08071714:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r7, r0, #0
	adds r6, r1, #0
	bl __4Base
	ldr r0, _080717DC
	str r0, [r7, #0x1c]
	movs r4, #0
	strh r4, [r7, #0x38]
	strh r4, [r7, #0x3a]
	adds r0, r7, #0
	adds r0, #0x44
	bl sub_0806D548
	adds r0, r7, #0
	adds r0, #0x58
	bl sub_0806D478
	str r4, [r7, #0x24]
	adds r1, r7, #0
	adds r1, #0x34
	movs r0, #2
	strb r0, [r1]
	str r4, [r7, #0x3c]
	adds r1, #0xc
	movs r0, #7
	strb r0, [r1]
	add r0, sp, #0x10
	mov r8, r0
	movs r2, #0
	movs r1, #2
	adds r0, r7, #0
	adds r0, #0x30
_0807175C:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0807175C
	movs r5, #0
	adds r4, r7, #0
	adds r4, #0x44
	add r0, sp, #4
	movs r1, #0
	bl sub_080706A0
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_0806D5AC
	ldr r0, _080717E0
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r0, #0x58
	adds r1, r6, #0
	bl sub_0806D4D0
	adds r1, r7, #0
	adds r1, #0x64
	add r0, sp, #4
	strh r5, [r0]
	ldr r0, _080717E4
	add r2, sp, #4
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _080717E8
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #0x10
	bl __4Base
	ldr r6, _080717EC
	ldr r0, _080717F0
	str r0, [sp, #0x2c]
	ldr r0, _080717F4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	mov r2, r8
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x2c]
	mov r0, r8
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080717DC: .4byte vt_09F80C88
_080717E0: .4byte _vt.1D
_080717E4: .4byte 0x040000D4
_080717E8: .4byte 0x81000040
_080717EC: .4byte _vt.3Unk
_080717F0: .4byte _vt.8AppClock
_080717F4: .4byte gUnknown_08103710
	.syntax divided

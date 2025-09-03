	.syntax unified
sub_08089684:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_080895A0
	ldr r0, _08089704
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x34
	movs r0, #0
	str r0, [r5, #0x34]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	strh r0, [r1]
	strh r0, [r1, #2]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x44]
	adds r1, #0xc
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	bl sub_0806B070
	movs r1, #1
	bl sub_0806BB20
	str r0, [r5, #0x48]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08089708
	mov r8, r0
	ldr r0, _0808970C
	str r0, [sp, #0x20]
	ldr r0, _08089710
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
_08089704: .4byte vt_09F851D8
_08089708: .4byte _vt.3Unk
_0808970C: .4byte _vt.8AppClock
_08089710: .4byte gUnknown_08115EAC
	.syntax divided

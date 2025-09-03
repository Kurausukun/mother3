	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806E8AC
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x20
	bl __15Struct_09F85088
	adds r0, r7, #0
	adds r0, #0x2c
	bl __3Msg
	movs r4, #0
	movs r0, #0
	strh r0, [r7, #0x38]
	strh r0, [r7, #0x3a]
	adds r1, r7, #0
	adds r1, #0x44
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r7, #0
	adds r0, #0x4c
	bl __1V
	add r0, sp, #0x28
	strb r4, [r0]
	strb r4, [r0, #1]
	strb r4, [r0, #2]
	ldr r0, [sp, #0x28]
	str r0, [r7, #0x3c]
	adds r0, r7, #0
	adds r0, #0x40
	strb r4, [r0]
	adds r0, #8
	strb r4, [r0]
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #2
	strb r0, [r1]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806E8B0
	ldr r0, _0806E8B4
	str r0, [sp, #0x20]
	ldr r0, _0806E8B8
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
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806E8AC: .4byte vt_09F7FFE0
_0806E8B0: .4byte _vt.3Unk
_0806E8B4: .4byte _vt.8AppClock
_0806E8B8: .4byte gUnknown_081002E4
	.syntax divided

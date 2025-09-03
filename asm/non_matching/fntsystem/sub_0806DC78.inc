	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806DD34
	str r0, [r7, #0x1c]
	movs r4, #0
	strh r4, [r7, #0x28]
	strh r4, [r7, #0x2a]
	strh r4, [r7, #0x30]
	movs r5, #0x80
	lsls r5, r5, #1
	strh r5, [r7, #0x34]
	strh r5, [r7, #0x36]
	adds r0, r7, #0
	adds r0, #0x3c
	bl sub_080887B0
	adds r0, r7, #0
	adds r0, #0x58
	bl sub_0806D548
	adds r0, r7, #0
	adds r0, #0x6c
	bl sub_0806D478
	adds r0, r7, #0
	adds r0, #0x78
	bl sub_080886E0
	adds r0, r7, #0
	adds r0, #0x80
	bl sub_08088628
	adds r0, r7, #0
	adds r0, #0x90
	bl sub_080888B4
	strh r4, [r7, #0x20]
	movs r0, #1
	strh r0, [r7, #0x22]
	strh r4, [r7, #0x24]
	add r0, sp, #0x28
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x28]
	str r0, [r7, #0x28]
	str r4, [r7, #0x2c]
	ldr r0, _0806DD38
	ands r6, r0
	str r6, [r7, #0x30]
	add r0, sp, #0x2c
	strh r5, [r0]
	strh r5, [r0, #2]
	ldr r0, [sp, #0x2c]
	str r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x88
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806DD3C
	ldr r0, _0806DD40
	str r0, [sp, #0x20]
	ldr r0, _0806DD44
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
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806DD34: .4byte vt_09F7FE10
_0806DD38: .4byte 0xFFFF0000
_0806DD3C: .4byte _vt.3Unk
_0806DD40: .4byte _vt.8AppClock
_0806DD44: .4byte gUnknown_080FFF9C
	.syntax divided

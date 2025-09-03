	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _08062438
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x24
	movs r0, #0
	str r0, [r7, #0x24]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x30]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x3c]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x48]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x54]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x60]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0x10
	str r0, [r7, #0x70]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0x10
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	subs r1, #0x14
	strb r0, [r1]
	adds r1, #0x10
	movs r2, #0
	strh r0, [r1]
	adds r1, #0x10
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #6
	str r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r1, #4
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa0
	strb r2, [r0]
	adds r0, r7, #0
	bl sub_08062448
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806243C
	ldr r0, _08062440
	str r0, [sp, #0x20]
	ldr r0, _08062444
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
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08062438: .4byte vt_09F4E320
_0806243C: .4byte _vt.3Unk
_08062440: .4byte _vt.8AppClock
_08062444: .4byte gUnknown_080F812C
	.syntax divided

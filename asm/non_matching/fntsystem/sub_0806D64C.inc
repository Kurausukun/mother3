	.syntax unified
sub_0806D64C:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806D6D0
	str r0, [r7, #0x1c]
	movs r4, #0
	strh r4, [r7, #0x24]
	strh r4, [r7, #0x26]
	adds r0, r7, #0
	adds r0, #0x28
	strh r4, [r7, #0x28]
	strh r4, [r0, #2]
	adds r0, #4
	strh r4, [r7, #0x2c]
	strh r4, [r0, #2]
	adds r0, #4
	bl sub_08087ED8
	adds r0, r7, #0
	adds r0, #0x44
	bl sub_0806D548
	adds r0, r7, #0
	adds r0, #0x58
	bl sub_0806D478
	adds r0, r7, #0
	adds r0, #0x64
	bl sub_08088018
	strh r4, [r7, #0x20]
	adds r1, r7, #0
	adds r1, #0x68
	movs r0, #2
	strh r0, [r1]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806D6D4
	ldr r0, _0806D6D8
	str r0, [sp, #0x20]
	ldr r0, _0806D6DC
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
_0806D6D0: .4byte vt_09F7FC50
_0806D6D4: .4byte _vt.3Unk
_0806D6D8: .4byte _vt.8AppClock
_0806D6DC: .4byte gUnknown_080FFD3C
	.syntax divided

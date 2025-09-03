	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0805FA34
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x28
	movs r0, #0
	str r0, [r7, #0x28]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x34]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x40]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x4c]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0x10
	str r0, [r7, #0x5c]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x68]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x74]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r1, _0805FA38
	str r1, [r7, #0x24]
	adds r1, r7, #0
	adds r1, #0x58
	strb r0, [r1]
	ldr r1, [r7, #0x24]
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0805FA48
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0805FA3C
	ldr r0, _0805FA40
	str r0, [sp, #0x20]
	ldr r0, _0805FA44
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
_0805FA34: .4byte vt_09F467F8
_0805FA38: .4byte gSave
_0805FA3C: .4byte _vt.3Unk
_0805FA40: .4byte _vt.8AppClock
_0805FA44: .4byte gUnknown_080F4590
	.syntax divided

	.syntax unified
sub_0806C4AC:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806C50C
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x20
	movs r2, #3
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
_0806C4C6:
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, #0xc
	subs r2, #1
	cmp r2, r3
	bne _0806C4C6
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806C510
	ldr r0, _0806C514
	str r0, [sp, #0x20]
	ldr r0, _0806C518
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
_0806C50C: .4byte vt_09F7F0B0
_0806C510: .4byte _vt.3Unk
_0806C514: .4byte _vt.8SysClock
_0806C518: .4byte gUnknown_080FF534
	.syntax divided

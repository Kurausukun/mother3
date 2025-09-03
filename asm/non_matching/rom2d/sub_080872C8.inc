	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _08087338
	str r0, [r5, #0x1c]
	movs r1, #0
	str r1, [r5, #0x24]
	movs r2, #0x85
	lsls r2, r2, #3
	adds r0, r5, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	str r1, [r0]
	adds r2, #8
	adds r0, r5, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	strh r1, [r0]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808733C
	mov r8, r0
	ldr r0, _08087340
	str r0, [sp, #0x20]
	ldr r0, _08087344
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
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
_08087338: .4byte vt_09F84F00
_0808733C: .4byte _vt.3Unk
_08087340: .4byte _vt.8AppClock
_08087344: .4byte gUnknown_08114F84
	.syntax divided

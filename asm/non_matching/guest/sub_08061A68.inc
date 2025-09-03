	.syntax unified
sub_08061A68:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _08061AD8
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #0
	str r0, [r5, #0x24]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0x10
	str r0, [r5, #0x34]
	str r0, [r1, #4]
	str r0, [r1, #8]
	subs r1, #4
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08061AE8
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08061ADC
	mov r8, r0
	ldr r0, _08061AE0
	str r0, [sp, #0x20]
	ldr r0, _08061AE4
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
_08061AD8: .4byte vt_09F4B948
_08061ADC: .4byte _vt.3Unk
_08061AE0: .4byte _vt.8AppClock
_08061AE4: .4byte gUnknown_080F6704
	.syntax divided

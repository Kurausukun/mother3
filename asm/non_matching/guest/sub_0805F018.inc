	.syntax unified
sub_0805F018:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x48
	adds r5, r0, #0
	bl __4Base
	ldr r0, _0805F0AC
	str r0, [r5, #0x1c]
	movs r0, #0
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	adds r0, r5, #0
	bl nullsub_26
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0805F0B0
	mov sb, r0
	ldr r0, _0805F0B4
	str r0, [sp, #0x20]
	ldr r0, _0805F0B8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__12ClockManager
	mov r8, r0
	add r0, sp, #0x24
	bl __4Base
	ldr r0, _0805F0BC
	str r0, [sp, #0x40]
	add r6, sp, #0x24
	ldr r0, _0805F0C0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x40]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x48
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805F0AC: .4byte vt_09F466F0
_0805F0B0: .4byte _vt.3Unk
_0805F0B4: .4byte _vt.13ShowDownAsWin
_0805F0B8: .4byte gUnknown_080F3870
_0805F0BC: .4byte _vt.8AppClock
_0805F0C0: .4byte gUnknown_080F3878
	.syntax divided

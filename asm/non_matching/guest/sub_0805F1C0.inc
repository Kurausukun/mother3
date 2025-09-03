	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov r8, r0
	bl __4Base
	ldr r0, _0805F428
	mov r1, r8
	str r0, [r1, #0x1c]
	mov r0, r8
	adds r0, #0x24
	movs r6, #0
	str r6, [r1, #0x24]
	str r6, [r0, #4]
	str r6, [r0, #8]
	adds r0, #0xc
	str r6, [r1, #0x30]
	str r6, [r0, #4]
	str r6, [r0, #8]
	bl getPartyInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	ldr r0, _0805F42C
	mov sl, r0
	str r0, [sp, #0x20]
	ldr r0, _0805F430
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	ldr r0, _0805F438
	mov sl, r0
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	ldr r0, _0805F43C
	mov sl, r0
	str r0, [sp, #0x20]
	ldr r0, _0805F440
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	ldr r0, _0805F444
	mov sl, r0
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	mov r0, r8
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805F428: .4byte vt_09F46768
_0805F42C: .4byte _vt.8UnitJoin
_0805F430: .4byte gUnknown_080F3F00
_0805F434: .4byte _vt.3Unk
_0805F438: .4byte _vt.10UnitRevive
_0805F43C: .4byte _vt.10UnitEscape
_0805F440: .4byte gUnknown_080F3F08
_0805F444: .4byte _vt.7UnitDie
	.syntax divided

	.syntax unified
sub_080864AC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r6, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_08089684
	ldr r0, _080865F4
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08089780
	bl getPartyInfo
	mov r8, r0
	movs r7, #0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x24]
	ldr r0, _080865F8
	mov sb, r0
	str r0, [sp, #0x20]
	ldr r0, _080865FC
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _08086600
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x24]
	mov r0, sb
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _08086600
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x24]
	mov r0, sb
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _08086600
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x24]
	ldr r0, _08086604
	mov sb, r0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _08086600
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x24]
	mov r0, sb
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _08086600
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x24]
	mov r0, sb
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _08086600
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r6, #0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080865F4: .4byte vt_09F84838
_080865F8: .4byte _vt.10UnitEscape
_080865FC: .4byte gUnknown_08111B00
_08086600: .4byte _vt.3Unk
_08086604: .4byte _vt.7UnitDie
	.syntax divided

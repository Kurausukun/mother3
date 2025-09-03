    .syntax unified
__5SkillUi:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	bl __4Base
	ldr r0, _080781C0 @ =_vt.6Action
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x28
	movs r1, #0
	mov r8, r1
	str r1, [r6, #0x28]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, #0xc
	str r1, [r6, #0x34]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r4, [r6, #0x24]
	str r1, [r6, #0x40]
	adds r0, #0x10
	mov r1, r8
	strb r1, [r0]
	bl getPartyInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	mov r0, r8
	str r0, [sp, #0x24]
	ldr r1, _080781C4 @ =_vt.8UnitJoin
	mov sl, r1
	str r1, [sp, #0x20]
	ldr r0, _080781C8 @ =gUnknown_08107DB0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _080781CC @ =_vt.3Unk
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	mov r1, r8
	str r1, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _080781CC @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	mov r0, r8
	str r0, [sp, #0x24]
	mov r1, sl
	str r1, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _080781CC @ =_vt.3Unk
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	mov r1, r8
	str r1, [sp, #0x24]
	ldr r0, _080781D0 @ =_vt.10UnitRevive
	mov sl, r0
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _080781CC @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	mov r0, r8
	str r0, [sp, #0x24]
	mov r1, sl
	str r1, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _080781CC @ =_vt.3Unk
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	mov r1, r8
	str r1, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _080781CC @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	mov r0, r8
	str r0, [sp, #0x24]
	ldr r1, _080781D4 @ =_vt.10UnitEscape
	mov sl, r1
	str r1, [sp, #0x20]
	ldr r0, _080781D8 @ =gUnknown_08107DB8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _080781CC @ =_vt.3Unk
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	mov r1, r8
	str r1, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _080781CC @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	mov r0, r8
	str r0, [sp, #0x24]
	mov r1, sl
	str r1, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _080781CC @ =_vt.3Unk
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	mov r1, r8
	str r1, [sp, #0x24]
	ldr r0, _080781DC @ =_vt.7UnitDie
	mov sl, r0
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _080781CC @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	mov r0, r8
	str r0, [sp, #0x24]
	mov r1, sl
	str r1, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _080781CC @ =_vt.3Unk
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	mov r1, r8
	str r1, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _080781CC @ =_vt.3Unk
	str r1, [sp, #0x20]
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
_080781C0: .4byte _vt.6Action
_080781C4: .4byte _vt.8UnitJoin
_080781C8: .4byte gUnknown_08107DB0
_080781CC: .4byte _vt.3Unk
_080781D0: .4byte _vt.10UnitRevive
_080781D4: .4byte _vt.10UnitEscape
_080781D8: .4byte gUnknown_08107DB8
_080781DC: .4byte _vt.7UnitDie
    .syntax divided

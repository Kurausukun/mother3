	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	str r0, [sp, #0x48]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __10UnitTargetUsP4Unit
	ldr r0, _08076A04 @ =_vt.16UnitTargetChoice
	ldr r1, [sp, #0x48]
	str r0, [r1, #0x1c]
	adds r0, r1, #0
	adds r0, #0x44
	movs r2, #0
	mov sb, r2
	str r2, [r1, #0x44]
	str r2, [r0, #4]
	str r2, [r0, #8]
	adds r0, #0xc
	str r2, [r1, #0x50]
	str r2, [r0, #4]
	str r2, [r0, #8]
	adds r0, #0x18
	bl sub_08083BBC
	ldr r1, [sp, #0x48]
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r0, r1, r2
	mov r1, sb
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r2, [sp, #0x48]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r2, r2, r0
	mov r8, r2
	mov r0, r8
	bl sub_08071F8C
	ldr r0, [sp, #0x48]
	adds r0, #0x5c
	mov r1, sb
	strb r1, [r0]
	movs r0, #1
	ldr r2, [sp, #0x48]
	str r0, [r2, #0x60]
	adds r0, r2, #0
	adds r0, #0x64
	mov r1, sb
	strh r1, [r0]
	add r0, sp, #4
	bl __4Base
	ldr r2, _08076A08 @ =_vt.3Unk
	mov sl, r2
	ldr r0, _08076A0C @ =_vt.12LeftKeyPress
	str r0, [sp, #0x20]
	ldr r0, _08076A10 @ =gUnknown_08107070
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A14 @ =_vt.16LeftKeyLongPress
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sl
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A18 @ =_vt.13RightKeyPress
	str r0, [sp, #0x20]
	ldr r0, _08076A1C @ =gUnknown_08107078
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sl
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A20 @ =_vt.17RightKeyLongPress
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A24 @ =_vt.9AKeyPress
	str r0, [sp, #0x20]
	ldr r0, _08076A28 @ =gUnknown_08107080
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sl
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A2C @ =_vt.13AKeyLongPress
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sl
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A30 @ =_vt.9LKeyPress
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A34 @ =_vt.13LKeyLongPress
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sl
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A38 @ =_vt.9BKeyPress
	str r0, [sp, #0x20]
	ldr r0, _08076A3C @ =gUnknown_08107088
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sl
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A40 @ =_vt.7Suspend
	str r0, [sp, #0x20]
	ldr r0, _08076A44 @ =gUnknown_08107090
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r6, r0, #0
	add r0, sp, #0x24
	bl __4Base
	mov r1, sb
	str r1, [sp, #0x44]
	ldr r0, _08076A48 @ =_vt.8UnitJoin
	str r0, [sp, #0x40]
	add r2, sp, #0x24
	mov r8, r2
	ldr r0, _08076A4C @ =gUnknown_08107098
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	adds r1, r6, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x40]
	mov r0, r8
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	mov r1, sb
	str r1, [sp, #0x24]
	ldr r0, _08076A50 @ =_vt.10UnitRevive
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sl
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	mov r0, sb
	str r0, [sp, #0x24]
	ldr r0, _08076A54 @ =_vt.10UnitEscape
	str r0, [sp, #0x20]
	ldr r0, _08076A58 @ =gUnknown_081070A0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sl
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	mov r2, sb
	str r2, [sp, #0x24]
	ldr r0, _08076A5C @ =_vt.7UnitDie
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A60 @ =_vt.6Resume
	str r0, [sp, #0x20]
	ldr r0, _08076A64 @ =gUnknown_081070A8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sl
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x48]
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08076A04: .4byte _vt.16UnitTargetChoice
_08076A08: .4byte _vt.3Unk
_08076A0C: .4byte _vt.12LeftKeyPress
_08076A10: .4byte gUnknown_08107070
_08076A14: .4byte _vt.16LeftKeyLongPress
_08076A18: .4byte _vt.13RightKeyPress
_08076A1C: .4byte gUnknown_08107078
_08076A20: .4byte _vt.17RightKeyLongPress
_08076A24: .4byte _vt.9AKeyPress
_08076A28: .4byte gUnknown_08107080
_08076A2C: .4byte _vt.13AKeyLongPress
_08076A30: .4byte _vt.9LKeyPress
_08076A34: .4byte _vt.13LKeyLongPress
_08076A38: .4byte _vt.9BKeyPress
_08076A3C: .4byte gUnknown_08107088
_08076A40: .4byte _vt.7Suspend
_08076A44: .4byte gUnknown_08107090
_08076A48: .4byte _vt.8UnitJoin
_08076A4C: .4byte gUnknown_08107098
_08076A50: .4byte _vt.10UnitRevive
_08076A54: .4byte _vt.10UnitEscape
_08076A58: .4byte gUnknown_081070A0
_08076A5C: .4byte _vt.7UnitDie
_08076A60: .4byte _vt.6Resume
_08076A64: .4byte gUnknown_081070A8
	.syntax divided

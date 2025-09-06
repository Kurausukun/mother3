	.syntax unified
sub_0807EBA0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	mov sl, r0
	adds r6, r1, #0
	bl __4Base
	ldr r0, _0807EF78
	mov r1, sl
	str r0, [r1, #0x1c]
	mov r5, sl
	adds r5, #0x28
	movs r4, #0
	str r4, [r1, #0x28]
	str r4, [r5, #4]
	str r4, [r5, #8]
	mov r0, sl
	adds r0, #0x48
	bl sub_08083BBC
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, sl
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, sl
	bl sub_08071F8C
	mov r3, sl
	str r6, [r3, #0x24]
	movs r1, #0
	strh r4, [r3, #0x34]
	str r4, [r3, #0x38]
	mov r0, sl
	adds r0, #0x3c
	strb r1, [r0]
	str r4, [r3, #0x40]
	adds r0, #8
	strh r4, [r0]
	mov r0, sl
	bl sub_0807F12C
	movs r7, #0
	ldr r0, [r5, #4]
	cmp r7, r0
	blt _0807EC0A
	b _0807ED1E
_0807EC0A:
	movs r6, #0x9a
	lsls r6, r6, #1
	add r6, sl
	mov r4, sp
	adds r4, #0x28
	str r4, [sp, #0x30]
_0807EC16:
	movs r0, #0x90
	bl __builtin_new
	bl sub_0806D8EC
	str r0, [sp, #0x28]
	ldr r0, [r6, #4]
	adds r4, r0, #1
	ldr r0, [r6]
	mov r5, sl
	adds r5, #0x28
	str r5, [sp, #0x38]
	lsls r1, r7, #2
	str r1, [sp, #0x3c]
	add r3, sp, #0x10
	mov r8, r3
	add r5, sp, #0x1c
	mov sb, r5
	mov r1, sp
	adds r1, #0x2c
	str r1, [sp, #0x34]
	lsls r3, r7, #4
	str r3, [sp, #0x40]
	adds r7, #1
	cmp r0, r4
	bge _0807EC82
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _0807EC54
	adds r1, r0, #0
_0807EC54:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [r6, #8]
	adds r2, r5, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0807EC74
	adds r1, r0, #0
_0807EC6A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0807EC6A
_0807EC74:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0807EC7E
	bl __builtin_vec_delete
_0807EC7E:
	str r4, [r6]
	str r5, [r6, #8]
_0807EC82:
	ldr r2, [r6, #4]
	ldr r3, [r6, #8]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r4, [sp, #0x30]
	ldr r1, [r4]
	str r1, [r0]
	adds r2, #1
	str r2, [r6, #4]
	ldr r5, [sp, #0x3c]
	adds r3, r3, r5
	ldr r5, [r3]
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	add r0, sp, #4
	ldr r1, _0807EF7C
	bl sub_080706A0
	mov r0, r8
	movs r1, #2
	bl sub_080706A0
	mov r0, sb
	ldr r1, _0807EF80
	bl sub_080706A0
	ldr r4, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	mov r2, r8
	mov r3, sb
	bl _call_via_r4
	ldr r3, _0807EF84
	str r3, [sp, #0x24]
	str r3, [sp, #0x18]
	str r3, [sp, #0xc]
	ldr r0, [r6, #8]
	ldr r4, [sp, #0x3c]
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r5, #0
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	movs r3, #0
	add r1, sp, #0x2c
	add r4, sp, #0x40
	ldrh r4, [r4]
	strh r4, [r1]
	ldr r5, [sp, #0x34]
	strh r3, [r5, #2]
	ldr r2, [r2, #4]
	ldr r1, [sp, #0x34]
	bl _call_via_r2
	ldr r0, [r6, #8]
	ldr r1, [sp, #0x3c]
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x90
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #4
	bl _call_via_r2
	ldr r4, [sp, #0x38]
	ldr r0, [r4, #4]
	cmp r7, r0
	bge _0807ED1E
	b _0807EC16
_0807ED1E:
	add r0, sp, #4
	bl __4Base
	ldr r5, _0807EF88
	mov r8, r5
	ldr r0, _0807EF8C
	str r0, [sp, #0x20]
	movs r6, #0xa0
	lsls r6, r6, #1
	add r6, sl
	ldr r0, _0807EF90
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EF94
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EF98
	str r0, [sp, #0x20]
	ldr r0, _0807EF9C
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EFA0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r4, r8
	str r4, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EFA4
	str r0, [sp, #0x20]
	ldr r0, _0807EFA8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EFAC
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EFB0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EFB4
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r4, r8
	str r4, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EFB8
	str r0, [sp, #0x20]
	ldr r0, _0807EFBC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r5, r8
	str r5, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r7, _0807EFC0
	str r7, [sp, #0x20]
	ldr r0, _0807EFC4
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	movs r4, #0
	str r4, [sp, #0x24]
	ldr r5, _0807EFC8
	mov sb, r5
	str r5, [sp, #0x20]
	ldr r0, _0807EFCC
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x24]
	mov r3, sb
	str r3, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	b _0807EFD0
	.align 2, 0
_0807EF78: .4byte vt_09F82990
_0807EF7C: .4byte 0x00000291
_0807EF80: .4byte 0x00000283
_0807EF84: .4byte _vt.6ResPtr
_0807EF88: .4byte _vt.3Unk
_0807EF8C: .4byte _vt.12LeftKeyPress
_0807EF90: .4byte gUnknown_08109EC0
_0807EF94: .4byte _vt.16LeftKeyLongPress
_0807EF98: .4byte _vt.13RightKeyPress
_0807EF9C: .4byte gUnknown_08109EC8
_0807EFA0: .4byte _vt.17RightKeyLongPress
_0807EFA4: .4byte _vt.9AKeyPress
_0807EFA8: .4byte gUnknown_08109ED0
_0807EFAC: .4byte _vt.13AKeyLongPress
_0807EFB0: .4byte _vt.9LKeyPress
_0807EFB4: .4byte _vt.13LKeyLongPress
_0807EFB8: .4byte _vt.9BKeyPress
_0807EFBC: .4byte gUnknown_08109ED8
_0807EFC0: .4byte _vt.7Suspend
_0807EFC4: .4byte gUnknown_08109EE0
_0807EFC8: .4byte _vt.10UnitEscape
_0807EFCC: .4byte gUnknown_08109EE8
_0807EFD0:
	movs r1, #0
	str r1, [sp, #0x24]
	mov r3, sb
	str r3, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x24]
	ldr r3, _0807F120
	mov sb, r3
	str r3, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x24]
	mov r3, sb
	str r3, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x24]
	mov r3, sb
	str r3, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r4, r8
	str r4, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getPartyInfo
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r7, _0807F124
	str r7, [sp, #0x20]
	ldr r0, _0807F128
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getGuestInfo
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl getMonsterInfo
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	mov r4, sl
	ldrh r1, [r4, #0x34]
	mov r0, sl
	bl sub_080801F8
	mov r0, sl
	bl sub_080802A4
	mov r0, sl
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807F120: .4byte _vt.7UnitDie
_0807F124: .4byte _vt.6Resume
_0807F128: .4byte gUnknown_08109EF0
	.syntax divided

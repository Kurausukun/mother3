	.syntax unified
sub_0809FFB4:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __5GuestUs
	ldr r0, _080A0068
	str r0, [r5, #0x20]
	ldr r0, _080A006C
	str r0, [r5, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A0070
	mov sb, r0
	ldr r0, _080A0074
	str r0, [sp, #0x20]
	ldr r0, _080A0078
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A007C
	str r0, [sp, #0x20]
	ldr r0, _080A0080
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
	ldr r0, _080A0084
	str r0, [r5, #0x20]
	ldr r0, _080A0088
	str r0, [r5, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A0068: .4byte vt_09F4D280
_080A006C: .4byte vt_09F4D2F8
_080A0070: .4byte _vt.3Unk
_080A0074: .4byte _vt.13UnitTurnBegin
_080A0078: .4byte gUnknown_080F741C
_080A007C: .4byte _vt.11UnitTurnEnd
_080A0080: .4byte gUnknown_080F7424
_080A0084: .4byte vt_09F4C7F0
_080A0088: .4byte vt_09F4C868
	.syntax divided

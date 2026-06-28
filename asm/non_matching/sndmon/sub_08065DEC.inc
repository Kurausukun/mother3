	.syntax unified
sub_08065DEC:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r7, r0, #0
	bl __4Base
	ldr r0, _08065F88
	str r0, [r7, #0x1c]
	movs r0, #0
	str r0, [r7, #0x34]
	movs r0, #0xd4
	bl __builtin_new
	bl __11BattleFader
	adds r4, r0, #0
	str r4, [r7, #0x24]
	bl sub_08000D54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, #1
	bne _08065E1E
	movs r1, #0xe6
_08065E1E:
	adds r0, r4, #0
	bl set__11BattleFaderUi
	ldr r0, [r7, #0x24]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl set2__11BattleFaderUi
	ldr r0, [r7, #0x24]
	adds r1, r5, #0
	bl set4__11BattleFaderUi
	movs r0, #0xd4
	bl __builtin_new
	bl __11BattleFader
	adds r4, r0, #0
	str r4, [r7, #0x28]
	bl sub_08000D54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	cmp r0, #1
	bne _08065E56
	movs r1, #0xe6
_08065E56:
	adds r0, r4, #0
	bl set__11BattleFaderUi
	ldr r0, [r7, #0x28]
	adds r1, r5, #0
	bl set2__11BattleFaderUi
	ldr r0, [r7, #0x28]
	adds r1, r5, #0
	bl set4__11BattleFaderUi
	movs r0, #0xd4
	bl __builtin_new
	bl __11BattleFader
	adds r4, r0, #0
	str r4, [r7, #0x2c]
	bl sub_08000D54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	cmp r0, #1
	bne _08065E8A
	movs r1, #0xe6
_08065E8A:
	adds r0, r4, #0
	bl set__11BattleFaderUi
	ldr r0, [r7, #0x2c]
	adds r1, r5, #0
	bl set2__11BattleFaderUi
	ldr r0, [r7, #0x2c]
	adds r1, r5, #0
	bl set4__11BattleFaderUi
	bl sub_0806B070
	adds r4, r0, #0
	add r2, sp, #0x28
	strh r5, [r2]
	strh r5, [r2, #2]
	movs r1, #1
	bl sub_0806B2CC
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806B698
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_0806B850
	adds r0, r7, #0
	bl sub_08066254
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806BA38
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_0806BA74
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_0806BACC
	add r2, sp, #0x2c
	strh r5, [r2]
	strh r5, [r2, #2]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806B2CC
	adds r0, r4, #0
	movs r1, #2
	adds r2, r5, #0
	bl sub_0806B698
	adds r0, r4, #0
	movs r1, #2
	movs r2, #4
	bl sub_0806B850
	adds r0, r7, #0
	bl sub_0806624C
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806BA38
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_0806BA74
	adds r0, r4, #0
	movs r1, #2
	movs r2, #6
	bl sub_0806BACC
	bl sub_0806BE14
	ldr r1, [r7, #0x28]
	bl sub_0806C1C0
	bl get__16SndSystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _08065F8C
	ldr r0, _08065F90
	str r0, [sp, #0x20]
	ldr r0, _08065F94
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
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08065F88: .4byte vt_09F7E280
_08065F8C: .4byte _vt.3Unk
_08065F90: .4byte _vt.8AppClock
_08065F94: .4byte gUnknown_080FD560
	.syntax divided

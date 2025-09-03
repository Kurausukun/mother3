	.syntax unified
sub_0805D8FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x40
	adds r7, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl __4Base
	ldr r0, _0805DB64
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x60
	bl sub_08071F8C
	movs r0, #0
	strh r4, [r7, #0x24]
	str r0, [r7, #0x28]
	str r0, [r7, #0x2c]
	str r0, [r7, #0x30]
	str r0, [r7, #0x34]
	str r0, [r7, #0x38]
	str r0, [r7, #0x3c]
	str r0, [r7, #0x40]
	str r0, [r7, #0x44]
	str r0, [r7, #0x48]
	str r0, [r7, #0x4c]
	str r0, [r7, #0x50]
	str r0, [r7, #0x54]
	str r0, [r7, #0x58]
	str r0, [r7, #0x5c]
	movs r0, #0xd4
	bl __builtin_new
	bl __11BattleFader
	adds r4, r0, #0
	str r4, [r7, #0x28]
	bl sub_08000D54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, #1
	bne _0805D95A
	movs r1, #0xe6
_0805D95A:
	adds r0, r4, #0
	bl set__11BattleFaderUi
	ldr r0, [r7, #0x28]
	movs r5, #0x80
	lsls r5, r5, #1
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
	bne _0805D992
	movs r1, #0xe6
_0805D992:
	adds r0, r4, #0
	bl set__11BattleFaderUi
	ldr r0, [r7, #0x2c]
	adds r1, r5, #0
	bl set2__11BattleFaderUi
	ldr r0, [r7, #0x2c]
	adds r1, r5, #0
	bl set4__11BattleFaderUi
	movs r0, #0xd4
	bl __builtin_new
	bl __11BattleFader
	adds r4, r0, #0
	str r4, [r7, #0x30]
	bl sub_08000D54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	cmp r0, #1
	bne _0805D9C6
	movs r1, #0xe6
_0805D9C6:
	adds r0, r4, #0
	bl set__11BattleFaderUi
	ldr r0, [r7, #0x30]
	adds r1, r5, #0
	bl set2__11BattleFaderUi
	ldr r0, [r7, #0x30]
	adds r1, r5, #0
	bl set4__11BattleFaderUi
	bl sub_0806B070
	adds r4, r0, #0
	adds r0, r7, #0
	bl battle_150__6Battle
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806BA38
	adds r0, r7, #0
	bl battle_150__6Battle
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806BA38
	add r2, sp, #0x3c
	strh r5, [r2]
	strh r5, [r2, #2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806B2CC
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806B698
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl sub_0806B850
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_0806BA74
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806BACC
	adds r0, r7, #0
	bl battle_140__6Battle
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806BA38
	adds r0, r7, #0
	bl battle_140__6Battle
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806BA38
	adds r0, r7, #0
	bl battle_140__6Battle
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806BA68
	bl sub_0806BE14
	ldr r1, [r7, #0x2c]
	bl sub_0806C1C0
	bl sub_0806EBD8
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r1, #0xea
	lsls r1, r1, #2
	add r0, sp, #4
	bl sub_080706A0
	ldr r1, _0805DB68
	add r3, sp, #0x10
	mov r8, r3
	mov r0, r8
	bl sub_080706A0
	ldr r3, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	mov r2, r8
	bl _call_via_r3
	ldr r6, _0805DB6C
	str r6, [sp, #0x18]
	str r6, [sp, #0xc]
	bl sub_0806FB78
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, _0805DB70
	add r0, sp, #4
	bl sub_080706A0
	ldr r1, _0805DB74
	mov r0, r8
	bl sub_080706A0
	ldr r3, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	mov r2, r8
	bl _call_via_r3
	str r6, [sp, #0x18]
	str r6, [sp, #0xc]
	movs r0, #0x2c
	bl __builtin_new
	bl sub_080703A4
	str r0, [r7, #0x34]
	bl sub_0806FDB0__Fv
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08064590
	bl sub_08060F80
	bl sub_08061974
	bl sub_08064834
	bl sub_08065014
	bl sub_08065168
	bl init__12GuestFactory
	bl sub_08062308
	bl sub_08063AD0
	bl sub_08063EE4
	bl KeyPadInstance
	adds r6, r0, #0
	add r0, sp, #0x1c
	bl __4Base
	ldr r0, _0805DB78
	mov r8, r0
	ldr r0, _0805DB7C
	str r0, [sp, #0x38]
	add r5, sp, #0x1c
	ldr r0, _0805DB80
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x38]
	adds r0, r5, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805DB64: .4byte vt_09F45058
_0805DB68: .4byte 0x000003A9
_0805DB6C: .4byte _vt.1D
_0805DB70: .4byte 0x000003AA
_0805DB74: .4byte 0x000003AB
_0805DB78: .4byte _vt.3Unk
_0805DB7C: .4byte _vt.13StartKeyPress
_0805DB80: .4byte gUnknown_080F2B60
	.syntax divided

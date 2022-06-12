.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0805D7A0
sub_0805D7A0: @ 0x0805D7A0
	ldr r0, _0805D7A4 @ =gUnknown_02002004
	bx lr
	.align 2, 0
_0805D7A4: .4byte gUnknown_02002004

	thumb_func_start sub_0805D7A8
sub_0805D7A8: @ 0x0805D7A8
	push {lr}
	bl sub_0805D7A0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D7B4
sub_0805D7B4: @ 0x0805D7B4
	ldr r0, _0805D7B8 @ =gUnknown_02001FF8
	bx lr
	.align 2, 0
_0805D7B8: .4byte gUnknown_02001FF8

	thumb_func_start sub_0805D7BC
sub_0805D7BC: @ 0x0805D7BC
	push {lr}
	bl sub_0805D7B4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D7C8
sub_0805D7C8: @ 0x0805D7C8
	ldr r0, _0805D7CC @ =gUnknown_02001FEC
	bx lr
	.align 2, 0
_0805D7CC: .4byte gUnknown_02001FEC

	thumb_func_start sub_0805D7D0
sub_0805D7D0: @ 0x0805D7D0
	push {lr}
	bl sub_0805D7C8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D7DC
sub_0805D7DC: @ 0x0805D7DC
	ldr r0, _0805D7E0 @ =gUnknown_02001FE0
	bx lr
	.align 2, 0
_0805D7E0: .4byte gUnknown_02001FE0

	thumb_func_start sub_0805D7E4
sub_0805D7E4: @ 0x0805D7E4
	push {lr}
	bl sub_0805D7DC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D7F0
sub_0805D7F0: @ 0x0805D7F0
	ldr r0, _0805D7F4 @ =gUnknown_02001FD4
	bx lr
	.align 2, 0
_0805D7F4: .4byte gUnknown_02001FD4

	thumb_func_start sub_0805D7F8
sub_0805D7F8: @ 0x0805D7F8
	push {lr}
	bl sub_0805D7F0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D804
sub_0805D804: @ 0x0805D804
	ldr r0, _0805D808 @ =gUnknown_02001FC8
	bx lr
	.align 2, 0
_0805D808: .4byte gUnknown_02001FC8

	thumb_func_start sub_0805D80C
sub_0805D80C: @ 0x0805D80C
	push {lr}
	bl sub_0805D804
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D818
sub_0805D818: @ 0x0805D818
	ldr r0, _0805D81C @ =gUnknown_02001FBC
	bx lr
	.align 2, 0
_0805D81C: .4byte gUnknown_02001FBC

	thumb_func_start sub_0805D820
sub_0805D820: @ 0x0805D820
	push {lr}
	bl sub_0805D818
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D82C
sub_0805D82C: @ 0x0805D82C
	ldr r0, _0805D830 @ =gUnknown_02001FB0
	bx lr
	.align 2, 0
_0805D830: .4byte gUnknown_02001FB0

	thumb_func_start sub_0805D834
sub_0805D834: @ 0x0805D834
	push {r4, r5, lr}
	ldr r1, _0805D868 @ =gUnknown_02002010
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0805D85E
	ldr r5, _0805D86C @ =sBattleInstance
	movs r0, #0x80
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805D870 @ =vt_09F45058
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x60
	bl sub_08071F8C
	str r4, [r5]
_0805D85E:
	ldr r0, _0805D86C @ =sBattleInstance
	ldr r0, [r0]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805D868: .4byte gUnknown_02002010
_0805D86C: .4byte sBattleInstance
_0805D870: .4byte vt_09F45058

	thumb_func_start get__15BattleSingleton
get__15BattleSingleton: @ 0x0805D874
	ldr r0, _0805D87C @ =sBattleInstance
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0805D87C: .4byte sBattleInstance

	thumb_func_start sub_0805D880
sub_0805D880: @ 0x0805D880
	push {r4, r5, lr}
	ldr r1, _0805D8B4 @ =gUnknown_02002010
	ldr r0, [r1]
	cmp r0, #0
	ble _0805D8AC
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0805D8AC
	ldr r5, _0805D8B8 @ =sBattleInstance
	ldr r2, [r5]
	cmp r2, #0
	beq _0805D8AA
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805D8AA:
	str r4, [r5]
_0805D8AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D8B4: .4byte gUnknown_02002010
_0805D8B8: .4byte sBattleInstance

	thumb_func_start sub_0805D8BC
sub_0805D8BC: @ 0x0805D8BC
	push {lr}
	bl sub_0805D82C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D8C8
sub_0805D8C8: @ 0x0805D8C8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _0805D8F4 @ =gUnknown_02002010
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0805D8E8
	bl sub_0805EF90
	adds r0, r4, #0
	bl sub_0805EFFC
	ldr r1, _0805D8F8 @ =sBattleInstance
	str r0, [r1]
_0805D8E8:
	ldr r0, _0805D8F8 @ =sBattleInstance
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805D8F4: .4byte gUnknown_02002010
_0805D8F8: .4byte sBattleInstance

	thumb_func_start sub_0805D8FC
sub_0805D8FC: @ 0x0805D8FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x40
	adds r7, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl __4Base
	ldr r0, _0805DB64 @ =vt_09F45058
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
	bl __15struct_0806A57C
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
	bl set__15struct_0806A57CUi
	ldr r0, [r7, #0x28]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl set2__15struct_0806A57CUi
	ldr r0, [r7, #0x28]
	adds r1, r5, #0
	bl set4__15struct_0806A57CUi
	movs r0, #0xd4
	bl __builtin_new
	bl __15struct_0806A57C
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
	bl set__15struct_0806A57CUi
	ldr r0, [r7, #0x2c]
	adds r1, r5, #0
	bl set2__15struct_0806A57CUi
	ldr r0, [r7, #0x2c]
	adds r1, r5, #0
	bl set4__15struct_0806A57CUi
	movs r0, #0xd4
	bl __builtin_new
	bl __15struct_0806A57C
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
	bl set__15struct_0806A57CUi
	ldr r0, [r7, #0x30]
	adds r1, r5, #0
	bl set2__15struct_0806A57CUi
	ldr r0, [r7, #0x30]
	adds r1, r5, #0
	bl set4__15struct_0806A57CUi
	bl sub_0806B070
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_0805EA88
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806BA38
	adds r0, r7, #0
	bl sub_0805EA88
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
	bl sub_0805EA80
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806BA38
	adds r0, r7, #0
	bl sub_0805EA80
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806BA38
	adds r0, r7, #0
	bl sub_0805EA80
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
	ldr r1, _0805DB68 @ =0x000003A9
	add r3, sp, #0x10
	mov r8, r3
	mov r0, r8
	bl sub_080706A0
	ldr r3, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	mov r2, r8
	bl _call_via_r3
	ldr r6, _0805DB6C @ =_vt.1D
	str r6, [sp, #0x18]
	str r6, [sp, #0xc]
	bl sub_0806FB78
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, _0805DB70 @ =0x000003AA
	add r0, sp, #4
	bl sub_080706A0
	ldr r1, _0805DB74 @ =0x000003AB
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
	bl sub_0806FDB0
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
	ldr r0, _0805DB78 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0805DB7C @ =_vt.13StartKeyPress
	str r0, [sp, #0x38]
	add r5, sp, #0x1c
	ldr r0, _0805DB80 @ =gUnknown_080F2B60
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

	thumb_func_start sub_0805DB84
sub_0805DB84: @ 0x0805DB84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805DC18 @ =vt_09F45058
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x34]
	cmp r2, #0
	beq _0805DBA4
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DBA4:
	bl sub_0806FBB4
	bl sub_0806EC14
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _0805DBC6
	adds r0, r2, #0
	adds r0, #0xd0
	ldr r1, [r0]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DBC6:
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _0805DBE0
	adds r0, r2, #0
	adds r0, #0xd0
	ldr r1, [r0]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DBE0:
	ldr r2, [r4, #0x28]
	cmp r2, #0
	beq _0805DBFA
	adds r0, r2, #0
	adds r0, #0xd0
	ldr r1, [r0]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DBFA:
	adds r0, r4, #0
	bl sub_0805DC1C__6Battle
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #2
	bl _._10KeyFocuser
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DC18: .4byte vt_09F45058

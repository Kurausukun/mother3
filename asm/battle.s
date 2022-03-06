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
	bl sub_0805DC1C
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

	thumb_func_start sub_0805DC1C
sub_0805DC1C: @ 0x0805DC1C
	push {lr}
	ldr r0, [r0, #0x40]
	cmp r0, #3
	beq _0805DC5C
	cmp r0, #3
	bgt _0805DC2E
	cmp r0, #2
	beq _0805DC38
	b _0805DC5C
_0805DC2E:
	cmp r0, #4
	beq _0805DC44
	cmp r0, #5
	beq _0805DC50
	b _0805DC5C
_0805DC38:
	ldr r0, _0805DC40 @ =gEncounter
	adds r0, #0x3c
	movs r1, #1
	b _0805DC62
	.align 2, 0
_0805DC40: .4byte gEncounter
_0805DC44:
	ldr r0, _0805DC4C @ =gEncounter
	adds r0, #0x3c
	movs r1, #3
	b _0805DC62
	.align 2, 0
_0805DC4C: .4byte gEncounter
_0805DC50:
	ldr r0, _0805DC58 @ =gEncounter
	adds r0, #0x3c
	movs r1, #1
	b _0805DC62
	.align 2, 0
_0805DC58: .4byte gEncounter
_0805DC5C:
	ldr r0, _0805DC68 @ =gEncounter
	adds r0, #0x3c
	movs r1, #2
_0805DC62:
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0805DC68: .4byte gEncounter

	thumb_func_start sub_0805DC6C
sub_0805DC6C: @ 0x0805DC6C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0805DDE0 @ =gEncounter
	adds r0, #0x66
	ldrb r0, [r0]
	str r0, [r4, #0x38]
	movs r0, #0x3c
	bl __builtin_new
	movs r1, #0xa0
	str r1, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0xf0
	bl sub_08070FE8
	str r0, [r4, #0x44]
	movs r0, #0x2c
	bl __builtin_new
	bl sub_0805F018
	str r0, [r4, #0x48]
	movs r0, #0x8c
	bl __builtin_new
	bl sub_0805F98C
	str r0, [r4, #0x4c]
	movs r0, #0x40
	bl __builtin_new
	bl sub_08061A68
	str r0, [r4, #0x50]
	movs r0, #0xa4
	bl __builtin_new
	bl sub_08062384
	str r0, [r4, #0x54]
	movs r0, #0x3c
	bl __builtin_new
	bl sub_0805F1C0
	str r0, [r4, #0x58]
	movs r0, #0x14
	bl __builtin_new
	bl sub_08065A80
	str r0, [r4, #0x5c]
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0805E670
_0805DD02:
	ldr r1, [r4, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805DD02
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x5c]
	cmp r2, #0
	beq _0805DD54
	ldr r1, [r2, #0x10]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DD54:
	ldr r2, [r4, #0x58]
	cmp r2, #0
	beq _0805DD6A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DD6A:
	ldr r2, [r4, #0x54]
	cmp r2, #0
	beq _0805DD80
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DD80:
	ldr r2, [r4, #0x50]
	cmp r2, #0
	beq _0805DD96
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DD96:
	ldr r2, [r4, #0x4c]
	cmp r2, #0
	beq _0805DDAC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DDAC:
	ldr r2, [r4, #0x48]
	cmp r2, #0
	beq _0805DDC2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DDC2:
	ldr r2, [r4, #0x44]
	cmp r2, #0
	beq _0805DDD8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805DDD8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DDE0: .4byte gEncounter

	thumb_func_start sub_0805DDE4
sub_0805DDE4: @ 0x0805DDE4
	push {lr}
	movs r1, #5
	movs r2, #0
	bl sub_0805E670
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805DDF4
sub_0805DDF4: @ 0x0805DDF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r0, [r4, #0x1c]
	adds r0, #0x78
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start nullsub_50
nullsub_50: @ 0x0805DE20
	bx lr
	.align 2, 0

	thumb_func_start sub_0805DE24
sub_0805DE24: @ 0x0805DE24
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	bl sub_08072B70
	bl sub_08072D0C
	movs r0, #0
	movs r1, #0
	bl sub_08073018
	ldr r5, [r6, #0x48]
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r2, _0805DEAC @ =gMonsterData
	mov r8, r2
	movs r0, #0
	bl sub_08072E18
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #4
	add r1, r8
	ldrb r1, [r1, #0xa]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r6, #0x1c]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r6, r6, r1
	ldr r1, [r0, #4]
	adds r0, r6, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807459C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DEAC: .4byte gMonsterData

	thumb_func_start sub_0805DEB0
sub_0805DEB0: @ 0x0805DEB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r0, [r4, #0x1c]
	adds r0, #0x90
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0805DEDC
sub_0805DEDC: @ 0x0805DEDC
	push {lr}
	sub sp, #8
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0
	movs r2, #0x20
	movs r3, #1
	bl sub_08074394
	add sp, #8
	pop {r0}
	bx r0

	thumb_func_start sub_0805DF00
sub_0805DF00: @ 0x0805DF00
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x44
	mov sb, r0
	add r0, sp, #4
	bl __3Msg
	bl sub_08072DFC
	cmp r0, #1
	bgt _0805DF84
	movs r0, #0
	bl sub_08072E18
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x1c
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r6, sp, #0x28
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x34
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0xb2
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_0806E2E8
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	b _0805DFEC
_0805DF84:
	movs r0, #0
	bl sub_08072E18
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x1c
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r6, sp, #0x28
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x34
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0xb3
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_0806E2E8
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
_0805DFEC:
	mov r7, r8
	mov r1, sb
	ldr r0, [r1, #0x38]
	cmp r0, #1
	beq _0805E030
	cmp r0, #1
	bgt _0805E000
	cmp r0, #0
	beq _0805E006
	b _0805E0C2
_0805E000:
	cmp r0, #2
	beq _0805E07A
	b _0805E0C2
_0805E006:
	movs r0, #0
	bl sub_08072E18
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_0806E374
	adds r0, r4, #0
	b _0805E072
_0805E030:
	adds r0, r7, #0
	bl __3Msg
	adds r0, r6, #0
	bl __3Msg
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0xb4
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08073460
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_0806E374
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
_0805E072:
	movs r1, #2
	bl _._3Msg
	b _0805E0C2
_0805E07A:
	adds r0, r7, #0
	bl __3Msg
	adds r0, r6, #0
	bl __3Msg
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0xb5
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08073460
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_0806E374
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
_0805E0C2:
	add r1, sp, #0x40
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	add sp, #0x44
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805E0EC
sub_0805E0EC: @ 0x0805E0EC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E120
	ldr r1, [r6, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805E124
_0805E120:
	movs r0, #0
	b _0805E1B4
_0805E124:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r7, #0
	b _0805E17C
_0805E138:
	ldr r0, [r6, #0x1c]
	adds r5, r0, #0
	adds r5, #0xb8
	movs r3, #0
	ldrsh r4, [r5, r3]
	adds r4, r6, r4
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E120
	adds r7, #1
_0805E17C:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	adds r2, #0x80
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r7, r0
	blt _0805E138
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_0805E1B4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805E1BC
sub_0805E1BC: @ 0x0805E1BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	ldrh r1, [r7, #0x3c]
	mov r8, r1
	mov r6, sp
	mov r0, sp
	bl __4Base
	ldr r2, _0805E228 @ =_vt.3Unk
	mov sb, r2
	ldr r0, _0805E22C @ =_vt.10RoundBegin
	str r0, [sp, #0x1c]
	mov r3, r8
	strh r3, [r6, #0x20]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sb
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	bgt _0805E280
	ldr r1, [r7, #0x1c]
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E280
	movs r4, #0
	b _0805E24E
	.align 2, 0
_0805E228: .4byte _vt.3Unk
_0805E22C: .4byte _vt.10RoundBegin
_0805E230:
	adds r0, r4, #0
	bl sub_080729F8
	ldr r2, [r0, #0x1c]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0x33
	bl _call_via_r2
	adds r4, #1
_0805E24E:
	bl getPartyCount
	cmp r4, r0
	blt _0805E230
	movs r4, #0
	b _0805E278
_0805E25A:
	adds r0, r4, #0
	bl sub_08072C7C
	ldr r2, [r0, #0x1c]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0x33
	bl _call_via_r2
	adds r4, #1
_0805E278:
	bl sub_08072C60
	cmp r4, r0
	blt _0805E25A
_0805E280:
	ldr r1, [r7, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805E29E
	movs r0, #1
	b _0805E2A0
_0805E29E:
	movs r0, #0
_0805E2A0:
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805E2B0
sub_0805E2B0: @ 0x0805E2B0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08072A88
	cmp r0, #0
	bgt _0805E2C0
_0805E2BC:
	movs r0, #0
	b _0805E332
_0805E2C0:
	movs r0, #0
	bl sub_08072AA4
	adds r4, r0, #0
	cmp r4, #0
	beq _0805E330
_0805E2CC:
	movs r5, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _0805E300
	cmp r0, #1
	bgt _0805E2F0
	cmp r0, #0
	beq _0805E2F4
	b _0805E310
_0805E2F0:
	cmp r0, #2
	bne _0805E310
_0805E2F4:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805E338
	adds r5, r0, #0
	b _0805E310
_0805E300:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805E390
	adds r5, r0, #0
	cmp r5, #0
	bne _0805E310
	adds r5, r4, #0
_0805E310:
	adds r4, r5, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805E2BC
	cmp r5, #0
	bne _0805E2CC
_0805E330:
	movs r0, #1
_0805E332:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0805E338
sub_0805E338: @ 0x0805E338
	push {r4, r5, lr}
	adds r5, r1, #0
	movs r4, #0
	b _0805E380
_0805E340:
	adds r0, r4, #0
	bl sub_080729F8
	cmp r0, r5
	bne _0805E37E
	b _0805E372
_0805E34C:
	adds r0, r4, #0
	bl sub_080729F8
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E372
	adds r0, r4, #0
	bl sub_080729F8
	b _0805E38A
_0805E372:
	adds r4, #1
	bl getPartyCount
	cmp r4, r0
	blt _0805E34C
	b _0805E388
_0805E37E:
	adds r4, #1
_0805E380:
	bl getPartyCount
	cmp r4, r0
	blt _0805E340
_0805E388:
	movs r0, #0
_0805E38A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805E390
sub_0805E390: @ 0x0805E390
	push {r4, r5, lr}
	adds r5, r1, #0
	bl getPartyCount
	subs r4, r0, #1
	cmp r4, #0
	blt _0805E41E
_0805E39E:
	adds r0, r4, #0
	bl sub_080729F8
	cmp r0, r5
	bne _0805E418
	subs r4, #1
	cmp r4, #0
	blt _0805E41E
_0805E3AE:
	adds r0, r4, #0
	bl sub_080729F8
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E410
	adds r0, r4, #0
	bl sub_080729F8
	ldr r2, [r0, #0x1c]
	movs r1, #0xc4
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E410
	adds r0, r4, #0
	bl sub_080729F8
	ldr r2, [r0, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080729F8
	b _0805E420
_0805E410:
	subs r4, #1
	cmp r4, #0
	bge _0805E3AE
	b _0805E41E
_0805E418:
	subs r4, #1
	cmp r4, #0
	bge _0805E39E
_0805E41E:
	movs r0, #0
_0805E420:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805E428
sub_0805E428: @ 0x0805E428
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805E454
sub_0805E454: @ 0x0805E454
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x24

	thumb_func_start sub_0805E45C
sub_0805E45C: @ 0x0805E45C
	adds r6, r0, #0
	adds r7, r1, #0
	cmp r7, #0
	beq _0805E4D0
	ldr r4, [r6, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	mov r0, sp
	bl __4Base
	ldr r2, _0805E4F4 @ =_vt.3Unk
	mov r8, r2
	ldr r0, _0805E4F8 @ =vt_09F454B0
	str r0, [sp, #0x1c]
	str r7, [sp, #0x20]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, [r6, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	mov r0, sp
	bl __4Base
	ldr r0, _0805E4FC @ =vt_09F45430
	str r0, [sp, #0x1c]
	str r7, [sp, #0x20]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
_0805E4D0:
	ldr r1, [r6, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805E500
	movs r0, #0xa
	bl setsleep
	movs r0, #1
	b _0805E502
	.align 2, 0
_0805E4F4: .4byte _vt.3Unk
_0805E4F8: .4byte vt_09F454B0
_0805E4FC: .4byte vt_09F45430
_0805E500:
	movs r0, #0
_0805E502:
	add sp, #0x24
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805E510
sub_0805E510: @ 0x0805E510
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x24
	adds r4, r0, #0
	ldr r5, [r4, #0x1c]
	adds r5, #0x50
	movs r0, #0
	ldrsh r6, [r5, r0]
	adds r6, r4, r6
	ldrh r1, [r4, #0x3c]
	mov sb, r1
	mov r8, sp
	mov r0, sp
	bl __4Base
	ldr r2, _0805E580 @ =_vt.3Unk
	mov sl, r2
	ldr r0, _0805E584 @ =_vt.8RoundEnd
	str r0, [sp, #0x1c]
	mov r1, sb
	mov r0, r8
	strh r1, [r0, #0x20]
	ldr r2, [r5, #4]
	adds r0, r6, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, sl
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [r4, #0x3c]
	adds r0, #1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x1c]
	adds r0, #0xc8
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	movs r1, #1
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805E588
	movs r0, #1
	b _0805E58A
	.align 2, 0
_0805E580: .4byte _vt.3Unk
_0805E584: .4byte _vt.8RoundEnd
_0805E588:
	movs r0, #0
_0805E58A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805E59C
sub_0805E59C: @ 0x0805E59C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4, #0x40]
	cmp r0, #5
	bne _0805E5AE
	movs r0, #1
	b _0805E65E
_0805E5AE:
	cmp r1, #1
	bne _0805E5C2
	movs r0, #1
	movs r1, #1
	bl sub_08073018
	bl sub_08072B70
	bl sub_08072D0C
_0805E5C2:
	ldr r1, [r4, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _0805E608
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E608
	adds r0, r4, #0
	movs r1, #3
	b _0805E652
_0805E608:
	bl sub_08072A88
	cmp r0, #0
	bgt _0805E62E
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E62E
	adds r0, r4, #0
	movs r1, #4
	b _0805E652
_0805E62E:
	bl sub_08072EA8
	cmp r0, #0
	bgt _0805E65C
	ldr r1, [r4, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E65C
	adds r0, r4, #0
	movs r1, #2
_0805E652:
	movs r2, #0
	bl sub_0805E670
	movs r0, #1
	b _0805E65E
_0805E65C:
	movs r0, #0
_0805E65E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805E664
sub_0805E664: @ 0x0805E664
	movs r0, #1
	bx lr

	thumb_func_start sub_0805E668
sub_0805E668: @ 0x0805E668
	movs r0, #1
	bx lr

	thumb_func_start sub_0805E66C
sub_0805E66C: @ 0x0805E66C
	movs r0, #1
	bx lr

	thumb_func_start sub_0805E670
sub_0805E670: @ 0x0805E670
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x40]
	cmp r0, r1
	bne _0805E682
	cmp r2, #1
	bne _0805E688
_0805E682:
	str r1, [r3, #0x40]
	movs r0, #1
	b _0805E68A
_0805E688:
	movs r0, #0
_0805E68A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805E690
sub_0805E690: @ 0x0805E690
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #3
	beq _0805E6B4
	cmp r0, #3
	bgt _0805E6A4
	cmp r0, #2
	beq _0805E6AE
	b _0805E6E4
_0805E6A4:
	cmp r0, #4
	beq _0805E6BA
	cmp r0, #5
	beq _0805E6D0
	b _0805E6E4
_0805E6AE:
	ldr r1, [r4, #0x1c]
	adds r1, #0xf0
	b _0805E6C2
_0805E6B4:
	ldr r1, [r4, #0x1c]
	adds r1, #0xf8
	b _0805E6C2
_0805E6BA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
_0805E6C2:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0805E6E4
_0805E6D0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_0805E6E4:
	ldr r1, [r4, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805E700
sub_0805E700: @ 0x0805E700
	push {r4, r5, r6, lr}
	mov r6, r8

	thumb_func_start sub_0805E704
sub_0805E704: @ 0x0805E704
	push {r6}
	sub sp, #0x20
	adds r6, r0, #0
	ldr r4, [r6, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	mov r0, sp
	bl __4Base
	ldr r1, _0805E800 @ =_vt.3Unk
	mov r8, r1
	ldr r0, _0805E804 @ =vt_09F453B0
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r1, [r6, #0x1c]
	movs r3, #0xf8
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0
	bl sub_0807459C
	adds r0, r6, #0
	bl sub_0805E808
	ldr r5, [r6, #0x4c]
	ldr r4, [r5, #0x1c]
	adds r4, #0xd8
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r5, r5, r0
	ldr r0, [r6, #0x54]
	ldr r1, [r0, #0x1c]
	movs r2, #0x94
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r5, [r6, #0x4c]
	ldr r4, [r5, #0x1c]
	adds r4, #0xe0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, [r6, #0x54]
	ldr r1, [r0, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r5, [r6, #0x4c]
	ldr r4, [r5, #0x1c]
	adds r4, #0xf0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, [r6, #0x54]
	ldr r1, [r0, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r0, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl sub_0807459C
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E800: .4byte _vt.3Unk
_0805E804: .4byte vt_09F453B0

	thumb_func_start sub_0805E808
sub_0805E808: @ 0x0805E808
	push {r4, r5, r6, lr}
	sub sp, #0xd0
	mov r0, sp
	bl sub_0806DC78
	ldr r1, _0805E894 @ =0x00000293
	add r5, sp, #0xa4
	adds r0, r5, #0
	bl sub_080706A0
	add r6, sp, #0xb0
	adds r0, r6, #0
	movs r1, #4
	bl sub_080706A0
	ldr r1, _0805E898 @ =0x00000285
	add r4, sp, #0xbc
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, sp
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806DDA0
	ldr r0, _0805E89C @ =_vt.1D
	str r0, [r4, #8]
	str r0, [r6, #8]
	str r0, [r5, #8]
	mov r0, sp
	movs r1, #2
	bl sub_0806DEEC
	add r1, sp, #0xc8
	movs r0, #0x78
	movs r2, #0x14
	movs r4, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sp
	bl sub_0806DF48
	adds r0, r5, #0
	bl __3Msg
	ldr r1, _0805E8A0 @ =0x0000FF33
	adds r0, r5, #0
	bl sub_0806E34C
	add r1, sp, #0xcc
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r5, #0
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, sp
	movs r1, #2
	bl sub_0806DD48
	add sp, #0xd0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E894: .4byte 0x00000293
_0805E898: .4byte 0x00000285
_0805E89C: .4byte _vt.1D
_0805E8A0: .4byte 0x0000FF33

	thumb_func_start sub_0805E8A4
sub_0805E8A4: @ 0x0805E8A4
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r0, sp
	bl __4Base
	ldr r6, _0805E8E8 @ =_vt.3Unk
	ldr r0, _0805E8EC @ =vt_09F45330
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	str r6, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	movs r0, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl sub_0807459C
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E8E8: .4byte _vt.3Unk
_0805E8EC: .4byte vt_09F45330

	thumb_func_start onBattleLost
onBattleLost: @ 0x0805E8F0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x40
	mov r8, r0
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	add r5, r8
	add r0, sp, #4
	bl __4Base
	ldr r6, _0805E9B4 @ =_vt.3Unk
	ldr r0, _0805E9B8 @ =vt_09F452B0
	str r0, [sp, #0x20]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	bl _call_via_r2
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	mov r2, r8
	ldr r1, [r2, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0
	bl sub_0807459C
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x24
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x30
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x78
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x3c
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	bl sub_0805E9BC
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E9B4: .4byte _vt.3Unk
_0805E9B8: .4byte vt_09F452B0

	thumb_func_start sub_0805E9BC
sub_0805E9BC: @ 0x0805E9BC
	push {lr}
	movs r0, #0x17
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805E9D0
	movs r0, #0
	b _0805E9E8
_0805E9D0:
	bl sub_0806FDB0
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
_0805E9E8:
	pop {r1}
	bx r1

	thumb_func_start sub_0805E9EC
sub_0805E9EC: @ 0x0805E9EC
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r0, sp
	bl __4Base
	ldr r6, _0805EA30 @ =_vt.3Unk
	ldr r0, _0805EA34 @ =vt_09F453B0
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	str r6, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	movs r0, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl sub_0807459C
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EA30: .4byte _vt.3Unk
_0805EA34: .4byte vt_09F453B0

	thumb_func_start sub_0805EA38
sub_0805EA38: @ 0x0805EA38
	push {lr}
	sub sp, #8
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0
	movs r2, #0x20
	movs r3, #1
	bl sub_08074414
	add sp, #8
	pop {r0}
	bx r0

	thumb_func_start sub_0805EA5C
sub_0805EA5C: @ 0x0805EA5C
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_51
nullsub_51: @ 0x0805EA78
	bx lr
	.align 2, 0

	thumb_func_start sub_0805EA7C
sub_0805EA7C: @ 0x0805EA7C
	ldrh r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_0805EA80
sub_0805EA80: @ 0x0805EA80
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_0805EA84
sub_0805EA84: @ 0x0805EA84
	ldr r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0805EA88
sub_0805EA88: @ 0x0805EA88
	ldr r0, [r0, #0x30]
	bx lr

	thumb_func_start sub_0805EA8C
sub_0805EA8C: @ 0x0805EA8C
	ldr r0, [r0, #0x34]
	bx lr

	thumb_func_start sub_0805EA90
sub_0805EA90: @ 0x0805EA90
	push {lr}
	movs r1, #0
	ldr r0, _0805EAA4 @ =gEncounter
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805EA9E
	movs r1, #1
_0805EA9E:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805EAA4: .4byte gEncounter

	thumb_func_start sub_0805EAA8
sub_0805EAA8: @ 0x0805EAA8
	ldr r0, _0805EABC @ =gEncounter
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805EAC0 @ =gUnknown_080C7D28
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0805EABC: .4byte gEncounter
_0805EAC0: .4byte gUnknown_080C7D28

	thumb_func_start sub_0805EAC4
sub_0805EAC4: @ 0x0805EAC4
	push {lr}
	movs r1, #0
	ldr r0, _0805EAD8 @ =gEncounter
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805EAD2
	movs r1, #1
_0805EAD2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805EAD8: .4byte gEncounter

	thumb_func_start sub_0805EADC
sub_0805EADC: @ 0x0805EADC
	ldr r0, _0805EAE8 @ =gEncounter
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #4
	ldr r1, _0805EAEC @ =gBattleGroupTable
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0805EAE8: .4byte gEncounter
_0805EAEC: .4byte gBattleGroupTable

	thumb_func_start sub_0805EAF0
sub_0805EAF0: @ 0x0805EAF0
	push {lr}
	movs r1, #0
	ldr r0, _0805EB04 @ =gEncounter
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805EAFE
	movs r1, #1
_0805EAFE:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805EB04: .4byte gEncounter

	thumb_func_start sub_0805EB08
sub_0805EB08: @ 0x0805EB08
	ldr r0, _0805EB1C @ =gEncounter
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805EB20 @ =gUnknown_080C7D28
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0805EB1C: .4byte gEncounter
_0805EB20: .4byte gUnknown_080C7D28

	thumb_func_start sub_0805EB24
sub_0805EB24: @ 0x0805EB24
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x38]
	cmp r0, #0
	bne _0805EB30
	movs r1, #1
_0805EB30:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EB38
sub_0805EB38: @ 0x0805EB38
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x38]
	cmp r0, #1
	bne _0805EB44
	movs r1, #1
_0805EB44:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EB4C
sub_0805EB4C: @ 0x0805EB4C
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x38]
	cmp r0, #2
	bne _0805EB58
	movs r1, #1
_0805EB58:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EB60
sub_0805EB60: @ 0x0805EB60
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805EB94
	movs r1, #0
	ldr r0, _0805EB90 @ =gEncounter
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0805EB8C
	movs r1, #1
_0805EB8C:
	adds r0, r1, #0
	b _0805EBFA
	.align 2, 0
_0805EB90: .4byte gEncounter
_0805EB94:
	ldr r1, [r4, #0x1c]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805EBE0
	movs r5, #0
	ldr r0, _0805EBDC @ =gEncounter
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0805EBD4
	ldr r1, [r4, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _0805EBD6
_0805EBD4:
	movs r5, #1
_0805EBD6:
	adds r0, r5, #0
	b _0805EBFA
	.align 2, 0
_0805EBDC: .4byte gEncounter
_0805EBE0:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r0, #1
_0805EBFA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805EC00
sub_0805EC00: @ 0x0805EC00
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x40]
	cmp r0, #1
	bne _0805EC0C
	movs r1, #1
_0805EC0C:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EC14
sub_0805EC14: @ 0x0805EC14
	ldr r0, [r0, #0x3c]
	bx lr

	thumb_func_start sub_0805EC18
sub_0805EC18: @ 0x0805EC18
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x40]
	subs r0, #2
	cmp r0, #3
	bhi _0805EC26
	movs r1, #1
_0805EC26:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_0805EC2C
sub_0805EC2C: @ 0x0805EC2C
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x40]
	cmp r0, #2
	bne _0805EC38
	movs r1, #1
_0805EC38:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EC40
sub_0805EC40: @ 0x0805EC40
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x40]
	cmp r0, #3
	bne _0805EC4C
	movs r1, #1
_0805EC4C:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EC54
sub_0805EC54: @ 0x0805EC54
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x40]
	cmp r0, #4
	bne _0805EC60
	movs r1, #1
_0805EC60:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EC68
sub_0805EC68: @ 0x0805EC68
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x40]
	cmp r0, #5
	bne _0805EC74
	movs r1, #1
_0805EC74:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EC7C
sub_0805EC7C: @ 0x0805EC7C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805ECA4
	ldr r1, [r4, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	b _0805ECFE
_0805ECA4:
	ldr r1, [r4, #0x1c]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805ECD8
	ldr r1, [r4, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldrh r0, [r0, #0xc]
	b _0805ED0E
_0805ECD8:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805ECF8
	movs r0, #0
	b _0805ED0E
_0805ECF8:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
_0805ECFE:
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldrh r0, [r0, #0xe]
_0805ED0E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805ED14
sub_0805ED14: @ 0x0805ED14
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805ED3C
	ldr r1, [r4, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	b _0805ED96
_0805ED3C:
	ldr r1, [r4, #0x1c]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805ED70
	ldr r1, [r4, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldrh r0, [r0, #0xe]
	b _0805EDA6
_0805ED70:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805ED90
	movs r0, #0
	b _0805EDA6
_0805ED90:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
_0805ED96:
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldrh r0, [r0, #0x10]
_0805EDA6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805EDAC
sub_0805EDAC: @ 0x0805EDAC
	movs r0, #3
	bx lr

	thumb_func_start sub_0805EDB0
sub_0805EDB0: @ 0x0805EDB0
	ldr r0, _0805EDB4 @ =gUnknown_0200506E
	bx lr
	.align 2, 0
_0805EDB4: .4byte gUnknown_0200506E

	thumb_func_start sub_0805EDB8
sub_0805EDB8: @ 0x0805EDB8
	ldr r0, [r0, #0x44]
	bx lr

	thumb_func_start sub_0805EDBC
sub_0805EDBC: @ 0x0805EDBC
	ldr r0, [r0, #0x48]
	bx lr

	thumb_func_start sub_0805EDC0
sub_0805EDC0: @ 0x0805EDC0
	ldr r0, [r0, #0x4c]
	bx lr

	thumb_func_start sub_0805EDC4
sub_0805EDC4: @ 0x0805EDC4
	ldr r0, [r0, #0x50]
	bx lr

	thumb_func_start sub_0805EDC8
sub_0805EDC8: @ 0x0805EDC8
	ldr r0, [r0, #0x54]
	bx lr

	thumb_func_start sub_0805EDCC
sub_0805EDCC: @ 0x0805EDCC
	ldr r0, [r0, #0x58]
	bx lr

	thumb_func_start sub_0805EDD0
sub_0805EDD0: @ 0x0805EDD0
	ldr r0, [r0, #0x5c]
	bx lr

	thumb_func_start nullsub_95
nullsub_95: @ 0x0805EDD4
	bx lr
	.align 2, 0

	thumb_func_start sub_0805EDD8
sub_0805EDD8: @ 0x0805EDD8
	push {r4, lr}
	ldr r4, _0805EE40 @ =gUnknown_02002004
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE44 @ =vt_09F45618
	str r0, [r4, #8]
	ldr r4, _0805EE48 @ =gUnknown_02001FF8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE4C @ =vt_09F45598
	str r0, [r4, #8]
	ldr r4, _0805EE50 @ =gUnknown_02001FEC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE54 @ =vt_09F45518
	str r0, [r4, #8]
	ldr r4, _0805EE58 @ =gUnknown_02001FE0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE5C @ =vt_09F45498
	str r0, [r4, #8]
	ldr r4, _0805EE60 @ =gUnknown_02001FD4
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE64 @ =vt_09F45418
	str r0, [r4, #8]
	ldr r4, _0805EE68 @ =gUnknown_02001FC8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE6C @ =vt_09F45398
	str r0, [r4, #8]
	ldr r4, _0805EE70 @ =gUnknown_02001FBC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE74 @ =vt_09F45318
	str r0, [r4, #8]
	ldr r4, _0805EE78 @ =gUnknown_02001FB0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE7C @ =vt_09F45298
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EE40: .4byte gUnknown_02002004
_0805EE44: .4byte vt_09F45618
_0805EE48: .4byte gUnknown_02001FF8
_0805EE4C: .4byte vt_09F45598
_0805EE50: .4byte gUnknown_02001FEC
_0805EE54: .4byte vt_09F45518
_0805EE58: .4byte gUnknown_02001FE0
_0805EE5C: .4byte vt_09F45498
_0805EE60: .4byte gUnknown_02001FD4
_0805EE64: .4byte vt_09F45418
_0805EE68: .4byte gUnknown_02001FC8
_0805EE6C: .4byte vt_09F45398
_0805EE70: .4byte gUnknown_02001FBC
_0805EE74: .4byte vt_09F45318
_0805EE78: .4byte gUnknown_02001FB0
_0805EE7C: .4byte vt_09F45298

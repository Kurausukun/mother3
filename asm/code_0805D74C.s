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
	ldr r5, _0805D86C @ =gUnknown_02002014
	movs r0, #0x80
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805D870 @ =0x09F45058
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x60
	bl sub_08071F8C
	str r4, [r5]
_0805D85E:
	ldr r0, _0805D86C @ =gUnknown_02002014
	ldr r0, [r0]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805D868: .4byte gUnknown_02002010
_0805D86C: .4byte gUnknown_02002014
_0805D870: .4byte 0x09F45058

	thumb_func_start sub_0805D874
sub_0805D874: @ 0x0805D874
	ldr r0, _0805D87C @ =gUnknown_02002014
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0805D87C: .4byte gUnknown_02002014

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
	ldr r5, _0805D8B8 @ =gUnknown_02002014
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
_0805D8B8: .4byte gUnknown_02002014

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
	ldr r1, _0805D8F8 @ =gUnknown_02002014
	str r0, [r1]
_0805D8E8:
	ldr r0, _0805D8F8 @ =gUnknown_02002014
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805D8F4: .4byte gUnknown_02002010
_0805D8F8: .4byte gUnknown_02002014

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
	ldr r0, _0805DB64 @ =0x09F45058
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
	ldr r6, _0805DB6C @ =0x09F44F08
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
	bl sub_08062274
	bl sub_08062308
	bl sub_08063AD0
	bl sub_08063EE4
	bl sub_0806CC10
	adds r6, r0, #0
	add r0, sp, #0x1c
	bl __4Base
	ldr r0, _0805DB78 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _0805DB7C @ =0x09F7F330
	str r0, [sp, #0x38]
	add r5, sp, #0x1c
	ldr r0, _0805DB80 @ =gUnknown_080F2B60
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
_0805DB64: .4byte 0x09F45058
_0805DB68: .4byte 0x000003A9
_0805DB6C: .4byte 0x09F44F08
_0805DB70: .4byte 0x000003AA
_0805DB74: .4byte 0x000003AB
_0805DB78: .4byte 0x09F44FF0
_0805DB7C: .4byte 0x09F7F330
_0805DB80: .4byte gUnknown_080F2B60

	thumb_func_start sub_0805DB84
sub_0805DB84: @ 0x0805DB84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805DC18 @ =0x09F45058
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
	bl sub_08071FBC
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DC18: .4byte 0x09F45058

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
	ldr r0, _0805DC40 @ =gUnknown_020047E0
	adds r0, #0x3c
	movs r1, #1
	b _0805DC62
	.align 2, 0
_0805DC40: .4byte gUnknown_020047E0
_0805DC44:
	ldr r0, _0805DC4C @ =gUnknown_020047E0
	adds r0, #0x3c
	movs r1, #3
	b _0805DC62
	.align 2, 0
_0805DC4C: .4byte gUnknown_020047E0
_0805DC50:
	ldr r0, _0805DC58 @ =gUnknown_020047E0
	adds r0, #0x3c
	movs r1, #1
	b _0805DC62
	.align 2, 0
_0805DC58: .4byte gUnknown_020047E0
_0805DC5C:
	ldr r0, _0805DC68 @ =gUnknown_020047E0
	adds r0, #0x3c
	movs r1, #2
_0805DC62:
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0805DC68: .4byte gUnknown_020047E0

	thumb_func_start sub_0805DC6C
sub_0805DC6C: @ 0x0805DC6C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0805DDE0 @ =gUnknown_020047E0
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
_0805DDE0: .4byte gUnknown_020047E0

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
	ldr r2, _0805DEAC @ =gUnknown_080D0D28
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
_0805DEAC: .4byte gUnknown_080D0D28

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
	bl sub_0806E274
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
	bl sub_0806E274
	add r5, sp, #0x34
	adds r0, r5, #0
	bl sub_0806E274
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
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
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
	bl sub_0806E274
	add r5, sp, #0x34
	adds r0, r5, #0
	bl sub_0806E274
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
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
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
	bl sub_0806E274
	adds r0, r6, #0
	bl sub_0806E274
	adds r0, r5, #0
	bl sub_0806E274
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
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r7, #0
_0805E072:
	movs r1, #2
	bl sub_0806E308
	b _0805E0C2
_0805E07A:
	adds r0, r7, #0
	bl sub_0806E274
	adds r0, r6, #0
	bl sub_0806E274
	adds r0, r5, #0
	bl sub_0806E274
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
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806E308
_0805E0C2:
	add r1, sp, #0x40
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
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
	ldr r2, _0805E228 @ =0x09F44FF0
	mov sb, r2
	ldr r0, _0805E22C @ =0x09F455B0
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
_0805E228: .4byte 0x09F44FF0
_0805E22C: .4byte 0x09F455B0
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
	bl sub_080729DC
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
	bl sub_080729DC
	cmp r4, r0
	blt _0805E34C
	b _0805E388
_0805E37E:
	adds r4, #1
_0805E380:
	bl sub_080729DC
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
	bl sub_080729DC
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
	ldr r2, _0805E4F4 @ =0x09F44FF0
	mov r8, r2
	ldr r0, _0805E4F8 @ =0x09F454B0
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
	ldr r0, _0805E4FC @ =0x09F45430
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
	bl sub_0807068C
	movs r0, #1
	b _0805E502
	.align 2, 0
_0805E4F4: .4byte 0x09F44FF0
_0805E4F8: .4byte 0x09F454B0
_0805E4FC: .4byte 0x09F45430
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
	ldr r2, _0805E580 @ =0x09F44FF0
	mov sl, r2
	ldr r0, _0805E584 @ =0x09F45530
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
_0805E580: .4byte 0x09F44FF0
_0805E584: .4byte 0x09F45530
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
	ldr r1, _0805E800 @ =0x09F44FF0
	mov r8, r1
	ldr r0, _0805E804 @ =0x09F453B0
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
_0805E800: .4byte 0x09F44FF0
_0805E804: .4byte 0x09F453B0

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
	ldr r0, _0805E89C @ =0x09F44F08
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
	bl sub_0806E274
	ldr r1, _0805E8A0 @ =0x0000FF33
	adds r0, r5, #0
	bl sub_0806E34C
	add r1, sp, #0xcc
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r5, #0
	movs r2, #1
	bl sub_080735E0
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
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
_0805E89C: .4byte 0x09F44F08
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
	ldr r6, _0805E8E8 @ =0x09F44FF0
	ldr r0, _0805E8EC @ =0x09F45330
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
_0805E8E8: .4byte 0x09F44FF0
_0805E8EC: .4byte 0x09F45330

	thumb_func_start sub_0805E8F0
sub_0805E8F0: @ 0x0805E8F0
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
	ldr r6, _0805E9B4 @ =0x09F44FF0
	ldr r0, _0805E9B8 @ =0x09F452B0
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
	bl sub_0806E274
	add r5, sp, #0x24
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x30
	adds r0, r4, #0
	bl sub_0806E274
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
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	bl sub_0805E9BC
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E9B4: .4byte 0x09F44FF0
_0805E9B8: .4byte 0x09F452B0

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
	ldr r6, _0805EA30 @ =0x09F44FF0
	ldr r0, _0805EA34 @ =0x09F453B0
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
_0805EA30: .4byte 0x09F44FF0
_0805EA34: .4byte 0x09F453B0

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
	ldr r0, _0805EAA4 @ =gUnknown_020047E0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805EA9E
	movs r1, #1
_0805EA9E:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805EAA4: .4byte gUnknown_020047E0

	thumb_func_start sub_0805EAA8
sub_0805EAA8: @ 0x0805EAA8
	ldr r0, _0805EABC @ =gUnknown_020047E0
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805EAC0 @ =gUnknown_080C7D28
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0805EABC: .4byte gUnknown_020047E0
_0805EAC0: .4byte gUnknown_080C7D28

	thumb_func_start sub_0805EAC4
sub_0805EAC4: @ 0x0805EAC4
	push {lr}
	movs r1, #0
	ldr r0, _0805EAD8 @ =gUnknown_020047E0
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805EAD2
	movs r1, #1
_0805EAD2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805EAD8: .4byte gUnknown_020047E0

	thumb_func_start sub_0805EADC
sub_0805EADC: @ 0x0805EADC
	ldr r0, _0805EAE8 @ =gUnknown_020047E0
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #4
	ldr r1, _0805EAEC @ =gUnknown_080EC930
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0805EAE8: .4byte gUnknown_020047E0
_0805EAEC: .4byte gUnknown_080EC930

	thumb_func_start sub_0805EAF0
sub_0805EAF0: @ 0x0805EAF0
	push {lr}
	movs r1, #0
	ldr r0, _0805EB04 @ =gUnknown_020047E0
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805EAFE
	movs r1, #1
_0805EAFE:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805EB04: .4byte gUnknown_020047E0

	thumb_func_start sub_0805EB08
sub_0805EB08: @ 0x0805EB08
	ldr r0, _0805EB1C @ =gUnknown_020047E0
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805EB20 @ =gUnknown_080C7D28
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0805EB1C: .4byte gUnknown_020047E0
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
	ldr r0, _0805EB90 @ =gUnknown_020047E0
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0805EB8C
	movs r1, #1
_0805EB8C:
	adds r0, r1, #0
	b _0805EBFA
	.align 2, 0
_0805EB90: .4byte gUnknown_020047E0
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
	ldr r0, _0805EBDC @ =gUnknown_020047E0
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
_0805EBDC: .4byte gUnknown_020047E0
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
	ldr r0, _0805EE44 @ =0x09F45618
	str r0, [r4, #8]
	ldr r4, _0805EE48 @ =gUnknown_02001FF8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE4C @ =0x09F45598
	str r0, [r4, #8]
	ldr r4, _0805EE50 @ =gUnknown_02001FEC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE54 @ =0x09F45518
	str r0, [r4, #8]
	ldr r4, _0805EE58 @ =gUnknown_02001FE0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE5C @ =0x09F45498
	str r0, [r4, #8]
	ldr r4, _0805EE60 @ =gUnknown_02001FD4
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE64 @ =0x09F45418
	str r0, [r4, #8]
	ldr r4, _0805EE68 @ =gUnknown_02001FC8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE6C @ =0x09F45398
	str r0, [r4, #8]
	ldr r4, _0805EE70 @ =gUnknown_02001FBC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE74 @ =0x09F45318
	str r0, [r4, #8]
	ldr r4, _0805EE78 @ =gUnknown_02001FB0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE7C @ =0x09F45298
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EE40: .4byte gUnknown_02002004
_0805EE44: .4byte 0x09F45618
_0805EE48: .4byte gUnknown_02001FF8
_0805EE4C: .4byte 0x09F45598
_0805EE50: .4byte gUnknown_02001FEC
_0805EE54: .4byte 0x09F45518
_0805EE58: .4byte gUnknown_02001FE0
_0805EE5C: .4byte 0x09F45498
_0805EE60: .4byte gUnknown_02001FD4
_0805EE64: .4byte 0x09F45418
_0805EE68: .4byte gUnknown_02001FC8
_0805EE6C: .4byte 0x09F45398
_0805EE70: .4byte gUnknown_02001FBC
_0805EE74: .4byte 0x09F45318
_0805EE78: .4byte gUnknown_02001FB0
_0805EE7C: .4byte 0x09F45298

	thumb_func_start sub_0805EE80
sub_0805EE80: @ 0x0805EE80
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EE9C @ =0x09F45058
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x60
	bl sub_08071F8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EE9C: .4byte 0x09F45058

	thumb_func_start sub_0805EEA0
sub_0805EEA0: @ 0x0805EEA0
	ldr r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0805EEA4
sub_0805EEA4: @ 0x0805EEA4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl __4Base
	ldr r0, _0805EEBC @ =0x09F45430
	str r0, [r4, #0x1c]
	str r5, [r4, #0x20]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EEBC: .4byte 0x09F45430

	thumb_func_start sub_0805EEC0
sub_0805EEC0: @ 0x0805EEC0
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EED4 @ =0x09F45430
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EED4: .4byte 0x09F45430

	thumb_func_start sub_0805EED8
sub_0805EED8: @ 0x0805EED8
	ldr r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0805EEDC
sub_0805EEDC: @ 0x0805EEDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl __4Base
	ldr r0, _0805EEF4 @ =0x09F454B0
	str r0, [r4, #0x1c]
	str r5, [r4, #0x20]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EEF4: .4byte 0x09F454B0

	thumb_func_start sub_0805EEF8
sub_0805EEF8: @ 0x0805EEF8
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EF0C @ =0x09F454B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF0C: .4byte 0x09F454B0

	thumb_func_start sub_0805EF10
sub_0805EF10: @ 0x0805EF10
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0805EF14
sub_0805EF14: @ 0x0805EF14
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl __4Base
	ldr r0, _0805EF30 @ =0x09F45530
	str r0, [r5, #0x1c]
	strh r4, [r5, #0x20]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF30: .4byte 0x09F45530

	thumb_func_start sub_0805EF34
sub_0805EF34: @ 0x0805EF34
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EF4C @ =0x09F45530
	str r0, [r4, #0x1c]
	movs r0, #0
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF4C: .4byte 0x09F45530

	thumb_func_start sub_0805EF50
sub_0805EF50: @ 0x0805EF50
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0805EF54
sub_0805EF54: @ 0x0805EF54
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl __4Base
	ldr r0, _0805EF70 @ =0x09F455B0
	str r0, [r5, #0x1c]
	strh r4, [r5, #0x20]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF70: .4byte 0x09F455B0

	thumb_func_start sub_0805EF74
sub_0805EF74: @ 0x0805EF74
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EF8C @ =0x09F455B0
	str r0, [r4, #0x1c]
	movs r0, #0
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF8C: .4byte 0x09F455B0

	thumb_func_start sub_0805EF90
sub_0805EF90: @ 0x0805EF90
	push {r4, lr}
	movs r4, #0
_0805EF94:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0805EFD4 @ =sub_08097A0C
	bl sub_0805EFEC
	adds r4, #1
	cmp r4, #0x40
	bls _0805EF94
	ldr r1, _0805EFD8 @ =sub_080979F0
	movs r0, #0x32
	bl sub_0805EFEC
	ldr r1, _0805EFDC @ =sub_080979D0
	movs r0, #0x25
	bl sub_0805EFEC
	ldr r1, _0805EFE0 @ =sub_08097970
	movs r0, #0x38
	bl sub_0805EFEC
	ldr r1, _0805EFE4 @ =sub_08097950
	movs r0, #0x39
	bl sub_0805EFEC
	ldr r1, _0805EFE8 @ =sub_08097930
	movs r0, #0x3a
	bl sub_0805EFEC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EFD4: .4byte sub_08097A0C
_0805EFD8: .4byte sub_080979F0
_0805EFDC: .4byte sub_080979D0
_0805EFE0: .4byte sub_08097970
_0805EFE4: .4byte sub_08097950
_0805EFE8: .4byte sub_08097930

	thumb_func_start sub_0805EFEC
sub_0805EFEC: @ 0x0805EFEC
	lsls r0, r0, #0x10
	ldr r2, _0805EFF8 @ =gUnknown_02002018
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0805EFF8: .4byte gUnknown_02002018

	thumb_func_start sub_0805EFFC
sub_0805EFFC: @ 0x0805EFFC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805F014 @ =gUnknown_02002018
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0
_0805F014: .4byte gUnknown_02002018

	thumb_func_start sub_0805F018
sub_0805F018: @ 0x0805F018
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x48
	adds r5, r0, #0
	bl __4Base
	ldr r0, _0805F0AC @ =0x09F466F0
	str r0, [r5, #0x1c]
	movs r0, #0
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	adds r0, r5, #0
	bl nullsub_26
	bl sub_0805D874
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0805F0B0 @ =0x09F44FF0
	mov sb, r0
	ldr r0, _0805F0B4 @ =0x09F453B0
	str r0, [sp, #0x20]
	ldr r0, _0805F0B8 @ =gUnknown_080F3870
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__12ClockManager
	mov r8, r0
	add r0, sp, #0x24
	bl __4Base
	ldr r0, _0805F0BC @ =0x09F7ED20
	str r0, [sp, #0x40]
	add r6, sp, #0x24
	ldr r0, _0805F0C0 @ =gUnknown_080F3878
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x40]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x48
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805F0AC: .4byte 0x09F466F0
_0805F0B0: .4byte 0x09F44FF0
_0805F0B4: .4byte 0x09F453B0
_0805F0B8: .4byte gUnknown_080F3870
_0805F0BC: .4byte 0x09F7ED20
_0805F0C0: .4byte gUnknown_080F3878

	thumb_func_start nullsub_26
nullsub_26: @ 0x0805F0C4
	bx lr
	.align 2, 0

	thumb_func_start sub_0805F0C8
sub_0805F0C8: @ 0x0805F0C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805F0F8 @ =0x09F466F0
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	cmp r2, #0
	beq _0805F0E8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805F0E8:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F0F8: .4byte 0x09F466F0

	thumb_func_start sub_0805F0FC
sub_0805F0FC: @ 0x0805F0FC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r2, [r4, #0x24]
	cmp r2, #0
	beq _0805F11A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805F11A:
	ldr r0, _0805F130 @ =0x00000544
	bl __builtin_new
	adds r1, r5, #0
	bl sub_0806EDF0
	str r0, [r4, #0x24]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F130: .4byte 0x00000544

	thumb_func_start sub_0805F134
sub_0805F134: @ 0x0805F134
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_0805F138
sub_0805F138: @ 0x0805F138
	movs r1, #1
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0

	thumb_func_start sub_0805F140
sub_0805F140: @ 0x0805F140
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _0805F1BA
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	cmp r5, #0
	ble _0805F196
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r2, r1, #0
	adds r2, #0x98
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r3, r0, r1
	subs r0, r5, #4
	movs r1, #0
	cmp r1, r0
	bge _0805F18E
	adds r1, r0, #0
_0805F18E:
	ldr r2, [r2, #4]
	adds r0, r3, #0
	bl _call_via_r2
_0805F196:
	cmp r6, #0x9f
	bgt _0805F1BA
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r2, r1, #0
	adds r2, #0xa0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r3, r0, r1
	adds r0, r6, #4
	movs r1, #0xa0
	cmp r1, r0
	ble _0805F1B2
	adds r1, r0, #0
_0805F1B2:
	ldr r2, [r2, #4]
	adds r0, r3, #0
	bl _call_via_r2
_0805F1BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805F1C0
sub_0805F1C0: @ 0x0805F1C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov r8, r0
	bl __4Base
	ldr r0, _0805F428 @ =0x09F46768
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
	bl sub_080728B8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	ldr r0, _0805F42C @ =0x09F818D0
	mov sl, r0
	str r0, [sp, #0x20]
	ldr r0, _0805F430 @ =gUnknown_080F3F00
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	ldr r1, _0805F434 @ =0x09F44FF0
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	ldr r1, _0805F434 @ =0x09F44FF0
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	ldr r1, _0805F434 @ =0x09F44FF0
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	ldr r0, _0805F438 @ =0x09F81850
	mov sl, r0
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	ldr r1, _0805F434 @ =0x09F44FF0
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	ldr r1, _0805F434 @ =0x09F44FF0
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	ldr r1, _0805F434 @ =0x09F44FF0
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	ldr r0, _0805F43C @ =0x09F817D0
	mov sl, r0
	str r0, [sp, #0x20]
	ldr r0, _0805F440 @ =gUnknown_080F3F08
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	ldr r1, _0805F434 @ =0x09F44FF0
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	ldr r1, _0805F434 @ =0x09F44FF0
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	ldr r1, _0805F434 @ =0x09F44FF0
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	ldr r0, _0805F444 @ =0x09F81750
	mov sl, r0
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	ldr r1, _0805F434 @ =0x09F44FF0
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	ldr r1, _0805F434 @ =0x09F44FF0
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	ldr r1, _0805F434 @ =0x09F44FF0
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
_0805F428: .4byte 0x09F46768
_0805F42C: .4byte 0x09F818D0
_0805F430: .4byte gUnknown_080F3F00
_0805F434: .4byte 0x09F44FF0
_0805F438: .4byte 0x09F81850
_0805F43C: .4byte 0x09F817D0
_0805F440: .4byte gUnknown_080F3F08
_0805F444: .4byte 0x09F81750

	thumb_func_start sub_0805F448
sub_0805F448: @ 0x0805F448
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805F474 @ =0x09F46768
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0805F45C
	bl __builtin_vec_delete
_0805F45C:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0805F466
	bl __builtin_vec_delete
_0805F466:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F474: .4byte 0x09F46768

	thumb_func_start sub_0805F478
sub_0805F478: @ 0x0805F478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	movs r3, #0
	mov r1, sl
	adds r1, #0x24
	ldr r0, [r1, #4]
	cmp r3, r0
	bge _0805F4D4
	adds r4, r1, #0
_0805F494:
	lsls r0, r3, #3
	ldr r1, [r4, #8]
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0805F4CC
	adds r6, r4, #0
	ldr r2, [r4, #4]
	subs r7, r3, #1
	cmp r3, r2
	bge _0805F4CA
	adds r0, r3, #1
	subs r0, r2, r0
	adds r5, r1, #0
	adds r5, #8
	adds r3, r1, #0
	cmp r0, #0
	ble _0805F4C4
	adds r2, r0, #0
_0805F4BA:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F4BA
_0805F4C4:
	ldr r0, [r6, #4]
	subs r0, #1
	str r0, [r6, #4]
_0805F4CA:
	adds r3, r7, #0
_0805F4CC:
	adds r3, #1
	ldr r0, [r4, #4]
	cmp r3, r0
	blt _0805F494
_0805F4D4:
	movs r0, #0x24
	add r0, sl
	mov r8, r0
	movs r1, #0x30
	add r1, sl
	mov sb, r1
	b _0805F570
_0805F4E2:
	mov r2, sb
	ldr r0, [r2, #8]
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _0805F620 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	str r0, [sp, #4]
	mov r5, r8
	ldr r0, [r5, #4]
	adds r4, r0, #1
	mov r1, sl
	ldr r0, [r1, #0x24]
	cmp r0, r4
	bge _0805F53A
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _0805F50A
	adds r1, r0, #0
_0805F50A:
	adds r4, r1, #0
	lsls r0, r4, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	mov r2, r8
	ldr r6, [r2, #8]
	adds r3, r7, #0
	ldr r0, [r2, #4]
	cmp r0, #0
	ble _0805F52C
	adds r2, r0, #0
_0805F522:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F522
_0805F52C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0805F536
	bl __builtin_vec_delete
_0805F536:
	str r4, [r5]
	str r7, [r5, #8]
_0805F53A:
	ldr r3, [r5, #4]
	ldr r0, [r5, #8]
	lsls r2, r3, #3
	adds r2, r2, r0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
	adds r3, #1
	str r3, [r5, #4]
	mov r5, sb
	ldr r2, [r5, #4]
	cmp r2, #0
	ble _0805F570
	ldr r0, [r5, #8]
	subs r1, r2, #1
	adds r4, r0, #4
	adds r3, r0, #0
	cmp r1, #0
	ble _0805F56C
_0805F562:
	ldm r4!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805F562
_0805F56C:
	subs r0, r2, #1
	str r0, [r5, #4]
_0805F570:
	movs r1, #0
	mov r2, sb
	ldr r0, [r2, #4]
	cmp r0, #0
	bgt _0805F57C
	movs r1, #1
_0805F57C:
	cmp r1, #0
	beq _0805F4E2
	movs r5, #0
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r5, r0
	bge _0805F5A4
	mov r6, r8
_0805F58C:
	lsls r0, r5, #3
	ldr r4, [r6, #8]
	adds r4, r4, r0
	ldr r1, [r4]
	mov r0, sl
	bl sub_0805F624
	strh r0, [r4, #4]
	adds r5, #1
	ldr r0, [r6, #4]
	cmp r5, r0
	blt _0805F58C
_0805F5A4:
	movs r2, #0
	mov ip, r2
	mov r1, r8
	ldr r0, [r1, #4]
	cmp ip, r0
	bge _0805F60E
	mov sl, r8
_0805F5B2:
	mov r2, sl
	ldr r0, [r2, #4]
	subs r2, r0, #1
	subs r0, #2
	mov r1, ip
	adds r1, #1
	str r1, [sp, #8]
	cmp r0, ip
	blt _0805F602
	mov sb, r8
_0805F5C6:
	lsls r6, r2, #3
	mov r0, sb
	ldr r1, [r0, #8]
	adds r3, r1, r6
	subs r7, r2, #1
	lsls r5, r7, #3
	adds r1, r1, r5
	ldrh r0, [r3, #4]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bhs _0805F5FA
	ldr r4, [r3, #4]
	ldr r3, [r3]
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r6, r0
	adds r0, r5, r0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	mov r2, r8
	ldr r0, [r2, #8]
	adds r0, r5, r0
	str r3, [r0]
	str r4, [r0, #4]
_0805F5FA:
	adds r2, r7, #0
	subs r0, r2, #1
	cmp r0, ip
	bge _0805F5C6
_0805F602:
	ldr r0, [sp, #8]
	mov ip, r0
	mov r1, sl
	ldr r0, [r1, #4]
	cmp ip, r0
	blt _0805F5B2
_0805F60E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F620: .4byte 0xFFFF0000

	thumb_func_start sub_0805F624
sub_0805F624: @ 0x0805F624
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	subs r0, r5, #4
	adds r1, r5, #4
	bl sub_08070660
	movs r5, #0
	cmp r0, #0
	blt _0805F654
	adds r5, r0, #0
	cmp r5, #0xff
	ble _0805F654
	movs r5, #0xff
_0805F654:
	adds r0, r4, #0
	bl sub_080729B0
	adds r4, r0, #0
	cmp r4, #0
	beq _0805F6A2
	ldr r1, [r4, #0x1c]
	movs r3, #0xca
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _0805F6A2
	ldr r1, [r4, #0x1c]
	movs r3, #0xca
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0805F6A4
_0805F6A2:
	movs r0, #2
_0805F6A4:
	lsls r0, r0, #8
	adds r0, #0xff
	subs r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805F6B0
sub_0805F6B0: @ 0x0805F6B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	bl sub_0805F95C
	adds r5, r0, #0
	adds r4, r7, #0
	adds r4, #0x24
	ldr r6, [r4, #4]
	cmp r5, r6
	bge _0805F778
	lsls r0, r5, #3
	ldr r2, [r4, #8]
	adds r2, r2, r0
	adds r3, r2, #0
	ldm r3!, {r0, r1}
	str r0, [sp]
	str r1, [sp, #4]
	mov ip, r4
	adds r0, r5, #1
	subs r0, r6, r0
	adds r5, r2, #0
	cmp r0, #0
	ble _0805F6F0
	adds r2, r0, #0
_0805F6E6:
	ldm r3!, {r0, r1}
	stm r5!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F6E6
_0805F6F0:
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
	mov r5, ip
	mov r8, sp
	ldr r0, [r5, #4]
	adds r4, r0, #1
	ldr r0, [r7, #0x24]
	cmp r0, r4
	bge _0805F73C
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _0805F70E
	adds r0, r1, #0
_0805F70E:
	adds r4, r0, #0
	lsls r0, r4, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r6, [r5, #8]
	adds r3, r7, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _0805F72E
	adds r2, r0, #0
_0805F724:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F724
_0805F72E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0805F738
	bl __builtin_vec_delete
_0805F738:
	str r4, [r5]
	str r7, [r5, #8]
_0805F73C:
	ldr r1, [r5, #8]
	ldr r3, [r5, #4]
	adds r2, r1, #0
	adds r2, #8
	lsls r0, r3, #3
	subs r0, #8
	adds r4, r1, r0
	adds r2, r2, r0
	cmp r3, #0
	ble _0805F762
_0805F750:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r2]
	str r1, [r2, #4]
	subs r4, #8
	subs r2, #8
	subs r3, #1
	cmp r3, #0
	bne _0805F750
_0805F762:
	ldr r0, [r5, #8]
	mov r3, r8
	ldr r1, [r3]
	ldr r2, [r3, #4]
	str r1, [r0]
	str r2, [r0, #4]
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
	movs r0, #1
	b _0805F77A
_0805F778:
	movs r0, #0
_0805F77A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805F788
sub_0805F788: @ 0x0805F788
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	bl sub_0805F95C
	adds r5, r0, #0
	adds r4, r7, #0
	adds r4, #0x24
	ldr r6, [r4, #4]
	cmp r5, r6
	bge _0805F82E
	lsls r0, r5, #3
	ldr r2, [r4, #8]
	adds r2, r2, r0
	adds r3, r2, #0
	ldm r3!, {r0, r1}
	str r0, [sp]
	str r1, [sp, #4]
	mov ip, r4
	adds r0, r5, #1
	subs r0, r6, r0
	adds r5, r2, #0
	cmp r0, #0
	ble _0805F7C8
	adds r2, r0, #0
_0805F7BE:
	ldm r3!, {r0, r1}
	stm r5!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F7BE
_0805F7C8:
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
	mov r4, ip
	mov r8, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x24]
	cmp r0, r5
	bge _0805F814
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805F7E6
	adds r0, r1, #0
_0805F7E6:
	adds r5, r0, #0
	lsls r0, r5, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r6, [r4, #8]
	adds r3, r7, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805F806
	adds r2, r0, #0
_0805F7FC:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F7FC
_0805F806:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805F810
	bl __builtin_vec_delete
_0805F810:
	str r5, [r4]
	str r7, [r4, #8]
_0805F814:
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	lsls r2, r3, #3
	adds r2, r2, r0
	mov r5, r8
	ldr r0, [r5]
	ldr r1, [r5, #4]
	str r0, [r2]
	str r1, [r2, #4]
	adds r3, #1
	str r3, [r4, #4]
	movs r0, #1
	b _0805F830
_0805F82E:
	movs r0, #0
_0805F830:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805F83C
sub_0805F83C: @ 0x0805F83C
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_0805F840
sub_0805F840: @ 0x0805F840
	push {lr}
	cmp r1, #0
	blt _0805F85A
	adds r2, r0, #0
	adds r2, #0x24
	ldr r0, [r2, #4]
	cmp r1, r0
	bge _0805F85A
	lsls r1, r1, #3
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r0, [r0]
	b _0805F85C
_0805F85A:
	movs r0, #0
_0805F85C:
	pop {r1}
	bx r1

	thumb_func_start sub_0805F860
sub_0805F860: @ 0x0805F860
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805F882
	ldr r0, [r4, #0x20]
	bl sub_08072D58
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805F8DE
_0805F882:
	ldr r0, [r4, #0x20]
	str r0, [sp]
	adds r4, r6, #0
	adds r4, #0x30
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r6, #0x30]
	cmp r0, r5
	bge _0805F8CE
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805F8A0
	adds r0, r1, #0
_0805F8A0:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805F8C0
	adds r1, r0, #0
_0805F8B6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805F8B6
_0805F8C0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805F8CA
	bl __builtin_vec_delete
_0805F8CA:
	str r5, [r4]
	str r6, [r4, #8]
_0805F8CE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0805F8DE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805F8E8
sub_0805F8E8: @ 0x0805F8E8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x20]
	bl sub_0805F95C
	adds r1, r0, #0
	adds r2, r4, #0
	adds r2, #0x24
	ldr r0, [r2, #4]
	cmp r1, r0
	bge _0805F90C
	lsls r0, r1, #3
	ldr r1, [r2, #8]
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
_0805F90C:
	ldr r0, [r5, #0x20]
	str r0, [sp]
	adds r5, r4, #0
	adds r5, #0x30
	mov r7, sp
	movs r4, #0
	ldr r3, [r5, #4]
	cmp r4, r3
	bge _0805F954
	ldr r6, [r5, #8]
_0805F920:
	lsls r0, r4, #2
	adds r2, r0, r6
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _0805F94C
	adds r0, r4, #1
	subs r0, r3, r0
	adds r3, r2, #4
	adds r1, r2, #0
	subs r4, #1
	cmp r0, #0
	ble _0805F946
	adds r2, r0, #0
_0805F93C:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0805F93C
_0805F946:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_0805F94C:
	adds r4, #1
	ldr r3, [r5, #4]
	cmp r4, r3
	blt _0805F920
_0805F954:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805F95C
sub_0805F95C: @ 0x0805F95C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r3, #0
	adds r0, #0x24
	ldr r2, [r0, #4]
	cmp r3, r2
	bge _0805F982
	adds r1, r2, #0
	ldr r2, [r0, #8]
_0805F970:
	ldr r0, [r2]
	cmp r0, r4
	bne _0805F97A
	adds r0, r3, #0
	b _0805F984
_0805F97A:
	adds r2, #8
	adds r3, #1
	cmp r3, r1
	blt _0805F970
_0805F982:
	ldr r0, [r5, #0x28]
_0805F984:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805F98C
sub_0805F98C: @ 0x0805F98C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0805FA34 @ =0x09F467F8
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x28
	movs r0, #0
	str r0, [r7, #0x28]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x34]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x40]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x4c]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0x10
	str r0, [r7, #0x5c]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x68]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x74]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r1, _0805FA38 @ =gSave
	str r1, [r7, #0x24]
	adds r1, r7, #0
	adds r1, #0x58
	strb r0, [r1]
	ldr r1, [r7, #0x24]
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0805FA48
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0805FA3C @ =0x09F44FF0
	ldr r0, _0805FA40 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _0805FA44 @ =gUnknown_080F4590
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805FA34: .4byte 0x09F467F8
_0805FA38: .4byte gSave
_0805FA3C: .4byte 0x09F44FF0
_0805FA40: .4byte 0x09F7ED20
_0805FA44: .4byte gUnknown_080F4590

	thumb_func_start sub_0805FA48
sub_0805FA48: @ 0x0805FA48
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r6, _0805FA88 @ =gUnknown_080CC4E8
_0805FA50:
	ldr r0, [r4, #0x24]
	adds r0, r0, r5
	ldrb r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r6
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805FA7C
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
_0805FA7C:
	adds r5, #1
	cmp r5, #4
	ble _0805FA50
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FA88: .4byte gUnknown_080CC4E8

	thumb_func_start sub_0805FA8C
sub_0805FA8C: @ 0x0805FA8C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0805FB2C @ =0x09F467F8
	str r0, [r6, #0x1c]
	movs r4, #0
	adds r1, r6, #0
	adds r1, #0x5c
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _0805FAC8
	adds r5, r1, #0
_0805FAA4:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0805FAC0
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805FAC0:
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0805FAA4
_0805FAC8:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0805FAD6
	bl __builtin_vec_delete
_0805FAD6:
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	beq _0805FAE0
	bl __builtin_vec_delete
_0805FAE0:
	ldr r0, [r6, #0x70]
	cmp r0, #0
	beq _0805FAEA
	bl __builtin_vec_delete
_0805FAEA:
	ldr r0, [r6, #0x64]
	cmp r0, #0
	beq _0805FAF4
	bl __builtin_vec_delete
_0805FAF4:
	ldr r0, [r6, #0x54]
	cmp r0, #0
	beq _0805FAFE
	bl __builtin_vec_delete
_0805FAFE:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	beq _0805FB08
	bl __builtin_vec_delete
_0805FB08:
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _0805FB12
	bl __builtin_vec_delete
_0805FB12:
	ldr r0, [r6, #0x30]
	cmp r0, #0
	beq _0805FB1C
	bl __builtin_vec_delete
_0805FB1C:
	adds r0, r6, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FB2C: .4byte 0x09F467F8

	thumb_func_start sub_0805FB30
sub_0805FB30: @ 0x0805FB30
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0805FBA4 @ =0xFFFF0000
	ldr r2, [sp]
	ands r2, r3
	orrs r2, r1
	str r2, [sp]
	adds r4, r0, #0
	adds r4, #0x28
	mov r7, sp
	ldr r1, [r4, #4]
	adds r5, r1, #1
	ldr r0, [r0, #0x28]
	cmp r0, r5
	bge _0805FB8A
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805FB5C
	adds r0, r1, #0
_0805FB5C:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805FB7C
	adds r1, r0, #0
_0805FB72:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FB72
_0805FB7C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805FB86
	bl __builtin_vec_delete
_0805FB86:
	str r5, [r4]
	str r6, [r4, #8]
_0805FB8A:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FBA4: .4byte 0xFFFF0000

	thumb_func_start sub_0805FBA8
sub_0805FBA8: @ 0x0805FBA8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _0805FC0E
	adds r4, r2, #0
	adds r4, #0x34
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r2, #0x34]
	cmp r0, r5
	bge _0805FBFE
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805FBD0
	adds r0, r1, #0
_0805FBD0:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805FBF0
	adds r1, r0, #0
_0805FBE6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FBE6
_0805FBF0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805FBFA
	bl __builtin_vec_delete
_0805FBFA:
	str r5, [r4]
	str r6, [r4, #8]
_0805FBFE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0805FC0E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805FC18
sub_0805FC18: @ 0x0805FC18
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _0805FC7E
	adds r4, r2, #0
	adds r4, #0x40
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r2, #0x40]
	cmp r0, r5
	bge _0805FC6E
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805FC40
	adds r0, r1, #0
_0805FC40:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805FC60
	adds r1, r0, #0
_0805FC56:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FC56
_0805FC60:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805FC6A
	bl __builtin_vec_delete
_0805FC6A:
	str r5, [r4]
	str r6, [r4, #8]
_0805FC6E:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0805FC7E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805FC88
sub_0805FC88: @ 0x0805FC88
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _0805FCEE
	adds r4, r2, #0
	adds r4, #0x4c
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r2, #0x4c]
	cmp r0, r5
	bge _0805FCDE
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805FCB0
	adds r0, r1, #0
_0805FCB0:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805FCD0
	adds r1, r0, #0
_0805FCC6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FCC6
_0805FCD0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805FCDA
	bl __builtin_vec_delete
_0805FCDA:
	str r5, [r4]
	str r6, [r4, #8]
_0805FCDE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0805FCEE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805FCF8
sub_0805FCF8: @ 0x0805FCF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0805FD10
	movs r0, #0
	b _0805FE24
_0805FD10:
	movs r0, #0
	mov r8, r0
	movs r7, #0
	b _0805FD98
_0805FD18:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0805FD96
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0805FD96
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x78
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	movs r3, #1
	add r8, r3
_0805FD96:
	adds r7, #1
_0805FD98:
	ldr r1, [r6, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	blt _0805FD18
	movs r7, #0
	b _0805FE06
_0805FDB0:
	ldr r1, [r6, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _0805FE04
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x80
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	movs r3, #1
	add r8, r3
_0805FE04:
	adds r7, #1
_0805FE06:
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	blt _0805FDB0
	movs r0, #0
	mov r3, r8
	cmp r3, #0
	ble _0805FE24
	movs r0, #1
_0805FE24:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805FE30
sub_0805FE30: @ 0x0805FE30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	ble _0805FE4E
	b _0806001C
_0805FE4E:
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r2, r8
	adds r2, #0x28
	ldr r1, [r2, #4]
	adds r0, r0, r1
	movs r1, #4
	mov sb, r2
	cmp r1, r0
	ble _0805FE72
	adds r1, r0, #0
_0805FE72:
	adds r7, r1, #0
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r0, #0x34
	add r0, r8
	mov sl, r0
	mov r1, r8
	adds r1, #0x40
	str r1, [sp, #8]
	mov r2, r8
	adds r2, #0x4c
	str r2, [sp, #0xc]
	cmp r4, r7
	bge _0805FEDC
	mov r5, sb
_0805FEA0:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r5, #8]
	ldrh r2, [r0]
	mov r0, r8
	bl sub_08060038
	ldr r2, [r5, #4]
	adds r6, r4, #1
	movs r0, #0
	cmp r0, r2
	bge _0805FED6
	mov r1, sb
	ldr r0, [r1, #8]
	subs r1, r2, #1
	adds r4, r0, #4
	adds r3, r0, #0
	cmp r1, #0
	ble _0805FED0
_0805FEC6:
	ldm r4!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FEC6
_0805FED0:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_0805FED6:
	adds r4, r6, #0
	cmp r4, r7
	blt _0805FEA0
_0805FEDC:
	mov r4, sl
	b _0805FF14
_0805FEE0:
	ldr r0, [r4, #8]
	ldr r1, [r0]
	mov r0, r8
	bl sub_08060340
	mov ip, r4
	movs r7, #0
	ldr r1, [r4, #4]
	cmp r7, r1
	bge _0805FF14
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp r7, r2
	bge _0805FF0E
	adds r1, r2, #0
_0805FF04:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FF04
_0805FF0E:
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #4]
_0805FF14:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _0805FF1E
	movs r1, #1
_0805FF1E:
	cmp r1, #0
	beq _0805FEE0
	ldr r4, [sp, #8]
	b _0805FF5A
_0805FF26:
	ldr r0, [r4, #8]
	ldr r1, [r0]
	mov r0, r8
	bl sub_080604CC
	mov ip, r4
	movs r7, #0
	ldr r1, [r4, #4]
	cmp r7, r1
	bge _0805FF5A
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp r7, r2
	bge _0805FF54
	adds r1, r2, #0
_0805FF4A:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FF4A
_0805FF54:
	subs r0, r6, #1
	mov r1, ip
	str r0, [r1, #4]
_0805FF5A:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _0805FF64
	movs r1, #1
_0805FF64:
	cmp r1, #0
	beq _0805FF26
	ldr r4, [sp, #0xc]
	b _0805FFA0
_0805FF6C:
	ldr r0, [r4, #8]
	ldr r1, [r0]
	mov r0, r8
	bl sub_080608BC
	mov ip, r4
	movs r7, #0
	ldr r1, [r4, #4]
	cmp r7, r1
	bge _0805FFA0
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp r7, r2
	bge _0805FF9A
	adds r1, r2, #0
_0805FF90:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FF90
_0805FF9A:
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #4]
_0805FFA0:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _0805FFAA
	movs r1, #1
_0805FFAA:
	cmp r1, #0
	beq _0805FF6C
	movs r6, #0
	b _08060006
_0805FFB2:
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r2, r8
	ldr r1, [r2, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	mov r0, sp
	adds r2, r6, #0
	bl sub_08060E38
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl sub_08060E8C
	adds r6, #1
_08060006:
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0805FFB2
_0806001C:
	mov r1, r8
	adds r1, #0x58
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08060038
sub_08060038: @ 0x08060038
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r7, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08061004
	str r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08060072
	b _080601CC
_08060072:
	adds r4, r7, #0
	adds r4, #0x5c
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x5c]
	movs r1, #0x68
	adds r1, r1, r7
	mov sl, r1
	add r2, sp, #0x20
	mov sb, r2
	cmp r0, r5
	bge _080600C6
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08060098
	adds r0, r1, #0
_08060098:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080600B8
	adds r1, r0, #0
_080600AE:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080600AE
_080600B8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080600C2
	bl __builtin_vec_delete
_080600C2:
	str r5, [r4]
	str r6, [r4, #8]
_080600C6:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r4, sl
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x68]
	cmp r0, r5
	bge _08060120
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080600F2
	adds r0, r1, #0
_080600F2:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08060112
	adds r1, r0, #0
_08060108:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08060108
_08060112:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806011C
	bl __builtin_vec_delete
_0806011C:
	str r5, [r4]
	str r6, [r4, #8]
_08060120:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r1, _080601BC @ =0x09F44FF0
	mov r8, r1
	ldr r0, _080601C0 @ =0x09F819D0
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
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r7, r5
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _080601C4 @ =0x09F818D0
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sb
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x3c]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r0, _080601C8 @ =0x09F81950
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
	b _08060320
	.align 2, 0
_080601BC: .4byte 0x09F44FF0
_080601C0: .4byte 0x09F819D0
_080601C4: .4byte 0x09F818D0
_080601C8: .4byte 0x09F81950
_080601CC:
	adds r4, r7, #0
	adds r4, #0x5c
	add r3, sp, #0x44
	mov r8, r3
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	adds r1, r1, r7
	mov sb, r1
	cmp r0, r5
	bge _0806021C
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080601EE
	adds r0, r1, #0
_080601EE:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0806020E
	adds r1, r0, #0
_08060204:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08060204
_0806020E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08060218
	bl __builtin_vec_delete
_08060218:
	str r5, [r4]
	str r6, [r4, #8]
_0806021C:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r4, sb
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _08060276
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08060248
	adds r0, r1, #0
_08060248:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08060268
	adds r1, r0, #0
_0806025E:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0806025E
_08060268:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08060272
	bl __builtin_vec_delete
_08060272:
	str r5, [r4]
	str r6, [r4, #8]
_08060276:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r1, _08060330 @ =0x09F44FF0
	mov r8, r1
	ldr r0, _08060334 @ =0x09F819D0
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
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r7, r5
	ldr r6, [sp, #0x44]
	mov r0, sp
	bl __4Base
	str r6, [sp, #0x20]
	ldr r0, _08060338 @ =0x09F81750
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r0, _0806033C @ =0x09F81950
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
_08060320:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060330: .4byte 0x09F44FF0
_08060334: .4byte 0x09F819D0
_08060338: .4byte 0x09F81750
_0806033C: .4byte 0x09F81950

	thumb_func_start sub_08060340
sub_08060340: @ 0x08060340
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov sb, r0
	str r1, [sp, #0x44]
	mov r6, sb
	adds r6, #0x68
	add r7, sp, #0x44
	movs r5, #0
	ldr r3, [r6, #4]
	mov r8, r7
	cmp r5, r3
	bge _0806039C
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08060366:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08060390
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08060388
	adds r2, r0, #0
_0806037E:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0806037E
_08060388:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _0806039E
_08060390:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08060366
_0806039C:
	movs r0, #0
_0806039E:
	cmp r0, #0
	bne _080603A4
	b _080604AA
_080603A4:
	mov r4, sb
	adds r4, #0x74
	ldr r0, [r4, #4]
	adds r5, r0, #1
	mov r1, sb
	ldr r0, [r1, #0x74]
	adds r6, r4, #0
	add r3, sp, #0x20
	mov sl, r3
	cmp r0, r5
	bge _080603F2
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080603C4
	adds r0, r1, #0
_080603C4:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r6, #8]
	adds r2, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _080603E4
	adds r1, r0, #0
_080603DA:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080603DA
_080603E4:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080603EE
	bl __builtin_vec_delete
_080603EE:
	str r5, [r4]
	str r7, [r4, #8]
_080603F2:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	adds r1, r6, #0
	bl sub_08060A48
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r3, _080604BC @ =0x09F44FF0
	mov r8, r3
	ldr r0, _080604C0 @ =0x09F819D0
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _080604C4 @ =0x09F817D0
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x3c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _080604C8 @ =0x09F81950
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
_080604AA:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080604BC: .4byte 0x09F44FF0
_080604C0: .4byte 0x09F819D0
_080604C4: .4byte 0x09F817D0
_080604C8: .4byte 0x09F81950

	thumb_func_start sub_080604CC
sub_080604CC: @ 0x080604CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov sb, r0
	str r1, [sp, #0x44]
	bl sub_08060664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080604EA
	b _08060642
_080604EA:
	mov r6, sb
	adds r6, #0x68
	add r7, sp, #0x44
	movs r5, #0
	ldr r3, [r6, #4]
	mov r8, r7
	cmp r5, r3
	bge _08060536
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08060500:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _0806052A
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08060522
	adds r2, r0, #0
_08060518:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08060518
_08060522:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _08060538
_0806052A:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08060500
_08060536:
	movs r0, #0
_08060538:
	cmp r0, #0
	bne _0806053E
	b _08060642
_0806053E:
	mov r4, sb
	adds r4, #0x80
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	adds r6, r4, #0
	add r1, sp, #0x20
	mov sl, r1
	cmp r0, r5
	bge _0806058A
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0806055C
	adds r0, r1, #0
_0806055C:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r6, #8]
	adds r2, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0806057C
	adds r1, r0, #0
_08060572:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08060572
_0806057C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08060586
	bl __builtin_vec_delete
_08060586:
	str r5, [r4]
	str r7, [r4, #8]
_0806058A:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	adds r1, r6, #0
	bl sub_08060A48
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r3, _08060654 @ =0x09F44FF0
	mov r8, r3
	ldr r0, _08060658 @ =0x09F819D0
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _0806065C @ =0x09F81750
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x3c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _08060660 @ =0x09F81950
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
_08060642:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060654: .4byte 0x09F44FF0
_08060658: .4byte 0x09F819D0
_0806065C: .4byte 0x09F81750
_08060660: .4byte 0x09F81950

	thumb_func_start sub_08060664
sub_08060664: @ 0x08060664
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	mov sb, r0
	adds r7, r1, #0
	bl sub_08072778
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08060682
	b _080608A4
_08060682:
	movs r0, #0x32
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806069A
	bl sub_08072EA8
	cmp r0, #0
	bgt _0806069A
	b _080608A4
_0806069A:
	movs r0, #0x39
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080606B8
	movs r0, #0x3a
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080606B8
	b _08060874
_080606B8:
	adds r0, r7, #0
	movs r1, #2
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080606CA
	b _08060874
_080606CA:
	b _080608A4
_080606CC:
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	add r0, sp, #4
	bl __4Base
	ldr r0, _08060864 @ =0x09F819D0
	str r0, [sp, #0x20]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	bl _call_via_r2
	ldr r2, _08060868 @ =0x09F44FF0
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	add r0, sp, #0x10
	mov r8, r0
	mov r1, sl
	bl sub_08064980
	ldr r2, [r7, #0x1c]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r5, sp, #0x24
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r4, sp, #0x30
	adds r0, r4, #0
	bl sub_0806E274
	ldr r1, _0806086C @ =0x000001D5
	str r4, [sp]
	add r0, sp, #4
	mov r2, r8
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x3c
	movs r6, #0
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	movs r0, #0x20
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r0, [r7, #0x1c]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, r8
	mov r1, sl
	bl sub_08064980
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r5, sp, #0x1c
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	movs r1, #0xeb
	lsls r1, r1, #1
	str r4, [sp]
	add r0, sp, #4
	mov r2, r8
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x40
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	ldr r1, [r7, #0x1c]
	movs r2, #0x81
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	add r0, sp, #4
	bl __4Base
	ldr r0, _08060870 @ =0x09F81950
	str r0, [sp, #0x20]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	bl _call_via_r2
	ldr r2, _08060868 @ =0x09F44FF0
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	movs r0, #1
	b _080608A6
	.align 2, 0
_08060864: .4byte 0x09F819D0
_08060868: .4byte 0x09F44FF0
_0806086C: .4byte 0x000001D5
_08060870: .4byte 0x09F81950
_08060874:
	movs r5, #0
	ldr r4, _080608B8 @ =gUnknown_080F4598
_08060878:
	ldr r1, [r7, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldrh r2, [r4]
	mov sl, r2
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806089C
	b _080606CC
_0806089C:
	adds r4, #2
	adds r5, #1
	cmp r5, #6
	bls _08060878
_080608A4:
	movs r0, #0
_080608A6:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080608B8: .4byte gUnknown_080F4598

	thumb_func_start sub_080608BC
sub_080608BC: @ 0x080608BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov sb, r0
	str r1, [sp, #0x44]
	mov r6, sb
	adds r6, #0x80
	add r7, sp, #0x44
	movs r5, #0
	ldr r3, [r6, #4]
	mov r8, r7
	cmp r5, r3
	bge _08060918
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_080608E2:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _0806090C
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08060904
	adds r2, r0, #0
_080608FA:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _080608FA
_08060904:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _0806091A
_0806090C:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _080608E2
_08060918:
	movs r0, #0
_0806091A:
	cmp r0, #0
	bne _08060920
	b _08060A26
_08060920:
	mov r4, sb
	adds r4, #0x68
	ldr r0, [r4, #4]
	adds r5, r0, #1
	mov r1, sb
	ldr r0, [r1, #0x68]
	adds r6, r4, #0
	add r3, sp, #0x20
	mov sl, r3
	cmp r0, r5
	bge _0806096E
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08060940
	adds r0, r1, #0
_08060940:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r6, #8]
	adds r2, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _08060960
	adds r1, r0, #0
_08060956:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08060956
_08060960:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806096A
	bl __builtin_vec_delete
_0806096A:
	str r5, [r4]
	str r7, [r4, #8]
_0806096E:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	adds r1, r6, #0
	bl sub_08060A48
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r3, _08060A38 @ =0x09F44FF0
	mov r8, r3
	ldr r0, _08060A3C @ =0x09F819D0
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _08060A40 @ =0x09F81850
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x3c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _08060A44 @ =0x09F81950
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
_08060A26:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060A38: .4byte 0x09F44FF0
_08060A3C: .4byte 0x09F819D0
_08060A40: .4byte 0x09F81850
_08060A44: .4byte 0x09F81950

	thumb_func_start sub_08060A48
sub_08060A48: @ 0x08060A48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r1
	movs r0, #0
	mov sb, r0
	b _08060AD2
_08060A5C:
	mov r1, r8
	ldr r0, [r1, #4]
	subs r5, r0, #1
	subs r0, #2
	mov r3, sb
	adds r3, #1
	str r3, [sp]
	cmp r0, sb
	blt _08060ACC
	movs r0, #0xbc
	lsls r0, r0, #1
	mov sl, r0
_08060A74:
	lsls r7, r5, #2
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	add r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	subs r6, r5, #1
	lsls r5, r6, #2
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	add r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	bhs _08060AC4
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r7, r0
	ldr r3, [r2]
	adds r0, r5, r0
	ldr r1, [r0]
	str r1, [r2]
	str r3, [r0]
_08060AC4:
	adds r5, r6, #0
	subs r0, r5, #1
	cmp r0, sb
	bge _08060A74
_08060ACC:
	ldr r3, [sp]
	mov sb, r3
	mov r1, r8
_08060AD2:
	ldr r0, [r1, #4]
	cmp sb, r0
	blt _08060A5C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08060AE8
sub_08060AE8: @ 0x08060AE8
	ldr r0, [r0, #0x60]
	bx lr

	thumb_func_start sub_08060AEC
sub_08060AEC: @ 0x08060AEC
	lsls r1, r1, #2
	ldr r0, [r0, #0x64]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08060AF8
sub_08060AF8: @ 0x08060AF8
	ldr r0, [r0, #0x6c]
	bx lr

	thumb_func_start sub_08060AFC
sub_08060AFC: @ 0x08060AFC
	lsls r1, r1, #2
	ldr r0, [r0, #0x70]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08060B08
sub_08060B08: @ 0x08060B08
	ldr r0, [r0, #0x78]
	bx lr

	thumb_func_start sub_08060B0C
sub_08060B0C: @ 0x08060B0C
	adds r0, #0x80
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_08060B14
sub_08060B14: @ 0x08060B14
	adds r0, #0x80
	lsls r1, r1, #2
	ldr r0, [r0, #8]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr

	thumb_func_start sub_08060B20
sub_08060B20: @ 0x08060B20
	push {r4, lr}
	sub sp, #4
	str r1, [sp]
	adds r0, #0x80
	movs r2, #0
	ldr r1, [r0, #4]
	cmp r2, r1
	bge _08060B48
	ldr r4, [sp]
	adds r3, r1, #0
	ldr r1, [r0, #8]
_08060B36:
	ldr r0, [r1]
	cmp r0, r4
	bne _08060B40
	movs r0, #1
	b _08060B4A
_08060B40:
	adds r1, #4
	adds r2, #1
	cmp r2, r3
	blt _08060B36
_08060B48:
	movs r0, #0
_08060B4A:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08060B54
sub_08060B54: @ 0x08060B54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x44
	adds r7, r0, #0
	mov sb, r1
	bl sub_08060CF8
	mov r0, sb
	cmp r0, #0
	bgt _08060B6E
	b _08060CE8
_08060B6E:
	ldr r1, [r7, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08060B84
	b _08060CE8
_08060B84:
	add r0, sp, #4
	bl sub_0806E274
	ldr r1, [r7, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _08060C16
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x1c
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r6, sp, #0x28
	adds r0, r6, #0
	mov r1, sb
	bl sub_0806E1C8
	add r5, sp, #0x34
	adds r0, r5, #0
	bl sub_0806E274
	str r5, [sp]
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0x7d
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_0806E2E8
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	b _08060C8C
_08060C16:
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x1c
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r6, sp, #0x28
	adds r0, r6, #0
	mov r1, sb
	bl sub_0806E1C8
	add r5, sp, #0x34
	adds r0, r5, #0
	bl sub_0806E274
	str r5, [sp]
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0x7e
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_0806E2E8
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
_08060C8C:
	add r1, sp, #0x40
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	movs r4, #0
	b _08060CCC
_08060CA2:
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xcc
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	mov r1, sb
	bl _call_via_r2
	adds r4, #1
_08060CCC:
	ldr r1, [r7, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08060CA2
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
_08060CE8:
	add sp, #0x44
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08060CF8
sub_08060CF8: @ 0x08060CF8
	push {r4, r5, r6, lr}
	sub sp, #0x38
	bl sub_080725E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08060D6E
	bl sub_08072608
	ldrb r0, [r0]
	cmp r0, #0x35
	bne _08060D6E
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_0806E274
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x87
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x34
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	movs r0, #1
	b _08060D70
_08060D6E:
	movs r0, #0
_08060D70:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08060D78
sub_08060D78: @ 0x08060D78
	push {lr}
	sub sp, #0x2c
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0
	beq _08060D98
	mov r0, sp
	bl sub_08061024
	mov r0, sp
	bl sub_0806105C
	mov r0, sp
	movs r1, #2
	bl sub_08061048
_08060D98:
	add sp, #0x2c
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08060DA0
sub_08060DA0: @ 0x08060DA0
	push {lr}
	cmp r1, #0
	blt _08060DB6
	ldr r2, [r0, #0x24]
	ldr r0, [r2, #8]
	ldr r3, _08060DBC @ =0x000F423F
	adds r0, r0, r1
	cmp r0, r3
	bls _08060DB4
	adds r0, r3, #0
_08060DB4:
	str r0, [r2, #8]
_08060DB6:
	pop {r0}
	bx r0
	.align 2, 0
_08060DBC: .4byte 0x000F423F

	thumb_func_start sub_08060DC0
sub_08060DC0: @ 0x08060DC0
	push {lr}
	cmp r1, #0
	blt _08060DD6
	ldr r2, [r0, #0x24]
	ldr r0, [r2, #0xc]
	ldr r3, _08060DDC @ =0x000F423F
	adds r0, r0, r1
	cmp r0, r3
	bls _08060DD4
	adds r0, r3, #0
_08060DD4:
	str r0, [r2, #0xc]
_08060DD6:
	pop {r0}
	bx r0
	.align 2, 0
_08060DDC: .4byte 0x000F423F

	thumb_func_start sub_08060DE0
sub_08060DE0: @ 0x08060DE0
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r1, #0
	cmp r0, #0
	ble _08060E02
	movs r1, #1
_08060E02:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08060E0C
sub_08060E0C: @ 0x08060E0C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0, #0x24]
	adds r0, #0x10
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08060E1C
sub_08060E1C: @ 0x08060E1C
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0x60
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08060E34
sub_08060E34: @ 0x08060E34
	movs r0, #4
	bx lr

	thumb_func_start sub_08060E38
sub_08060E38: @ 0x08060E38
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r2, #0
	subs r1, #1
	cmp r1, #3
	bgt _08060E60
	cmp r0, #3
	bgt _08060E60
	ldr r2, _08060E5C @ =gUnknown_080F4C28
	lsls r0, r0, #1
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08060E80
	b _08060E66
	.align 2, 0
_08060E5C: .4byte gUnknown_080F4C28
_08060E60:
	adds r0, r4, #0
	bl sub_08060E70
_08060E66:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08060E70
sub_08060E70: @ 0x08060E70
	ldr r1, _08060E7C @ =0x09F46900
	str r1, [r0, #4]
	movs r1, #8
	strh r1, [r0]
	bx lr
	.align 2, 0
_08060E7C: .4byte 0x09F46900

	thumb_func_start sub_08060E80
sub_08060E80: @ 0x08060E80
	ldr r2, _08060E88 @ =0x09F46900
	str r2, [r0, #4]
	strh r1, [r0]
	bx lr
	.align 2, 0
_08060E88: .4byte 0x09F46900

	thumb_func_start sub_08060E8C
sub_08060E8C: @ 0x08060E8C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08060EA8 @ =0x09F46900
	str r0, [r2, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08060EA2
	adds r0, r2, #0
	bl __builtin_delete
_08060EA2:
	pop {r0}
	bx r0
	.align 2, 0
_08060EA8: .4byte 0x09F46900

	thumb_func_start sub_08060EAC
sub_08060EAC: @ 0x08060EAC
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_08060EB0
sub_08060EB0: @ 0x08060EB0
	push {lr}
	ldr r2, [r0, #4]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x14]
	bl _call_via_r1
	movs r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bhi _08060ECC
	movs r1, #1
_08060ECC:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08060ED4
sub_08060ED4: @ 0x08060ED4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, _08060F5C @ =gUnknown_020021A8
	ldr r3, [r6]
	cmp r3, #0
	bne _08060F28
	ldr r0, _08060F60 @ =gUnknown_02002188
	movs r1, #0x1e
	movs r2, #0x90
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x3c
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x5a
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x78
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x96
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0xb4
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0xd2
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	strh r3, [r0]
	strh r3, [r0, #2]
	movs r0, #1
	str r0, [r6]
_08060F28:
	ldr r1, [r4, #4]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x1c]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08060F64
	ldr r1, [r4, #4]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r1, _08060F60 @ =gUnknown_02002188
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	b _08060F6E
	.align 2, 0
_08060F5C: .4byte gUnknown_020021A8
_08060F60: .4byte gUnknown_02002188
_08060F64:
	mov r2, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #2]
_08060F6E:
	ldr r0, [sp]
	str r0, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08060F7C
sub_08060F7C: @ 0x08060F7C
	movs r0, #2
	bx lr

	thumb_func_start sub_08060F80
sub_08060F80: @ 0x08060F80
	push {r4, lr}
	movs r4, #0
_08060F84:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08060FD4 @ =sub_0809BEF4
	bl sub_08060FF4
	adds r4, #1
	cmp r4, #0xf
	bls _08060F84
	ldr r1, _08060FD8 @ =sub_0809BE90
	movs r0, #1
	bl sub_08060FF4
	ldr r1, _08060FDC @ =sub_0809BE6C
	movs r0, #2
	bl sub_08060FF4
	ldr r1, _08060FE0 @ =sub_0809BE48
	movs r0, #4
	bl sub_08060FF4
	ldr r1, _08060FE4 @ =sub_0809BE24
	movs r0, #3
	bl sub_08060FF4
	ldr r1, _08060FE8 @ =sub_0809BE00
	movs r0, #5
	bl sub_08060FF4
	ldr r1, _08060FEC @ =sub_0809BDDC
	movs r0, #6
	bl sub_08060FF4
	ldr r1, _08060FF0 @ =sub_0809BDB8
	movs r0, #0xd
	bl sub_08060FF4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060FD4: .4byte sub_0809BEF4
_08060FD8: .4byte sub_0809BE90
_08060FDC: .4byte sub_0809BE6C
_08060FE0: .4byte sub_0809BE48
_08060FE4: .4byte sub_0809BE24
_08060FE8: .4byte sub_0809BE00
_08060FEC: .4byte sub_0809BDDC
_08060FF0: .4byte sub_0809BDB8

	thumb_func_start sub_08060FF4
sub_08060FF4: @ 0x08060FF4
	lsls r0, r0, #0x10
	ldr r2, _08061000 @ =gUnknown_020021C0
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08061000: .4byte gUnknown_020021C0

	thumb_func_start sub_08061004
sub_08061004: @ 0x08061004
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08061020 @ =gUnknown_020021C0
	lsls r2, r1, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_08061020: .4byte gUnknown_020021C0

	thumb_func_start sub_08061024
sub_08061024: @ 0x08061024
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl __4Base
	ldr r0, _08061044 @ =0x09F490E8
	str r0, [r5, #0x1c]
	strh r4, [r5, #0x24]
	movs r0, #2
	str r0, [r5, #0x28]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08061044: .4byte 0x09F490E8

	thumb_func_start sub_08061048
sub_08061048: @ 0x08061048
	push {lr}
	ldr r2, _08061058 @ =0x09F490E8
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_08061058: .4byte 0x09F490E8

	thumb_func_start sub_0806105C
sub_0806105C: @ 0x0806105C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r5, r0, #0
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_0806E274
	add r0, sp, #0x1c
	mov r8, r0
	bl sub_0806E274
	add r7, sp, #0x28
	adds r0, r7, #0
	bl sub_0806E274
	str r7, [sp]
	add r0, sp, #4
	movs r1, #0x88
	adds r2, r6, #0
	mov r3, r8
	bl sub_08073460
	add r1, sp, #0x40
	movs r0, #0
	mov sl, r0
	mov r0, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	bl sub_0806E274
	ldrh r1, [r5, #0x24]
	mov r0, r8
	bl sub_08064980
	adds r0, r7, #0
	bl sub_0806E274
	add r1, sp, #0x34
	mov sb, r1
	mov r0, sb
	bl sub_0806E274
	mov r0, sb
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x89
	mov r2, r8
	adds r3, r7, #0
	bl sub_08073460
	add r0, sp, #4
	adds r1, r6, #0
	bl sub_0806E2E8
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, sb
	movs r1, #2
	bl sub_0806E308
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl sub_0806124C
	add r0, sp, #4
	adds r1, r6, #0
	bl sub_0806E2E8
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	add r1, sp, #0x44
	mov r0, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	adds r0, r5, #0
	bl sub_080612FC
	adds r4, r0, #0
	cmp r4, #0
	beq _080611D2
	ldr r2, [r4, #0x1c]
	movs r1, #0xce
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r5, #0x24]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, r8
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldrh r1, [r5, #0x24]
	adds r0, r7, #0
	bl sub_08064980
	mov r0, sb
	bl sub_0806E274
	mov r1, sb
	str r1, [sp]
	adds r0, r6, #0
	movs r1, #0x8b
	mov r2, r8
	adds r3, r7, #0
	bl sub_08073460
	add r1, sp, #0x48
	mov r0, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r0, r6, #0
	movs r2, #1
	bl sub_080735E0
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, sb
	movs r1, #2
	bl sub_0806E308
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	b _08061230
_080611D2:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08061338
	add r1, sp, #0x4c
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r6, #0
	movs r2, #1
	bl sub_0807362C
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	cmp r4, #0
	bne _08061204
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08061954
	b _0806122A
_08061204:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08061954
	b _0806122A
_08061210:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0806121C
	cmp r0, #1
	beq _08061224
	b _0806122A
_0806121C:
	adds r0, r5, #0
	bl sub_08061400
	b _0806122A
_08061224:
	adds r0, r5, #0
	bl sub_0806176C
_0806122A:
	ldr r0, [r5, #0x28]
	cmp r0, #2
	bne _08061210
_08061230:
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	movs r0, #1
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806124C
sub_0806124C: @ 0x0806124C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	movs r0, #0x37
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x30
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x34
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x33
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x35
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x36
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080612EA
_080612AA:
	ldrh r1, [r4, #0x24]
	add r0, sp, #4
	bl sub_08064980
	add r5, sp, #0x10
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x8a
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	b _080612F2
_080612EA:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806E2B8
_080612F2:
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080612FC
sub_080612FC: @ 0x080612FC
	push {r4, r5, lr}
	movs r5, #0
	b _08061328
_08061302:
	adds r0, r5, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0xf
	bgt _08061326
	adds r0, r4, #0
	b _08061332
_08061326:
	adds r5, #1
_08061328:
	bl sub_080729DC
	cmp r5, r0
	blt _08061302
	movs r0, #0
_08061332:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08061338
sub_08061338: @ 0x08061338
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	bl sub_080729DC
	cmp r0, #1
	bgt _080613A0
	movs r0, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldrh r1, [r4, #0x24]
	add r5, sp, #0x10
	adds r0, r5, #0
	bl sub_08064980
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x8c
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	b _080613F6
_080613A0:
	movs r0, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldrh r1, [r4, #0x24]
	add r5, sp, #0x10
	adds r0, r5, #0
	bl sub_08064980
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x8d
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
_080613F6:
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08061400
sub_08061400: @ 0x08061400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x9c
	mov sb, r0
	bl sub_08061678
	adds r7, r0, #0
	cmp r7, #0
	bne _0806141E
	mov r0, sb
	movs r1, #1
	b _08061656
_0806141E:
	add r4, sp, #0x84
	adds r0, r4, #0
	mov r1, sb
	adds r2, r7, #0
	bl sub_080616C4
	ldrh r0, [r4]
	mov sl, r4
	cmp r0, #0
	beq _080614B8
	mov r0, sl
	ldrh r1, [r0]
	ldrh r3, [r0, #2]
	add r0, sp, #4
	adds r2, r7, #0
	bl sub_080649AC
	add r0, sp, #4
	bl sub_08064FB8
	adds r4, r0, #0
	add r0, sp, #4
	movs r1, #2
	bl sub_080649E8
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #1
	beq _080614C4
	mov r2, sl
	ldrh r1, [r2]
	add r3, sp, #0x60
	mov r8, r3
	mov r0, r8
	bl sub_08064980
	add r6, sp, #0x6c
	adds r0, r6, #0
	bl sub_0806E274
	add r5, sp, #0x78
	adds r0, r5, #0
	bl sub_0806E274
	str r5, [sp]
	add r4, sp, #0x54
	adds r0, r4, #0
	movs r1, #0x92
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	add r1, sp, #0x88
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r0, r4, #0
	movs r2, #1
	bl sub_080735E0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
_080614B8:
	mov r0, sb
	movs r1, #0
	movs r2, #1
	bl sub_08061954
	b _08061668
_080614C4:
	mov r0, sl
	ldrh r1, [r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_08064980
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x8e
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x8c
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_0807362C
	mov r8, r0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r1, r8
	cmp r1, #0
	beq _0806152A
	b _0806165E
_0806152A:
	movs r4, #0
	mov r2, sp
	adds r2, #0x40
	str r2, [sp, #0x94]
	mov r3, sp
	adds r3, #0x4c
	str r3, [sp, #0x98]
	add r0, sp, #0x58
	mov r8, r0
	add r6, sp, #0x34
	add r5, sp, #0x90
	b _0806159C
_08061542:
	ldr r1, [r7, #0x1c]
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	mov r2, sl
	ldrh r1, [r2, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bne _0806159A
	ldr r1, [r7, #0x1c]
	movs r3, #0x86
	lsls r3, r3, #3
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806159A
	ldr r2, [r7, #0x1c]
	movs r3, #0x8a
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sl
	ldrh r1, [r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
_0806159A:
	adds r4, #1
_0806159C:
	ldr r1, [r7, #0x1c]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08061542
	ldr r2, [r7, #0x1c]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sl
	ldrh r1, [r3, #2]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r7, #0x1c]
	movs r0, #0xce
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sb
	ldrh r1, [r3, #0x24]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [sp, #0x94]
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r0, sp, #0x84
	ldrh r1, [r0]
	ldr r0, [sp, #0x98]
	bl sub_08064980
	mov r0, sb
	ldrh r1, [r0, #0x24]
	mov r0, r8
	bl sub_08064980
	mov r1, r8
	str r1, [sp]
	adds r0, r6, #0
	movs r1, #0x91
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x98]
	bl sub_08073460
	movs r0, #0
	add r1, sp, #0x90
	strb r0, [r1]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_080735E0
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	ldr r0, [sp, #0x98]
	movs r1, #2
	bl sub_0806E308
	ldr r0, [sp, #0x94]
	movs r1, #2
	bl sub_0806E308
	mov r0, sb
	movs r1, #2
_08061656:
	movs r2, #0
	bl sub_08061954
	b _08061668
_0806165E:
	mov r0, sb
	movs r1, #1
	movs r2, #0
	bl sub_08061954
_08061668:
	add sp, #0x9c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08061678
sub_08061678: @ 0x08061678
	push {r4, lr}
	sub sp, #0x180
	movs r0, #0
	bl sub_080729F8
	adds r2, r0, #0
	mov r0, sp
	movs r1, #2
	bl sub_080766F8
	mov r0, sp
	bl sub_08076B30
	cmp r0, #0
	beq _080616A2
	mov r0, sp
	movs r1, #2
	bl sub_08076A68
	movs r0, #0
	b _080616BA
_080616A2:
	mov r0, sp
	movs r1, #0
	bl sub_080766B8
	bl sub_080729B0
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl sub_08076A68
	adds r0, r4, #0
_080616BA:
	add sp, #0x180
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080616C4
sub_080616C4: @ 0x080616C4
	push {r4, r5, lr}
	ldr r4, _08061744 @ =0xFFFFF948
	add sp, r4
	adds r5, r0, #0
	adds r1, r2, #0
	mov r0, sp
	bl sub_0807D3F4
	mov r0, sp
	movs r1, #0
	bl sub_0807DE28
	cmp r0, #0
	bne _08061750
	mov r0, sp
	bl sub_0807E448
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08061748 @ =0xFFFF0000
	ands r4, r1
	orrs r4, r0
	mov r0, sp
	bl sub_0807E448
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	ldr r1, _0806174C @ =0x0000FFFF
	ands r4, r1
	orrs r4, r0
	mov r0, sp
	bl sub_0807E448
	adds r2, r0, #0
	cmp r2, #0
	beq _08061752
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _08061752
	.align 2, 0
_08061744: .4byte 0xFFFFF948
_08061748: .4byte 0xFFFF0000
_0806174C: .4byte 0x0000FFFF
_08061750:
	movs r4, #0
_08061752:
	str r4, [r5]
	mov r0, sp
	movs r1, #2
	bl sub_0807DCE8
	adds r0, r5, #0
	movs r3, #0xd7
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806176C
sub_0806176C: @ 0x0806176C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sl, r0
	ldrh r1, [r0, #0x24]
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_08064980
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x8f
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x64
	movs r7, #0
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_0807362C
	mov r8, r0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	cmp r0, #0
	bne _08061804
	add r4, sp, #0x34
	adds r0, r4, #0
	mov r1, sl
	bl sub_0806188C
	add r1, sp, #0x68
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	adds r0, r4, #0
	movs r2, #1
	bl sub_080735E0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, sl
	movs r1, #2
	b _08061868
_08061804:
	add r0, sp, #0x40
	mov r8, r0
	bl sub_0806E274
	add r6, sp, #0x4c
	adds r0, r6, #0
	bl sub_0806E274
	add r5, sp, #0x58
	adds r0, r5, #0
	bl sub_0806E274
	str r5, [sp]
	add r4, sp, #0x34
	adds r0, r4, #0
	movs r1, #0x90
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	add r1, sp, #0x6c
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	adds r0, r4, #0
	movs r2, #1
	bl sub_0807362C
	mov sb, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	mov r0, sb
	cmp r0, #0
	bne _08061870
	mov r0, sl
	movs r1, #0
_08061868:
	movs r2, #0
	bl sub_08061954
	b _0806187A
_08061870:
	mov r0, sl
	movs r1, #1
	movs r2, #1
	bl sub_08061954
_0806187A:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806188C
sub_0806188C: @ 0x0806188C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	bl sub_080729DC
	cmp r0, #1
	bgt _080618F4
	movs r0, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldrh r1, [r4, #0x24]
	add r5, sp, #0x10
	adds r0, r5, #0
	bl sub_08064980
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x93
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	b _0806194A
_080618F4:
	movs r0, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldrh r1, [r4, #0x24]
	add r5, sp, #0x10
	adds r0, r5, #0
	bl sub_08064980
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x94
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
_0806194A:
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08061954
sub_08061954: @ 0x08061954
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x28]
	cmp r0, r1
	bne _08061966
	cmp r2, #1
	bne _0806196C
_08061966:
	str r1, [r3, #0x28]
	movs r0, #1
	b _0806196E
_0806196C:
	movs r0, #0
_0806196E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08061974
sub_08061974: @ 0x08061974
	push {r4, lr}
	movs r4, #0
_08061978:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08061A00 @ =sub_0809D880
	bl sub_08061A3C
	adds r4, #1
	cmp r4, #0x3f
	bls _08061978
	ldr r1, _08061A04 @ =sub_0809D860
	movs r0, #1
	bl sub_08061A3C
	ldr r1, _08061A08 @ =sub_0809D698
	movs r0, #0x25
	bl sub_08061A3C
	ldr r1, _08061A0C @ =sub_0809D538
	movs r0, #0x26
	bl sub_08061A3C
	ldr r1, _08061A10 @ =sub_0809D678
	movs r0, #0x27
	bl sub_08061A3C
	ldr r1, _08061A14 @ =sub_0809D658
	movs r0, #0x28
	bl sub_08061A3C
	ldr r1, _08061A18 @ =sub_0809D638
	movs r0, #0x29
	bl sub_08061A3C
	ldr r1, _08061A1C @ =sub_0809D618
	movs r0, #0x2a
	bl sub_08061A3C
	ldr r1, _08061A20 @ =sub_0809D5F8
	movs r0, #0x2e
	bl sub_08061A3C
	ldr r1, _08061A24 @ =sub_0809D5D8
	movs r0, #0x2f
	bl sub_08061A3C
	ldr r1, _08061A28 @ =sub_0809D5B8
	movs r0, #0x30
	bl sub_08061A3C
	ldr r1, _08061A2C @ =sub_0809D598
	movs r0, #3
	bl sub_08061A3C
	ldr r1, _08061A30 @ =sub_0809D578
	movs r0, #0x19
	bl sub_08061A3C
	ldr r1, _08061A34 @ =sub_0809D558
	movs r0, #6
	bl sub_08061A3C
	ldr r1, _08061A38 @ =sub_0809D518
	movs r0, #0x2c
	bl sub_08061A3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061A00: .4byte sub_0809D880
_08061A04: .4byte sub_0809D860
_08061A08: .4byte sub_0809D698
_08061A0C: .4byte sub_0809D538
_08061A10: .4byte sub_0809D678
_08061A14: .4byte sub_0809D658
_08061A18: .4byte sub_0809D638
_08061A1C: .4byte sub_0809D618
_08061A20: .4byte sub_0809D5F8
_08061A24: .4byte sub_0809D5D8
_08061A28: .4byte sub_0809D5B8
_08061A2C: .4byte sub_0809D598
_08061A30: .4byte sub_0809D578
_08061A34: .4byte sub_0809D558
_08061A38: .4byte sub_0809D518

	thumb_func_start sub_08061A3C
sub_08061A3C: @ 0x08061A3C
	lsls r0, r0, #0x10
	ldr r2, _08061A48 @ =gUnknown_02002218
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08061A48: .4byte gUnknown_02002218

	thumb_func_start sub_08061A4C
sub_08061A4C: @ 0x08061A4C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08061A64 @ =gUnknown_02002218
	lsls r2, r0, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_08061A64: .4byte gUnknown_02002218

	thumb_func_start sub_08061A68
sub_08061A68: @ 0x08061A68
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _08061AD8 @ =0x09F4B948
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #0
	str r0, [r5, #0x24]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0x10
	str r0, [r5, #0x34]
	str r0, [r1, #4]
	str r0, [r1, #8]
	subs r1, #4
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08061AE8
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08061ADC @ =0x09F44FF0
	mov r8, r0
	ldr r0, _08061AE0 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _08061AE4 @ =gUnknown_080F6704
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08061AD8: .4byte 0x09F4B948
_08061ADC: .4byte 0x09F44FF0
_08061AE0: .4byte 0x09F7ED20
_08061AE4: .4byte gUnknown_080F6704

	thumb_func_start sub_08061AE8
sub_08061AE8: @ 0x08061AE8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r6, _08061B28 @ =gUnknown_080CC4E8
_08061AF0:
	ldr r0, _08061B2C @ =gSave
	adds r0, r4, r0
	ldrb r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r6
	adds r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #1
	bne _08061B1C
	ldr r1, [r5, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
_08061B1C:
	adds r4, #1
	cmp r4, #4
	ble _08061AF0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061B28: .4byte gUnknown_080CC4E8
_08061B2C: .4byte gSave

	thumb_func_start sub_08061B30
sub_08061B30: @ 0x08061B30
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08061B90 @ =0x09F4B948
	str r0, [r6, #0x1c]
	movs r4, #0
	adds r1, r6, #0
	adds r1, #0x34
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _08061B6C
	adds r5, r1, #0
_08061B48:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08061B64
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08061B64:
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _08061B48
_08061B6C:
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _08061B76
	bl __builtin_vec_delete
_08061B76:
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq _08061B80
	bl __builtin_vec_delete
_08061B80:
	adds r0, r6, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061B90: .4byte 0x09F4B948

	thumb_func_start sub_08061B94
sub_08061B94: @ 0x08061B94
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08061C08 @ =0xFFFF0000
	ldr r2, [sp]
	ands r2, r3
	orrs r2, r1
	str r2, [sp]
	adds r4, r0, #0
	adds r4, #0x24
	mov r7, sp
	ldr r1, [r4, #4]
	adds r5, r1, #1
	ldr r0, [r0, #0x24]
	cmp r0, r5
	bge _08061BEE
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08061BC0
	adds r0, r1, #0
_08061BC0:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08061BE0
	adds r1, r0, #0
_08061BD6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08061BD6
_08061BE0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08061BEA
	bl __builtin_vec_delete
_08061BEA:
	str r5, [r4]
	str r6, [r4, #8]
_08061BEE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061C08: .4byte 0xFFFF0000

	thumb_func_start sub_08061C0C
sub_08061C0C: @ 0x08061C0C
	push {lr}
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08061C1C
sub_08061C1C: @ 0x08061C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r0, #0x30
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bgt _08061CB0
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r6, #0
	adds r2, #0x24
	ldr r1, [r2, #4]
	adds r0, r0, r1
	movs r1, #3
	mov sb, r2
	cmp r1, r0
	ble _08061C58
	adds r1, r0, #0
_08061C58:
	mov r8, r1
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, r8
	bge _08061CB0
	mov r5, sb
	movs r0, #0
	mov sl, r0
_08061C76:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r5, #8]
	ldrh r2, [r0]
	adds r0, r6, #0
	bl sub_08061CC8
	ldr r2, [r5, #4]
	adds r7, r4, #1
	cmp sl, r2
	bge _08061CAA
	mov r1, sb
	ldr r0, [r1, #8]
	subs r1, r2, #1
	adds r4, r0, #4
	adds r3, r0, #0
	cmp r1, #0
	ble _08061CA4
_08061C9A:
	ldm r4!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08061C9A
_08061CA4:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_08061CAA:
	adds r4, r7, #0
	cmp r4, r8
	blt _08061C76
_08061CB0:
	adds r1, r6, #0
	adds r1, #0x30
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08061CC8
sub_08061CC8: @ 0x08061CC8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x48
	adds r7, r0, #0
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	bl sub_080622EC
	str r0, [sp, #0x44]
	adds r4, r7, #0
	adds r4, #0x34
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x34]
	add r1, sp, #0x20
	mov sb, r1
	cmp r0, r5
	bge _08061D2C
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08061CFE
	adds r0, r1, #0
_08061CFE:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08061D1E
	adds r1, r0, #0
_08061D14:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08061D14
_08061D1E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08061D28
	bl __builtin_vec_delete
_08061D28:
	str r5, [r4]
	str r6, [r4, #8]
_08061D2C:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r1, _08061DD4 @ =0x09F44FF0
	mov r8, r1
	ldr r0, _08061DD8 @ =0x09F819D0
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _08061DDC @ =0x09F818D0
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sb
	bl _call_via_r2
	mov r1, r8
	str r1, [sp, #0x3c]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r0, _08061DE0 @ =0x09F81950
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	add sp, #0x48
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061DD4: .4byte 0x09F44FF0
_08061DD8: .4byte 0x09F819D0
_08061DDC: .4byte 0x09F818D0
_08061DE0: .4byte 0x09F81950

	thumb_func_start sub_08061DE4
sub_08061DE4: @ 0x08061DE4
	ldr r0, [r0, #0x38]
	bx lr

	thumb_func_start sub_08061DE8
sub_08061DE8: @ 0x08061DE8
	lsls r1, r1, #2
	ldr r0, [r0, #0x3c]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08061DF4
sub_08061DF4: @ 0x08061DF4
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0x60
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08061E0C
sub_08061E0C: @ 0x08061E0C
	ldr r0, _08061E10 @ =gUnknown_02002318
	bx lr
	.align 2, 0
_08061E10: .4byte gUnknown_02002318

	thumb_func_start sub_08061E14
sub_08061E14: @ 0x08061E14
	push {lr}
	bl sub_08061E0C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08061E20
sub_08061E20: @ 0x08061E20
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #6
	bl sub_08001C5C
	adds r4, r0, #0
	movs r0, #6
	bl sub_08001DB0
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806E238
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08061E4C
sub_08061E4C: @ 0x08061E4C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl __4Unit
	ldr r0, _08061F18 @ =0x09F4B9D8
	str r0, [r5, #0x20]
	ldr r0, _08061F1C @ =0x09F4BA50
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0xf8
	movs r1, #0
	mov sb, r1
	strh r4, [r0]
	adds r2, r5, #0
	adds r2, #0xfc
	movs r0, #0x6c
	muls r0, r4, r0
	ldr r1, _08061F20 @ =gUnknown_02004110
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r5, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08061F24 @ =gUnknown_080CC4E8
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r5, #0
	bl sub_08061F3C
	bl sub_0805D874
	adds r6, r0, #0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r1, _08061F28 @ =0x09F44FF0
	mov r8, r1
	ldr r0, _08061F2C @ =0x09F455B0
	str r0, [sp, #0x20]
	mov r0, sb
	strh r0, [r4, #0x20]
	ldr r0, _08061F30 @ =gUnknown_080F6D8C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0805D874
	adds r6, r0, #0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _08061F34 @ =0x09F45530
	str r0, [sp, #0x20]
	mov r0, sb
	strh r0, [r4, #0x20]
	ldr r0, _08061F38 @ =gUnknown_080F6D94
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08061F18: .4byte 0x09F4B9D8
_08061F1C: .4byte 0x09F4BA50
_08061F20: .4byte gUnknown_02004110
_08061F24: .4byte gUnknown_080CC4E8
_08061F28: .4byte 0x09F44FF0
_08061F2C: .4byte 0x09F455B0
_08061F30: .4byte gUnknown_080F6D8C
_08061F34: .4byte 0x09F45530
_08061F38: .4byte gUnknown_080F6D94

	thumb_func_start sub_08061F3C
sub_08061F3C: @ 0x08061F3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	adds r5, r4, #0
	adds r5, #0xfc
	ldr r1, [r5]
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	ldr r1, [r1, #0x18]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	movs r3, #0x24
	ldrsh r1, [r1, r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	movs r3, #0x1c
	ldrsh r1, [r1, r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x28
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x29
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x2a
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r5]
	adds r1, #0x2b
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r4, r4, r0
	ldr r0, [r5]
	adds r0, #0x2c
	ldrb r1, [r0]
	ldr r2, [r2, #4]
	adds r0, r4, #0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08062034
sub_08062034: @ 0x08062034
	push {lr}
	ldr r2, _08062048 @ =0x09F4B9D8
	str r2, [r0, #0x20]
	ldr r2, _0806204C @ =0x09F4BA50
	str r2, [r0, #0x1c]
	bl _._4Unit
	pop {r0}
	bx r0
	.align 2, 0
_08062048: .4byte 0x09F4B9D8
_0806204C: .4byte 0x09F4BA50

	thumb_func_start sub_08062050
sub_08062050: @ 0x08062050
	push {r4, r5, lr}
	adds r4, r0, #0
	bl unit_d0__4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080620A8
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r5, #0
	beq _080620A8
	ldr r1, [r4, #0x1c]
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080620AC
	ldr r1, [r5, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080620A8:
	movs r0, #0
	b _080620D6
_080620AC:
	ldr r1, [r4, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, [r5, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	adds r0, r4, #0
_080620D6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080620DC
sub_080620DC: @ 0x080620DC
	movs r0, #0
	bx lr

	thumb_func_start sub_080620E0
sub_080620E0: @ 0x080620E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x44
	adds r7, r1, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08075BB0
	mov r0, sp
	bl sub_08075DD4
	mov r8, r0
	movs r6, #0
	b _08062150
_0806212E:
	ldr r4, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	mov r0, sp
	adds r1, r6, #0
	bl sub_080766B8
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r6, #1
_08062150:
	mov r0, sp
	bl sub_080766B4
	cmp r6, r0
	blt _0806212E
	movs r4, #0
	mov r0, r8
	cmp r0, #0
	bne _08062164
	movs r4, #1
_08062164:
	mov r0, sp
	movs r1, #2
	bl sub_08075BF8
	adds r0, r4, #0
	add sp, #0x44
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806217C
sub_0806217C: @ 0x0806217C
	movs r0, #0
	bx lr

	thumb_func_start sub_08062180
sub_08062180: @ 0x08062180
	adds r0, #0xf8
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08062188
sub_08062188: @ 0x08062188
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0xf8
	ldrh r1, [r1]
	bl sub_08061E20
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806219C
sub_0806219C: @ 0x0806219C
	adds r0, #0xfc
	ldr r0, [r0]
	ldrb r0, [r0, #0x12]
	bx lr

	thumb_func_start sub_080621A4
sub_080621A4: @ 0x080621A4
	movs r0, #0
	bx lr

	thumb_func_start sub_080621A8
sub_080621A8: @ 0x080621A8
	movs r0, #0
	bx lr

	thumb_func_start sub_080621AC
sub_080621AC: @ 0x080621AC
	movs r0, #0
	bx lr

	thumb_func_start sub_080621B0
sub_080621B0: @ 0x080621B0
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_96
nullsub_96: @ 0x080621CC
	bx lr
	.align 2, 0

	thumb_func_start sub_080621D0
sub_080621D0: @ 0x080621D0
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_97
nullsub_97: @ 0x080621EC
	bx lr
	.align 2, 0

	thumb_func_start sub_080621F0
sub_080621F0: @ 0x080621F0
	push {r4, lr}
	ldr r4, _08062204 @ =gUnknown_02002318
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08062208 @ =0x09F4BD38
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062204: .4byte gUnknown_02002318
_08062208: .4byte 0x09F4BD38

	thumb_func_start nullsub_98
nullsub_98: @ 0x0806220C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_99
nullsub_99: @ 0x08062210
	bx lr
	.align 2, 0

	thumb_func_start sub_08062214
sub_08062214: @ 0x08062214
	movs r0, #0
	bx lr

	thumb_func_start sub_08062218
sub_08062218: @ 0x08062218
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	bx lr

	thumb_func_start sub_08062220
sub_08062220: @ 0x08062220
	movs r0, #0
	bx lr

	thumb_func_start sub_08062224
sub_08062224: @ 0x08062224
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	bx lr

	thumb_func_start sub_0806222C
sub_0806222C: @ 0x0806222C
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	bx lr

	thumb_func_start sub_08062234
sub_08062234: @ 0x08062234
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	bx lr

	thumb_func_start sub_0806223C
sub_0806223C: @ 0x0806223C
	movs r0, #0
	bx lr

	thumb_func_start nullsub_100
nullsub_100: @ 0x08062240
	bx lr
	.align 2, 0

	thumb_func_start nullsub_101
nullsub_101: @ 0x08062244
	bx lr
	.align 2, 0

	thumb_func_start nullsub_102
nullsub_102: @ 0x08062248
	bx lr
	.align 2, 0

	thumb_func_start nullsub_103
nullsub_103: @ 0x0806224C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_104
nullsub_104: @ 0x08062250
	bx lr
	.align 2, 0

	thumb_func_start sub_08062254
sub_08062254: @ 0x08062254
	push {r4, lr}
	adds r4, r0, #0
	bl __4Unit
	ldr r0, _0806226C @ =0x09F4B9D8
	str r0, [r4, #0x20]
	ldr r0, _08062270 @ =0x09F4BA50
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806226C: .4byte 0x09F4B9D8
_08062270: .4byte 0x09F4BA50

	thumb_func_start sub_08062274
sub_08062274: @ 0x08062274
	push {r4, lr}
	movs r4, #0
_08062278:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080622C0 @ =sub_0809FD28
	bl sub_080622DC
	adds r4, #1
	cmp r4, #0xf
	bls _08062278
	ldr r1, _080622C4 @ =sub_0809FCCC
	movs r0, #8
	bl sub_080622DC
	ldr r1, _080622C8 @ =sub_0809FCB0
	movs r0, #0xa
	bl sub_080622DC
	ldr r1, _080622CC @ =sub_0809FC94
	movs r0, #0xb
	bl sub_080622DC
	ldr r1, _080622D0 @ =sub_0809FC78
	movs r0, #7
	bl sub_080622DC
	ldr r1, _080622D4 @ =sub_0809FC5C
	movs r0, #0xc
	bl sub_080622DC
	ldr r1, _080622D8 @ =sub_0809FC40
	movs r0, #9
	bl sub_080622DC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080622C0: .4byte sub_0809FD28
_080622C4: .4byte sub_0809FCCC
_080622C8: .4byte sub_0809FCB0
_080622CC: .4byte sub_0809FC94
_080622D0: .4byte sub_0809FC78
_080622D4: .4byte sub_0809FC5C
_080622D8: .4byte sub_0809FC40

	thumb_func_start sub_080622DC
sub_080622DC: @ 0x080622DC
	lsls r0, r0, #0x10
	ldr r2, _080622E8 @ =gUnknown_02002328
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_080622E8: .4byte gUnknown_02002328

	thumb_func_start sub_080622EC
sub_080622EC: @ 0x080622EC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08062304 @ =gUnknown_02002328
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0
_08062304: .4byte gUnknown_02002328

	thumb_func_start sub_08062308
sub_08062308: @ 0x08062308
	push {r4, lr}
	movs r4, #0
_0806230C:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08062344 @ =sub_080A0AA8
	bl sub_08062358
	adds r4, #1
	cmp r4, #0x63
	bls _0806230C
	ldr r1, _08062348 @ =sub_080A0A88
	movs r0, #0x21
	bl sub_08062358
	ldr r1, _0806234C @ =sub_080A0A68
	movs r0, #0x13
	bl sub_08062358
	ldr r1, _08062350 @ =sub_080A0A48
	movs r0, #0xd
	bl sub_08062358
	ldr r1, _08062354 @ =sub_080A0A28
	movs r0, #0x24
	bl sub_08062358
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062344: .4byte sub_080A0AA8
_08062348: .4byte sub_080A0A88
_0806234C: .4byte sub_080A0A68
_08062350: .4byte sub_080A0A48
_08062354: .4byte sub_080A0A28

	thumb_func_start sub_08062358
sub_08062358: @ 0x08062358
	lsls r0, r0, #0x10
	ldr r2, _08062364 @ =gUnknown_02002378
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08062364: .4byte gUnknown_02002378

	thumb_func_start sub_08062368
sub_08062368: @ 0x08062368
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08062380 @ =gUnknown_02002378
	lsls r2, r0, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_08062380: .4byte gUnknown_02002378

	thumb_func_start sub_08062384
sub_08062384: @ 0x08062384
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _08062438 @ =0x09F4E320
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x24
	movs r0, #0
	str r0, [r7, #0x24]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x30]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x3c]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x48]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x54]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x60]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0x10
	str r0, [r7, #0x70]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0x10
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	subs r1, #0x14
	strb r0, [r1]
	adds r1, #0x10
	movs r2, #0
	strh r0, [r1]
	adds r1, #0x10
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #6
	str r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r1, #4
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa0
	strb r2, [r0]
	adds r0, r7, #0
	bl sub_08062448
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806243C @ =0x09F44FF0
	ldr r0, _08062440 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _08062444 @ =gUnknown_080F812C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08062438: .4byte 0x09F4E320
_0806243C: .4byte 0x09F44FF0
_08062440: .4byte 0x09F7ED20
_08062444: .4byte gUnknown_080F812C

	thumb_func_start sub_08062448
sub_08062448: @ 0x08062448
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	bl sub_080725E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080624C8
	movs r5, #0
	ldr r0, _080624C0 @ =gUnknown_020047E0
	ldrb r1, [r0, #5]
	cmp r5, r1
	blt _0806246E
	b _0806258C
_0806246E:
	mov r8, r0
	mov r7, sp
	add r6, sp, #4
	movs r2, #0x80
	lsls r2, r2, #1
	mov sl, r2
_0806247A:
	mov r3, sb
	ldr r4, [r3, #0x1c]
	adds r4, #0xa0
	movs r1, #0
	ldrsh r0, [r4, r1]
	add r0, sb
	lsls r2, r5, #1
	mov r1, r8
	adds r1, #0xc
	adds r2, r2, r1
	ldr r3, _080624C4 @ =0xFFFFFF00
	adds r1, r3, #0
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x88
	lsls r2, r2, #1
	strh r2, [r7]
	movs r3, #0x20
	strh r3, [r7, #2]
	ldr r2, [sp]
	mov r3, sl
	strh r3, [r6]
	strh r3, [r6, #2]
	ldr r3, [sp, #4]
	ldr r4, [r4, #4]
	bl _call_via_r4
	adds r5, #1
	mov r0, r8
	ldrb r0, [r0, #5]
	cmp r5, r0
	blt _0806247A
	b _0806258C
	.align 2, 0
_080624C0: .4byte gUnknown_020047E0
_080624C4: .4byte 0xFFFFFF00
_080624C8:
	bl sub_08072628
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08062526
	bl sub_08072698
	adds r7, r0, #0
	movs r5, #0
	ldrb r1, [r7, #1]
	cmp r5, r1
	bge _0806258C
	add r2, sp, #8
	mov r8, r2
	add r6, sp, #0xc
	movs r3, #0x80
	lsls r3, r3, #1
	mov sl, r3
_080624EE:
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r1, #0
	ldrsh r0, [r4, r1]
	add r0, sb
	adds r1, r7, #2
	adds r1, r1, r5
	ldrb r1, [r1]
	movs r3, #0x88
	lsls r3, r3, #1
	mov r2, r8
	strh r3, [r2]
	movs r3, #0x20
	strh r3, [r2, #2]
	ldr r2, [sp, #8]
	mov r3, sl
	strh r3, [r6]
	strh r3, [r6, #2]
	ldr r3, [sp, #0xc]
	ldr r4, [r4, #4]
	bl _call_via_r4
	adds r5, #1
	ldrb r0, [r7, #1]
	cmp r5, r0
	blt _080624EE
	b _0806258C
_08062526:
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806258C
	movs r5, #0
	ldr r0, _0806259C @ =gUnknown_020047E0
	ldrb r1, [r0, #5]
	cmp r5, r1
	bge _0806258C
	mov r8, r0
	add r7, sp, #0x10
	add r6, sp, #0x14
	movs r2, #0x80
	lsls r2, r2, #1
	mov sl, r2
_08062548:
	mov r3, sb
	ldr r4, [r3, #0x1c]
	adds r4, #0xa0
	movs r1, #0
	ldrsh r0, [r4, r1]
	add r0, sb
	lsls r2, r5, #1
	mov r1, r8
	adds r1, #0xc
	adds r2, r2, r1
	ldr r3, _080625A0 @ =0xFFFFFF00
	adds r1, r3, #0
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x88
	lsls r2, r2, #1
	strh r2, [r7]
	movs r3, #0x20
	strh r3, [r7, #2]
	ldr r2, [sp, #0x10]
	mov r3, sl
	strh r3, [r6]
	strh r3, [r6, #2]
	ldr r3, [sp, #0x14]
	ldr r4, [r4, #4]
	bl _call_via_r4
	adds r5, #1
	mov r0, r8
	ldrb r0, [r0, #5]
	cmp r5, r0
	blt _08062548
_0806258C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806259C: .4byte gUnknown_020047E0
_080625A0: .4byte 0xFFFFFF00

	thumb_func_start sub_080625A4
sub_080625A4: @ 0x080625A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	str r1, [sp]
	ldr r0, _080625C4 @ =0x09F4E320
	mov r1, r8
	str r0, [r1, #0x1c]
	adds r1, #0x60
	str r1, [sp, #8]
	adds r4, r1, #0
	b _080625FC
	.align 2, 0
_080625C4: .4byte 0x09F4E320
_080625C8:
	ldr r0, [r4, #8]
	ldr r1, [r0]
	mov r0, r8
	bl sub_080638BC
	mov ip, r4
	movs r7, #0
	ldr r1, [r4, #4]
	cmp r7, r1
	bge _080625FC
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp r7, r2
	bge _080625F6
	adds r1, r2, #0
_080625EC:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080625EC
_080625F6:
	subs r0, r6, #1
	mov r3, ip
	str r0, [r3, #4]
_080625FC:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _08062606
	movs r1, #1
_08062606:
	cmp r1, #0
	beq _080625C8
	movs r5, #0
	mov r0, r8
	adds r0, #0x70
	ldr r1, [r0, #4]
	adds r6, r0, #0
	mov r7, r8
	adds r7, #0x80
	movs r0, #0x54
	add r0, r8
	mov sb, r0
	movs r3, #0x48
	add r3, r8
	mov sl, r3
	mov r0, r8
	adds r0, #0x3c
	str r0, [sp, #4]
	mov r3, r8
	adds r3, #0x30
	str r3, [sp, #0x10]
	subs r0, #0x18
	str r0, [sp, #0xc]
	cmp r5, r1
	bge _0806265E
	adds r4, r6, #0
_0806263A:
	lsls r1, r5, #2
	ldr r0, [r4, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08062656
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08062656:
	adds r5, #1
	ldr r0, [r4, #4]
	cmp r5, r0
	blt _0806263A
_0806265E:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08062668
	bl __builtin_vec_delete
_08062668:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _08062672
	bl __builtin_vec_delete
_08062672:
	ldr r1, [sp, #8]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0806267E
	bl __builtin_vec_delete
_0806267E:
	mov r3, sb
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0806268A
	bl __builtin_vec_delete
_0806268A:
	mov r1, sl
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08062696
	bl __builtin_vec_delete
_08062696:
	ldr r3, [sp, #4]
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080626A2
	bl __builtin_vec_delete
_080626A2:
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _080626AE
	bl __builtin_vec_delete
_080626AE:
	ldr r3, [sp, #0xc]
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080626BA
	bl __builtin_vec_delete
_080626BA:
	mov r0, r8
	ldr r1, [sp]
	bl _._4Base
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080626D4
sub_080626D4: @ 0x080626D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	add r5, sp, #4
	movs r4, #0
	strh r4, [r5]
	strh r4, [r5, #2]
	add r4, sp, #8
	movs r7, #0x80
	lsls r7, r7, #1
	strh r7, [r4]
	strh r7, [r4, #2]
	mov r4, sp
	strh r1, [r4]
	str r2, [sp, #4]
	str r3, [sp, #8]
	adds r6, r0, #0
	adds r6, #0x24
	mov r8, sp
	ldr r1, [r6, #4]
	adds r1, #1
	mov sb, r1
	ldr r0, [r0, #0x24]
	cmp r0, sb
	bge _0806277C
	lsls r1, r1, #1
	movs r0, #4
	cmp r0, r1
	bge _08062716
	adds r0, r1, #0
_08062716:
	mov sb, r0
	lsls r0, r0, #1
	add r0, sb
	lsls r0, r0, #2
	bl __builtin_vec_new
	mov r2, sb
	subs r2, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r2, r1
	beq _08062746
	movs r4, #0
	adds r3, r7, #0
	adds r7, r1, #0
	adds r1, r0, #4
_08062736:
	strh r4, [r1]
	strh r4, [r1, #2]
	strh r3, [r1, #4]
	strh r3, [r1, #6]
	adds r1, #0xc
	subs r2, #1
	cmp r2, r7
	bne _08062736
_08062746:
	mov sl, r0
	ldr r0, [r6, #8]
	mov ip, r0
	mov r3, sl
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0806276A
	adds r2, r0, #0
_08062756:
	adds r1, r3, #0
	mov r0, ip
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	movs r0, #0xc
	add ip, r0
	adds r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _08062756
_0806276A:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _08062774
	bl __builtin_vec_delete
_08062774:
	mov r1, sb
	str r1, [r6]
	mov r3, sl
	str r3, [r6, #8]
_0806277C:
	ldr r2, [r6, #4]
	ldr r0, [r6, #8]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r0, r8
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	adds r2, #1
	str r2, [r6, #4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080627A4
sub_080627A4: @ 0x080627A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r7, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r4, [r5, #0x1c]
	adds r4, #0x78
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r5, r0
	adds r3, r5, #0
	adds r3, #0x7c
	ldrh r1, [r3]
	adds r2, r1, #1
	strh r2, [r3]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r2, sp, #8
	str r2, [sp]
	ldr r4, [r4, #4]
	adds r2, r6, #0
	add r3, sp, #4
	bl _call_via_r4
	mov r8, r0
	ldr r1, [r5, #0x1c]
	adds r6, r1, #0
	adds r6, #0x70
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r5, r4
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	ldr r1, [r1, #4]
	adds r0, r5, #0
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [r6, #4]
	adds r0, r4, #0
	adds r2, r7, #0
	bl _call_via_r3
	mov r0, r8
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08062818
sub_08062818: @ 0x08062818
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _0806288A
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806288A
	adds r4, r6, #0
	adds r4, #0x30
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r6, #0x30]
	cmp r0, r5
	bge _0806287A
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0806284C
	adds r0, r1, #0
_0806284C:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0806286C
	adds r1, r0, #0
_08062862:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08062862
_0806286C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08062876
	bl __builtin_vec_delete
_08062876:
	str r5, [r4]
	str r6, [r4, #8]
_0806287A:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0806288A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08062894
sub_08062894: @ 0x08062894
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _08062906
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08062906
	adds r4, r6, #0
	adds r4, #0x3c
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r6, #0x3c]
	cmp r0, r5
	bge _080628F6
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080628C8
	adds r0, r1, #0
_080628C8:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080628E8
	adds r1, r0, #0
_080628DE:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080628DE
_080628E8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080628F2
	bl __builtin_vec_delete
_080628F2:
	str r5, [r4]
	str r6, [r4, #8]
_080628F6:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_08062906:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08062910
sub_08062910: @ 0x08062910
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _08062982
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08062982
	adds r4, r6, #0
	adds r4, #0x54
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r6, #0x54]
	cmp r0, r5
	bge _08062972
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08062944
	adds r0, r1, #0
_08062944:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08062964
	adds r1, r0, #0
_0806295A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0806295A
_08062964:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806296E
	bl __builtin_vec_delete
_0806296E:
	str r5, [r4]
	str r6, [r4, #8]
_08062972:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_08062982:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806298C
sub_0806298C: @ 0x0806298C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _080629FE
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080629FE
	adds r4, r6, #0
	adds r4, #0x60
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r6, #0x60]
	cmp r0, r5
	bge _080629EE
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080629C0
	adds r0, r1, #0
_080629C0:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080629E0
	adds r1, r0, #0
_080629D6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080629D6
_080629E0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080629EA
	bl __builtin_vec_delete
_080629EA:
	str r5, [r4]
	str r6, [r4, #8]
_080629EE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_080629FE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08062A08
sub_08062A08: @ 0x08062A08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08062A20
	movs r0, #0
	b _08062AC6
_08062A20:
	movs r0, #0
	mov r8, r0
	movs r7, #0
	b _08062AA8
_08062A28:
	ldr r1, [r6, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08062AA6
	ldr r1, [r6, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08062AA6
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xb8
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	movs r3, #1
	add r8, r3
_08062AA6:
	adds r7, #1
_08062AA8:
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	blt _08062A28
	movs r0, #0
	mov r3, r8
	cmp r3, #0
	ble _08062AC6
	movs r0, #1
_08062AC6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08062AD0
sub_08062AD0: @ 0x08062AD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	adds r2, r7, #0
	adds r2, #0x6c
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08062AFC
	b _08062D96
_08062AFC:
	adds r0, r7, #0
	bl sub_08062DB0
	movs r5, #0
	adds r4, r7, #0
	adds r4, #0x54
	movs r0, #0x3c
	adds r0, r0, r7
	mov sb, r0
	adds r1, r7, #0
	adds r1, #0x30
	str r1, [sp, #0x14]
	movs r2, #0x24
	adds r2, r2, r7
	mov sl, r2
	b _08062B5E
_08062B1C:
	ldr r2, [r7, #0x1c]
	adds r2, #0x90
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r7, r0
	ldr r1, [r4, #8]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r8, r4
	movs r5, #0
	mov ip, r5
	ldr r1, [r4, #4]
	cmp ip, r1
	bge _08062B5C
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp ip, r2
	bge _08062B56
	adds r1, r2, #0
_08062B4C:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08062B4C
_08062B56:
	subs r0, r6, #1
	mov r6, r8
	str r0, [r6, #4]
_08062B5C:
	movs r5, #1
_08062B5E:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _08062B68
	movs r1, #1
_08062B68:
	cmp r1, #0
	beq _08062B1C
	mov r4, sb
	b _08062BB2
_08062B70:
	ldr r2, [r7, #0x1c]
	adds r2, #0x88
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	ldr r1, [r4, #8]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r8, r4
	movs r2, #0
	mov ip, r2
	ldr r1, [r4, #4]
	cmp ip, r1
	bge _08062BB0
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp ip, r2
	bge _08062BAA
	adds r1, r2, #0
_08062BA0:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08062BA0
_08062BAA:
	subs r0, r6, #1
	mov r3, r8
	str r0, [r3, #4]
_08062BB0:
	movs r5, #1
_08062BB2:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _08062BBC
	movs r1, #1
_08062BBC:
	cmp r1, #0
	beq _08062B70
	ldr r4, [sp, #0x14]
	b _08062C06
_08062BC4:
	ldr r2, [r7, #0x1c]
	adds r2, #0x80
	movs r5, #0
	ldrsh r0, [r2, r5]
	adds r0, r7, r0
	ldr r1, [r4, #8]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r8, r4
	movs r6, #0
	mov ip, r6
	ldr r1, [r4, #4]
	cmp ip, r1
	bge _08062C04
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp ip, r2
	bge _08062BFE
	adds r1, r2, #0
_08062BF4:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08062BF4
_08062BFE:
	subs r0, r6, #1
	mov r1, r8
	str r0, [r1, #4]
_08062C04:
	movs r5, #1
_08062C06:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _08062C10
	movs r1, #1
_08062C10:
	cmp r1, #0
	beq _08062BC4
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r3, sl
	ldr r1, [r3, #4]
	adds r0, r0, r1
	movs r1, #3
	cmp r1, r0
	ble _08062C32
	adds r1, r0, #0
_08062C32:
	mov sb, r1
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	cmp r6, sb
	bge _08062CB6
	mov r8, sl
_08062C4C:
	mov r0, r8
	ldr r5, [r0, #8]
	ldrh r2, [r5]
	adds r3, r5, #4
	adds r5, #8
	ldr r4, [r7, #0x1c]
	adds r4, #0x78
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r7, r0
	adds r1, r7, #0
	adds r1, #0x7c
	ldrh r1, [r1]
	str r5, [sp]
	ldr r4, [r4, #4]
	bl _call_via_r4
	mov r3, r8
	ldr r2, [r3, #4]
	adds r6, #1
	str r6, [sp, #0x1c]
	movs r4, #0
	cmp r4, r2
	bge _08062CAE
	mov r5, sl
	ldr r0, [r5, #8]
	subs r1, r2, #1
	movs r6, #0xc
	adds r6, r6, r0
	mov ip, r6
	adds r3, r0, #0
	str r2, [sp, #0x18]
	cmp r1, #0
	ble _08062CA6
	adds r2, r1, #0
_08062C92:
	adds r1, r3, #0
	mov r0, ip
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	movs r0, #0xc
	add ip, r0
	adds r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _08062C92
_08062CA6:
	ldr r0, [sp, #0x18]
	subs r0, #1
	mov r1, r8
	str r0, [r1, #4]
_08062CAE:
	movs r5, #1
	ldr r6, [sp, #0x1c]
	cmp r6, sb
	blt _08062C4C
_08062CB6:
	cmp r5, #1
	bne _08062CD4
	ldr r2, [sp, #0xc]
	cmp r2, #1
	bne _08062CD4
	ldr r1, [r7, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	mov r1, sb
	movs r2, #0x1e
	bl _call_via_r3
_08062CD4:
	movs r6, #0
	b _08062D28
_08062CD8:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	add r0, sp, #4
	adds r2, r6, #0
	bl sub_08063960
	ldr r2, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	bl _call_via_r2
	add r0, sp, #4
	movs r1, #2
	bl sub_080639B4
	adds r6, #1
_08062D28:
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _08062CD8
	ldr r4, [sp, #0x10]
	cmp r4, #1
	bne _08062D96
	adds r4, r7, #0
	adds r4, #0x60
	b _08062D88
_08062D48:
	ldr r2, [r7, #0x1c]
	adds r2, #0x98
	movs r5, #0
	ldrsh r0, [r2, r5]
	adds r0, r7, r0
	ldr r1, [r4, #8]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r8, r4
	movs r6, #0
	mov ip, r6
	ldr r1, [r4, #4]
	cmp ip, r1
	bge _08062D88
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp ip, r2
	bge _08062D82
	adds r1, r2, #0
_08062D78:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08062D78
_08062D82:
	subs r0, r6, #1
	mov r1, r8
	str r0, [r1, #4]
_08062D88:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _08062D92
	movs r1, #1
_08062D92:
	cmp r1, #0
	beq _08062D48
_08062D96:
	adds r1, r7, #0
	adds r1, #0x6c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08062DB0
sub_08062DB0: @ 0x08062DB0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x40]
	ldr r3, [r4, #0x34]
	ldr r4, [r4, #0x58]
	adds r0, r0, r1
	subs r0, r0, r2
	subs r0, r0, r3
	subs r0, r0, r4
	cmp r0, #0
	bgt _08062E74
	movs r7, #0
	b _08062E68
_08062DDC:
	adds r0, r7, #0
	bl sub_08072AA4
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	ble _08062E66
	ldr r0, [r6, #0x1c]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r6, #0x1c]
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_08062E66:
	adds r7, #1
_08062E68:
	bl sub_08072A88
	cmp r7, r0
	blt _08062DDC
	movs r0, #1
	b _08062E76
_08062E74:
	movs r0, #0
_08062E76:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08062E7C
sub_08062E7C: @ 0x08062E7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	adds r7, r0, #0
	mov sb, r1
	str r2, [sp, #0x4c]
	mov r0, sp
	movs r2, #2
	mov r1, sp
	adds r1, #0xc
	str r1, [sp, #0x5c]
	mov r3, sp
	adds r3, #0x24
	str r3, [sp, #0x58]
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
_08062EA4:
	strh r1, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	subs r2, #1
	cmp r2, r3
	bne _08062EA4
	ldr r0, [sp, #0x5c]
	movs r1, #2
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
_08062EBA:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, r3
	bne _08062EBA
	ldr r0, [sp, #0x58]
	movs r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #1
	rsbs r3, r3, #0
_08062ED2:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, r3
	bne _08062ED2
	movs r0, #0
	mov r8, r0
	add r6, sp, #0x30
	mov r5, sp
	b _08062F76
_08062EE8:
	adds r0, r6, #0
	mov r1, sb
	mov r2, r8
	bl sub_08063960
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	mov r3, r8
	lsls r4, r3, #2
	adds r3, r0, #0
	adds r3, #0x20
	ldr r2, [r0, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x38
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [sp, #0x38]
	str r0, [r5]
	add r0, sp, #0x3c
	adds r1, r6, #0
	bl sub_080639FC
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_08063A90
	add r1, sp, #0x18
	adds r1, r1, r4
	str r0, [r1]
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x40
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldr r0, [sp, #0x40]
	str r0, [r5, #0x24]
	adds r0, r6, #0
	movs r1, #2
	bl sub_080639B4
	adds r5, #4
	movs r1, #1
	add r8, r1
_08062F76:
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r8, r0
	blt _08062EE8
	movs r3, #0
	str r3, [sp, #0x50]
	ldr r0, [sp, #0x4c]
	cmp r3, r0
	ble _08062F96
	b _080630C6
_08062F96:
	add r1, sp, #0x44
	mov sb, r1
	add r2, sp, #0x48
	mov r8, r2
_08062F9E:
	movs r3, #0
	mov sl, r3
	ldr r0, [sp, #0x50]
	adds r0, #1
	str r0, [sp, #0x54]
	b _0806309E
_08062FAA:
	movs r0, #0
	mov r1, sb
	strh r0, [r1]
	strh r0, [r1, #2]
	movs r3, #0x80
	lsls r3, r3, #1
	mov r2, r8
	strh r3, [r2]
	adds r0, r3, #0
	strh r0, [r2, #2]
	mov r1, sl
	lsls r6, r1, #2
	mov r2, sp
	adds r5, r2, r6
	movs r3, #0
	ldrsh r0, [r5, r3]
	ldr r1, [sp, #0x5c]
	adds r4, r1, r6
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x4c]
	bl sub_08069558
	mov r3, sb
	strh r0, [r3]
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x4c]
	bl sub_08069558
	mov r3, sb
	strh r0, [r3, #2]
	ldr r0, [sp, #0x58]
	adds r4, r0, r6
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x4c]
	bl sub_08069558
	mov r2, r8
	strh r0, [r2]
	movs r3, #2
	ldrsh r0, [r4, r3]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x4c]
	bl sub_08069558
	mov r1, r8
	strh r0, [r1, #2]
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	adds r2, r0, #0
	adds r2, #0x20
	ldr r1, [r0, #0x20]
	movs r3, #0x18
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	ldr r3, [r1, #0x1c]
	adds r0, r2, #0
	mov r1, sb
	bl _call_via_r3
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	adds r2, r0, #0
	adds r2, #0x20
	ldr r3, [r0, #0x20]
	movs r1, #0x20
	ldrsh r0, [r3, r1]
	adds r2, r2, r0
	add r0, sp, #0x18
	adds r0, r0, r6
	ldr r1, [r0]
	ldr r3, [r3, #0x24]
	adds r0, r2, #0
	bl _call_via_r3
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	mov r1, r8
	bl _call_via_r2
	movs r0, #1
	add sl, r0
_0806309E:
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sl, r0
	bge _080630B4
	b _08062FAA
_080630B4:
	movs r0, #1
	bl sub_0807068C
	ldr r3, [sp, #0x54]
	str r3, [sp, #0x50]
	ldr r0, [sp, #0x4c]
	cmp r3, r0
	bgt _080630C6
	b _08062F9E
_080630C6:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080630D8
sub_080630D8: @ 0x080630D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r7, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	ldr r5, [sp, #0x6c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08063EC4
	str r0, [sp, #0x44]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r4, #0
	bl _call_via_r2
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	adds r0, r7, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r0, #0
	bne _08063154
	bl sub_08072718
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08063154
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	b _0806316C
_08063154:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_0806316C:
	adds r4, r7, #0
	adds r4, #0x70
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x70]
	adds r1, r7, #0
	adds r1, #0x7c
	str r1, [sp, #0x48]
	movs r2, #0x80
	adds r2, r2, r7
	mov sl, r2
	add r3, sp, #0x20
	mov sb, r3
	cmp r0, r5
	bge _080631C6
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08063198
	adds r0, r1, #0
_08063198:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080631B8
	adds r1, r0, #0
_080631AE:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080631AE
_080631B8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080631C2
	bl __builtin_vec_delete
_080631C2:
	str r5, [r4]
	str r6, [r4, #8]
_080631C6:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r4, sl
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _08063220
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080631F2
	adds r0, r1, #0
_080631F2:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08063212
	adds r1, r0, #0
_08063208:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08063208
_08063212:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806321C
	bl __builtin_vec_delete
_0806321C:
	str r5, [r4]
	str r6, [r4, #8]
_08063220:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r1, [sp, #0x48]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r3, _080632D4 @ =0x09F44FF0
	mov r8, r3
	ldr r0, _080632D8 @ =0x09F819D0
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r7, r5
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _080632DC @ =0x09F818D0
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sb
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x3c]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r0, _080632E0 @ =0x09F81950
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x44]
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080632D4: .4byte 0x09F44FF0
_080632D8: .4byte 0x09F819D0
_080632DC: .4byte 0x09F818D0
_080632E0: .4byte 0x09F81950

	thumb_func_start sub_080632E4
sub_080632E4: @ 0x080632E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	mov sb, r0
	str r1, [sp, #0x44]
	mov r6, sb
	adds r6, #0x70
	add r7, sp, #0x44
	movs r5, #0
	ldr r3, [r6, #4]
	mov r8, r7
	cmp r5, r3
	bge _08063340
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_0806330A:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08063334
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _0806332C
	adds r2, r0, #0
_08063322:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08063322
_0806332C:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _08063342
_08063334:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _0806330A
_08063340:
	movs r0, #0
_08063342:
	cmp r0, #0
	bne _08063348
	b _08063458
_08063348:
	mov r5, sb
	adds r5, #0x80
	mov r7, r8
	movs r6, #0
	ldr r3, [r5, #4]
	mov r0, sb
	ldr r0, [r0, #0x1c]
	mov r8, r0
	add r1, sp, #0x20
	mov sl, r1
	mov r0, sb
	adds r0, #0x8c
	str r0, [sp, #0x48]
	cmp r6, r3
	bge _080633A0
	ldr r0, [r5, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_0806336C:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08063394
	adds r0, r6, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r5, #4]
	cmp r0, #0
	ble _0806338E
	adds r2, r0, #0
_08063384:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08063384
_0806338E:
	subs r0, r4, #1
	str r0, [r5, #4]
	b _080633A0
_08063394:
	adds r4, #4
	adds r2, #4
	adds r6, #1
	ldr r3, [r5, #4]
	cmp r6, r3
	blt _0806336C
_080633A0:
	mov r5, r8
	adds r5, #0x50
	movs r1, #0
	ldrsh r4, [r5, r1]
	add r4, sb
	mov r0, sp
	bl __4Base
	ldr r3, _08063468 @ =0x09F44FF0
	mov r8, r3
	ldr r0, _0806346C @ =0x09F819D0
	str r0, [sp, #0x1c]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _08063470 @ =0x09F817D0
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x3c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _08063474 @ =0x09F81950
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	mov r0, sb
	ldr r2, [r0, #0x1c]
	adds r2, #0x68
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sb
	ldr r1, [sp, #0x44]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r3, [sp, #0x48]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
_08063458:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063468: .4byte 0x09F44FF0
_0806346C: .4byte 0x09F819D0
_08063470: .4byte 0x09F817D0
_08063474: .4byte 0x09F81950

	thumb_func_start sub_08063478
sub_08063478: @ 0x08063478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	mov sb, r0
	str r1, [sp, #0x44]
	mov r6, sb
	adds r6, #0x70
	add r7, sp, #0x44
	movs r5, #0
	ldr r3, [r6, #4]
	mov r8, r7
	cmp r5, r3
	bge _080634D4
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_0806349E:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _080634C8
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _080634C0
	adds r2, r0, #0
_080634B6:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _080634B6
_080634C0:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _080634D6
_080634C8:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _0806349E
_080634D4:
	movs r0, #0
_080634D6:
	cmp r0, #0
	bne _080634DC
	b _080636EC
_080634DC:
	mov r6, sb
	adds r6, #0x80
	mov r7, r8
	movs r5, #0
	ldr r3, [r6, #4]
	add r0, sp, #0x20
	mov sl, r0
	mov r1, sb
	adds r1, #0x8e
	str r1, [sp, #0x48]
	cmp r5, r3
	bge _0806352E
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_080634FA:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08063522
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _0806351C
	adds r2, r0, #0
_08063512:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08063512
_0806351C:
	subs r0, r4, #1
	str r0, [r6, #4]
	b _0806352E
_08063522:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _080634FA
_0806352E:
	mov r2, sb
	ldr r4, [r2, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _080636FC @ =0x09F44FF0
	mov r8, r0
	ldr r0, _08063700 @ =0x09F819D0
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r1, r8
	str r1, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _08063704 @ =0x09F81750
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x3c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r3, sb
	ldr r4, [r3, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _08063708 @ =0x09F81950
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r1, r8
	str r1, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	mov r2, sb
	ldr r0, [r2, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r6, r0, r3
	movs r1, #0
	ldrsh r5, [r6, r1]
	add r5, sb
	movs r2, #0x94
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r4, r0
	ldr r2, [r6, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	mov r0, sb
	ldr r4, [r0, #0x1c]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sb
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r3, #0xba
	lsls r3, r3, #2
	adds r1, r1, r3
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
	mov r1, sb
	ldr r0, [r1, #0x1c]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r6, r0, r2
	movs r3, #0
	ldrsh r5, [r6, r3]
	add r5, sb
	adds r2, #0x18
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xbc
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r4, r0
	ldr r2, [r6, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, _0806370C @ =gUnknown_020047E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r4, #5]
	cmp r0, r1
	bhs _080636D0
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x3d
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
_080636D0:
	mov r0, sb
	ldr r2, [r0, #0x1c]
	adds r2, #0x68
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sb
	ldr r1, [sp, #0x44]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [sp, #0x48]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_080636EC:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080636FC: .4byte 0x09F44FF0
_08063700: .4byte 0x09F819D0
_08063704: .4byte 0x09F81750
_08063708: .4byte 0x09F81950
_0806370C: .4byte gUnknown_020047E0

	thumb_func_start sub_08063710
sub_08063710: @ 0x08063710
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	mov sb, r0
	str r1, [sp, #0x44]
	mov r6, sb
	adds r6, #0x70
	add r7, sp, #0x44
	movs r5, #0
	ldr r3, [r6, #4]
	mov r8, r7
	cmp r5, r3
	bge _0806376C
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08063736:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08063760
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08063758
	adds r2, r0, #0
_0806374E:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0806374E
_08063758:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _0806376E
_08063760:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08063736
_0806376C:
	movs r0, #0
_0806376E:
	cmp r0, #0
	bne _08063774
	b _08063896
_08063774:
	mov r5, sb
	adds r5, #0x80
	mov r7, r8
	movs r6, #0
	ldr r3, [r5, #4]
	mov r0, sb
	ldr r0, [r0, #0x1c]
	mov r8, r0
	add r1, sp, #0x20
	mov sl, r1
	mov r2, sb
	adds r2, #0x90
	str r2, [sp, #0x48]
	cmp r6, r3
	bge _080637CC
	ldr r0, [r5, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08063798:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _080637C0
	adds r0, r6, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r5, #4]
	cmp r0, #0
	ble _080637BA
	adds r2, r0, #0
_080637B0:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _080637B0
_080637BA:
	subs r0, r4, #1
	str r0, [r5, #4]
	b _080637CC
_080637C0:
	adds r4, #4
	adds r2, #4
	adds r6, #1
	ldr r3, [r5, #4]
	cmp r6, r3
	blt _08063798
_080637CC:
	mov r5, r8
	adds r5, #0x50
	movs r3, #0
	ldrsh r4, [r5, r3]
	add r4, sb
	mov r0, sp
	bl __4Base
	ldr r0, _080638A8 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _080638AC @ =0x09F819D0
	str r0, [sp, #0x1c]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r2
	mov r1, r8
	str r1, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	mov r2, sb
	ldr r4, [r2, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	add r5, sb
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _080638B0 @ =0x09F81750
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x3c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r1, sb
	ldr r4, [r1, #0x1c]
	adds r4, #0x50
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _080638B4 @ =0x09F81950
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, _080638B8 @ =gUnknown_020047E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, #0x3d
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, sb
	ldr r2, [r0, #0x1c]
	adds r2, #0x68
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sb
	ldr r1, [sp, #0x44]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [sp, #0x48]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_08063896:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080638A8: .4byte 0x09F44FF0
_080638AC: .4byte 0x09F819D0
_080638B0: .4byte 0x09F81750
_080638B4: .4byte 0x09F81950
_080638B8: .4byte gUnknown_020047E0

	thumb_func_start sub_080638BC
sub_080638BC: @ 0x080638BC
	push {lr}
	adds r2, r1, #0
	cmp r2, #0
	beq _080638D4
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080638D4:
	pop {r0}
	bx r0

	thumb_func_start sub_080638D8
sub_080638D8: @ 0x080638D8
	ldr r0, [r0, #0x74]
	bx lr

	thumb_func_start sub_080638DC
sub_080638DC: @ 0x080638DC
	lsls r1, r1, #2
	ldr r0, [r0, #0x78]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080638E8
sub_080638E8: @ 0x080638E8
	adds r0, #0x80
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_080638F0
sub_080638F0: @ 0x080638F0
	adds r0, #0x80
	lsls r1, r1, #2
	ldr r0, [r0, #8]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr

	thumb_func_start sub_080638FC
sub_080638FC: @ 0x080638FC
	adds r0, #0x8c
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08063904
sub_08063904: @ 0x08063904
	adds r0, #0x8e
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806390C
sub_0806390C: @ 0x0806390C
	adds r0, #0x90
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08063914
sub_08063914: @ 0x08063914
	adds r0, #0x94
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806391C
sub_0806391C: @ 0x0806391C
	adds r0, #0x98
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08063924
sub_08063924: @ 0x08063924
	adds r0, #0x9c
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806392C
sub_0806392C: @ 0x0806392C
	adds r0, #0x94
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08063934
sub_08063934: @ 0x08063934
	adds r0, #0x98
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806393C
sub_0806393C: @ 0x0806393C
	adds r0, #0x9c
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08063944
sub_08063944: @ 0x08063944
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0x60
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806395C
sub_0806395C: @ 0x0806395C
	movs r0, #3
	bx lr

	thumb_func_start sub_08063960
sub_08063960: @ 0x08063960
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r1, #1
	cmp r3, #2
	bgt _08063988
	cmp r2, #2
	bgt _08063988
	ldr r0, _08063984 @ =gUnknown_080F87B4
	lsls r1, r3, #1
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r4, #0
	bl sub_080639A8
	b _0806398E
	.align 2, 0
_08063984: .4byte gUnknown_080F87B4
_08063988:
	adds r0, r4, #0
	bl sub_08063998
_0806398E:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08063998
sub_08063998: @ 0x08063998
	ldr r1, _080639A4 @ =0x09F4E460
	str r1, [r0, #4]
	movs r1, #5
	strh r1, [r0]
	bx lr
	.align 2, 0
_080639A4: .4byte 0x09F4E460

	thumb_func_start sub_080639A8
sub_080639A8: @ 0x080639A8
	ldr r2, _080639B0 @ =0x09F4E460
	str r2, [r0, #4]
	strh r1, [r0]
	bx lr
	.align 2, 0
_080639B0: .4byte 0x09F4E460

	thumb_func_start sub_080639B4
sub_080639B4: @ 0x080639B4
	push {lr}
	adds r2, r0, #0
	ldr r0, _080639D0 @ =0x09F4E460
	str r0, [r2, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080639CA
	adds r0, r2, #0
	bl __builtin_delete
_080639CA:
	pop {r0}
	bx r0
	.align 2, 0
_080639D0: .4byte 0x09F4E460

	thumb_func_start sub_080639D4
sub_080639D4: @ 0x080639D4
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_080639D8
sub_080639D8: @ 0x080639D8
	push {lr}
	ldr r2, [r0, #4]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x14]
	bl _call_via_r1
	movs r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _080639F4
	movs r1, #1
_080639F4:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080639FC
sub_080639FC: @ 0x080639FC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r3, _08063A70 @ =gUnknown_0200251C
	ldr r0, [r3]
	cmp r0, #0
	bne _08063A3E
	ldr r0, _08063A74 @ =gUnknown_02002508
	movs r1, #0x78
	movs r2, #0x50
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x7e
	movs r2, #0x5a
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x6a
	movs r2, #0x3c
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x38
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0xb8
	strh r1, [r0]
	strh r2, [r0, #2]
	movs r0, #1
	str r0, [r3]
_08063A3E:
	ldr r1, [r4, #4]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x1c]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08063A78
	ldr r1, [r4, #4]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r1, _08063A74 @ =gUnknown_02002508
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	b _08063A82
	.align 2, 0
_08063A70: .4byte gUnknown_0200251C
_08063A74: .4byte gUnknown_02002508
_08063A78:
	mov r2, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #2]
_08063A82:
	ldr r0, [sp]
	str r0, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08063A90
sub_08063A90: @ 0x08063A90
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x1c]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08063AC8
	ldr r4, _08063AC4 @ =gUnknown_080F87C8
	ldr r1, [r5, #4]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r0, [r0]
	b _08063ACA
	.align 2, 0
_08063AC4: .4byte gUnknown_080F87C8
_08063AC8:
	movs r0, #4
_08063ACA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08063AD0
sub_08063AD0: @ 0x08063AD0
	push {r4, r5, lr}
	movs r4, #0
_08063AD4:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08063D88 @ =sub_080A18AC
	bl sub_08063EB4
	adds r4, #1
	cmp r4, #0xff
	bls _08063AD4
	ldr r1, _08063D8C @ =sub_080A1828
	movs r0, #1
	bl sub_08063EB4
	ldr r1, _08063D90 @ =sub_080A1804
	movs r0, #5
	bl sub_08063EB4
	ldr r1, _08063D94 @ =sub_080A17E0
	movs r0, #0x32
	bl sub_08063EB4
	ldr r1, _08063D98 @ =sub_080A17BC
	movs r0, #0x31
	bl sub_08063EB4
	ldr r1, _08063D9C @ =sub_080A1798
	movs r0, #0x37
	bl sub_08063EB4
	ldr r1, _08063DA0 @ =sub_080A1774
	movs r0, #0x33
	bl sub_08063EB4
	ldr r1, _08063DA4 @ =sub_080A1750
	movs r0, #0x41
	bl sub_08063EB4
	ldr r1, _08063DA8 @ =sub_080A172C
	movs r0, #0x42
	bl sub_08063EB4
	ldr r1, _08063DAC @ =sub_080A1708
	movs r0, #2
	bl sub_08063EB4
	ldr r1, _08063DB0 @ =sub_080A16E4
	movs r0, #4
	bl sub_08063EB4
	ldr r1, _08063DB4 @ =sub_080A16C0
	movs r0, #3
	bl sub_08063EB4
	ldr r1, _08063DB8 @ =sub_080A169C
	movs r0, #0x4a
	bl sub_08063EB4
	ldr r1, _08063DBC @ =sub_080A1678
	movs r0, #0x52
	bl sub_08063EB4
	ldr r1, _08063DC0 @ =sub_080A1654
	movs r0, #0x5a
	bl sub_08063EB4
	ldr r1, _08063DC4 @ =sub_080A1630
	movs r0, #0x5b
	bl sub_08063EB4
	ldr r1, _08063DC8 @ =sub_080A160C
	movs r0, #0x95
	bl sub_08063EB4
	ldr r1, _08063DCC @ =sub_080A15E8
	movs r0, #6
	bl sub_08063EB4
	ldr r1, _08063DD0 @ =sub_080A15C4
	movs r0, #0x60
	bl sub_08063EB4
	ldr r1, _08063DD4 @ =sub_080A15A0
	movs r0, #0x62
	bl sub_08063EB4
	ldr r1, _08063DD8 @ =sub_080A157C
	movs r0, #0x6f
	bl sub_08063EB4
	ldr r1, _08063DDC @ =sub_080A1558
	movs r0, #0x69
	bl sub_08063EB4
	ldr r1, _08063DE0 @ =sub_080A1534
	movs r0, #0x3a
	bl sub_08063EB4
	ldr r1, _08063DE4 @ =sub_080A1510
	movs r0, #0x9b
	bl sub_08063EB4
	ldr r1, _08063DE8 @ =sub_080A14EC
	movs r0, #0x9c
	bl sub_08063EB4
	ldr r1, _08063DEC @ =sub_080A14C8
	movs r0, #0x10
	bl sub_08063EB4
	ldr r1, _08063DF0 @ =sub_080A14A4
	movs r0, #0x75
	bl sub_08063EB4
	ldr r1, _08063DF4 @ =sub_080A1480
	movs r0, #0x7f
	bl sub_08063EB4
	ldr r1, _08063DF8 @ =sub_080A145C
	movs r0, #0xe
	bl sub_08063EB4
	ldr r1, _08063DFC @ =sub_080A1438
	movs r0, #0xf
	bl sub_08063EB4
	ldr r1, _08063E00 @ =sub_080A1414
	movs r0, #0x25
	bl sub_08063EB4
	ldr r1, _08063E04 @ =sub_080A13F0
	movs r0, #0x86
	bl sub_08063EB4
	ldr r1, _08063E08 @ =sub_080A13CC
	movs r0, #0xa2
	bl sub_08063EB4
	ldr r1, _08063E0C @ =sub_080A13A8
	movs r0, #0x83
	bl sub_08063EB4
	ldr r1, _08063E10 @ =sub_080A1384
	movs r0, #0xa4
	bl sub_08063EB4
	ldr r1, _08063E14 @ =sub_080A1360
	movs r0, #0xa3
	bl sub_08063EB4
	ldr r1, _08063E18 @ =sub_080A133C
	movs r0, #0x7c
	bl sub_08063EB4
	ldr r1, _08063E1C @ =sub_080A1318
	movs r0, #7
	bl sub_08063EB4
	ldr r1, _08063E20 @ =sub_080A12F4
	movs r0, #0x76
	bl sub_08063EB4
	ldr r1, _08063E24 @ =sub_080A12D0
	movs r0, #0x7d
	bl sub_08063EB4
	ldr r1, _08063E28 @ =sub_080A12AC
	movs r0, #0xac
	bl sub_08063EB4
	ldr r1, _08063E2C @ =sub_080A1288
	movs r0, #0x39
	bl sub_08063EB4
	ldr r1, _08063E30 @ =sub_080A1264
	movs r0, #0x38
	bl sub_08063EB4
	ldr r1, _08063E34 @ =sub_080A1240
	movs r0, #0x8e
	bl sub_08063EB4
	ldr r1, _08063E38 @ =sub_080A121C
	movs r0, #0x21
	bl sub_08063EB4
	ldr r1, _08063E3C @ =sub_080A11F8
	movs r0, #0x23
	bl sub_08063EB4
	ldr r1, _08063E40 @ =sub_080A11D4
	movs r0, #0x46
	bl sub_08063EB4
	ldr r1, _08063E44 @ =sub_080A11B0
	movs r0, #0x16
	bl sub_08063EB4
	ldr r1, _08063E48 @ =sub_080A118C
	movs r0, #0xad
	bl sub_08063EB4
	ldr r1, _08063E4C @ =sub_080A1168
	movs r0, #0x90
	bl sub_08063EB4
	ldr r1, _08063E50 @ =sub_080A1144
	movs r0, #0xae
	bl sub_08063EB4
	ldr r1, _08063E54 @ =sub_080A1120
	movs r0, #0x65
	bl sub_08063EB4
	ldr r1, _08063E58 @ =sub_080A10FC
	movs r0, #0x5c
	bl sub_08063EB4
	ldr r1, _08063E5C @ =sub_080A10D8
	movs r0, #9
	bl sub_08063EB4
	ldr r1, _08063E60 @ =sub_080A10B4
	movs r0, #0x7a
	bl sub_08063EB4
	ldr r1, _08063E64 @ =sub_080A1090
	movs r0, #0x17
	bl sub_08063EB4
	ldr r1, _08063E68 @ =sub_080A106C
	movs r0, #0xb6
	bl sub_08063EB4
	ldr r1, _08063E6C @ =sub_080A1048
	movs r0, #0x85
	bl sub_08063EB4
	ldr r1, _08063E70 @ =sub_080A1024
	movs r0, #0x72
	bl sub_08063EB4
	ldr r1, _08063E74 @ =sub_080A1000
	movs r0, #0x54
	bl sub_08063EB4
	ldr r1, _08063E78 @ =sub_080A0FB8
	movs r0, #0xa6
	bl sub_08063EB4
	ldr r1, _08063E7C @ =sub_080A0FDC
	movs r0, #0x19
	bl sub_08063EB4
	ldr r1, _08063E80 @ =sub_080A0F94
	movs r0, #0xd
	bl sub_08063EB4
	ldr r1, _08063E84 @ =sub_080A0F70
	movs r0, #0x1c
	bl sub_08063EB4
	ldr r1, _08063E88 @ =sub_080A0F4C
	movs r0, #0xaa
	bl sub_08063EB4
	ldr r1, _08063E8C @ =sub_080A0F04
	movs r0, #0x87
	bl sub_08063EB4
	ldr r1, _08063E90 @ =sub_080A0F28
	movs r0, #0xb7
	bl sub_08063EB4
	ldr r1, _08063E94 @ =sub_080A0EE0
	movs r0, #0xab
	bl sub_08063EB4
	ldr r1, _08063E98 @ =sub_080A0EBC
	movs r0, #0xc
	bl sub_08063EB4
	ldr r4, _08063E9C @ =sub_080A0E98
	movs r0, #0x2e
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0x2e
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0x13
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0x1a
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0xbb
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0xbc
	adds r1, r4, #0
	bl sub_08063EB4
	ldr r5, _08063EA0 @ =sub_080A0E74
	movs r0, #0xa9
	adds r1, r5, #0
	bl sub_08063EB4
	movs r0, #0x91
	adds r1, r5, #0
	bl sub_08063EB4
	movs r0, #0x1b
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0xb4
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0xb5
	adds r1, r4, #0
	bl sub_08063EB4
	ldr r1, _08063EA4 @ =sub_080A0E50
	movs r0, #0xb
	bl sub_08063EB4
	ldr r1, _08063EA8 @ =sub_080A0E2C
	movs r0, #0x11
	bl sub_08063EB4
	ldr r1, _08063EAC @ =sub_080A0E08
	movs r0, #0xbd
	bl sub_08063EB4
	ldr r1, _08063EB0 @ =sub_080A0DE4
	movs r0, #0xbe
	bl sub_08063EB4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08063D88: .4byte sub_080A18AC
_08063D8C: .4byte sub_080A1828
_08063D90: .4byte sub_080A1804
_08063D94: .4byte sub_080A17E0
_08063D98: .4byte sub_080A17BC
_08063D9C: .4byte sub_080A1798
_08063DA0: .4byte sub_080A1774
_08063DA4: .4byte sub_080A1750
_08063DA8: .4byte sub_080A172C
_08063DAC: .4byte sub_080A1708
_08063DB0: .4byte sub_080A16E4
_08063DB4: .4byte sub_080A16C0
_08063DB8: .4byte sub_080A169C
_08063DBC: .4byte sub_080A1678
_08063DC0: .4byte sub_080A1654
_08063DC4: .4byte sub_080A1630
_08063DC8: .4byte sub_080A160C
_08063DCC: .4byte sub_080A15E8
_08063DD0: .4byte sub_080A15C4
_08063DD4: .4byte sub_080A15A0
_08063DD8: .4byte sub_080A157C
_08063DDC: .4byte sub_080A1558
_08063DE0: .4byte sub_080A1534
_08063DE4: .4byte sub_080A1510
_08063DE8: .4byte sub_080A14EC
_08063DEC: .4byte sub_080A14C8
_08063DF0: .4byte sub_080A14A4
_08063DF4: .4byte sub_080A1480
_08063DF8: .4byte sub_080A145C
_08063DFC: .4byte sub_080A1438
_08063E00: .4byte sub_080A1414
_08063E04: .4byte sub_080A13F0
_08063E08: .4byte sub_080A13CC
_08063E0C: .4byte sub_080A13A8
_08063E10: .4byte sub_080A1384
_08063E14: .4byte sub_080A1360
_08063E18: .4byte sub_080A133C
_08063E1C: .4byte sub_080A1318
_08063E20: .4byte sub_080A12F4
_08063E24: .4byte sub_080A12D0
_08063E28: .4byte sub_080A12AC
_08063E2C: .4byte sub_080A1288
_08063E30: .4byte sub_080A1264
_08063E34: .4byte sub_080A1240
_08063E38: .4byte sub_080A121C
_08063E3C: .4byte sub_080A11F8
_08063E40: .4byte sub_080A11D4
_08063E44: .4byte sub_080A11B0
_08063E48: .4byte sub_080A118C
_08063E4C: .4byte sub_080A1168
_08063E50: .4byte sub_080A1144
_08063E54: .4byte sub_080A1120
_08063E58: .4byte sub_080A10FC
_08063E5C: .4byte sub_080A10D8
_08063E60: .4byte sub_080A10B4
_08063E64: .4byte sub_080A1090
_08063E68: .4byte sub_080A106C
_08063E6C: .4byte sub_080A1048
_08063E70: .4byte sub_080A1024
_08063E74: .4byte sub_080A1000
_08063E78: .4byte sub_080A0FB8
_08063E7C: .4byte sub_080A0FDC
_08063E80: .4byte sub_080A0F94
_08063E84: .4byte sub_080A0F70
_08063E88: .4byte sub_080A0F4C
_08063E8C: .4byte sub_080A0F04
_08063E90: .4byte sub_080A0F28
_08063E94: .4byte sub_080A0EE0
_08063E98: .4byte sub_080A0EBC
_08063E9C: .4byte sub_080A0E98
_08063EA0: .4byte sub_080A0E74
_08063EA4: .4byte sub_080A0E50
_08063EA8: .4byte sub_080A0E2C
_08063EAC: .4byte sub_080A0E08
_08063EB0: .4byte sub_080A0DE4

	thumb_func_start sub_08063EB4
sub_08063EB4: @ 0x08063EB4
	lsls r0, r0, #0x10
	ldr r2, _08063EC0 @ =gUnknown_02002540
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08063EC0: .4byte gUnknown_02002540

	thumb_func_start sub_08063EC4
sub_08063EC4: @ 0x08063EC4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08063EE0 @ =gUnknown_02002540
	lsls r2, r1, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_08063EE0: .4byte gUnknown_02002540

	thumb_func_start sub_08063EE4
sub_08063EE4: @ 0x08063EE4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	movs r4, #0
	ldr r5, _080642D4 @ =0x00000289
_08063EEE:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080642D8 @ =sub_080AFD04
	bl sub_08064564
	adds r4, #1
	cmp r4, r5
	bls _08063EEE
	ldr r1, _080642DC @ =sub_080AF744
	movs r0, #0xf0
	bl sub_08064564
	movs r0, #0x99
	lsls r0, r0, #1
	ldr r1, _080642E0 @ =sub_080AFCE4
	mov r8, r1
	bl sub_08064564
	movs r0, #0x96
	mov r1, r8
	bl sub_08064564
	ldr r5, _080642E4 @ =sub_080AFCC4
	movs r0, #0x78
	adds r1, r5, #0
	bl sub_08064564
	ldr r1, _080642E8 @ =sub_080AFCA4
	movs r0, #0x7b
	bl sub_08064564
	ldr r0, _080642EC @ =0x00000141
	ldr r1, _080642F0 @ =sub_080AFC84
	bl sub_08064564
	ldr r0, _080642F4 @ =0x00000153
	ldr r4, _080642F8 @ =sub_080AFC64
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xd9
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_08064564
	ldr r0, _080642FC @ =0x00000101
	ldr r1, _08064300 @ =sub_080AFC44
	bl sub_08064564
	movs r0, #0x99
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_08064564
	ldr r4, _08064304 @ =sub_080AFC24
	movs r0, #0x79
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xb8
	lsls r0, r0, #1
	ldr r1, _08064308 @ =sub_080AFC04
	bl sub_08064564
	movs r0, #0x8a
	lsls r0, r0, #1
	ldr r1, _0806430C @ =sub_080AFBE4
	bl sub_08064564
	ldr r0, _08064310 @ =0x00000215
	ldr r1, _08064314 @ =sub_080AFBC4
	bl sub_08064564
	ldr r0, _08064318 @ =0x0000022A
	ldr r1, _0806431C @ =sub_080AFB84
	bl sub_08064564
	movs r0, #0xce
	lsls r0, r0, #1
	ldr r6, _08064320 @ =sub_080AFBA4
	adds r1, r6, #0
	bl sub_08064564
	movs r0, #0x57
	mov r1, r8
	bl sub_08064564
	movs r0, #0xd3
	lsls r0, r0, #1
	ldr r1, _08064324 @ =sub_080AFB64
	bl sub_08064564
	movs r0, #0xeb
	lsls r0, r0, #1
	mov r1, r8
	bl sub_08064564
	ldr r0, _08064328 @ =0x0000026B
	adds r1, r4, #0
	bl sub_08064564
	ldr r5, _0806432C @ =sub_080AFB44
	movs r0, #3
	adds r1, r5, #0
	bl sub_08064564
	movs r0, #0xb1
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_08064564
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_08064564
	ldr r0, _08064330 @ =0x00000139
	ldr r1, _08064334 @ =sub_080AFB24
	bl sub_08064564
	ldr r0, _08064338 @ =0x00000147
	ldr r1, _0806433C @ =sub_080AFB04
	bl sub_08064564
	ldr r0, _08064340 @ =0x0000010F
	adds r1, r5, #0
	bl sub_08064564
	ldr r0, _08064344 @ =0x0000015D
	ldr r1, _08064348 @ =sub_080AFAE4
	bl sub_08064564
	movs r0, #0xaf
	lsls r0, r0, #1
	ldr r1, _0806434C @ =sub_080AFAC4
	bl sub_08064564
	ldr r0, _08064350 @ =0x000001DD
	ldr r4, _08064354 @ =sub_080AFAA4
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _08064358 @ =0x000001E5
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _0806435C @ =0x00000125
	ldr r1, _08064360 @ =sub_080AFA84
	bl sub_08064564
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_08064564
	ldr r0, _08064364 @ =0x00000117
	ldr r1, _08064368 @ =sub_080AFA64
	bl sub_08064564
	ldr r0, _0806436C @ =0x0000019B
	adds r1, r6, #0
	bl sub_08064564
	ldr r0, _08064370 @ =0x00000202
	adds r1, r6, #0
	bl sub_08064564
	ldr r0, _08064374 @ =0x00000203
	adds r1, r6, #0
	bl sub_08064564
	movs r0, #0x81
	lsls r0, r0, #2
	adds r1, r6, #0
	bl sub_08064564
	ldr r0, _08064378 @ =0x00000205
	adds r1, r6, #0
	bl sub_08064564
	ldr r0, _0806437C @ =0x00000279
	ldr r4, _08064380 @ =sub_080AFA44
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _08064384 @ =0x0000027A
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xf7
	lsls r0, r0, #1
	ldr r4, _08064388 @ =sub_080AFA24
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _0806438C @ =0x00000242
	adds r1, r4, #0
	bl sub_08064564
	ldr r1, _08064390 @ =sub_080AFA04
	movs r0, #0x7c
	bl sub_08064564
	ldr r4, _08064394 @ =sub_080AF9E4
	movs r0, #0x62
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0x63
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0x64
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0x65
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _08064398 @ =0x00000197
	ldr r4, _0806439C @ =sub_080AF9C4
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _080643A0 @ =0x00000195
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xdd
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _080643A4 @ =0x000001BB
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xde
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _080643A8 @ =0x000001BD
	ldr r1, _080643AC @ =sub_080AF9A4
	bl sub_08064564
	movs r0, #0x91
	lsls r0, r0, #1
	ldr r1, _080643B0 @ =sub_080AF984
	bl sub_08064564
	ldr r1, _080643B4 @ =sub_080AF964
	movs r0, #0x69
	bl sub_08064564
	ldr r0, _080643B8 @ =sub_080AF944
	mov r8, r0
	movs r0, #0xae
	mov r1, r8
	bl sub_08064564
	ldr r1, _080643BC @ =sub_080AF924
	movs r0, #0x66
	bl sub_08064564
	movs r0, #0xaf
	mov r1, r8
	bl sub_08064564
	ldr r0, _080643C0 @ =0x0000018F
	ldr r6, _080643C4 @ =sub_080AF904
	adds r1, r6, #0
	bl sub_08064564
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_08064564
	ldr r4, _080643C8 @ =sub_080AF8E4
	movs r0, #0xb5
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xb6
	adds r1, r4, #0
	bl sub_08064564
	ldr r5, _080643CC @ =sub_080AF8C4
	movs r0, #0xb9
	adds r1, r5, #0
	bl sub_08064564
	movs r0, #0xba
	adds r1, r5, #0
	bl sub_08064564
	movs r0, #0xfa
	lsls r0, r0, #1
	mov r1, r8
	bl sub_08064564
	ldr r0, _080643D0 @ =0x000001A5
	adds r1, r6, #0
	bl sub_08064564
	ldr r0, _080643D4 @ =0x00000241
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _080643D8 @ =0x00000235
	mov r1, r8
	bl sub_08064564
	ldr r0, _080643DC @ =0x000001A9
	adds r1, r5, #0
	bl sub_08064564
	movs r0, #0x9e
	lsls r0, r0, #2
	ldr r1, _080643E0 @ =sub_080AF8A4
	bl sub_08064564
	movs r0, #0xd2
	lsls r0, r0, #1
	ldr r1, _080643E4 @ =sub_080AF884
	bl sub_08064564
	ldr r0, _080643E8 @ =0x0000026E
	ldr r4, _080643EC @ =sub_080AF864
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xc7
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0x8c
	adds r1, r4, #0
	bl sub_08064564
	ldr r1, _080643F0 @ =sub_080AF844
	movs r0, #0x50
	bl sub_08064564
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r1, _080643F4 @ =sub_080AF824
	bl sub_08064564
	ldr r4, _080643F8 @ =sub_080AF804
	movs r0, #0x92
	adds r1, r4, #0
	bl sub_08064564
	ldr r1, _080643FC @ =sub_080AF7E4
	movs r0, #0x90
	bl sub_08064564
	movs r0, #0x93
	adds r1, r4, #0
	bl sub_08064564
	ldr r1, _08064400 @ =sub_080AF7C4
	movs r0, #1
	bl sub_08064564
	ldr r1, _08064404 @ =sub_080AF7A4
	movs r0, #0xf1
	bl sub_08064564
	ldr r1, _08064408 @ =sub_080AF784
	movs r0, #0xc3
	bl sub_08064564
	ldr r0, _0806440C @ =0x00000209
	ldr r5, _08064410 @ =sub_080AF764
	adds r1, r5, #0
	bl sub_08064564
	ldr r1, _08064414 @ =sub_080AF724
	movs r0, #0x45
	bl sub_08064564
	ldr r0, _08064418 @ =0x00000103
	ldr r1, _0806441C @ =sub_080AF704
	bl sub_08064564
	movs r0, #0xa5
	lsls r0, r0, #1
	ldr r1, _08064420 @ =sub_080AF6E4
	bl sub_08064564
	ldr r1, _08064424 @ =sub_080AF6C4
	movs r0, #0xde
	bl sub_08064564
	movs r0, #0xa2
	lsls r0, r0, #1
	ldr r1, _08064428 @ =sub_080AF6A4
	bl sub_08064564
	ldr r1, _0806442C @ =sub_080AF684
	movs r0, #0xf2
	bl sub_08064564
	ldr r0, _08064430 @ =0x0000014D
	ldr r1, _08064434 @ =sub_080AF664
	bl sub_08064564
	movs r0, #0xab
	lsls r0, r0, #1
	ldr r1, _08064438 @ =sub_080AF644
	bl sub_08064564
	ldr r1, _0806443C @ =sub_080AF624
	movs r0, #0x51
	bl sub_08064564
	ldr r0, _08064440 @ =0x0000020E
	ldr r1, _08064444 @ =sub_080AF604
	bl sub_08064564
	ldr r1, _08064448 @ =sub_080AF5E4
	movs r0, #0xc4
	bl sub_08064564
	ldr r1, _0806444C @ =sub_080AF5C4
	movs r0, #0xb7
	bl sub_08064564
	ldr r1, _08064450 @ =sub_080AF5A4
	movs r0, #0xd2
	bl sub_08064564
	ldr r1, _08064454 @ =sub_080AF584
	movs r0, #0x94
	bl sub_08064564
	ldr r0, _08064458 @ =0x0000011D
	ldr r1, _0806445C @ =sub_080AF564
	bl sub_08064564
	movs r0, #0x8f
	lsls r0, r0, #1
	ldr r1, _08064460 @ =sub_080AF544
	bl sub_08064564
	movs r0, #0x95
	lsls r0, r0, #1
	ldr r1, _08064464 @ =sub_080AF524
	bl sub_08064564
	ldr r0, _08064468 @ =0x0000012B
	ldr r1, _0806446C @ =sub_080AF504
	bl sub_08064564
	ldr r0, _08064470 @ =0x000001E7
	ldr r1, _08064474 @ =sub_080AF4E4
	bl sub_08064564
	movs r0, #0xb5
	lsls r0, r0, #1
	ldr r1, _08064478 @ =sub_080AF4C4
	bl sub_08064564
	movs r0, #0xb9
	lsls r0, r0, #1
	ldr r1, _0806447C @ =sub_080AF4A4
	bl sub_08064564
	ldr r1, _08064480 @ =sub_080AF484
	movs r0, #0xe0
	bl sub_08064564
	ldr r1, _08064484 @ =sub_080AF464
	movs r0, #0x43
	bl sub_08064564
	movs r0, #0xe9
	lsls r0, r0, #1
	ldr r1, _08064488 @ =sub_080AF444
	bl sub_08064564
	movs r0, #0xb3
	lsls r0, r0, #1
	ldr r1, _0806448C @ =sub_080AF424
	bl sub_08064564
	ldr r0, _08064490 @ =0x0000020D
	b _08064494
	.align 2, 0
_080642D4: .4byte 0x00000289
_080642D8: .4byte sub_080AFD04
_080642DC: .4byte sub_080AF744
_080642E0: .4byte sub_080AFCE4
_080642E4: .4byte sub_080AFCC4
_080642E8: .4byte sub_080AFCA4
_080642EC: .4byte 0x00000141
_080642F0: .4byte sub_080AFC84
_080642F4: .4byte 0x00000153
_080642F8: .4byte sub_080AFC64
_080642FC: .4byte 0x00000101
_08064300: .4byte sub_080AFC44
_08064304: .4byte sub_080AFC24
_08064308: .4byte sub_080AFC04
_0806430C: .4byte sub_080AFBE4
_08064310: .4byte 0x00000215
_08064314: .4byte sub_080AFBC4
_08064318: .4byte 0x0000022A
_0806431C: .4byte sub_080AFB84
_08064320: .4byte sub_080AFBA4
_08064324: .4byte sub_080AFB64
_08064328: .4byte 0x0000026B
_0806432C: .4byte sub_080AFB44
_08064330: .4byte 0x00000139
_08064334: .4byte sub_080AFB24
_08064338: .4byte 0x00000147
_0806433C: .4byte sub_080AFB04
_08064340: .4byte 0x0000010F
_08064344: .4byte 0x0000015D
_08064348: .4byte sub_080AFAE4
_0806434C: .4byte sub_080AFAC4
_08064350: .4byte 0x000001DD
_08064354: .4byte sub_080AFAA4
_08064358: .4byte 0x000001E5
_0806435C: .4byte 0x00000125
_08064360: .4byte sub_080AFA84
_08064364: .4byte 0x00000117
_08064368: .4byte sub_080AFA64
_0806436C: .4byte 0x0000019B
_08064370: .4byte 0x00000202
_08064374: .4byte 0x00000203
_08064378: .4byte 0x00000205
_0806437C: .4byte 0x00000279
_08064380: .4byte sub_080AFA44
_08064384: .4byte 0x0000027A
_08064388: .4byte sub_080AFA24
_0806438C: .4byte 0x00000242
_08064390: .4byte sub_080AFA04
_08064394: .4byte sub_080AF9E4
_08064398: .4byte 0x00000197
_0806439C: .4byte sub_080AF9C4
_080643A0: .4byte 0x00000195
_080643A4: .4byte 0x000001BB
_080643A8: .4byte 0x000001BD
_080643AC: .4byte sub_080AF9A4
_080643B0: .4byte sub_080AF984
_080643B4: .4byte sub_080AF964
_080643B8: .4byte sub_080AF944
_080643BC: .4byte sub_080AF924
_080643C0: .4byte 0x0000018F
_080643C4: .4byte sub_080AF904
_080643C8: .4byte sub_080AF8E4
_080643CC: .4byte sub_080AF8C4
_080643D0: .4byte 0x000001A5
_080643D4: .4byte 0x00000241
_080643D8: .4byte 0x00000235
_080643DC: .4byte 0x000001A9
_080643E0: .4byte sub_080AF8A4
_080643E4: .4byte sub_080AF884
_080643E8: .4byte 0x0000026E
_080643EC: .4byte sub_080AF864
_080643F0: .4byte sub_080AF844
_080643F4: .4byte sub_080AF824
_080643F8: .4byte sub_080AF804
_080643FC: .4byte sub_080AF7E4
_08064400: .4byte sub_080AF7C4
_08064404: .4byte sub_080AF7A4
_08064408: .4byte sub_080AF784
_0806440C: .4byte 0x00000209
_08064410: .4byte sub_080AF764
_08064414: .4byte sub_080AF724
_08064418: .4byte 0x00000103
_0806441C: .4byte sub_080AF704
_08064420: .4byte sub_080AF6E4
_08064424: .4byte sub_080AF6C4
_08064428: .4byte sub_080AF6A4
_0806442C: .4byte sub_080AF684
_08064430: .4byte 0x0000014D
_08064434: .4byte sub_080AF664
_08064438: .4byte sub_080AF644
_0806443C: .4byte sub_080AF624
_08064440: .4byte 0x0000020E
_08064444: .4byte sub_080AF604
_08064448: .4byte sub_080AF5E4
_0806444C: .4byte sub_080AF5C4
_08064450: .4byte sub_080AF5A4
_08064454: .4byte sub_080AF584
_08064458: .4byte 0x0000011D
_0806445C: .4byte sub_080AF564
_08064460: .4byte sub_080AF544
_08064464: .4byte sub_080AF524
_08064468: .4byte 0x0000012B
_0806446C: .4byte sub_080AF504
_08064470: .4byte 0x000001E7
_08064474: .4byte sub_080AF4E4
_08064478: .4byte sub_080AF4C4
_0806447C: .4byte sub_080AF4A4
_08064480: .4byte sub_080AF484
_08064484: .4byte sub_080AF464
_08064488: .4byte sub_080AF444
_0806448C: .4byte sub_080AF424
_08064490: .4byte 0x0000020D
_08064494:
	adds r1, r5, #0
	bl sub_08064564
	movs r0, #0xc4
	lsls r0, r0, #1
	ldr r1, _08064518 @ =sub_080AF404
	bl sub_08064564
	ldr r0, _0806451C @ =0x00000189
	ldr r1, _08064520 @ =sub_080AF3E4
	bl sub_08064564
	ldr r0, _08064524 @ =0x000001FB
	ldr r4, _08064528 @ =sub_080AF3C4
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _0806452C @ =0x000001FD
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _08064530 @ =0x0000023B
	adds r1, r5, #0
	bl sub_08064564
	ldr r0, _08064534 @ =0x0000010D
	ldr r1, _08064538 @ =sub_080AF3A4
	bl sub_08064564
	movs r0, #0x83
	lsls r0, r0, #2
	ldr r1, _0806453C @ =sub_080AF384
	bl sub_08064564
	ldr r0, _08064540 @ =0x00000237
	ldr r1, _08064544 @ =sub_080AF364
	bl sub_08064564
	ldr r0, _08064548 @ =0x00000243
	ldr r1, _0806454C @ =sub_080AF344
	bl sub_08064564
	ldr r0, _08064550 @ =0x0000023A
	ldr r1, _08064554 @ =sub_080AF324
	bl sub_08064564
	movs r0, #0x9b
	lsls r0, r0, #2
	ldr r1, _08064558 @ =sub_080AF304
	bl sub_08064564
	ldr r0, _0806455C @ =0x0000026D
	ldr r1, _08064560 @ =sub_080AF2E4
	bl sub_08064564
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064518: .4byte sub_080AF404
_0806451C: .4byte 0x00000189
_08064520: .4byte sub_080AF3E4
_08064524: .4byte 0x000001FB
_08064528: .4byte sub_080AF3C4
_0806452C: .4byte 0x000001FD
_08064530: .4byte 0x0000023B
_08064534: .4byte 0x0000010D
_08064538: .4byte sub_080AF3A4
_0806453C: .4byte sub_080AF384
_08064540: .4byte 0x00000237
_08064544: .4byte sub_080AF364
_08064548: .4byte 0x00000243
_0806454C: .4byte sub_080AF344
_08064550: .4byte 0x0000023A
_08064554: .4byte sub_080AF324
_08064558: .4byte sub_080AF304
_0806455C: .4byte 0x0000026D
_08064560: .4byte sub_080AF2E4

	thumb_func_start sub_08064564
sub_08064564: @ 0x08064564
	lsls r0, r0, #0x10
	ldr r2, _08064570 @ =gUnknown_02002978
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08064570: .4byte gUnknown_02002978

	thumb_func_start sub_08064574
sub_08064574: @ 0x08064574
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0806458C @ =gUnknown_02002978
	lsls r2, r0, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_0806458C: .4byte gUnknown_02002978

	thumb_func_start sub_08064590
sub_08064590: @ 0x08064590
	push {r4, lr}
	movs r4, #0
_08064594:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806473C @ =sub_080B56A0
	bl sub_08064808
	adds r4, #1
	cmp r4, #0x3f
	bls _08064594
	ldr r1, _08064740 @ =sub_080B5680
	movs r0, #1
	bl sub_08064808
	ldr r1, _08064744 @ =sub_080B5660
	movs r0, #9
	bl sub_08064808
	ldr r1, _08064748 @ =sub_080B5640
	movs r0, #0x16
	bl sub_08064808
	ldr r1, _0806474C @ =sub_080B5620
	movs r0, #0x17
	bl sub_08064808
	ldr r1, _08064750 @ =sub_080B5600
	movs r0, #0x18
	bl sub_08064808
	ldr r1, _08064754 @ =sub_080B55E0
	movs r0, #0x19
	bl sub_08064808
	ldr r1, _08064758 @ =sub_080B55C0
	movs r0, #0x1a
	bl sub_08064808
	ldr r1, _0806475C @ =sub_080B55A0
	movs r0, #0x23
	bl sub_08064808
	ldr r1, _08064760 @ =sub_080B5580
	movs r0, #0x30
	bl sub_08064808
	ldr r1, _08064764 @ =sub_080B5560
	movs r0, #0x26
	bl sub_08064808
	ldr r1, _08064768 @ =sub_080B5540
	movs r0, #2
	bl sub_08064808
	ldr r1, _0806476C @ =sub_080B5520
	movs r0, #3
	bl sub_08064808
	ldr r1, _08064770 @ =sub_080B5500
	movs r0, #6
	bl sub_08064808
	ldr r1, _08064774 @ =sub_080B54E0
	movs r0, #7
	bl sub_08064808
	ldr r1, _08064778 @ =sub_080B54C0
	movs r0, #0xa
	bl sub_08064808
	ldr r1, _0806477C @ =sub_080B54A0
	movs r0, #0xe
	bl sub_08064808
	ldr r1, _08064780 @ =sub_080B5480
	movs r0, #0xf
	bl sub_08064808
	ldr r1, _08064784 @ =sub_080B5460
	movs r0, #0x20
	bl sub_08064808
	ldr r1, _08064788 @ =sub_080B5440
	movs r0, #0xc
	bl sub_08064808
	ldr r1, _0806478C @ =sub_080B5420
	movs r0, #0x27
	bl sub_08064808
	ldr r1, _08064790 @ =sub_080B5400
	movs r0, #0xd
	bl sub_08064808
	ldr r1, _08064794 @ =sub_080B53E0
	movs r0, #0x33
	bl sub_08064808
	ldr r1, _08064798 @ =sub_080B53C0
	movs r0, #5
	bl sub_08064808
	ldr r1, _0806479C @ =sub_080B53A0
	movs r0, #8
	bl sub_08064808
	ldr r1, _080647A0 @ =sub_080B5380
	movs r0, #0x10
	bl sub_08064808
	ldr r1, _080647A4 @ =sub_080B5360
	movs r0, #0x12
	bl sub_08064808
	ldr r1, _080647A8 @ =sub_080B5340
	movs r0, #0x21
	bl sub_08064808
	ldr r1, _080647AC @ =sub_080B5320
	movs r0, #0x13
	bl sub_08064808
	ldr r1, _080647B0 @ =sub_080B5300
	movs r0, #0x14
	bl sub_08064808
	ldr r1, _080647B4 @ =sub_080B52E0
	movs r0, #0x22
	bl sub_08064808
	ldr r1, _080647B8 @ =sub_080B52C0
	movs r0, #0x15
	bl sub_08064808
	ldr r1, _080647BC @ =sub_080B52A0
	movs r0, #0x1b
	bl sub_08064808
	ldr r1, _080647C0 @ =sub_080B5280
	movs r0, #0x31
	bl sub_08064808
	ldr r1, _080647C4 @ =sub_080B5260
	movs r0, #0x1c
	bl sub_08064808
	ldr r1, _080647C8 @ =sub_080B5240
	movs r0, #0x1d
	bl sub_08064808
	ldr r1, _080647CC @ =sub_080B5220
	movs r0, #0x32
	bl sub_08064808
	ldr r1, _080647D0 @ =sub_080B5200
	movs r0, #0x1e
	bl sub_08064808
	ldr r1, _080647D4 @ =sub_080B51E0
	movs r0, #0x24
	bl sub_08064808
	ldr r1, _080647D8 @ =sub_080B51C0
	movs r0, #0x25
	bl sub_08064808
	ldr r1, _080647DC @ =sub_080B51A0
	movs r0, #0x28
	bl sub_08064808
	ldr r1, _080647E0 @ =sub_080B5180
	movs r0, #0x29
	bl sub_08064808
	ldr r1, _080647E4 @ =sub_080B5160
	movs r0, #0x2a
	bl sub_08064808
	ldr r1, _080647E8 @ =sub_080B5140
	movs r0, #0x2b
	bl sub_08064808
	ldr r1, _080647EC @ =sub_080B5120
	movs r0, #0x2c
	bl sub_08064808
	ldr r1, _080647F0 @ =sub_080B5100
	movs r0, #0x2d
	bl sub_08064808
	ldr r1, _080647F4 @ =sub_080B50E0
	movs r0, #0x2e
	bl sub_08064808
	ldr r1, _080647F8 @ =sub_080B50C0
	movs r0, #0x2f
	bl sub_08064808
	ldr r1, _080647FC @ =sub_080B50A0
	movs r0, #4
	bl sub_08064808
	ldr r1, _08064800 @ =sub_080B5080
	movs r0, #0xb
	bl sub_08064808
	ldr r1, _08064804 @ =sub_080B5060
	movs r0, #0x11
	bl sub_08064808
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806473C: .4byte sub_080B56A0
_08064740: .4byte sub_080B5680
_08064744: .4byte sub_080B5660
_08064748: .4byte sub_080B5640
_0806474C: .4byte sub_080B5620
_08064750: .4byte sub_080B5600
_08064754: .4byte sub_080B55E0
_08064758: .4byte sub_080B55C0
_0806475C: .4byte sub_080B55A0
_08064760: .4byte sub_080B5580
_08064764: .4byte sub_080B5560
_08064768: .4byte sub_080B5540
_0806476C: .4byte sub_080B5520
_08064770: .4byte sub_080B5500
_08064774: .4byte sub_080B54E0
_08064778: .4byte sub_080B54C0
_0806477C: .4byte sub_080B54A0
_08064780: .4byte sub_080B5480
_08064784: .4byte sub_080B5460
_08064788: .4byte sub_080B5440
_0806478C: .4byte sub_080B5420
_08064790: .4byte sub_080B5400
_08064794: .4byte sub_080B53E0
_08064798: .4byte sub_080B53C0
_0806479C: .4byte sub_080B53A0
_080647A0: .4byte sub_080B5380
_080647A4: .4byte sub_080B5360
_080647A8: .4byte sub_080B5340
_080647AC: .4byte sub_080B5320
_080647B0: .4byte sub_080B5300
_080647B4: .4byte sub_080B52E0
_080647B8: .4byte sub_080B52C0
_080647BC: .4byte sub_080B52A0
_080647C0: .4byte sub_080B5280
_080647C4: .4byte sub_080B5260
_080647C8: .4byte sub_080B5240
_080647CC: .4byte sub_080B5220
_080647D0: .4byte sub_080B5200
_080647D4: .4byte sub_080B51E0
_080647D8: .4byte sub_080B51C0
_080647DC: .4byte sub_080B51A0
_080647E0: .4byte sub_080B5180
_080647E4: .4byte sub_080B5160
_080647E8: .4byte sub_080B5140
_080647EC: .4byte sub_080B5120
_080647F0: .4byte sub_080B5100
_080647F4: .4byte sub_080B50E0
_080647F8: .4byte sub_080B50C0
_080647FC: .4byte sub_080B50A0
_08064800: .4byte sub_080B5080
_08064804: .4byte sub_080B5060

	thumb_func_start sub_08064808
sub_08064808: @ 0x08064808
	lsls r0, r0, #0x10
	ldr r2, _08064814 @ =gUnknown_020033A0
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08064814: .4byte gUnknown_020033A0

	thumb_func_start sub_08064818
sub_08064818: @ 0x08064818
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08064830 @ =gUnknown_020033A0
	lsls r2, r0, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_08064830: .4byte gUnknown_020033A0

	thumb_func_start sub_08064834
sub_08064834: @ 0x08064834
	push {r4, lr}
	movs r4, #0
_08064838:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08064908 @ =sub_080BC324
	bl sub_08064940
	adds r4, #1
	cmp r4, #0xff
	bls _08064838
	ldr r4, _0806490C @ =sub_080BC304
	movs r0, #0xf
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x10
	adds r1, r4, #0
	bl sub_08064940
	ldr r4, _08064910 @ =sub_080BC2E4
	movs r0, #0x11
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x12
	adds r1, r4, #0
	bl sub_08064940
	ldr r1, _08064914 @ =sub_080BC2C4
	movs r0, #0x13
	bl sub_08064940
	ldr r4, _08064918 @ =sub_080BC2A4
	movs r0, #0x1f
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x20
	adds r1, r4, #0
	bl sub_08064940
	ldr r1, _0806491C @ =sub_080BC284
	movs r0, #0x18
	bl sub_08064940
	ldr r1, _08064920 @ =sub_080BC264
	movs r0, #5
	bl sub_08064940
	ldr r4, _08064924 @ =sub_080BC244
	movs r0, #0x22
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x23
	adds r1, r4, #0
	bl sub_08064940
	ldr r4, _08064928 @ =sub_080BC224
	movs r0, #0x24
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x25
	adds r1, r4, #0
	bl sub_08064940
	ldr r4, _0806492C @ =sub_080BC204
	movs r0, #0x26
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x27
	adds r1, r4, #0
	bl sub_08064940
	ldr r4, _08064930 @ =sub_080BC1E4
	movs r0, #0x28
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x29
	adds r1, r4, #0
	bl sub_08064940
	ldr r1, _08064934 @ =sub_080BC1C4
	movs r0, #0x1b
	bl sub_08064940
	ldr r1, _08064938 @ =sub_080BC1A4
	movs r0, #0x1c
	bl sub_08064940
	ldr r4, _0806493C @ =sub_080BC184
	movs r0, #0x1d
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x1e
	adds r1, r4, #0
	bl sub_08064940
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064908: .4byte sub_080BC324
_0806490C: .4byte sub_080BC304
_08064910: .4byte sub_080BC2E4
_08064914: .4byte sub_080BC2C4
_08064918: .4byte sub_080BC2A4
_0806491C: .4byte sub_080BC284
_08064920: .4byte sub_080BC264
_08064924: .4byte sub_080BC244
_08064928: .4byte sub_080BC224
_0806492C: .4byte sub_080BC204
_08064930: .4byte sub_080BC1E4
_08064934: .4byte sub_080BC1C4
_08064938: .4byte sub_080BC1A4
_0806493C: .4byte sub_080BC184

	thumb_func_start sub_08064940
sub_08064940: @ 0x08064940
	lsls r0, r0, #0x10
	ldr r2, _0806494C @ =gUnknown_020034B0
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0806494C: .4byte gUnknown_020034B0

	thumb_func_start sub_08064950
sub_08064950: @ 0x08064950
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08064968 @ =gUnknown_020034B0
	lsls r2, r0, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_08064968: .4byte gUnknown_020034B0

	thumb_func_start sub_0806496C
sub_0806496C: @ 0x0806496C
	ldr r0, _08064970 @ =gUnknown_020038B0
	bx lr
	.align 2, 0
_08064970: .4byte gUnknown_020038B0

	thumb_func_start sub_08064974
sub_08064974: @ 0x08064974
	push {lr}
	bl sub_0806496C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08064980
sub_08064980: @ 0x08064980
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #2
	bl sub_08001C5C
	adds r4, r0, #0
	movs r0, #2
	bl sub_08001DB0
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806E238
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080649AC
sub_080649AC: @ 0x080649AC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_08077F34
	ldr r0, _080649E0 @ =0x09F79A58
	str r0, [r6, #0x1c]
	movs r0, #0x6c
	muls r0, r4, r0
	ldr r1, _080649E4 @ =gItemData
	adds r0, r0, r1
	str r0, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x4c
	strh r5, [r0]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080649E0: .4byte 0x09F79A58
_080649E4: .4byte gItemData

	thumb_func_start sub_080649E8
sub_080649E8: @ 0x080649E8
	push {lr}
	ldr r2, _080649F8 @ =0x09F79A58
	str r2, [r0, #0x1c]
	bl sub_080781E0
	pop {r0}
	bx r0
	.align 2, 0
_080649F8: .4byte 0x09F79A58

	thumb_func_start sub_080649FC
sub_080649FC: @ 0x080649FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd8
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
	beq _08064A24
	adds r0, r4, #0
	bl sub_08078410
	b _08064A36
_08064A24:
	ldr r1, [r4, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
_08064A36:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08064A3C
sub_08064A3C: @ 0x08064A3C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08064AFE
	ldr r1, [r6, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08064AFE
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_080729B0
	adds r7, r0, #0
	cmp r7, #0
	beq _08064B04
	ldr r4, [r7, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	ldr r1, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08064AFE
	ldr r4, [r7, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	ldr r1, [r6, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_08064AFE:
	adds r0, r6, #0
	bl nullsub_28
_08064B04:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08064B0C
sub_08064B0C: @ 0x08064B0C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #7
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08064B20
sub_08064B20: @ 0x08064B20
	ldr r0, [r0, #0x48]
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08064B28
sub_08064B28: @ 0x08064B28
	adds r0, #0x4c
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08064B30
sub_08064B30: @ 0x08064B30
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
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
	adds r0, r4, #0
	bl sub_08064980
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08064B60
sub_08064B60: @ 0x08064B60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	movs r4, #0xe0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08001BCC
	adds r1, r0, #0
	ldr r2, _08064BFC @ =0x0000FFFF
	add r0, sp, #4
	bl sub_0806E238
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0x10
	adds r0, r4, #0
	bl sub_08064980
	adds r6, r4, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r8, r6
	cmp r0, #0
	beq _08064C00
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r4, sp, #0x1c
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	b _08064C08
	.align 2, 0
_08064BFC: .4byte 0x0000FFFF
_08064C00:
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_0806E274
_08064C08:
	adds r5, r4, #0
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_080734A0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r7, #0
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08064C50
sub_08064C50: @ 0x08064C50
	movs r0, #0
	bx lr

	thumb_func_start sub_08064C54
sub_08064C54: @ 0x08064C54
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08064C5C
sub_08064C5C: @ 0x08064C5C
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x44]
	bx lr
	.align 2, 0

	thumb_func_start sub_08064C64
sub_08064C64: @ 0x08064C64
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x48]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0

	thumb_func_start sub_08064C70
sub_08064C70: @ 0x08064C70
	ldr r0, [r0, #0x48]
	adds r0, #0x4c
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08064C78
sub_08064C78: @ 0x08064C78
	ldr r0, [r0, #0x48]
	adds r0, #0x4e
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_08064C80
sub_08064C80: @ 0x08064C80
	ldr r0, [r0, #0x48]
	adds r0, #0x50
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_08064C88
sub_08064C88: @ 0x08064C88
	ldr r0, [r0, #0x48]
	adds r0, #0x52
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08064C90
sub_08064C90: @ 0x08064C90
	ldr r0, [r0, #0x48]
	adds r0, #0x53
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08064C98
sub_08064C98: @ 0x08064C98
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	beq _08064CA6
	movs r0, #1
_08064CA6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08064CAC
sub_08064CAC: @ 0x08064CAC
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x58]
	bx lr
	.align 2, 0

	thumb_func_start sub_08064CB4
sub_08064CB4: @ 0x08064CB4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _08064D2E
	ldr r1, [r6, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _08064D2E
	ldr r4, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	ldr r0, [r6, #0x48]
	adds r0, #0x5c
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_08064D68
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl _call_via_r3
	b _08064D5E
_08064D2E:
	ldr r4, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	ldr r0, [r6, #0x48]
	adds r0, #0x5c
	ldrh r1, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_08064D68
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl _call_via_r3
_08064D5E:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08064D68
sub_08064D68: @ 0x08064D68
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r1, [r5, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #4
	bne _08064E14
	ldr r1, [r5, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _08064E14
	ldr r1, [r5, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r1, [r0, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #7
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08064E14
	ldr r0, _08064DE8 @ =0x00000147
	cmp r4, r0
	beq _08064E02
	cmp r4, r0
	bgt _08064DEC
	subs r0, #1
	cmp r4, r0
	beq _08064DFC
	b _08064E14
	.align 2, 0
_08064DE8: .4byte 0x00000147
_08064DEC:
	movs r0, #0xa4
	lsls r0, r0, #1
	cmp r4, r0
	beq _08064E0C
	adds r0, #1
	cmp r4, r0
	beq _08064E12
	b _08064E14
_08064DFC:
	movs r4, #0xad
	lsls r4, r4, #1
	b _08064E14
_08064E02:
	ldr r4, _08064E08 @ =0x0000015B
	b _08064E14
	.align 2, 0
_08064E08: .4byte 0x0000015B
_08064E0C:
	movs r4, #0xae
	lsls r4, r4, #1
	b _08064E14
_08064E12:
	ldr r4, _08064E1C @ =0x0000015D
_08064E14:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08064E1C: .4byte 0x0000015D

	thumb_func_start sub_08064E20
sub_08064E20: @ 0x08064E20
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _08064E7C
	ldr r1, [r5, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _08064E7C
	ldr r0, [r5, #0x48]
	adds r0, #0x5c
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_08073444
	b _08064E8E
_08064E7C:
	ldr r0, [r5, #0x48]
	adds r0, #0x5c
	ldrh r1, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_08073444
_08064E8E:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08064E98
sub_08064E98: @ 0x08064E98
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x5e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08064EA6
	movs r0, #1
_08064EA6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08064EAC
sub_08064EAC: @ 0x08064EAC
	ldr r0, [r0, #0x48]
	adds r0, #0x5f
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08064EB4
sub_08064EB4: @ 0x08064EB4
	ldr r0, [r0, #0x48]
	adds r0, #0x60
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08064EBC
sub_08064EBC: @ 0x08064EBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08064EF6
	ldr r1, [r4, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08064EF8
_08064EF6:
	movs r0, #0
_08064EF8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08064F00
sub_08064F00: @ 0x08064F00
	ldr r0, [r0, #0x48]
	adds r0, #0x62
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_08064F08
sub_08064F08: @ 0x08064F08
	ldr r0, [r0, #0x48]
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0x64
	subs r0, r0, r1
	bx lr

	thumb_func_start sub_08064F14
sub_08064F14: @ 0x08064F14
	ldr r0, [r0, #0x48]
	adds r0, #0x65
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08064F1C
sub_08064F1C: @ 0x08064F1C
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	beq _08064F2A
	movs r0, #1
_08064F2A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08064F30
sub_08064F30: @ 0x08064F30
	movs r0, #0
	bx lr

	thumb_func_start sub_08064F34
sub_08064F34: @ 0x08064F34
	movs r0, #0
	bx lr

	thumb_func_start sub_08064F38
sub_08064F38: @ 0x08064F38
	movs r0, #0
	bx lr

	thumb_func_start sub_08064F3C
sub_08064F3C: @ 0x08064F3C
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #9
	bhi _08064F90
	lsls r0, r0, #2
	ldr r1, _08064F60 @ =_08064F64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08064F60: .4byte _08064F64
_08064F64: @ jump table
	.4byte _08064F8C @ case 0
	.4byte _08064F8C @ case 1
	.4byte _08064F8C @ case 2
	.4byte _08064F8C @ case 3
	.4byte _08064F8C @ case 4
	.4byte _08064F8C @ case 5
	.4byte _08064F8C @ case 6
	.4byte _08064F8C @ case 7
	.4byte _08064F90 @ case 8
	.4byte _08064F90 @ case 9
_08064F8C:
	movs r0, #1
	b _08064F92
_08064F90:
	movs r0, #0
_08064F92:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08064F98
sub_08064F98: @ 0x08064F98
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_08064FA0
sub_08064FA0: @ 0x08064FA0
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x48]
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08064FB0
	movs r1, #1
_08064FB0:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08064FB8
sub_08064FB8: @ 0x08064FB8
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _08064FC6
	movs r1, #1
_08064FC6:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08064FCC
sub_08064FCC: @ 0x08064FCC
	push {r4, lr}
	ldr r4, _08064FE0 @ =gUnknown_020038B0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08064FE4 @ =0x09F79D20
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064FE0: .4byte gUnknown_020038B0
_08064FE4: .4byte 0x09F79D20

	thumb_func_start sub_08064FE8
sub_08064FE8: @ 0x08064FE8
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	str r0, [r4, #0x28]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r4, #0x34]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _08065010 @ =0x09F79A58
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08065010: .4byte 0x09F79A58

	thumb_func_start sub_08065014
sub_08065014: @ 0x08065014
	push {r4, lr}
	movs r4, #0
_08065018:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080650E0 @ =sub_080BDE20
	bl sub_08065138
	adds r4, #1
	cmp r4, #0xff
	bls _08065018
	ldr r1, _080650E4 @ =sub_080BDDF8
	movs r0, #0x9c
	bl sub_08065138
	ldr r1, _080650E8 @ =sub_080BDDD0
	movs r0, #0xa1
	bl sub_08065138
	ldr r1, _080650EC @ =sub_080BDDA8
	movs r0, #0x9d
	bl sub_08065138
	ldr r1, _080650F0 @ =sub_080BDD80
	movs r0, #0x9e
	bl sub_08065138
	ldr r1, _080650F4 @ =sub_080BDD58
	movs r0, #0xa0
	bl sub_08065138
	ldr r1, _080650F8 @ =sub_080BDC68
	movs r0, #0xa6
	bl sub_08065138
	ldr r1, _080650FC @ =sub_080BDD30
	movs r0, #0x69
	bl sub_08065138
	ldr r4, _08065100 @ =sub_080BDD08
	movs r0, #0x72
	adds r1, r4, #0
	bl sub_08065138
	movs r0, #0x73
	adds r1, r4, #0
	bl sub_08065138
	ldr r1, _08065104 @ =sub_080BDCE0
	movs r0, #0x7a
	bl sub_08065138
	ldr r1, _08065108 @ =sub_080BDCB8
	movs r0, #0xa4
	bl sub_08065138
	ldr r1, _0806510C @ =sub_080BDC90
	movs r0, #0xa5
	bl sub_08065138
	ldr r1, _08065110 @ =sub_080BDC40
	movs r0, #0xa7
	bl sub_08065138
	ldr r1, _08065114 @ =sub_080BDC18
	movs r0, #0x8f
	bl sub_08065138
	ldr r1, _08065118 @ =sub_080BDBF0
	movs r0, #0x93
	bl sub_08065138
	ldr r1, _0806511C @ =sub_080BDBC8
	movs r0, #0x94
	bl sub_08065138
	ldr r1, _08065120 @ =sub_080BDBA0
	movs r0, #0xcd
	bl sub_08065138
	ldr r1, _08065124 @ =sub_080BDB78
	movs r0, #0xaf
	bl sub_08065138
	ldr r1, _08065128 @ =sub_080BDB50
	movs r0, #0xd2
	bl sub_08065138
	ldr r1, _0806512C @ =sub_080BDB28
	movs r0, #0xd3
	bl sub_08065138
	ldr r1, _08065130 @ =sub_080BDB00
	movs r0, #0xd4
	bl sub_08065138
	ldr r1, _08065134 @ =sub_080BDAD8
	movs r0, #0xd5
	bl sub_08065138
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080650E0: .4byte sub_080BDE20
_080650E4: .4byte sub_080BDDF8
_080650E8: .4byte sub_080BDDD0
_080650EC: .4byte sub_080BDDA8
_080650F0: .4byte sub_080BDD80
_080650F4: .4byte sub_080BDD58
_080650F8: .4byte sub_080BDC68
_080650FC: .4byte sub_080BDD30
_08065100: .4byte sub_080BDD08
_08065104: .4byte sub_080BDCE0
_08065108: .4byte sub_080BDCB8
_0806510C: .4byte sub_080BDC90
_08065110: .4byte sub_080BDC40
_08065114: .4byte sub_080BDC18
_08065118: .4byte sub_080BDBF0
_0806511C: .4byte sub_080BDBC8
_08065120: .4byte sub_080BDBA0
_08065124: .4byte sub_080BDB78
_08065128: .4byte sub_080BDB50
_0806512C: .4byte sub_080BDB28
_08065130: .4byte sub_080BDB00
_08065134: .4byte sub_080BDAD8

	thumb_func_start sub_08065138
sub_08065138: @ 0x08065138
	lsls r0, r0, #0x10
	ldr r2, _08065144 @ =gUnknown_020038C0
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08065144: .4byte gUnknown_020038C0

	thumb_func_start sub_08065148
sub_08065148: @ 0x08065148
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _08065164 @ =gUnknown_020038C0
	lsls r3, r0, #2
	adds r3, r3, r4
	ldr r3, [r3]
	bl _call_via_r3
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08065164: .4byte gUnknown_020038C0

	thumb_func_start sub_08065168
sub_08065168: @ 0x08065168
	push {r4, lr}
	movs r4, #0
_0806516C:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806518C @ =sub_080C0920
	bl sub_08065194
	adds r4, #1
	cmp r4, #0xff
	bls _0806516C
	ldr r1, _08065190 @ =sub_080C08A4
	movs r0, #0xb3
	bl sub_08065194
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806518C: .4byte sub_080C0920
_08065190: .4byte sub_080C08A4

	thumb_func_start sub_08065194
sub_08065194: @ 0x08065194
	lsls r0, r0, #0x10
	ldr r2, _080651A0 @ =gUnknown_02003CC0
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_080651A0: .4byte gUnknown_02003CC0

	thumb_func_start sub_080651A4
sub_080651A4: @ 0x080651A4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _080651BC @ =gUnknown_02003CC0
	lsls r2, r0, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_080651BC: .4byte gUnknown_02003CC0

	thumb_func_start sub_080651C0
sub_080651C0: @ 0x080651C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r7, r0, #0
	bl __4Base
	ldr r0, _08065290 @ =0x09F7DEB0
	str r0, [r7, #0x1c]
	movs r0, #0
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	adds r5, r7, #0
	adds r5, #0x34
	adds r0, r7, #0
	adds r0, #0x38
	movs r1, #0xf
	add r2, sp, #0x10
	mov r8, r2
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
_080651EC:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #0xc
	subs r1, #1
	cmp r1, r3
	bne _080651EC
	movs r4, #0
	str r4, [r5]
	adds r5, r7, #0
	adds r5, #0xfc
	adds r0, r5, #0
	bl sub_0806D548
	movs r0, #0x88
	lsls r0, r0, #1
	adds r6, r7, r0
	adds r0, r6, #0
	bl sub_0806D478
	str r4, [r7, #0x28]
	strh r4, [r7, #0x2c]
	ldr r1, _08065294 @ =0x000003FF
	movs r0, #0
	bl sub_08070660
	strh r0, [r7, #0x2e]
	movs r0, #0x11
	strh r0, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0xf8
	strh r4, [r0]
	add r0, sp, #4
	movs r1, #3
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	bl sub_0806D5AC
	ldr r4, _08065298 @ =0x09F44F08
	str r4, [sp, #0xc]
	movs r1, #0xa1
	lsls r1, r1, #2
	add r0, sp, #4
	bl sub_080706A0
	adds r0, r6, #0
	add r1, sp, #4
	bl sub_0806D4D0
	str r4, [sp, #0xc]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #0x10
	bl __4Base
	ldr r6, _0806529C @ =0x09F44FF0
	ldr r0, _080652A0 @ =0x09F7ED20
	str r0, [sp, #0x2c]
	ldr r0, _080652A4 @ =gUnknown_080FBDA0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	mov r2, r8
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	str r6, [sp, #0x2c]
	mov r0, r8
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08065290: .4byte 0x09F7DEB0
_08065294: .4byte 0x000003FF
_08065298: .4byte 0x09F44F08
_0806529C: .4byte 0x09F44FF0
_080652A0: .4byte 0x09F7ED20
_080652A4: .4byte gUnknown_080FBDA0

	thumb_func_start sub_080652A8
sub_080652A8: @ 0x080652A8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080652D8 @ =0x09F7DEB0
	str r0, [r4, #0x1c]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r4, #0
	adds r0, #0xfc
	movs r1, #2
	bl sub_0806D580
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080652D8: .4byte 0x09F7DEB0

	thumb_func_start sub_080652DC
sub_080652DC: @ 0x080652DC
	ldr r1, [r1]
	str r1, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_080652E4
sub_080652E4: @ 0x080652E4
	str r1, [r0, #0x28]
	bx lr

	thumb_func_start sub_080652E8
sub_080652E8: @ 0x080652E8
	strh r1, [r0, #0x2c]
	bx lr

	thumb_func_start sub_080652EC
sub_080652EC: @ 0x080652EC
	ldr r1, [r1, #0x24]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080652F4
sub_080652F4: @ 0x080652F4
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_080652F8
sub_080652F8: @ 0x080652F8
	ldrh r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_080652FC
sub_080652FC: @ 0x080652FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r2, r0, #0
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r2, #0x24]
	str r0, [sp]
	ldr r0, [r2, #0x28]
	str r0, [sp, #4]
	mov r0, sp
	strh r1, [r0, #8]
	adds r5, r2, #0
	adds r5, #0x34
	add r4, sp, #0xc
	adds r1, r4, #0
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	ldr r0, [r2, #0x34]
	adds r3, r0, #1
	cmp r3, #0x10
	bgt _0806533C
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r1, #4
	adds r0, r4, #0
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	str r3, [r2, #0x34]
_0806533C:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08065344
sub_08065344: @ 0x08065344
	ldr r0, [r0, #0x34]
	bx lr

	thumb_func_start sub_08065348
sub_08065348: @ 0x08065348
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x22
	strh r0, [r4, #0x30]
	movs r5, #0x13
_08065352:
	ldrh r0, [r4, #0x2c]
	adds r0, #6
	strh r0, [r4, #0x2c]
	movs r0, #1
	bl sub_0807068C
	subs r5, #1
	cmp r5, #0
	bge _08065352
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806536C
sub_0806536C: @ 0x0806536C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08074614
	cmp r0, #0
	beq _080653A0
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _08065398
	adds r0, #0xff
_08065398:
	asrs r0, r0, #8
	ldrh r3, [r4, #0x2e]
	adds r0, r0, r3
	b _080653A6
_080653A0:
	ldrh r0, [r4, #0x30]
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
_080653A6:
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	bl sub_080653C4
	adds r0, r4, #0
	bl sub_08065514
	adds r1, r4, #0
	adds r1, #0xf8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080653C4
sub_080653C4: @ 0x080653C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r1, [r5, #0x34]
	bl sub_0807066C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0xc0
	lsls r0, r0, #8
	ldrh r1, [r5, #0x2c]
	bl sub_0807066C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0
	mov r8, r0
	ldr r0, [r5, #0x34]
	cmp r8, r0
	blt _080653FE
	b _08065502
_080653FE:
	adds r4, r5, #0
	adds r4, #0x38
	mov sb, sp
_08065404:
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	subs r1, r1, r0
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	bge _0806542A
	adds r0, #0x11
	cmp r1, r0
	ble _0806543E
	b _0806543C
_0806542A:
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r0, r1
	ble _08065440
	movs r6, #8
	ldrsh r0, [r4, r6]
	subs r0, #0x11
	cmp r1, r0
	bge _0806543E
_0806543C:
	adds r1, r0, #0
_0806543E:
	strh r1, [r4, #8]
_08065440:
	ldrh r1, [r4, #8]
	ldrh r0, [r5, #0x2e]
	adds r1, r1, r0
	ldr r6, _080654DC @ =gUnknown_080EF880
	ldr r2, _080654E0 @ =0x000003FF
	mov ip, r2
	ands r1, r2
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, [r1]
	adds r3, r2, r0
	subs r7, r0, r2
	ldrh r0, [r5, #0x2c]
	muls r0, r3, r0
	asrs r0, r0, #0x10
	strh r0, [r4]
	ldrh r0, [r5, #0x2c]
	muls r0, r7, r0
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08065478
	adds r0, #3
_08065478:
	asrs r0, r0, #2
	strh r0, [r4, #2]
	adds r0, r5, #0
	adds r0, #0xf8
	ldrh r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x10
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	adds r1, r3, #0
	bl sub_080695D4
	cmp r0, #0
	bge _080654A4
	adds r0, #0xff
_080654A4:
	asrs r1, r0, #0x18
	ldrh r0, [r4, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
	movs r6, #0
	ldrsh r1, [r4, r6]
	movs r0, #0x24
	ldrsh r3, [r5, r0]
	movs r2, #2
	ldrsh r0, [r4, r2]
	movs r6, #0x26
	ldrsh r2, [r5, r6]
	adds r1, r1, r3
	adds r0, r0, r2
	mov r2, sb
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [sp]
	str r0, [r4]
	cmp r7, #0
	ble _080654E4
	movs r6, #0x28
	ldrsh r0, [r5, r6]
	subs r0, #1
	movs r1, #0
	cmp r1, r0
	bge _080654F2
	b _080654F0
	.align 2, 0
_080654DC: .4byte gUnknown_080EF880
_080654E0: .4byte 0x000003FF
_080654E4:
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	adds r0, #1
	movs r1, #7
	cmp r1, r0
	ble _080654F2
_080654F0:
	adds r1, r0, #0
_080654F2:
	str r1, [r4, #4]
	adds r4, #0xc
	movs r2, #1
	add r8, r2
	ldr r0, [r5, #0x34]
	cmp r8, r0
	bge _08065502
	b _08065404
_08065502:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08065514
sub_08065514: @ 0x08065514
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	bl sub_0806BE14
	mov r8, r0
	adds r0, r7, #0
	bl sub_080655B0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r7, #0
	bl sub_080655D4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r6, #0
	ldr r0, [r7, #0x34]
	cmp r6, r0
	bge _0806559E
	adds r5, r7, #0
	adds r5, #0x38
_0806554A:
	ldr r4, [r5, #4]
	mov r0, r8
	adds r1, r4, #0
	movs r2, #1
	bl sub_0806BFB0
	adds r2, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl sub_0806C010
	movs r1, #0
	ldrsh r2, [r5, r1]
	subs r2, #8
	lsls r2, r2, #0x10
	ldr r1, _080655AC @ =0x01FF0000
	ands r2, r1
	str r2, [r0]
	movs r3, #2
	ldrsh r1, [r5, r3]
	subs r1, #8
	movs r3, #0xff
	ands r1, r3
	orrs r2, r1
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r2, r1
	str r2, [r0]
	ldr r1, [r5, #4]
	asrs r1, r1, #1
	lsls r1, r1, #0xa
	mov r2, sl
	orrs r1, r2
	mov r3, sb
	lsls r2, r3, #0xc
	orrs r1, r2
	strh r1, [r0, #4]
	adds r5, #0xc
	adds r6, #1
	ldr r0, [r7, #0x34]
	cmp r6, r0
	blt _0806554A
_0806559E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080655AC: .4byte 0x01FF0000

	thumb_func_start sub_080655B0
sub_080655B0: @ 0x080655B0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806BE14
	adds r5, r0, #0
	adds r4, #0xfc
	adds r0, r4, #0
	bl sub_0806D648
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806C0B4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080655D4
sub_080655D4: @ 0x080655D4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806BE14
	adds r5, r0, #0
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0806D53C
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C174
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080655FC
sub_080655FC: @ 0x080655FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	adds r7, r1, #0
	mov sl, r2
	bl sub_08072878
	adds r1, r0, #0
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807084C
	ldr r0, _08065720 @ =0x09F7DF60
	str r0, [r6, #0x1c]
	movs r0, #0x44
	adds r0, r0, r6
	mov r8, r0
	bl sub_08071268
	movs r1, #0xac
	adds r1, r1, r6
	mov sb, r1
	mov r0, sb
	bl sub_0806D8EC
	movs r1, #0
	movs r0, #0xaf
	lsls r0, r0, #3
	strh r0, [r6, #0x3c]
	strh r1, [r6, #0x3e]
	adds r0, r6, #0
	adds r0, #0x40
	strh r1, [r0]
	add r5, sp, #0x2c
	strh r1, [r5, #2]
	mov r1, sl
	ldrh r0, [r1]
	subs r0, #0x36
	strh r0, [r5]
	mov r0, r8
	bl sub_080714CC
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_08065780
	adds r4, r4, r0
	lsrs r0, r4, #0x1f
	adds r4, r4, r0
	asrs r4, r4, #1
	ldrh r0, [r5]
	subs r0, r0, r4
	strh r0, [r5]
	mov r1, sl
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08070B28
	mov r0, r8
	movs r1, #1
	bl sub_080714B0
	mov r0, r8
	adds r1, r7, #0
	bl sub_0807138C
	movs r1, #0xa4
	lsls r1, r1, #2
	add r0, sp, #8
	bl sub_080706A0
	add r5, sp, #0x14
	adds r0, r5, #0
	movs r1, #0
	bl sub_080706A0
	ldr r1, _08065724 @ =0x0000027B
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, sb
	add r1, sp, #8
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08065728 @ =0x09F44F08
	str r0, [sp, #0x28]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08065768
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	bl sub_0806DB60
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _0806572C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _08065730 @ =0x09F7ECA0
	str r0, [sp, #0x24]
	ldr r0, _08065734 @ =gUnknown_080FC428
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	add r2, sp, #8
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x24]
	add r0, sp, #8
	movs r1, #2
	bl _._4Base
	adds r0, r6, #0
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08065720: .4byte 0x09F7DF60
_08065724: .4byte 0x0000027B
_08065728: .4byte 0x09F44F08
_0806572C: .4byte 0x09F44FF0
_08065730: .4byte 0x09F7ECA0
_08065734: .4byte gUnknown_080FC428

	thumb_func_start sub_08065738
sub_08065738: @ 0x08065738
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08065764 @ =0x09F7DF60
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0xac
	movs r1, #2
	bl sub_0806D9A4
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #2
	bl sub_08071334
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080708A8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065764: .4byte 0x09F7DF60

	thumb_func_start sub_08065768
sub_08065768: @ 0x08065768
	push {lr}
	adds r0, #0x44
	bl sub_080714C0
	movs r1, #0x7a
	cmp r0, #1
	bgt _08065778
	movs r1, #0x14
_08065778:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08065780
sub_08065780: @ 0x08065780
	push {lr}
	adds r0, #0x44
	bl sub_080714C0
	movs r1, #0x24
	cmp r0, #1
	bgt _08065790
	movs r1, #0x1c
_08065790:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08065798
sub_08065798: @ 0x08065798
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #2
	cmp r0, #9
	bgt _0806582C
	mov r6, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r6, #2]
	ldrh r1, [r5, #0x3c]
	ldrh r2, [r5, #0x3e]
	adds r0, r1, r2
	strh r0, [r5, #0x3e]
	ldr r2, [r5, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	str r0, [sp]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	mov r1, sp
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r1, sp
	strh r0, [r1]
	movs r2, #0x3e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r5, #0x3e]
	ldr r1, [r5, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	adds r4, r5, #0
	adds r4, #0x44
	adds r0, r4, #0
	mov r1, sp
	bl sub_080714A4
	adds r5, #0xac
	adds r0, r4, #0
	bl sub_080714CC
	mov r1, sp
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #2
	ldrsh r3, [r6, r1]
	add r1, sp, #8
	adds r2, r2, r0
	strh r2, [r1]
	strh r3, [r1, #2]
	adds r0, r5, #0
	bl sub_0806DB74
_0806582C:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08065834
sub_08065834: @ 0x08065834
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x45
	bls _0806585E
	cmp r2, #0
	beq _0806585E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806585E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08065864
sub_08065864: @ 0x08065864
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x30
	adds r5, r0, #0
	mov sl, r1
	mov sb, r2
	bl sub_08072878
	adds r1, r0, #0
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807084C
	ldr r0, _08065974 @ =0x09F7E0D0
	str r0, [r5, #0x1c]
	adds r6, r5, #0
	adds r6, #0x44
	adds r0, r6, #0
	bl sub_08071268
	movs r0, #0xac
	adds r0, r0, r5
	mov r8, r0
	bl sub_0806D8EC
	movs r1, #0
	movs r0, #0xaf
	lsls r0, r0, #3
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	add r4, sp, #0x2c
	strh r1, [r4, #2]
	mov r1, sb
	ldrh r0, [r1]
	subs r0, #0xa4
	strh r0, [r4]
	adds r0, r6, #0
	bl sub_080714CC
	adds r0, #0x64
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r1, [r4]
	subs r1, r1, r0
	adds r1, #0x64
	strh r1, [r4]
	mov r1, sb
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08070B28
	adds r0, r6, #0
	movs r1, #1
	bl sub_080714B0
	adds r0, r6, #0
	mov r1, sl
	bl sub_0807138C
	movs r1, #0xa4
	lsls r1, r1, #2
	add r0, sp, #8
	bl sub_080706A0
	add r6, sp, #0x14
	adds r0, r6, #0
	movs r1, #0
	bl sub_080706A0
	ldr r1, _08065978 @ =0x0000027B
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, r8
	add r1, sp, #8
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _0806597C @ =0x09F44F08
	str r0, [sp, #0x28]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x10]
	mov r0, r8
	movs r1, #0x29
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _08065980 @ =0x09F44FF0
	mov r8, r0
	ldr r0, _08065984 @ =0x09F7ECA0
	str r0, [sp, #0x24]
	ldr r0, _08065988 @ =gUnknown_080FCAB0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #8
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x24]
	add r0, sp, #8
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08065974: .4byte 0x09F7E0D0
_08065978: .4byte 0x0000027B
_0806597C: .4byte 0x09F44F08
_08065980: .4byte 0x09F44FF0
_08065984: .4byte 0x09F7ECA0
_08065988: .4byte gUnknown_080FCAB0

	thumb_func_start sub_0806598C
sub_0806598C: @ 0x0806598C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080659B8 @ =0x09F7E0D0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0xac
	movs r1, #2
	bl sub_0806D9A4
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #2
	bl sub_08071334
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080708A8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080659B8: .4byte 0x09F7E0D0

	thumb_func_start sub_080659BC
sub_080659BC: @ 0x080659BC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #2
	cmp r0, #0x1d
	bgt _08065A48
	mov r4, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r4, #2]
	ldrh r1, [r5, #0x3c]
	ldrh r2, [r5, #0x3e]
	adds r0, r1, r2
	strh r0, [r5, #0x3e]
	ldr r2, [r5, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	str r0, [sp]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	mov r1, sp
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r1, sp
	strh r0, [r1]
	movs r2, #0x3e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r5, #0x3e]
	ldr r1, [r5, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	adds r0, r5, #0
	adds r0, #0x44
	mov r1, sp
	bl sub_080714A4
	adds r0, r5, #0
	adds r0, #0xac
	mov r1, sp
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #2
	ldrsh r3, [r4, r1]
	add r1, sp, #8
	subs r2, #0x64
	strh r2, [r1]
	strh r3, [r1, #2]
	bl sub_0806DB74
_08065A48:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08065A50
sub_08065A50: @ 0x08065A50
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x45
	bls _08065A7A
	cmp r2, #0
	beq _08065A7A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065A7A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08065A80
sub_08065A80: @ 0x08065A80
	ldr r1, _08065A90 @ =0x09F7E240
	str r1, [r0, #0x10]
	adds r2, r0, #4
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r2, #4]
	str r1, [r2, #8]
	bx lr
	.align 2, 0
_08065A90: .4byte 0x09F7E240

	thumb_func_start sub_08065A94
sub_08065A94: @ 0x08065A94
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08065AEC @ =0x09F7E240
	str r0, [r6, #0x10]
	movs r4, #0
	adds r1, r6, #4
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _08065ACE
	adds r5, r1, #0
_08065AAA:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08065AC6
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065AC6:
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _08065AAA
_08065ACE:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _08065AD8
	bl __builtin_vec_delete
_08065AD8:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08065AE6
	adds r0, r6, #0
	bl __builtin_delete
_08065AE6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065AEC: .4byte 0x09F7E240

	thumb_func_start sub_08065AF0
sub_08065AF0: @ 0x08065AF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r5, [r0, #0x10]
	movs r4, #0x30
	adds r4, r4, r5
	mov r8, r4
	movs r7, #0x30
	ldrsh r6, [r5, r7]
	adds r6, r0, r6
	movs r7, #0x18
	ldrsh r4, [r5, r7]
	adds r0, r0, r4
	ldr r4, [sp, #0x1c]
	str r4, [sp]
	ldr r4, [r5, #0x1c]
	bl _call_via_r4
	adds r1, r0, #0
	mov r7, r8
	ldr r2, [r7, #4]
	adds r0, r6, #0
	bl _call_via_r2
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08065B34
sub_08065B34: @ 0x08065B34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r4, #0
	bne _08065B4E
	movs r0, #0
	b _08065C16
_08065B4E:
	movs r0, #0x58
	bl __builtin_new
	adds r1, r4, #0
	bl sub_080864AC
	adds r1, r0, #0
	str r1, [sp]
	cmp r5, #0
	beq _08065B76
	ldr r2, [r1, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r1, r0
	adds r1, r5, #0
	adds r1, #0x20
	ldr r2, [r2, #4]
	bl _call_via_r2
_08065B76:
	mov r7, r8
	adds r7, #4
	cmp r6, #0
	ble _08065BAA
	ldr r4, [sp, #0x1c]
	adds r5, r6, #0
_08065B82:
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	adds r3, r1, #0
	adds r3, #0xc8
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r2, [r4]
	movs r1, #0
	cmp r2, #0
	beq _08065B9C
	adds r1, r2, #0
	adds r1, #0x20
_08065B9C:
	ldr r2, [r3, #4]
	bl _call_via_r2
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bne _08065B82
_08065BAA:
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r7, #0
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r0, r5
	bge _08065C04
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08065BD6
	adds r0, r1, #0
_08065BD6:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08065BF6
	adds r1, r0, #0
_08065BEC:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08065BEC
_08065BF6:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08065C00
	bl __builtin_vec_delete
_08065C00:
	str r5, [r4]
	str r6, [r4, #8]
_08065C04:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r0, [sp]
_08065C16:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08065C24
sub_08065C24: @ 0x08065C24
	ldr r0, [r0, #8]
	bx lr

	thumb_func_start sub_08065C28
sub_08065C28: @ 0x08065C28
	lsls r1, r1, #2
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08065C34
sub_08065C34: @ 0x08065C34
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _08065CC2
	adds r4, r2, #4
	b _08065C4C
_08065C46:
	movs r0, #1
	bl sub_0807068C
_08065C4C:
	ldr r0, [sp]
	ldr r2, [r0, #0x1c]
	adds r2, #0xb0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08065C46
	adds r6, r4, #0
	mov r7, sp
	movs r5, #0
	ldr r3, [r6, #4]
	cmp r5, r3
	bge _08065CAC
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08065C78:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08065CA0
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08065C9A
	adds r2, r0, #0
_08065C90:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08065C90
_08065C9A:
	subs r0, r4, #1
	str r0, [r6, #4]
	b _08065CAC
_08065CA0:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08065C78
_08065CAC:
	ldr r2, [sp]
	cmp r2, #0
	beq _08065CC2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065CC2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08065CCC
sub_08065CCC: @ 0x08065CCC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _08065D36
	adds r6, r2, #4
	mov r7, sp
	movs r5, #0
	ldr r3, [r6, #4]
	cmp r5, r3
	bge _08065D20
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08065CEC:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08065D14
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08065D0E
	adds r2, r0, #0
_08065D04:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08065D04
_08065D0E:
	subs r0, r4, #1
	str r0, [r6, #4]
	b _08065D20
_08065D14:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08065CEC
_08065D20:
	ldr r2, [sp]
	cmp r2, #0
	beq _08065D36
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065D36:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08065D40
sub_08065D40: @ 0x08065D40
	push {lr}
	adds r2, r1, #0
	cmp r2, #0
	beq _08065D5C
	ldr r1, [r2, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08065D5C:
	pop {r0}
	bx r0

	thumb_func_start sub_08065D60
sub_08065D60: @ 0x08065D60
	ldr r0, _08065D64 @ =gUnknown_020040E0
	bx lr
	.align 2, 0
_08065D64: .4byte gUnknown_020040E0

	thumb_func_start sub_08065D68
sub_08065D68: @ 0x08065D68
	push {r4, lr}
	ldr r1, _08065D90 @ =gUnknown_020040EC
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _08065D84
	ldr r4, _08065D94 @ =gUnknown_020040F0
	movs r0, #0x38
	bl __builtin_new
	bl sub_08065DEC
	str r0, [r4]
_08065D84:
	ldr r0, _08065D94 @ =gUnknown_020040F0
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08065D90: .4byte gUnknown_020040EC
_08065D94: .4byte gUnknown_020040F0

	thumb_func_start sub_08065D98
sub_08065D98: @ 0x08065D98
	ldr r0, _08065DA0 @ =gUnknown_020040F0
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08065DA0: .4byte gUnknown_020040F0

	thumb_func_start sub_08065DA4
sub_08065DA4: @ 0x08065DA4
	push {r4, r5, lr}
	ldr r1, _08065DD8 @ =gUnknown_020040EC
	ldr r0, [r1]
	cmp r0, #0
	ble _08065DD0
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _08065DD0
	ldr r5, _08065DDC @ =gUnknown_020040F0
	ldr r2, [r5]
	cmp r2, #0
	beq _08065DCE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065DCE:
	str r4, [r5]
_08065DD0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065DD8: .4byte gUnknown_020040EC
_08065DDC: .4byte gUnknown_020040F0

	thumb_func_start sub_08065DE0
sub_08065DE0: @ 0x08065DE0
	push {lr}
	bl sub_08065D60
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08065DEC
sub_08065DEC: @ 0x08065DEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r7, r0, #0
	bl __4Base
	ldr r0, _08065F88 @ =0x09F7E280
	str r0, [r7, #0x1c]
	movs r0, #0
	str r0, [r7, #0x34]
	movs r0, #0xd4
	bl __builtin_new
	bl __15struct_0806A57C
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
	bl set__15struct_0806A57CUi
	ldr r0, [r7, #0x24]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl set2__15struct_0806A57CUi
	ldr r0, [r7, #0x24]
	adds r1, r5, #0
	bl set4__15struct_0806A57CUi
	movs r0, #0xd4
	bl __builtin_new
	bl __15struct_0806A57C
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
	bl set__15struct_0806A57CUi
	ldr r0, [r7, #0x28]
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
	bne _08065E8A
	movs r1, #0xe6
_08065E8A:
	adds r0, r4, #0
	bl set__15struct_0806A57CUi
	ldr r0, [r7, #0x2c]
	adds r1, r5, #0
	bl set2__15struct_0806A57CUi
	ldr r0, [r7, #0x2c]
	adds r1, r5, #0
	bl set4__15struct_0806A57CUi
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
	bl sub_0806FDB0
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
	ldr r6, _08065F8C @ =0x09F44FF0
	ldr r0, _08065F90 @ =0x09F7ED20
	str r0, [sp, #0x20]
	ldr r0, _08065F94 @ =gUnknown_080FD560
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
_08065F88: .4byte 0x09F7E280
_08065F8C: .4byte 0x09F44FF0
_08065F90: .4byte 0x09F7ED20
_08065F94: .4byte gUnknown_080FD560

	thumb_func_start sub_08065F98
sub_08065F98: @ 0x08065F98
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08066000 @ =0x09F7E280
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _08065FBC
	adds r0, r2, #0
	adds r0, #0xd0
	ldr r1, [r0]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065FBC:
	ldr r2, [r4, #0x28]
	cmp r2, #0
	beq _08065FD6
	adds r0, r2, #0
	adds r0, #0xd0
	ldr r1, [r0]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065FD6:
	ldr r2, [r4, #0x24]
	cmp r2, #0
	beq _08065FF0
	adds r0, r2, #0
	adds r0, #0xd0
	ldr r1, [r0]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065FF0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08066000: .4byte 0x09F7E280

	thumb_func_start sub_08066004
sub_08066004: @ 0x08066004
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x50
	bl __builtin_new
	bl sub_08066294
	str r0, [r4, #0x30]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #0
	str r0, [r4, #0x34]
_08066028:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _08066034
	cmp r0, #1
	beq _0806603C
	b _08066042
_08066034:
	adds r0, r4, #0
	bl sub_0806609C
	b _08066042
_0806603C:
	adds r0, r4, #0
	bl sub_08066108
_08066042:
	ldr r0, [r4, #0x34]
	cmp r0, #2
	bne _08066028
	ldr r0, [r4, #0x30]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806607C
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _08066078
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066078:
	movs r0, #0
	b _08066094
_0806607C:
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _08066092
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066092:
	movs r0, #1
_08066094:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806609C
sub_0806609C: @ 0x0806609C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0xd1
	lsls r0, r0, #3
	bl __builtin_new
	bl sub_0806673C
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806616C
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _080660D8
	cmp r0, #1
	beq _080660DC
	b _080660E0
_080660D8:
	movs r0, #1
	b _080660DE
_080660DC:
	movs r0, #2
_080660DE:
	str r0, [r4, #0x34]
_080660E0:
	adds r0, r4, #0
	movs r1, #8
	bl sub_080661DC
	ldr r2, [sp]
	cmp r2, #0
	beq _080660FE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080660FE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08066108
sub_08066108: @ 0x08066108
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0xab
	lsls r0, r0, #4
	bl __builtin_new
	bl sub_08067438
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806616C
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _08066144
	cmp r0, #1
	bne _08066146
	movs r0, #2
_08066144:
	str r0, [r4, #0x34]
_08066146:
	adds r0, r4, #0
	movs r1, #8
	bl sub_080661DC
	ldr r2, [sp]
	cmp r2, #0
	beq _08066164
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066164:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806616C
sub_0806616C: @ 0x0806616C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	cmp r6, r7
	bgt _080661D6
_08066178:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08069558
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
	ldr r1, [r5, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
	ldr r1, [r5, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
	movs r0, #1
	bl sub_0807068C
	adds r6, #1
	cmp r6, r7
	ble _08066178
_080661D6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080661DC
sub_080661DC: @ 0x080661DC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r7, #0
	cmp r7, r6
	bgt _08066246
_080661E8:
	subs r2, r6, r7
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r3, r6, #0
	bl sub_08069558
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
	ldr r1, [r5, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
	ldr r1, [r5, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
	movs r0, #1
	bl sub_0807068C
	adds r7, #1
	cmp r7, r6
	ble _080661E8
_08066246:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806624C
sub_0806624C: @ 0x0806624C
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_08066250
sub_08066250: @ 0x08066250
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_08066254
sub_08066254: @ 0x08066254
	ldr r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_08066258
sub_08066258: @ 0x08066258
	ldr r0, [r0, #0x30]
	bx lr

	thumb_func_start sub_0806625C
sub_0806625C: @ 0x0806625C
	push {lr}
	bl sub_0806CC10
	bl getNewKeys__6KeyPad
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bne _08066272
	bl sub_08001718
_08066272:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08066278
sub_08066278: @ 0x08066278
	push {r4, lr}
	ldr r4, _0806628C @ =gUnknown_020040E0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08066290 @ =0x09F7E310
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806628C: .4byte gUnknown_020040E0
_08066290: .4byte 0x09F7E310

	thumb_func_start sub_08066294
sub_08066294: @ 0x08066294
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080662AC @ =0x09F7E328
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080662AC: .4byte 0x09F7E328

	thumb_func_start sub_080662B0
sub_080662B0: @ 0x080662B0
	push {lr}
	ldr r2, _080662C0 @ =0x09F7E328
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080662C0: .4byte 0x09F7E328

	thumb_func_start sub_080662C4
sub_080662C4: @ 0x080662C4
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r1, [r2, #0x24]
	adds r3, r1, #1
	cmp r3, #0x14
	bgt _080662E2
	lsls r1, r1, #1
	adds r0, #0x28
	adds r0, r0, r1
	strh r4, [r0]
	str r3, [r2, #0x24]
	movs r0, #1
	b _080662E4
_080662E2:
	movs r0, #0
_080662E4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080662EC
sub_080662EC: @ 0x080662EC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, [r3, #0x24]
	adds r1, r0, #1
	cmp r1, #0x14
	bgt _0806632A
	cmp r4, r0
	bgt _0806632A
	str r1, [r3, #0x24]
	adds r1, r0, #0
	adds r2, r3, #0
	adds r2, #0x28
	lsls r5, r4, #1
	cmp r1, r4
	ble _08066322
	lsls r0, r1, #1
	subs r0, #2
	adds r3, r0, r2
_08066316:
	ldrh r0, [r3]
	strh r0, [r3, #2]
	subs r3, #2
	subs r1, #1
	cmp r1, r4
	bgt _08066316
_08066322:
	adds r0, r2, r5
	strh r6, [r0]
	movs r0, #1
	b _0806632C
_0806632A:
	movs r0, #0
_0806632C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08066334
sub_08066334: @ 0x08066334
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r2, #0
	adds r3, #0x24
	movs r4, #0
	ldr r0, [r2, #0x24]
	cmp r4, r0
	bge _08066382
	adds r2, #0x28
	adds r5, r2, #0
_0806634C:
	ldrh r0, [r2]
	cmp r0, r1
	bne _08066378
	adds r1, r4, #1
	ldr r0, [r3]
	cmp r1, r0
	bge _0806636E
	adds r2, r1, #0
	lsls r0, r4, #1
	adds r1, r0, r5
_08066360:
	ldrh r0, [r1, #2]
	strh r0, [r1]
	adds r2, #1
	adds r1, #2
	ldr r0, [r3]
	cmp r2, r0
	blt _08066360
_0806636E:
	ldr r0, [r3]
	subs r0, #1
	str r0, [r3]
	movs r0, #1
	b _08066384
_08066378:
	adds r2, #2
	adds r4, #1
	ldr r0, [r3]
	cmp r4, r0
	blt _0806634C
_08066382:
	movs r0, #0
_08066384:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806638C
sub_0806638C: @ 0x0806638C
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x24
	ldr r3, [r0, #0x24]
	cmp r1, r3
	bge _080663C2
	adds r2, r1, #1
	cmp r2, r3
	bge _080663B8
	adds r3, r0, #0
	adds r3, #0x28
_080663A2:
	lsls r1, r1, #1
	adds r1, r3, r1
	lsls r0, r2, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r2, #0
	adds r2, #1
	ldr r0, [r4]
	cmp r2, r0
	blt _080663A2
_080663B8:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	movs r0, #1
	b _080663C4
_080663C2:
	movs r0, #0
_080663C4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080663CC
sub_080663CC: @ 0x080663CC
	movs r1, #0
	str r1, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_080663D4
sub_080663D4: @ 0x080663D4
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_080663D8
sub_080663D8: @ 0x080663D8
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0x28]
	bx lr

	thumb_func_start sub_080663E0
sub_080663E0: @ 0x080663E0
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r3, #0
	ldr r2, [r0, #0x24]
	cmp r3, r2
	bge _08066406
	adds r1, r2, #0
	adds r2, r0, #0
	adds r2, #0x28
_080663F4:
	ldrh r0, [r2]
	cmp r0, r4
	bne _080663FE
	movs r0, #1
	b _08066408
_080663FE:
	adds r2, #2
	adds r3, #1
	cmp r3, r1
	blt _080663F4
_08066406:
	movs r0, #0
_08066408:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08066410
sub_08066410: @ 0x08066410
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r5, r0, #0
	adds r5, #0x24
	movs r3, #0
	ldr r2, [r0, #0x24]
	cmp r3, r2
	bge _0806643A
	adds r1, r2, #0
	adds r2, r0, #0
	adds r2, #0x28
_08066428:
	ldrh r0, [r2]
	cmp r0, r4
	bne _08066432
	adds r0, r3, #0
	b _0806643C
_08066432:
	adds r2, #2
	adds r3, #1
	cmp r3, r1
	blt _08066428
_0806643A:
	ldr r0, [r5]
_0806643C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08066444
sub_08066444: @ 0x08066444
	push {r4, r5, r6, lr}
	sub sp, #0x168
	adds r5, r0, #0
	bl sub_0806B070
	movs r1, #1
	movs r2, #0
	bl sub_0806BA38
	bl sub_0806B070
	movs r1, #2
	movs r2, #0
	bl sub_0806BA38
	mov r0, sp
	bl sub_08066584
	mov r0, sp
	bl nullsub_29
	movs r0, #0x1e
	bl sub_0807068C
	add r1, sp, #0x148
	movs r0, #0x6d
	strb r0, [r1]
	movs r0, #0x6f
	strb r0, [r1, #1]
	movs r0, #0x74
	strb r0, [r1, #2]
	movs r0, #0x68
	strb r0, [r1, #3]
	movs r0, #0x65
	strb r0, [r1, #4]
	movs r0, #0x72
	strb r0, [r1, #5]
	movs r0, #0x33
	strb r0, [r1, #6]
	movs r0, #0x20
	strb r0, [r1, #7]
	movs r4, #0
	add r6, sp, #0x154
	b _080664B4
_0806649C:
	ldr r1, [r5, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r6, r4
	strb r0, [r1]
	adds r4, #1
_080664B4:
	ldr r1, [r5, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _0806649C
	ldr r1, [r5, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0x14
	bge _080664EC
	adds r2, r6, #0
	movs r3, #0
_080664E2:
	adds r0, r2, r1
	strb r3, [r0]
	adds r1, #1
	cmp r1, #0x14
	blt _080664E2
_080664EC:
	add r4, sp, #0x148
	adds r0, r6, #0
	movs r1, #0x14
	bl sub_0805D260
	strh r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08051840
	movs r0, #0x1e
	bl sub_0807068C
	mov r0, sp
	movs r1, #2
	bl sub_080666F4
	movs r0, #1
	add sp, #0x168
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08066518
sub_08066518: @ 0x08066518
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r6, r0, #0
	mov r0, sp
	bl sub_08051908
	ldr r1, [sp]
	ldr r0, _08066570 @ =0x68746F6D
	cmp r1, r0
	bne _08066578
	ldr r1, [sp, #4]
	ldr r0, _08066574 @ =0x20337265
	cmp r1, r0
	bne _08066578
	mov r5, sp
	add r4, sp, #0xc
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_0805D260
	ldrh r1, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _08066578
	movs r5, #0
_0806654C:
	adds r1, r4, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _08066566
	ldr r2, [r6, #0x1c]
	adds r2, #0x68
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r6, r0
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
_08066566:
	adds r5, #1
	cmp r5, #0x14
	blt _0806654C
	movs r0, #1
	b _0806657A
	.align 2, 0
_08066570: .4byte 0x68746F6D
_08066574: .4byte 0x20337265
_08066578:
	movs r0, #0
_0806657A:
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08066584
sub_08066584: @ 0x08066584
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	str r0, [sp, #0x5c]
	bl __4Base
	ldr r0, _080666DC @ =0x09F7E3E8
	ldr r1, [sp, #0x5c]
	str r0, [r1, #0x1c]
	adds r1, #0x24
	mov sb, r1
	mov r0, sb
	bl sub_0806D64C
	ldr r7, [sp, #0x5c]
	adds r7, #0x90
	ldr r2, _080666E0 @ =gUnknown_08CE39F8
	mov r8, r2
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	ldr r5, _080666E4 @ =0x09F44F08
	str r5, [sp, #0xc]
	str r2, [sp, #4]
	str r0, [sp, #8]
	add r2, sp, #0x40
	movs r4, #0xa
	strh r4, [r2]
	strh r4, [r2, #2]
	adds r0, r7, #0
	add r1, sp, #4
	bl sub_08071108
	str r5, [sp, #0xc]
	ldr r6, _080666E8 @ =0x09F7E458
	str r6, [r7, #0x1c]
	ldr r1, [sp, #0x5c]
	adds r1, #0xec
	str r1, [sp, #0x60]
	add r1, sp, #0x10
	str r5, [sp, #0x18]
	mov r2, r8
	str r2, [sp, #0x10]
	mov r0, sl
	str r0, [r1, #4]
	add r2, sp, #0x44
	strh r4, [r2]
	strh r4, [r2, #2]
	ldr r0, [sp, #0x60]
	bl sub_08071108
	str r5, [sp, #0x18]
	ldr r1, [sp, #0x60]
	str r6, [r1, #0x1c]
	ldr r1, _080666EC @ =0x00000289
	add r6, sp, #0x1c
	adds r0, r6, #0
	bl sub_080706A0
	add r2, sp, #0x28
	mov r8, r2
	mov r0, r8
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0x34
	adds r0, r4, #0
	bl sub_080706A0
	str r4, [sp]
	mov r0, sb
	movs r1, #1
	adds r2, r6, #0
	mov r3, r8
	bl sub_0806D744
	str r5, [sp, #0x3c]
	str r5, [sp, #0x30]
	str r5, [sp, #0x24]
	add r1, sp, #0x48
	movs r0, #0x40
	movs r2, #0
	strh r2, [r1]
	strh r0, [r1, #2]
	mov r0, sb
	bl sub_0806D814
	add r1, sp, #0x4c
	movs r0, #0xf0
	movs r2, #0x20
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sb
	bl sub_0806D828
	add r1, sp, #0x50
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	mov r0, sb
	bl sub_0806D83C
	ldr r5, _080666F0 @ =0x000003A7
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #3
	bl sub_080706D0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08071150
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r7, #0
	movs r1, #1
	bl sub_08071174
	add r1, sp, #0x54
	movs r4, #0x78
	movs r0, #0x46
	strh r4, [r1]
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl sub_08071194
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	bl sub_080706D0
	ldr r0, [sp, #0x60]
	adds r1, r6, #0
	bl sub_08071150
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	ldr r0, [sp, #0x60]
	movs r1, #1
	bl sub_08071174
	add r1, sp, #0x58
	movs r0, #0x52
	strh r4, [r1]
	strh r0, [r1, #2]
	ldr r0, [sp, #0x60]
	bl sub_08071194
	ldr r0, [sp, #0x5c]
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080666DC: .4byte 0x09F7E3E8
_080666E0: .4byte gUnknown_08CE39F8
_080666E4: .4byte 0x09F44F08
_080666E8: .4byte 0x09F7E458
_080666EC: .4byte 0x00000289
_080666F0: .4byte 0x000003A7

	thumb_func_start sub_080666F4
sub_080666F4: @ 0x080666F4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _08066730 @ =0x09F7E3E8
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0xec
	ldr r4, _08066734 @ =0x09F7E458
	str r4, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	adds r0, r6, #0
	adds r0, #0x90
	str r4, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	adds r0, r6, #0
	adds r0, #0x24
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r6, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066730: .4byte 0x09F7E3E8
_08066734: .4byte 0x09F7E458

	thumb_func_start nullsub_29
nullsub_29: @ 0x08066738
	bx lr
	.align 2, 0

	thumb_func_start sub_0806673C
sub_0806673C: @ 0x0806673C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	mov sl, r0
	bl sub_080872C8
	ldr r0, _08066B1C @ =0x09F7E538
	mov r1, sl
	str r0, [r1, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	add r0, sl
	bl sub_0806D64C
	ldr r5, _08066B20 @ =0x000004D4
	add r5, sl
	ldr r0, _08066B24 @ =gUnknown_08CE39F8
	movs r1, #1
	rsbs r1, r1, #0
	ldr r4, _08066B28 @ =0x09F44F08
	str r4, [sp, #0xc]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r2, sp, #0x34
	movs r0, #0xa
	movs r6, #0
	strh r0, [r2]
	strh r0, [r2, #2]
	adds r0, r5, #0
	add r1, sp, #4
	bl sub_08071108
	str r4, [sp, #0xc]
	ldr r0, _08066B2C @ =0x09F7E458
	str r0, [r5, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #3
	add r0, sl
	bl sub_0806D8EC
	movs r0, #0xb8
	lsls r0, r0, #3
	add r0, sl
	bl sub_080871E4
	movs r0, #0xcd
	lsls r0, r0, #3
	add r0, sl
	bl sub_08071F8C
	ldr r1, _08066B30 @ =0x0000043C
	add r1, sl
	movs r0, #2
	strh r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #3
	add r0, sl
	str r6, [r0]
	mov r0, sl
	bl sub_08087944
	movs r4, #1
	add r7, sp, #0x10
	mov r2, sp
	adds r2, #0x1c
	str r2, [sp, #0x70]
	mov r3, sp
	adds r3, #0x28
	str r3, [sp, #0x74]
	add r0, sp, #0x38
	mov sb, r0
	mov r1, sp
	adds r1, #0x3c
	str r1, [sp, #0x78]
	adds r2, #0x24
	str r2, [sp, #0x7c]
	adds r3, #0x1c
	str r3, [sp, #0x80]
	mov r0, sp
	adds r0, #0x48
	str r0, [sp, #0x84]
	adds r1, #0x10
	str r1, [sp, #0x88]
	adds r2, #0x10
	str r2, [sp, #0x8c]
	adds r3, #0x10
	str r3, [sp, #0x90]
	adds r0, #0x10
	str r0, [sp, #0x94]
	adds r1, #0x10
	str r1, [sp, #0x98]
	adds r2, #0x10
	str r2, [sp, #0x9c]
	adds r3, #0x10
	str r3, [sp, #0xa0]
	adds r0, #0x10
	str r0, [sp, #0xa4]
	adds r1, #0x10
	str r1, [sp, #0xa8]
_08066808:
	movs r0, #0x44
	bl __builtin_new
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	bl sub_08086D38
	adds r1, r0, #0
	mov r0, sl
	bl sub_0808735C
	adds r4, #1
	cmp r4, #0xfa
	ble _08066808
	ldr r1, _08066B34 @ =0x0000028E
	mov r8, r7
	mov r0, r8
	bl sub_080706A0
	ldr r6, [sp, #0x70]
	adds r0, r6, #0
	movs r1, #6
	bl sub_080706A0
	ldr r1, _08066B38 @ =0x00000286
	ldr r4, [sp, #0x74]
	adds r0, r4, #0
	bl sub_080706A0
	movs r5, #0x89
	lsls r5, r5, #3
	add r5, sl
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	mov r2, r8
	adds r3, r6, #0
	bl sub_0806D744
	ldr r2, _08066B28 @ =0x09F44F08
	mov r8, r2
	str r2, [sp, #0x30]
	str r2, [sp, #0x24]
	str r2, [sp, #0x18]
	movs r1, #0
	add r0, sp, #0x38
	strh r1, [r0]
	mov r3, sb
	strh r1, [r3, #2]
	adds r0, r5, #0
	mov r1, sb
	bl sub_0806D814
	movs r1, #0xf0
	movs r2, #0xa0
	add r0, sp, #0x3c
	strh r1, [r0]
	ldr r0, [sp, #0x78]
	strh r2, [r0, #2]
	adds r0, r5, #0
	ldr r1, [sp, #0x78]
	bl sub_0806D828
	ldr r4, _08066B3C @ =0x000004B4
	add r4, sl
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _080668A0
	adds r1, r0, #0
	adds r1, #0x20
_080668A0:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0xc
	movs r5, #0x60
	add r1, sp, #0x40
	strh r2, [r1]
	ldr r1, [sp, #0x7c]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0x7c]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r4, #0x97
	lsls r4, r4, #3
	add r4, sl
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #4
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _080668EC
	adds r1, r0, #0
	adds r1, #0x20
_080668EC:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x1c
	add r1, sp, #0x44
	strh r2, [r1]
	ldr r1, [sp, #0x80]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0x80]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r4, _08066B40 @ =0x000004BC
	add r4, sl
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #8
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _08066934
	adds r1, r0, #0
	adds r1, #0x20
_08066934:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x2c
	add r1, sp, #0x48
	strh r2, [r1]
	ldr r1, [sp, #0x84]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0x84]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r4, #0x98
	lsls r4, r4, #3
	add r4, sl
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0xc
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _0806697E
	adds r1, r0, #0
	adds r1, #0x20
_0806697E:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x3c
	add r1, sp, #0x4c
	strh r2, [r1]
	ldr r1, [sp, #0x88]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0x88]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r4, _08066B44 @ =0x000004C4
	add r4, sl
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0x10
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _080669C6
	adds r1, r0, #0
	adds r1, #0x20
_080669C6:
	str r1, [r4]
	ldr r2, [r1]
	movs r3, #0x20
	ldrsh r0, [r2, r3]
	adds r0, r1, r0
	movs r1, #0xc8
	mov sb, r1
	add r1, sp, #0x50
	mov r3, sb
	strh r3, [r1]
	ldr r1, [sp, #0x8c]
	strh r5, [r1, #2]
	ldr r2, [r2, #0x24]
	ldr r1, [sp, #0x8c]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r4, #0x99
	lsls r4, r4, #3
	add r4, sl
	movs r0, #0xbc
	bl __builtin_new
	movs r1, #0x14
	bl sub_08086FD8
	movs r1, #0
	cmp r0, #0
	beq _08066A14
	adds r1, r0, #0
	adds r1, #0x20
_08066A14:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0xd8
	add r1, sp, #0x54
	strh r2, [r1]
	ldr r1, [sp, #0x90]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0x90]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r5, _08066B48 @ =0x000004CC
	add r5, sl
	movs r0, #0x9c
	bl __builtin_new
	adds r4, r0, #0
	bl sub_08071BF8
	ldr r0, _08066B4C @ =0x09F7E660
	str r0, [r4, #0x1c]
	adds r0, r7, #0
	ldr r1, _08066B50 @ =0x000003A5
	bl sub_080706A0
	ldr r0, [sp, #0x70]
	movs r1, #7
	bl sub_080706A0
	ldr r0, [sp, #0x74]
	ldr r1, _08066B54 @ =0x00000287
	bl sub_080706A0
	adds r0, r4, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	bl sub_0806D9F4
	mov r0, r8
	str r0, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	adds r0, r4, #0
	movs r1, #0x51
	bl sub_0806DB60
	str r4, [r5]
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	movs r2, #0xe8
	movs r3, #0x90
	add r0, sp, #0x58
	strh r2, [r0]
	ldr r0, [sp, #0x94]
	strh r3, [r0, #2]
	ldr r2, [r1, #4]
	adds r0, r4, #0
	ldr r1, [sp, #0x94]
	bl _call_via_r2
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #2
	bl _call_via_r2
	movs r5, #0x9a
	lsls r5, r5, #3
	add r5, sl
	movs r0, #0xe4
	bl __builtin_new
	adds r4, r0, #0
	ldr r1, _08066B58 @ =0x0000027B
	adds r0, r7, #0
	bl sub_080706A0
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08071714
	str r0, [r5]
	mov r1, r8
	str r1, [sp, #0x18]
	ldr r2, [r0, #0x1c]
	adds r2, #0x80
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #7
	movs r6, #0x78
	add r1, sp, #0x5c
	strh r3, [r1]
	ldr r1, [sp, #0x98]
	strh r6, [r1, #2]
	ldr r2, [r2, #4]
	ldr r1, [sp, #0x98]
	bl _call_via_r2
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #2
	bl _call_via_r2
	ldr r0, [r5]
	b _08066B5C
	.align 2, 0
_08066B1C: .4byte 0x09F7E538
_08066B20: .4byte 0x000004D4
_08066B24: .4byte gUnknown_08CE39F8
_08066B28: .4byte 0x09F44F08
_08066B2C: .4byte 0x09F7E458
_08066B30: .4byte 0x0000043C
_08066B34: .4byte 0x0000028E
_08066B38: .4byte 0x00000286
_08066B3C: .4byte 0x000004B4
_08066B40: .4byte 0x000004BC
_08066B44: .4byte 0x000004C4
_08066B48: .4byte 0x000004CC
_08066B4C: .4byte 0x09F7E660
_08066B50: .4byte 0x000003A5
_08066B54: .4byte 0x00000287
_08066B58: .4byte 0x0000027B
_08066B5C:
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r4, _08066E10 @ =0x000004D4
	add r4, sl
	add r0, sp, #0x60
	movs r1, #0
	strb r1, [r0]
	ldr r2, [sp, #0x9c]
	strb r1, [r2, #1]
	strb r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x9c]
	bl sub_0806E9C4
	movs r1, #0x32
	add r0, sp, #0x64
	strh r1, [r0]
	ldr r3, [sp, #0xa0]
	strh r6, [r3, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xa0]
	bl sub_08071194
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806E9E8
	movs r4, #0xa6
	lsls r4, r4, #3
	add r4, sl
	ldr r1, _08066E14 @ =0x000003A5
	adds r0, r7, #0
	bl sub_080706A0
	ldr r0, [sp, #0x70]
	movs r1, #7
	bl sub_080706A0
	ldr r1, _08066E18 @ =0x00000287
	ldr r0, [sp, #0x74]
	bl sub_080706A0
	adds r0, r4, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	bl sub_0806D9F4
	mov r0, r8
	str r0, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806DB60
	movs r1, #0x71
	add r0, sp, #0x68
	mov r2, sb
	strh r2, [r0]
	ldr r3, [sp, #0xa4]
	strh r1, [r3, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xa4]
	bl sub_0806DB74
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806DB7C
	movs r4, #0xb8
	lsls r4, r4, #3
	add r4, sl
	movs r1, #0xd5
	movs r2, #0x72
	add r0, sp, #0x6c
	strh r1, [r0]
	ldr r0, [sp, #0xa8]
	strh r2, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xa8]
	bl sub_0806DF48
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806DF50
	adds r0, r7, #0
	bl __4Base
	ldr r1, _08066E1C @ =0x09F44FF0
	mov r8, r1
	ldr r0, _08066E20 @ =0x09F7FB30
	str r0, [sp, #0x2c]
	movs r6, #0xcd
	lsls r6, r6, #3
	add r6, sl
	ldr r0, _08066E24 @ =gUnknown_080FE1E0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E28 @ =0x09F7FAB0
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E2C @ =0x09F7FA30
	str r0, [sp, #0x2c]
	ldr r0, _08066E30 @ =gUnknown_080FE1E8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E34 @ =0x09F7F9B0
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E38 @ =0x09F7F930
	str r0, [sp, #0x2c]
	ldr r0, _08066E3C @ =gUnknown_080FE1F0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E40 @ =0x09F7F8B0
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E44 @ =0x09F7F830
	str r0, [sp, #0x2c]
	ldr r0, _08066E48 @ =gUnknown_080FE1F8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E4C @ =0x09F7F7B0
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E50 @ =0x09F7F730
	str r0, [sp, #0x2c]
	ldr r0, _08066E54 @ =gUnknown_080FE200
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E58 @ =0x09F7F6B0
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E5C @ =0x09F7F630
	str r0, [sp, #0x2c]
	ldr r0, _08066E60 @ =gUnknown_080FE208
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E64 @ =0x09F7F430
	str r0, [sp, #0x2c]
	ldr r0, _08066E68 @ =gUnknown_080FE210
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl sub_08067304
	mov r0, sl
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08066E10: .4byte 0x000004D4
_08066E14: .4byte 0x000003A5
_08066E18: .4byte 0x00000287
_08066E1C: .4byte 0x09F44FF0
_08066E20: .4byte 0x09F7FB30
_08066E24: .4byte gUnknown_080FE1E0
_08066E28: .4byte 0x09F7FAB0
_08066E2C: .4byte 0x09F7FA30
_08066E30: .4byte gUnknown_080FE1E8
_08066E34: .4byte 0x09F7F9B0
_08066E38: .4byte 0x09F7F930
_08066E3C: .4byte gUnknown_080FE1F0
_08066E40: .4byte 0x09F7F8B0
_08066E44: .4byte 0x09F7F830
_08066E48: .4byte gUnknown_080FE1F8
_08066E4C: .4byte 0x09F7F7B0
_08066E50: .4byte 0x09F7F730
_08066E54: .4byte gUnknown_080FE200
_08066E58: .4byte 0x09F7F6B0
_08066E5C: .4byte 0x09F7F630
_08066E60: .4byte gUnknown_080FE208
_08066E64: .4byte 0x09F7F430
_08066E68: .4byte gUnknown_080FE210

	thumb_func_start sub_08066E6C
sub_08066E6C: @ 0x08066E6C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08066ED8 @ =0x09F7E538
	str r0, [r5, #0x1c]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08066E92
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066E92:
	ldr r1, _08066EDC @ =0x000004CC
	adds r0, r5, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08066EAC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066EAC:
	movs r4, #0
_08066EAE:
	lsls r1, r4, #2
	ldr r2, _08066EE0 @ =0x000004B4
	adds r0, r5, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08066ECC
	ldr r1, [r2]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066ECC:
	adds r4, #1
	cmp r4, #5
	ble _08066EAE
	movs r4, #0
	b _08066F04
	.align 2, 0
_08066ED8: .4byte 0x09F7E538
_08066EDC: .4byte 0x000004CC
_08066EE0: .4byte 0x000004B4
_08066EE4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08087600
	adds r2, r0, #0
	cmp r2, #0
	beq _08066F02
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066F02:
	adds r4, #1
_08066F04:
	adds r0, r5, #0
	bl sub_080875FC
	cmp r4, r0
	blt _08066EE4
	movs r1, #0xcd
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #2
	bl sub_08071FBC
	movs r2, #0xb8
	lsls r2, r2, #3
	adds r0, r5, r2
	movs r1, #2
	bl sub_0808724C
	movs r3, #0xa6
	lsls r3, r3, #3
	adds r0, r5, r3
	movs r1, #2
	bl sub_0806D9A4
	ldr r1, _08066F5C @ =0x000004D4
	adds r0, r5, r1
	ldr r1, _08066F60 @ =0x09F7E458
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	movs r2, #0x89
	lsls r2, r2, #3
	adds r0, r5, r2
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08087348
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066F5C: .4byte 0x000004D4
_08066F60: .4byte 0x09F7E458

	thumb_func_start sub_08066F64
sub_08066F64: @ 0x08066F64
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	movs r1, #0x88
	lsls r1, r1, #3
	adds r5, r4, r1
_08066F78:
	movs r0, #1
	bl sub_0807068C
	ldr r0, [r5]
	cmp r0, #0
	beq _08066F78
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xa
	bl _call_via_r2
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08066FA6
	movs r0, #1
	b _08066FA8
_08066FA6:
	movs r0, #0
_08066FA8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08066FB0
sub_08066FB0: @ 0x08066FB0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08066FC4
	movs r0, #0
	b _08066FCC
_08066FC4:
	adds r0, r4, #0
	bl sub_08067304
	movs r0, #1
_08066FCC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08066FD4
sub_08066FD4: @ 0x08066FD4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080877B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08066FE8
	movs r0, #0
	b _08066FF0
_08066FE8:
	adds r0, r4, #0
	bl sub_08067304
	movs r0, #1
_08066FF0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08066FF8
sub_08066FF8: @ 0x08066FF8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808789C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806700C
	movs r0, #0
	b _08067014
_0806700C:
	adds r0, r4, #0
	bl sub_08067304
	movs r0, #1
_08067014:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806701C
sub_0806701C: @ 0x0806701C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080878E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08067030
	movs r0, #0
	b _08067038
_08067030:
	adds r0, r4, #0
	bl sub_08067304
	movs r0, #1
_08067038:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08067040
sub_08067040: @ 0x08067040
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08086C78
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [r4, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080670A0
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _080670B2
_080670A0:
	ldr r1, [r4, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080670B2:
	adds r0, r6, #0
	bl sub_08067304
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080670C0
sub_080670C0: @ 0x080670C0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08087A98
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080670EE
	movs r0, #0
	b _080670F6
_080670EE:
	adds r0, r4, #0
	bl sub_08067304
	movs r0, #1
_080670F6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080670FC
sub_080670FC: @ 0x080670FC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806713A
	ldr r1, [r4, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806713A
	ldr r3, _08067140 @ =0x000004B4
	adds r0, r4, r3
	ldr r0, [r0]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_0806713A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067140: .4byte 0x000004B4

	thumb_func_start sub_08067144
sub_08067144: @ 0x08067144
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08067184
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
	bne _08067184
	movs r3, #0x98
	lsls r3, r3, #3
	adds r0, r4, r3
	ldr r0, [r0]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_08067184:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806718C
sub_0806718C: @ 0x0806718C
	push {lr}
	adds r1, r0, #0
	movs r2, #0x88
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080671B0
	ldr r0, _080671B4 @ =0x0000043C
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _080671B0
	subs r0, #1
	strh r0, [r2]
	adds r0, r1, #0
	bl sub_08067304
_080671B0:
	pop {r0}
	bx r0
	.align 2, 0
_080671B4: .4byte 0x0000043C

	thumb_func_start sub_080671B8
sub_080671B8: @ 0x080671B8
	push {lr}
	adds r1, r0, #0
	movs r2, #0x88
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080671DC
	ldr r0, _080671E0 @ =0x0000043C
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	cmp r0, #5
	bgt _080671DC
	strh r0, [r2]
	adds r0, r1, #0
	bl sub_08067304
_080671DC:
	pop {r0}
	bx r0
	.align 2, 0
_080671E0: .4byte 0x0000043C

	thumb_func_start sub_080671E4
sub_080671E4: @ 0x080671E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r0, #0
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08067290
	mov r1, sp
	ldr r0, _08067234 @ =gUnknown_080FE218
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r1, _08067238 @ =0x0000043C
	adds r0, r4, r1
	ldrh r0, [r0]
	lsls r1, r0, #3
	mov r2, sp
	adds r0, r2, r1
	movs r3, #2
	ldrsh r2, [r0, r3]
	cmp r2, #0
	ble _0806723C
	movs r7, #4
	ldrsh r0, [r0, r7]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #3
	adds r0, r0, r1
	subs r0, #8
	ldr r5, [r0]
	ldr r6, [r0, #4]
	adds r3, r6, #0
	b _08067242
	.align 2, 0
_08067234: .4byte gUnknown_080FE218
_08067238: .4byte 0x0000043C
_0806723C:
	add r0, sp, #4
	adds r0, r0, r1
	ldr r3, [r0]
_08067242:
	ldr r1, _0806725C @ =0x0000043C
	adds r0, r4, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	add r0, sp
	movs r7, #0
	ldrsh r1, [r0, r7]
	cmp r2, #0
	ble _08067260
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	b _08067262
	.align 2, 0
_0806725C: .4byte 0x0000043C
_08067260:
	adds r0, r1, #0
_08067262:
	adds r0, r4, r0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08067290
	ldr r1, _08067298 @ =0x0000043C
	adds r0, r4, r1
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, _0806729C @ =0x000004B4
	adds r0, r4, r2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_08067290:
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067298: .4byte 0x0000043C
_0806729C: .4byte 0x000004B4

	thumb_func_start sub_080672A0
sub_080672A0: @ 0x080672A0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x88
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	bne _080672E4
	ldr r1, [r4, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _080672E0
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08067304
	b _080672E4
_080672E0:
	movs r0, #2
	str r0, [r5]
_080672E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080672EC
sub_080672EC: @ 0x080672EC
	push {lr}
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	bne _080672FE
	movs r0, #1
	str r0, [r1]
_080672FE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08067304
sub_08067304: @ 0x08067304
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	movs r4, #0
_08067310:
	lsls r1, r4, #2
	ldr r2, _08067414 @ =0x000004B4
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x18
	movs r3, #0x18
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	movs r3, #0
	ldr r5, _08067418 @ =0x0000043C
	adds r0, r7, r5
	ldrh r0, [r0]
	cmp r4, r0
	bne _08067334
	movs r3, #1
_08067334:
	ldr r2, [r2, #4]
	adds r0, r1, #0
	adds r1, r3, #0
	bl _call_via_r2
	adds r4, #1
	cmp r4, #5
	ble _08067310
	ldr r1, [r7, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	movs r3, #0x9a
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r3, _0806741C @ =0x000004D4
	adds r4, r7, r3
	ldr r2, [r6, #0x1c]
	adds r2, #0xf0
	movs r5, #0
	ldrsh r1, [r2, r5]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl _call_via_r2
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0xa6
	lsls r0, r0, #3
	adds r0, r0, r7
	mov r8, r0
	bl sub_08086C78
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xa0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, [r6, #0x1c]
	adds r0, #0xc0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r6, r6, r1
	ldr r1, [r0, #4]
	adds r0, r6, #0
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r1, r0, #0
	mov r0, r8
	bl sub_0806DB38
	ldr r1, [r7, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r5, #0
	ldrsh r0, [r1, r5]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _08067420
	movs r1, #0xb8
	lsls r1, r1, #3
	adds r0, r7, r1
	bl sub_08087260
	b _0806742A
	.align 2, 0
_08067414: .4byte 0x000004B4
_08067418: .4byte 0x0000043C
_0806741C: .4byte 0x000004D4
_08067420:
	movs r2, #0xb8
	lsls r2, r2, #3
	adds r0, r7, r2
	bl sub_08087294
_0806742A:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08067438
sub_08067438: @ 0x08067438
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x120
	adds r7, r0, #0
	bl sub_080872C8
	ldr r0, _080675D0 @ =0x09F7E758
	str r0, [r7, #0x1c]
	movs r1, #0x89
	lsls r1, r1, #3
	adds r0, r7, r1
	bl sub_0806D64C
	movs r2, #0x9c
	lsls r2, r2, #3
	adds r4, r7, r2
	movs r3, #7
	str r3, [sp, #0xb8]
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0xbc]
	mov r1, sp
	adds r1, #0x68
	str r1, [sp, #0xc8]
	add r2, sp, #0x40
	mov sl, r2
	mov r3, sp
	adds r3, #0x4c
	str r3, [sp, #0xc0]
	adds r0, #0x48
	str r0, [sp, #0xc4]
	adds r1, #4
	str r1, [sp, #0xcc]
	mov r2, sp
	adds r2, #0x70
	str r2, [sp, #0xd0]
	adds r3, #0x28
	str r3, [sp, #0xd4]
	adds r0, #0x20
	str r0, [sp, #0xd8]
	adds r1, #0x10
	str r1, [sp, #0xdc]
	adds r2, #0x10
	str r2, [sp, #0xe0]
	adds r3, #0x10
	str r3, [sp, #0xe4]
	adds r0, #0x10
	str r0, [sp, #0xe8]
	adds r1, #0x10
	str r1, [sp, #0xec]
	adds r2, #0x10
	str r2, [sp, #0xf0]
	adds r3, #0x10
	str r3, [sp, #0xf4]
	adds r0, #0x10
	str r0, [sp, #0xf8]
	adds r1, #0x10
	str r1, [sp, #0xfc]
	adds r2, #0x10
	str r2, [sp, #0x100]
	adds r3, #0x10
	str r3, [sp, #0x104]
	adds r0, #0x10
	str r0, [sp, #0x108]
	adds r1, #0x10
	str r1, [sp, #0x10c]
	adds r2, #0x10
	str r2, [sp, #0x110]
	adds r3, #0x10
	str r3, [sp, #0x114]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	ldr r3, _080675D4 @ =0x09F44F08
	add r5, sp, #0x64
	movs r6, #0xa
_080674D6:
	str r3, [sp, #0xc]
	ldr r1, _080675D8 @ =gUnknown_08CE39F8
	str r1, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	add r0, sp, #0x64
	strh r6, [r0]
	strh r6, [r5, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r5, #0
	str r3, [sp, #0x11c]
	bl sub_08071108
	ldr r3, [sp, #0x11c]
	str r3, [sp, #0xc]
	ldr r0, _080675DC @ =0x09F7E458
	mov sb, r0
	str r0, [r4, #0x1c]
	adds r4, #0x5c
	ldr r1, [sp, #0xb8]
	subs r1, #1
	str r1, [sp, #0xb8]
	cmp r1, r8
	bne _080674D6
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r0, _080675D8 @ =gUnknown_08CE39F8
	movs r1, #1
	rsbs r1, r1, #0
	ldr r5, _080675D4 @ =0x09F44F08
	str r5, [sp, #0x18]
	str r0, [sp, #0x10]
	ldr r3, [sp, #0xbc]
	str r1, [r3, #4]
	movs r1, #0xa
	movs r6, #0
	movs r0, #0
	mov r8, r0
	add r0, sp, #0x68
	strh r1, [r0]
	ldr r2, [sp, #0xc8]
	strh r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xbc]
	ldr r2, [sp, #0xc8]
	bl sub_08071108
	str r5, [sp, #0x18]
	mov r3, sb
	str r3, [r4, #0x1c]
	ldr r0, _080675E0 @ =0x0000081C
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_0806D8EC
	ldr r0, _080675E4 @ =0x09F7E890
	str r0, [r4, #0x1c]
	add r0, sp, #0x1c
	ldr r1, _080675E8 @ =0x000003A5
	bl sub_080706A0
	add r0, sp, #0x28
	movs r1, #7
	bl sub_080706A0
	add r0, sp, #0x34
	ldr r1, _080675EC @ =0x00000287
	bl sub_080706A0
	adds r0, r4, #0
	add r1, sp, #0x1c
	add r2, sp, #0x28
	add r3, sp, #0x34
	bl sub_0806D9F4
	str r5, [sp, #0x3c]
	str r5, [sp, #0x30]
	str r5, [sp, #0x24]
	adds r0, r4, #0
	movs r1, #0x3a
	bl sub_0806DB60
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r7, r1
	bl sub_080871E4
	ldr r2, _080675F0 @ =0x00000958
	adds r0, r7, r2
	bl sub_08071D2C
	ldr r3, _080675F4 @ =0x000009F4
	adds r0, r7, r3
	bl sub_08071E5C
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r7, r1
	bl sub_08071F8C
	ldr r2, _080675F8 @ =0x0000043C
	adds r1, r7, r2
	movs r0, #5
	strh r0, [r1]
	ldr r3, _080675FC @ =0x0000043E
	adds r0, r7, r3
	strb r6, [r0]
	ldr r1, _08067600 @ =0x0000043F
	adds r0, r7, r1
	strb r6, [r0]
	adds r2, #4
	adds r0, r7, r2
	mov r3, r8
	str r3, [r0]
	adds r1, #5
	adds r0, r7, r1
	strh r3, [r0]
	bl sub_08086C78
	adds r5, r0, #0
	movs r6, #0
	b _08067634
	.align 2, 0
_080675D0: .4byte 0x09F7E758
_080675D4: .4byte 0x09F44F08
_080675D8: .4byte gUnknown_08CE39F8
_080675DC: .4byte 0x09F7E458
_080675E0: .4byte 0x0000081C
_080675E4: .4byte 0x09F7E890
_080675E8: .4byte 0x000003A5
_080675EC: .4byte 0x00000287
_080675F0: .4byte 0x00000958
_080675F4: .4byte 0x000009F4
_080675F8: .4byte 0x0000043C
_080675FC: .4byte 0x0000043E
_08067600: .4byte 0x0000043F
_08067604:
	movs r0, #0x44
	bl __builtin_new
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08086D38
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_0808735C
	adds r6, #1
_08067634:
	ldr r1, [r5, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _08067604
	ldr r1, _08067A0C @ =0x0000028F
	mov r0, sl
	bl sub_080706A0
	ldr r0, [sp, #0xc0]
	movs r1, #6
	bl sub_080706A0
	ldr r1, _08067A10 @ =0x00000286
	ldr r0, [sp, #0xc4]
	bl sub_080706A0
	movs r0, #0x89
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, [sp, #0xc4]
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #1
	mov r2, sl
	ldr r3, [sp, #0xc0]
	bl sub_0806D744
	ldr r0, _08067A14 @ =0x09F44F08
	str r0, [sp, #0x60]
	str r0, [sp, #0x54]
	str r0, [sp, #0x48]
	movs r1, #0
	add r0, sp, #0x6c
	strh r1, [r0]
	ldr r2, [sp, #0xcc]
	strh r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xcc]
	bl sub_0806D814
	movs r1, #0xf0
	movs r5, #0xa0
	add r0, sp, #0x70
	strh r1, [r0]
	ldr r3, [sp, #0xd0]
	strh r5, [r3, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xd0]
	bl sub_0806D828
	ldr r0, _08067A18 @ =0x000004B4
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0x2e
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _080676BE
	adds r1, r0, #0
	adds r1, #0x20
_080676BE:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0xc
	movs r6, #8
	add r1, sp, #0x74
	strh r2, [r1]
	ldr r1, [sp, #0xd4]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xd4]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r0, #0x97
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0x32
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _0806770A
	adds r1, r0, #0
	adds r1, #0x20
_0806770A:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x1c
	add r1, sp, #0x78
	strh r2, [r1]
	ldr r1, [sp, #0xd8]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xd8]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r0, _08067A1C @ =0x000004BC
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0x36
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _08067752
	adds r1, r0, #0
	adds r1, #0x20
_08067752:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x2c
	add r1, sp, #0x7c
	strh r2, [r1]
	ldr r1, [sp, #0xdc]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xdc]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r0, #0x98
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _0806779C
	adds r1, r0, #0
	adds r1, #0x20
_0806779C:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x70
	add r1, sp, #0x80
	strh r2, [r1]
	ldr r1, [sp, #0xe0]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xe0]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r0, _08067A20 @ =0x000004C4
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #4
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _080677E4
	adds r1, r0, #0
	adds r1, #0x20
_080677E4:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0x80
	add r1, sp, #0x84
	strh r2, [r1]
	ldr r1, [sp, #0xe4]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xe4]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r0, #0x99
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #8
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _0806782E
	adds r1, r0, #0
	adds r1, #0x20
_0806782E:
	str r1, [r4]
	ldr r2, [r1]
	movs r3, #0x20
	ldrsh r0, [r2, r3]
	adds r0, r1, r0
	movs r1, #0x90
	mov r8, r1
	add r1, sp, #0x88
	mov r3, r8
	strh r3, [r1]
	ldr r1, [sp, #0xe8]
	strh r6, [r1, #2]
	ldr r2, [r2, #0x24]
	ldr r1, [sp, #0xe8]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r0, _08067A24 @ =0x000004CC
	adds r4, r7, r0
	movs r0, #0xc0
	bl __builtin_new
	movs r1, #0xc
	bl sub_08086DB8
	movs r1, #0
	cmp r0, #0
	beq _0806787A
	adds r1, r0, #0
	adds r1, #0x20
_0806787A:
	str r1, [r4]
	ldr r2, [r1]
	movs r3, #0x20
	ldrsh r0, [r2, r3]
	adds r0, r1, r0
	add r1, sp, #0x8c
	strh r5, [r1]
	ldr r1, [sp, #0xec]
	strh r6, [r1, #2]
	ldr r2, [r2, #0x24]
	ldr r1, [sp, #0xec]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r0, #0x9a
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r0, #0xbc
	bl __builtin_new
	movs r1, #0x18
	bl sub_08086FD8
	movs r1, #0
	cmp r0, #0
	beq _080678C2
	adds r1, r0, #0
	adds r1, #0x20
_080678C2:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0xb8
	add r1, sp, #0x90
	strh r2, [r1]
	ldr r1, [sp, #0xf0]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xf0]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r0, _08067A28 @ =0x000004D4
	adds r4, r7, r0
	movs r0, #0xbc
	bl __builtin_new
	movs r1, #0x1c
	bl sub_08086FD8
	movs r1, #0
	cmp r0, #0
	beq _0806790A
	adds r1, r0, #0
	adds r1, #0x20
_0806790A:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0xc8
	add r1, sp, #0x94
	strh r2, [r1]
	ldr r1, [sp, #0xf4]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xf4]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	movs r0, #0x9b
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r0, #0xbc
	bl __builtin_new
	movs r1, #0x14
	bl sub_08086FD8
	movs r1, #0
	cmp r0, #0
	beq _08067954
	adds r1, r0, #0
	adds r1, #0x20
_08067954:
	str r1, [r4]
	ldr r3, [r1]
	movs r2, #0x20
	ldrsh r0, [r3, r2]
	adds r0, r1, r0
	movs r2, #0xd8
	add r1, sp, #0x98
	strh r2, [r1]
	ldr r1, [sp, #0xf8]
	strh r6, [r1, #2]
	ldr r2, [r3, #0x24]
	ldr r1, [sp, #0xf8]
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2c]
	movs r1, #4
	bl _call_via_r2
	ldr r0, _08067A2C @ =0x000004DC
	adds r5, r7, r0
	movs r0, #0x9c
	bl __builtin_new
	adds r4, r0, #0
	bl sub_08071AC4
	ldr r0, _08067A30 @ =0x09F7E988
	str r0, [r4, #0x1c]
	add r0, sp, #0x40
	ldr r1, _08067A34 @ =0x000003A5
	bl sub_080706A0
	add r0, sp, #0x4c
	movs r1, #7
	bl sub_080706A0
	add r0, sp, #0x58
	ldr r1, _08067A38 @ =0x00000287
	bl sub_080706A0
	adds r0, r4, #0
	add r1, sp, #0x40
	add r2, sp, #0x4c
	add r3, sp, #0x58
	bl sub_0806D9F4
	ldr r0, _08067A14 @ =0x09F44F08
	str r0, [sp, #0x60]
	str r0, [sp, #0x54]
	str r0, [sp, #0x48]
	adds r0, r4, #0
	movs r1, #0x50
	bl sub_0806DB60
	str r4, [r5]
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	add r0, sp, #0x9c
	strh r6, [r0]
	mov r0, r8
	ldr r3, [sp, #0xfc]
	strh r0, [r3, #2]
	ldr r2, [r1, #4]
	adds r0, r4, #0
	ldr r1, [sp, #0xfc]
	bl _call_via_r2
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #2
	bl _call_via_r2
	movs r0, #0
	mov r8, r0
	ldr r6, [sp, #0x100]
	ldr r1, [sp, #0x104]
	mov sb, r1
	b _08067A3C
	.align 2, 0
_08067A0C: .4byte 0x0000028F
_08067A10: .4byte 0x00000286
_08067A14: .4byte 0x09F44F08
_08067A18: .4byte 0x000004B4
_08067A1C: .4byte 0x000004BC
_08067A20: .4byte 0x000004C4
_08067A24: .4byte 0x000004CC
_08067A28: .4byte 0x000004D4
_08067A2C: .4byte 0x000004DC
_08067A30: .4byte 0x09F7E988
_08067A34: .4byte 0x000003A5
_08067A38: .4byte 0x00000287
_08067A3C:
	movs r2, #0x22
	str r2, [sp, #0x118]
_08067A40:
	movs r0, #0x5c
	mov r4, r8
	muls r4, r0, r4
	adds r5, r4, r7
	movs r3, #0x9c
	lsls r3, r3, #3
	adds r5, r5, r3
	ldr r2, [r5, #0x1c]
	adds r2, #0x90
	adds r4, r4, r3
	adds r4, r7, r4
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	add r1, sp, #0xa0
	movs r3, #0
	strb r3, [r1]
	strb r3, [r6, #1]
	strb r3, [r6, #2]
	ldr r2, [r2, #4]
	adds r1, r6, #0
	bl _call_via_r2
	ldr r3, [r5, #0x1c]
	adds r3, #0x88
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r4, r0
	movs r2, #0x16
	add r1, sp, #0xa4
	strh r2, [r1]
	add r2, sp, #0x118
	ldrh r1, [r2]
	mov r2, sb
	strh r1, [r2, #2]
	ldr r2, [r3, #4]
	mov r1, sb
	bl _call_via_r2
	ldr r1, [r5, #0x1c]
	adds r1, #0x98
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r4, r4, r0
	ldr r2, [r1, #4]
	adds r0, r4, #0
	movs r1, #0
	bl _call_via_r2
	ldr r0, [sp, #0x118]
	adds r0, #0xc
	str r0, [sp, #0x118]
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #7
	ble _08067A40
	movs r1, #0
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r4, r7, r3
	add r0, sp, #0xa8
	strb r1, [r0]
	ldr r0, [sp, #0x108]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x108]
	bl sub_0806E9C4
	movs r1, #0x78
	movs r2, #0x4c
	add r0, sp, #0xac
	strh r1, [r0]
	ldr r1, [sp, #0x10c]
	strh r2, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x10c]
	bl sub_08071194
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806E9E8
	adds r0, r4, #0
	movs r1, #1
	bl sub_08071174
	ldr r2, _08067D30 @ =0x0000081C
	adds r0, r7, r2
	movs r1, #3
	bl sub_0806DB7C
	movs r3, #0x8b
	lsls r3, r3, #4
	adds r0, r7, r3
	movs r1, #0
	bl sub_0806DF50
	ldr r1, _08067D34 @ =0x00000958
	adds r0, r7, r1
	movs r4, #0xdf
	movs r2, #0x1e
	add r1, sp, #0xb0
	strh r4, [r1]
	ldr r3, [sp, #0x110]
	strh r2, [r3, #2]
	ldr r1, [sp, #0x110]
	bl sub_08071DF8
	ldr r1, _08067D38 @ =0x000009F4
	adds r0, r7, r1
	movs r2, #0x7a
	add r1, sp, #0xb4
	strh r4, [r1]
	ldr r3, [sp, #0x114]
	strh r2, [r3, #2]
	ldr r1, [sp, #0x114]
	bl sub_08071F28
	add r0, sp, #0x40
	bl __4Base
	ldr r0, _08067D3C @ =0x09F44FF0
	mov r8, r0
	ldr r0, _08067D40 @ =0x09F7FB30
	str r0, [sp, #0x5c]
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r6, r7, r1
	ldr r0, _08067D44 @ =gUnknown_080FE670
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D48 @ =0x09F7FAB0
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D4C @ =0x09F7FA30
	str r0, [sp, #0x5c]
	ldr r0, _08067D50 @ =gUnknown_080FE678
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D54 @ =0x09F7F9B0
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D58 @ =0x09F7F930
	str r0, [sp, #0x5c]
	ldr r0, _08067D5C @ =gUnknown_080FE680
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D60 @ =0x09F7F8B0
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D64 @ =0x09F7F830
	str r0, [sp, #0x5c]
	ldr r0, _08067D68 @ =gUnknown_080FE688
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D6C @ =0x09F7F7B0
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D70 @ =0x09F7F730
	str r0, [sp, #0x5c]
	ldr r0, _08067D74 @ =gUnknown_080FE690
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D78 @ =0x09F7F6B0
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D7C @ =0x09F7F630
	str r0, [sp, #0x5c]
	ldr r0, _08067D80 @ =gUnknown_080FE698
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D84 @ =0x09F7F530
	str r0, [sp, #0x5c]
	ldr r0, _08067D88 @ =gUnknown_080FE6A0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl sub_08068398
	adds r0, r7, #0
	bl sub_08068408
	adds r0, r7, #0
	add sp, #0x120
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08067D30: .4byte 0x0000081C
_08067D34: .4byte 0x00000958
_08067D38: .4byte 0x000009F4
_08067D3C: .4byte 0x09F44FF0
_08067D40: .4byte 0x09F7FB30
_08067D44: .4byte gUnknown_080FE670
_08067D48: .4byte 0x09F7FAB0
_08067D4C: .4byte 0x09F7FA30
_08067D50: .4byte gUnknown_080FE678
_08067D54: .4byte 0x09F7F9B0
_08067D58: .4byte 0x09F7F930
_08067D5C: .4byte gUnknown_080FE680
_08067D60: .4byte 0x09F7F8B0
_08067D64: .4byte 0x09F7F830
_08067D68: .4byte gUnknown_080FE688
_08067D6C: .4byte 0x09F7F7B0
_08067D70: .4byte 0x09F7F730
_08067D74: .4byte gUnknown_080FE690
_08067D78: .4byte 0x09F7F6B0
_08067D7C: .4byte 0x09F7F630
_08067D80: .4byte gUnknown_080FE698
_08067D84: .4byte 0x09F7F530
_08067D88: .4byte gUnknown_080FE6A0

	thumb_func_start sub_08067D8C
sub_08067D8C: @ 0x08067D8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	ldr r0, _08067DF8 @ =0x09F7E758
	str r0, [r6, #0x1c]
	ldr r1, _08067DFC @ =0x000004DC
	adds r0, r6, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08067DB6
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08067DB6:
	movs r4, #0
_08067DB8:
	lsls r1, r4, #2
	ldr r2, _08067E00 @ =0x000004B4
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08067DD6
	ldr r1, [r2]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08067DD6:
	adds r4, #1
	cmp r4, #9
	ble _08067DB8
	bl sub_08086C78
	mov r8, r0
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r7, #0
	b _08067E56
	.align 2, 0
_08067DF8: .4byte 0x09F7E758
_08067DFC: .4byte 0x000004DC
_08067E00: .4byte 0x000004B4
_08067E04:
	mov r3, r8
	ldr r4, [r3, #0x1c]
	adds r4, #0x68
	movs r0, #0
	ldrsh r5, [r4, r0]
	add r5, r8
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08087600
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08087600
	adds r2, r0, #0
	cmp r2, #0
	beq _08067E54
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08067E54:
	adds r7, #1
_08067E56:
	adds r0, r6, #0
	bl sub_080875FC
	cmp r7, r0
	blt _08067E04
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #2
	bl sub_08071FBC
	ldr r2, _08067EF4 @ =0x000009F4
	adds r0, r6, r2
	movs r1, #2
	bl sub_08071F14
	ldr r3, _08067EF8 @ =0x00000958
	adds r0, r6, r3
	movs r1, #2
	bl sub_08071DE4
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #2
	bl sub_0808724C
	ldr r2, _08067EFC @ =0x0000081C
	adds r0, r6, r2
	ldr r1, _08067F00 @ =0x09F7E890
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0806D9A4
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r0, _08067F04 @ =0x09F7E458
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807113C
	movs r1, #0x9c
	lsls r1, r1, #3
	adds r0, r6, r1
	cmp r0, #0
	beq _08067ED2
	cmp r0, r4
	beq _08067ED2
	adds r5, r0, #0
_08067EBC:
	subs r4, #0x5c
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r5, r4
	bne _08067EBC
_08067ED2:
	movs r3, #0x89
	lsls r3, r3, #3
	adds r0, r6, r3
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r6, #0
	mov r1, sb
	bl sub_08087348
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067EF4: .4byte 0x000009F4
_08067EF8: .4byte 0x00000958
_08067EFC: .4byte 0x0000081C
_08067F00: .4byte 0x09F7E890
_08067F04: .4byte 0x09F7E458

	thumb_func_start sub_08067F08
sub_08067F08: @ 0x08067F08
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	movs r1, #0x88
	lsls r1, r1, #3
	adds r5, r4, r1
_08067F1C:
	movs r0, #1
	bl sub_0807068C
	ldr r0, [r5]
	cmp r0, #0
	beq _08067F1C
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xa
	bl _call_via_r2
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08067F4A
	movs r0, #1
	b _08067F4C
_08067F4A:
	movs r0, #0
_08067F4C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08067F54
sub_08067F54: @ 0x08067F54
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08067FAC
	cmp r4, #0
	beq _08067F9C
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08067F9C:
	adds r0, r5, #0
	bl sub_08068398
	adds r0, r5, #0
	bl sub_08068408
	movs r0, #1
	b _08067FAE
_08067FAC:
	movs r0, #0
_08067FAE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08067FB4
sub_08067FB4: @ 0x08067FB4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x1c]
	adds r5, r0, #0
	adds r5, #0xb8
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r6, r4
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r4, r0, #0
	cmp r4, #0
	bgt _08067FEA
	movs r0, #0
	b _0806800C
_08067FEA:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	subs r2, r4, #1
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r3
	adds r0, r6, #0
	bl sub_08068398
	adds r0, r6, #0
	bl sub_08068408
	movs r0, #1
_0806800C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068014
sub_08068014: @ 0x08068014
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x1c]
	adds r5, r0, #0
	adds r5, #0xb8
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r6, r4
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r4, r0, #0
	adds r5, r4, #1
	ldr r1, [r6, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _0806805C
	movs r0, #0
	b _0806807E
_0806805C:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r5, #0
	bl _call_via_r3
	adds r0, r6, #0
	bl sub_08068398
	adds r0, r6, #0
	bl sub_08068408
	movs r0, #1
_0806807E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08068084
sub_08068084: @ 0x08068084
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08068098
	movs r0, #0
	b _080680A6
_08068098:
	adds r0, r4, #0
	bl sub_08068398
	adds r0, r4, #0
	bl sub_08068408
	movs r0, #1
_080680A6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080680AC
sub_080680AC: @ 0x080680AC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080877B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080680C0
	movs r0, #0
	b _080680CE
_080680C0:
	adds r0, r4, #0
	bl sub_08068398
	adds r0, r4, #0
	bl sub_08068408
	movs r0, #1
_080680CE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080680D4
sub_080680D4: @ 0x080680D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808789C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080680E8
	movs r0, #0
	b _080680F0
_080680E8:
	adds r0, r4, #0
	bl sub_08068408
	movs r0, #1
_080680F0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080680F8
sub_080680F8: @ 0x080680F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080878E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806810C
	movs r0, #0
	b _08068114
_0806810C:
	adds r0, r4, #0
	bl sub_08068408
	movs r0, #1
_08068114:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806811C
sub_0806811C: @ 0x0806811C
	push {lr}
	bl sub_08087944
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806812E
	movs r0, #0
	b _08068130
_0806812E:
	movs r0, #1
_08068130:
	pop {r1}
	bx r1

	thumb_func_start sub_08068134
sub_08068134: @ 0x08068134
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808796C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08068148
	movs r0, #0
	b _08068156
_08068148:
	adds r0, r4, #0
	bl sub_08068398
	adds r0, r4, #0
	bl sub_08068408
	movs r0, #1
_08068156:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806815C
sub_0806815C: @ 0x0806815C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08087A98
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806818A
	movs r0, #0
	b _08068192
_0806818A:
	adds r0, r4, #0
	bl sub_08068408
	movs r0, #1
_08068192:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08068198
sub_08068198: @ 0x08068198
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080681D8
	ldr r1, [r4, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080681D8
	movs r3, #0x98
	lsls r3, r3, #3
	adds r0, r4, r3
	ldr r0, [r0]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_080681D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080681E0
sub_080681E0: @ 0x080681E0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806821E
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
	bne _0806821E
	ldr r3, _08068224 @ =0x000004CC
	adds r0, r4, r3
	ldr r0, [r0]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_0806821E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068224: .4byte 0x000004CC

	thumb_func_start sub_08068228
sub_08068228: @ 0x08068228
	push {lr}
	adds r1, r0, #0
	movs r2, #0x88
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0806824C
	ldr r0, _08068250 @ =0x0000043C
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _0806824C
	subs r0, #1
	strh r0, [r2]
	adds r0, r1, #0
	bl sub_08068408
_0806824C:
	pop {r0}
	bx r0
	.align 2, 0
_08068250: .4byte 0x0000043C

	thumb_func_start sub_08068254
sub_08068254: @ 0x08068254
	push {lr}
	adds r1, r0, #0
	movs r2, #0x88
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08068278
	ldr r0, _0806827C @ =0x0000043C
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	cmp r0, #9
	bgt _08068278
	strh r0, [r2]
	adds r0, r1, #0
	bl sub_08068408
_08068278:
	pop {r0}
	bx r0
	.align 2, 0
_0806827C: .4byte 0x0000043C

	thumb_func_start sub_08068280
sub_08068280: @ 0x08068280
	push {r4, r5, r6, r7, lr}
	sub sp, #0x50
	adds r4, r0, #0
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08068324
	ldr r1, _080682C8 @ =gUnknown_080FE6A8
	mov r0, sp
	movs r2, #0x50
	bl memcpy
	ldr r2, _080682CC @ =0x0000043C
	adds r0, r4, r2
	ldrh r0, [r0]
	lsls r1, r0, #3
	mov r3, sp
	adds r0, r3, r1
	movs r7, #2
	ldrsh r2, [r0, r7]
	cmp r2, #0
	ble _080682D0
	movs r1, #4
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #3
	adds r0, r0, r1
	subs r0, #8
	ldr r5, [r0]
	ldr r6, [r0, #4]
	adds r3, r6, #0
	b _080682D6
	.align 2, 0
_080682C8: .4byte gUnknown_080FE6A8
_080682CC: .4byte 0x0000043C
_080682D0:
	add r0, sp, #4
	adds r0, r0, r1
	ldr r3, [r0]
_080682D6:
	ldr r7, _080682F0 @ =0x0000043C
	adds r0, r4, r7
	ldrh r0, [r0]
	lsls r0, r0, #3
	add r0, sp
	movs r7, #0
	ldrsh r1, [r0, r7]
	cmp r2, #0
	ble _080682F4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	b _080682F6
	.align 2, 0
_080682F0: .4byte 0x0000043C
_080682F4:
	adds r0, r1, #0
_080682F6:
	adds r0, r4, r0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08068324
	ldr r1, _0806832C @ =0x0000043C
	adds r0, r4, r1
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, _08068330 @ =0x000004B4
	adds r0, r4, r2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_08068324:
	add sp, #0x50
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806832C: .4byte 0x0000043C
_08068330: .4byte 0x000004B4

	thumb_func_start sub_08068334
sub_08068334: @ 0x08068334
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x88
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	bne _08068378
	ldr r1, [r4, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _08068374
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08068408
	b _08068378
_08068374:
	movs r0, #2
	str r0, [r5]
_08068378:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08068380
sub_08068380: @ 0x08068380
	push {lr}
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	bne _08068392
	movs r0, #1
	str r0, [r1]
_08068392:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08068398
sub_08068398: @ 0x08068398
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r2, r0, #0
	ldr r0, _080683D4 @ =0x0000043E
	adds r3, r4, r0
	ldrb r1, [r3]
	cmp r2, r1
	bge _080683D8
	movs r1, #0
	strb r2, [r3]
	b _080683F6
	.align 2, 0
_080683D4: .4byte 0x0000043E
_080683D8:
	adds r0, r1, #0
	adds r0, #8
	cmp r2, r0
	blt _080683F4
	subs r0, r2, #7
	strb r0, [r3]
	subs r0, r2, r0
	ldr r3, _080683F0 @ =0x0000043F
	adds r1, r4, r3
	strb r0, [r1]
	b _080683FC
	.align 2, 0
_080683F0: .4byte 0x0000043F
_080683F4:
	subs r1, r2, r1
_080683F6:
	ldr r2, _08068404 @ =0x0000043F
	adds r0, r4, r2
	strb r1, [r0]
_080683FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068404: .4byte 0x0000043F

	thumb_func_start sub_08068408
sub_08068408: @ 0x08068408
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
_0806840E:
	lsls r1, r5, #2
	ldr r2, _08068460 @ =0x000004B4
	adds r0, r4, r2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x18
	movs r3, #0x18
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	movs r3, #0
	ldr r6, _08068464 @ =0x0000043C
	adds r0, r4, r6
	ldrh r0, [r0]
	cmp r5, r0
	bne _08068432
	movs r3, #1
_08068432:
	ldr r2, [r2, #4]
	adds r0, r1, #0
	adds r1, r3, #0
	bl _call_via_r2
	adds r5, #1
	cmp r5, #9
	ble _0806840E
	ldr r1, [r4, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _08068468
	adds r0, r4, #0
	bl sub_08068474
	b _0806846E
	.align 2, 0
_08068460: .4byte 0x000004B4
_08068464: .4byte 0x0000043C
_08068468:
	adds r0, r4, #0
	bl sub_08068674
_0806846E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08068474
sub_08068474: @ 0x08068474
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	add r1, sp, #0xc
	mov sl, r1
	movs r2, #0x9c
	lsls r2, r2, #3
	mov sb, r2
_08068490:
	ldr r3, _08068518 @ =0x0000043E
	adds r0, r6, r3
	ldrb r1, [r0]
	adds r0, r6, #0
	mov r2, r8
	bl sub_08068718
	adds r7, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	bge _0806851C
	movs r0, #0x5c
	mov r5, r8
	muls r5, r0, r5
	adds r4, r5, r6
	add r4, sb
	ldr r1, [r4, #0x1c]
	adds r1, #0x78
	add r5, sb
	adds r5, r6, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	ldr r4, [r4, #0x1c]
	adds r4, #0x80
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	adds r2, #0xf0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	b _0806853E
	.align 2, 0
_08068518: .4byte 0x0000043E
_0806851C:
	movs r0, #0x5c
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r0, r6
	add r1, sb
	ldr r2, [r1, #0x1c]
	adds r2, #0x78
	add r0, sb
	adds r0, r6, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
_0806853E:
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #7
	ble _08068490
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r4, r6, r2
	mov r0, sp
	bl sub_0806E274
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806E948
	ldr r3, _080685E0 @ =0x0000081C
	adds r4, r6, r3
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806DB38
	ldr r0, _080685E4 @ =0x0000043F
	adds r5, r6, r0
	ldrb r1, [r5]
	movs r2, #0x78
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x1c
	add r1, sp, #0xc
	strh r2, [r1]
	mov r1, sl
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_0806DB74
	ldr r1, [r6, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r3, r0, #0
	cmp r3, #0
	bne _080685E8
	movs r0, #0x8b
	lsls r0, r0, #4
	adds r4, r6, r0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806DEC4
	adds r0, r4, #0
	bl sub_08087260
	ldrb r2, [r5]
	add r1, sp, #0x10
	movs r3, #0xc8
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0x1c
	strh r3, [r1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_0806DF48
	b _08068632
	.align 2, 0
_080685E0: .4byte 0x0000081C
_080685E4: .4byte 0x0000043F
_080685E8:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
	ldr r3, _08068668 @ =0x0000043E
	adds r1, r6, r3
	ldrb r1, [r1]
	subs r4, r0, r1
	movs r0, #0x8b
	lsls r0, r0, #4
	adds r5, r6, r0
	movs r1, #0
	cmp r4, #7
	bhi _08068610
	movs r1, #1
_08068610:
	adds r0, r5, #0
	bl sub_0806DEC4
	adds r0, r5, #0
	bl sub_08087294
	add r1, sp, #0x14
	movs r2, #0xc8
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x1c
	strh r2, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	bl sub_0806DF48
_08068632:
	ldr r1, _0806866C @ =0x00000958
	adds r4, r6, r1
	adds r0, r6, #0
	bl sub_0806871C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806DB38
	ldr r2, _08068670 @ =0x000009F4
	adds r4, r6, r2
	adds r0, r6, #0
	bl sub_08068734
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806DB38
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068668: .4byte 0x0000043E
_0806866C: .4byte 0x00000958
_08068670: .4byte 0x000009F4

	thumb_func_start sub_08068674
sub_08068674: @ 0x08068674
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r4, #0
	movs r6, #0x9c
	lsls r6, r6, #3
_08068680:
	movs r0, #0x5c
	muls r0, r4, r0
	adds r1, r0, r5
	adds r1, r1, r6
	ldr r2, [r1, #0x1c]
	adds r2, #0x78
	adds r0, r0, r6
	adds r0, r5, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
	cmp r4, #7
	ble _08068680
	movs r0, #0xf8
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, _08068708 @ =0x000003A7
	mov r0, sp
	movs r2, #1
	bl sub_080706D0
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806E948
	ldr r1, _0806870C @ =0x0000081C
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806DB38
	movs r3, #0x8b
	lsls r3, r3, #4
	adds r4, r5, r3
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806DEC4
	adds r0, r4, #0
	bl sub_08087260
	ldr r1, _08068710 @ =0x00000958
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806DB38
	ldr r3, _08068714 @ =0x000009F4
	adds r0, r5, r3
	movs r1, #0
	bl sub_0806DB38
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068708: .4byte 0x000003A7
_0806870C: .4byte 0x0000081C
_08068710: .4byte 0x00000958
_08068714: .4byte 0x000009F4

	thumb_func_start sub_08068718
sub_08068718: @ 0x08068718
	adds r0, r1, r2
	bx lr

	thumb_func_start sub_0806871C
sub_0806871C: @ 0x0806871C
	push {lr}
	ldr r1, _08068730 @ =0x0000043E
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806872A
	movs r0, #1
_0806872A:
	pop {r1}
	bx r1
	.align 2, 0
_08068730: .4byte 0x0000043E

	thumb_func_start sub_08068734
sub_08068734: @ 0x08068734
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0806876C @ =0x0000043E
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r1, #8
	adds r0, r4, #0
	movs r2, #0
	bl sub_08068718
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, #0x90
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r1, #0
	cmp r5, r0
	bge _08068764
	movs r1, #1
_08068764:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806876C: .4byte 0x0000043E

	thumb_func_start sub_08068770
sub_08068770: @ 0x08068770
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_0805D2A4
	ldr r0, _080687A0 @ =0x09F7EA80
	str r0, [r4, #4]
	ldr r0, _080687A4 @ =0x09C90960
	movs r1, #1
	rsbs r1, r1, #0
	ldr r5, _080687A8 @ =0x09F44F08
	str r5, [sp, #8]
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r4, #0
	mov r1, sp
	bl sub_0805D2D4
	str r5, [sp, #8]
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080687A0: .4byte 0x09F7EA80
_080687A4: .4byte 0x09C90960
_080687A8: .4byte 0x09F44F08

	thumb_func_start sub_080687AC
sub_080687AC: @ 0x080687AC
	push {lr}
	ldr r2, _080687BC @ =0x09F7EA80
	str r2, [r0, #4]
	bl sub_0805D2B4
	pop {r0}
	bx r0
	.align 2, 0
_080687BC: .4byte 0x09F7EA80

	thumb_func_start sub_080687C0
sub_080687C0: @ 0x080687C0
	ldrb r2, [r0]
	strb r2, [r1]
	ldr r2, [r0, #0x18]
	movs r3, #0
	strh r2, [r1, #2]
	ldrh r2, [r0, #0x1c]
	strh r2, [r1, #4]
	strb r3, [r1, #6]
	strb r3, [r1, #7]
	strb r3, [r1, #8]
	ldr r0, [r0, #0x30]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_080687DC
sub_080687DC: @ 0x080687DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r0, [r6]
	cmp r0, #8
	bhi _0806886E
	lsls r0, r0, #2
	ldr r1, _080687FC @ =_08068800
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080687FC: .4byte _08068800
_08068800: @ jump table
	.4byte _0806886E @ case 0
	.4byte _0806886E @ case 1
	.4byte _0806886E @ case 2
	.4byte _08068824 @ case 3
	.4byte _08068824 @ case 4
	.4byte _0806884E @ case 5
	.4byte _0806886E @ case 6
	.4byte _0806886E @ case 7
	.4byte _0806886E @ case 8
_08068824:
	ldrh r0, [r6, #0xe]
	ldrh r1, [r6, #0x10]
	adds r0, r0, r1
	asrs r4, r0, #1
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl sub_08090F7C
	adds r4, r4, r0
	ldr r0, [r5, #0x18]
	adds r0, r0, r4
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x20]
	cmp r1, r0
	ble _0806884A
	adds r1, r0, #0
_0806884A:
	str r1, [r5, #0x18]
	b _0806886E
_0806884E:
	ldrh r0, [r6, #0xe]
	ldrh r1, [r6, #0x10]
	adds r0, r0, r1
	lsrs r0, r0, #1
	ldrh r1, [r5, #0x1c]
	adds r0, r0, r1
	strh r0, [r5, #0x1c]
	movs r3, #0x1c
	ldrsh r2, [r5, r3]
	movs r4, #0x24
	ldrsh r0, [r5, r4]
	adds r1, r0, #0
	cmp r0, r2
	ble _0806886C
	adds r1, r2, #0
_0806886C:
	strh r1, [r5, #0x1c]
_0806886E:
	ldrb r0, [r6, #0x12]
	cmp r0, #0
	beq _08068894
	ldrb r1, [r6, #0x14]
	cmp r1, #1
	bne _08068886
	subs r0, #1
	lsls r1, r0
	ldrh r0, [r5, #0x30]
	orrs r1, r0
	strh r1, [r5, #0x30]
	b _08068894
_08068886:
	ldrb r0, [r6, #0x12]
	subs r0, #1
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r5, #0x30]
	bics r0, r1
	strh r0, [r5, #0x30]
_08068894:
	mov r0, r8
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	mov r0, r8
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080688B0
sub_080688B0: @ 0x080688B0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r1, #2
	ldrsh r0, [r2, r1]
	movs r1, #0
	cmp r0, #0
	bgt _080688C8
	ldr r0, [r3, #0x18]
	cmp r0, #0
	ble _080688C8
	movs r1, #1
_080688C8:
	strb r1, [r2, #6]
	ldr r1, [r4]
	ldr r4, [r3, #0x18]
	ldrh r5, [r3, #0x1c]
	cmp r1, #3
	blt _080688FA
	cmp r1, #4
	ble _080688DE
	cmp r1, #5
	beq _080688EA
	b _080688FA
_080688DE:
	ldr r0, [r3, #0x20]
	cmp r4, r0
	blt _080688FA
	movs r0, #1
	strb r0, [r2, #7]
	b _080688FA
_080688EA:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r6, #0x24
	ldrsh r1, [r3, r6]
	cmp r0, r1
	blt _080688FA
	movs r0, #1
	strb r0, [r2, #8]
_080688FA:
	ldrh r0, [r2, #2]
	subs r0, r4, r0
	strh r0, [r2, #2]
	ldrh r0, [r2, #4]
	subs r0, r5, r0
	strh r0, [r2, #4]
	ldrh r0, [r2, #0xc]
	ldrh r1, [r3, #0x30]
	eors r0, r1
	strh r0, [r2, #0xc]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

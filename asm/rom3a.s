.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_080977B4
sub_080977B4: @ 0x080977B4
	push {lr}
	movs r0, #0x80
	bl __builtin_new
	bl sub_0805EE80
	pop {r1}
	bx r1

	thumb_func_start sub_080977C4
sub_080977C4: @ 0x080977C4
	ldr r0, _080977C8 @ =gUnknown_080F2B58
	bx lr
	.align 2, 0
_080977C8: .4byte gUnknown_080F2B58

	thumb_func_start sub_080977CC
sub_080977CC: @ 0x080977CC
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080977E8 @ =_vt.14ShowDownAsLose
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080977E8: .4byte _vt.14ShowDownAsLose

	thumb_func_start sub_080977EC
sub_080977EC: @ 0x080977EC
	ldr r0, _080977F0 @ =gUnknown_080F29E8
	bx lr
	.align 2, 0
_080977F0: .4byte gUnknown_080F29E8

	thumb_func_start sub_080977F4
sub_080977F4: @ 0x080977F4
	push {lr}
	ldr r2, _08097804 @ =_vt.3Unk
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_08097804: .4byte _vt.3Unk

	thumb_func_start sub_08097808
sub_08097808: @ 0x08097808
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _08097824 @ =_vt.16ShowDownAsEscape
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097824: .4byte _vt.16ShowDownAsEscape

	thumb_func_start sub_08097828
sub_08097828: @ 0x08097828
	ldr r0, _0809782C @ =gUnknown_080F29C4
	bx lr
	.align 2, 0
_0809782C: .4byte gUnknown_080F29C4

	thumb_func_start sub_08097830
sub_08097830: @ 0x08097830
	push {lr}
	ldr r2, _08097840 @ =_vt.3Unk
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_08097840: .4byte _vt.3Unk

	thumb_func_start sub_08097844
sub_08097844: @ 0x08097844
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _08097860 @ =_vt.13ShowDownAsWin
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097860: .4byte _vt.13ShowDownAsWin

	thumb_func_start sub_08097864
sub_08097864: @ 0x08097864
	ldr r0, _08097868 @ =gUnknown_080F29A0
	bx lr
	.align 2, 0
_08097868: .4byte gUnknown_080F29A0

	thumb_func_start sub_0809786C
sub_0809786C: @ 0x0809786C
	push {lr}
	ldr r2, _0809787C @ =_vt.3Unk
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_0809787C: .4byte _vt.3Unk

	thumb_func_start sub_08097880
sub_08097880: @ 0x08097880
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_0805EEC0
	pop {r1}
	bx r1

	thumb_func_start sub_08097890
sub_08097890: @ 0x08097890
	ldr r0, _08097894 @ =gUnknown_080F2984
	bx lr
	.align 2, 0
_08097894: .4byte gUnknown_080F2984

	thumb_func_start sub_08097898
sub_08097898: @ 0x08097898
	push {lr}
	ldr r2, _080978A8 @ =_vt.3Unk
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080978A8: .4byte _vt.3Unk

	thumb_func_start sub_080978AC
sub_080978AC: @ 0x080978AC
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_0805EEF8
	pop {r1}
	bx r1

	thumb_func_start sub_080978BC
sub_080978BC: @ 0x080978BC
	ldr r0, _080978C0 @ =gUnknown_080F2968
	bx lr
	.align 2, 0
_080978C0: .4byte gUnknown_080F2968

	thumb_func_start sub_080978C4
sub_080978C4: @ 0x080978C4
	push {lr}
	ldr r2, _080978D4 @ =_vt.3Unk
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080978D4: .4byte _vt.3Unk

	thumb_func_start sub_080978D8
sub_080978D8: @ 0x080978D8
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_0805EF34
	pop {r1}
	bx r1

	thumb_func_start sub_080978E8
sub_080978E8: @ 0x080978E8
	ldr r0, _080978EC @ =gUnknown_080F294C
	bx lr
	.align 2, 0
_080978EC: .4byte gUnknown_080F294C

	thumb_func_start sub_080978F0
sub_080978F0: @ 0x080978F0
	push {lr}
	ldr r2, _08097900 @ =_vt.3Unk
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_08097900: .4byte _vt.3Unk

	thumb_func_start sub_08097904
sub_08097904: @ 0x08097904
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_0805EF74
	pop {r1}
	bx r1

	thumb_func_start sub_08097914
sub_08097914: @ 0x08097914
	ldr r0, _08097918 @ =gUnknown_080F2934
	bx lr
	.align 2, 0
_08097918: .4byte gUnknown_080F2934

	thumb_func_start sub_0809791C
sub_0809791C: @ 0x0809791C
	push {lr}
	ldr r2, _0809792C @ =_vt.3Unk
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_0809792C: .4byte _vt.3Unk

	thumb_func_start MaskedManBattleB_ctor
MaskedManBattleB_ctor: @ 0x08097930
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0809794C @ =0x00000F98
	bl __builtin_new
	adds r1, r4, #0
	bl sub_08097A28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809794C: .4byte 0x00000F98

	thumb_func_start MaskedManBattleA_ctor
MaskedManBattleA_ctor: @ 0x08097950
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0809796C @ =0x00000F9C
	bl __builtin_new
	adds r1, r4, #0
	bl sub_08097A94
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809796C: .4byte 0x00000F9C

	thumb_func_start PorkyBattle_ctor
PorkyBattle_ctor: @ 0x08097970
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0809798C @ =0x00000F98
	bl __builtin_new
	adds r1, r4, #0
	bl sub_08097B5C
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809798C: .4byte 0x00000F98

	thumb_func_start sub_08097990
sub_08097990: @ 0x08097990
	push {lr}
	adds r2, r0, #0
	ldr r0, [r1, #0x20]
	ldr r3, _080979CC @ =0x00000F94
	adds r1, r2, r3
	ldr r1, [r1]
	cmp r0, r1
	bne _080979C6
	ldr r1, [r2, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc0
	bl _call_via_r2
_080979C6:
	pop {r0}
	bx r0
	.align 2, 0
_080979CC: .4byte 0x00000F94

	thumb_func_start PorkyBotBattle_ctor
PorkyBotBattle_ctor: @ 0x080979D0
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080979EC @ =0x00000F98
	bl __builtin_new
	adds r1, r4, #0
	bl sub_08097BC8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080979EC: .4byte 0x00000F98

	thumb_func_start MasterEddyBattle_ctor
MasterEddyBattle_ctor: @ 0x080979F0
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0xf9
	lsls r0, r0, #4
	bl __builtin_new
	adds r1, r4, #0
	bl sub_08097C34
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08097A0C
sub_08097A0C: @ 0x08097A0C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0xf9
	lsls r0, r0, #4
	bl __builtin_new
	adds r1, r4, #0
	bl DefaultBattle_ctor
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08097A28
sub_08097A28: @ 0x08097A28
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097A8C @ =vt_09F46450
	str r0, [r5, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r0, r5, #0
	bl sub_08097CB4
	adds r0, r5, #0
	bl sub_08097C94
	ldr r0, _08097A90 @ =vt_09F45630
	str r0, [r5, #0x1c]
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08097A8C: .4byte vt_09F46450
_08097A90: .4byte vt_09F45630

	thumb_func_start sub_08097A94
sub_08097A94: @ 0x08097A94
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097B44 @ =vt_09F46450
	str r0, [r5, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	ldr r3, _08097B48 @ =0x00000F6C
	adds r0, r5, r3
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0x18
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r3, #0x18
	adds r0, r5, r3
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r0, r5, #0
	bl sub_08097CB4
	adds r0, r5, #0
	bl sub_08097C94
	ldr r0, _08097B4C @ =vt_09F458E8
	str r0, [r5, #0x1c]
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	str r4, [r0]
	ldr r3, _08097B50 @ =0x00000F94
	adds r0, r5, r3
	str r4, [r0]
	movs r1, #0
	ldr r0, _08097B54 @ =gCharStats
	movs r2, #0
	adds r0, #0x18
_08097AF6:
	cmp r1, #2
	beq _08097AFC
	str r2, [r0]
_08097AFC:
	adds r0, #0x6c
	adds r1, #1
	cmp r1, #0xf
	ble _08097AF6
	ldr r0, _08097B58 @ =0x00000F98
	adds r4, r5, r0
	movs r0, #0x38
	bl __builtin_new
	movs r1, #0xa3
	bl sub_0806FF6C
	str r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08097B44: .4byte vt_09F46450
_08097B48: .4byte 0x00000F6C
_08097B4C: .4byte vt_09F458E8
_08097B50: .4byte 0x00000F94
_08097B54: .4byte gCharStats
_08097B58: .4byte 0x00000F98

	thumb_func_start sub_08097B5C
sub_08097B5C: @ 0x08097B5C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097BC0 @ =vt_09F46450
	str r0, [r5, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r0, r5, #0
	bl sub_08097CB4
	adds r0, r5, #0
	bl sub_08097C94
	ldr r0, _08097BC4 @ =vt_09F45BF8
	str r0, [r5, #0x1c]
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08097BC0: .4byte vt_09F46450
_08097BC4: .4byte vt_09F45BF8

	thumb_func_start sub_08097BC8
sub_08097BC8: @ 0x08097BC8
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097C2C @ =vt_09F46450
	str r0, [r5, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r1, #0xc
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	adds r0, r5, #0
	bl sub_08097CB4
	adds r0, r5, #0
	bl sub_08097C94
	ldr r0, _08097C30 @ =vt_09F45ED0
	str r0, [r5, #0x1c]
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	strb r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08097C2C: .4byte vt_09F46450
_08097C30: .4byte vt_09F45ED0

	thumb_func_start sub_08097C34
sub_08097C34: @ 0x08097C34
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097C88 @ =vt_09F46450
	str r0, [r4, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r2, _08097C8C @ =0x00000F6C
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0xc
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0xc
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, r4, #0
	bl sub_08097CB4
	adds r0, r4, #0
	bl sub_08097C94
	ldr r0, _08097C90 @ =vt_09F461B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097C88: .4byte vt_09F46450
_08097C8C: .4byte 0x00000F6C
_08097C90: .4byte vt_09F461B0

	thumb_func_start sub_08097C94
sub_08097C94: @ 0x08097C94
	push {lr}
	ldr r0, _08097CAC @ =0x00000173
	movs r1, #1
	bl set_event_flag
	ldr r0, _08097CB0 @ =0x00000285
	movs r1, #1
	bl set_event_flag
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08097CAC: .4byte 0x00000173
_08097CB0: .4byte 0x00000285

	thumb_func_start sub_08097CB4
sub_08097CB4: @ 0x08097CB4
	push {r4, lr}
	adds r4, r0, #0
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
	beq _08097CD8
	movs r0, #0
	b _08097CFE
_08097CD8:
	ldr r1, _08097D04 @ =gSave
	adds r2, r4, #0
	adds r2, #0x80
	ldr r0, _08097D08 @ =0x040000D4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08097D0C @ =0x80000410
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08097D10 @ =gCharStats
	movs r3, #0x8a
	lsls r3, r3, #4
	adds r2, r4, r3
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08097D14 @ =0x80000360
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #1
_08097CFE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097D04: .4byte gSave
_08097D08: .4byte 0x040000D4
_08097D0C: .4byte 0x80000410
_08097D10: .4byte gCharStats
_08097D14: .4byte 0x80000360

	thumb_func_start DefaultBattle_ctor
DefaultBattle_ctor: @ 0x08097D18
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0805D8FC
	ldr r0, _08097D68 @ =vt_09F46450
	str r0, [r4, #0x1c]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r2, _08097D6C @ =0x00000F6C
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0xc
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0xc
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, r4, #0
	bl sub_08097CB4
	adds r0, r4, #0
	bl sub_08097C94
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097D68: .4byte vt_09F46450
_08097D6C: .4byte 0x00000F6C

	thumb_func_start sub_08097D70
sub_08097D70: @ 0x08097D70
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
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
	bne _08097D9A
	adds r0, r4, #0
	bl battle_110__6Battle
	b _08097DD6
_08097D9A:
	bl sub_08074614
	cmp r0, #0
	beq _08097DBA
	bl sub_08074614
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	ldr r2, [r2, #4]
	bl _call_via_r2
_08097DBA:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x96
	lsls r2, r2, #2
	mov r3, sp
	movs r0, #1
	strb r0, [r3]
	add r3, sp, #4
	movs r0, #0
	strb r0, [r3]
	movs r0, #0
	movs r3, #1
	bl sub_08074494
_08097DD6:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08097DE0
sub_08097DE0: @ 0x08097DE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x12c
	adds r7, r0, #0
	add r0, sp, #8
	movs r1, #0
	bl __5GuestUs
	ldr r0, _08097EFC @ =0x0000027A
	ldr r1, _08097F00 @ =0x00000F94
	adds r1, r1, r7
	mov sb, r1
	ldr r1, [r1]
	bl sub_080741AC
	add r1, sp, #8
	bl sub_080742EC
	movs r0, #0x78
	bl setsleep
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r2, [r0]
	movs r0, #0xc3
	adds r1, r2, #0
	bl playSeq
	movs r0, #0x3c
	bl setsleep
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	mov r8, r0
	add r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08097F04 @ =0x0000065F
	add r5, sp, #0x10c
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0x118
	movs r4, #0
	adds r0, r1, #0
	strb r4, [r0]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r5, #0
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	movs r0, #0x78
	bl setsleep
	mov r3, sb
	ldr r2, [r3]
	movs r0, #0xc0
	adds r1, r2, #0
	bl playSeq
	movs r0, #0x96
	lsls r0, r0, #1
	mov sb, r0
	bl setsleep
	ldr r3, [r7, #0x1c]
	add r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xcc
	lsls r2, r2, #3
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0x11c
	adds r0, r1, #0
	strb r4, [r0]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r5, #0
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r0, sp, #4
	strb r4, [r0]
	movs r0, #0x90
	mov r2, sb
	movs r3, #1
	bl sub_08074518
	ldr r1, [r7, #0x1c]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	add r6, sp, #0x120
	movs r0, #0x92
	lsls r0, r0, #1
	add r0, sp
	mov sb, r0
	movs r1, #0x94
	lsls r1, r1, #1
	add r1, sp
	mov sl, r1
	b _08097F26
	.align 2, 0
_08097EFC: .4byte 0x0000027A
_08097F00: .4byte 0x00000F94
_08097F04: .4byte 0x0000065F
_08097F08:
	adds r0, r4, #0
	bl sub_080729F8
	adds r1, r0, #0
	adds r1, #0x20
	ldr r2, [r0, #0x20]
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	ldr r2, [r2, #0x14]
	adds r0, r1, #0
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
_08097F26:
	bl getPartyCount
	cmp r4, r0
	blt _08097F08
	movs r4, #0
	b _08097F50
_08097F32:
	adds r0, r4, #0
	bl sub_08072E18__Fi
	adds r1, r0, #0
	adds r1, #0x20
	ldr r2, [r0, #0x20]
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	ldr r2, [r2, #0x14]
	adds r0, r1, #0
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
_08097F50:
	bl sub_08072DFC__Fv
	cmp r4, r0
	blt _08097F32
	movs r0, #0x96
	lsls r0, r0, #1
	mov r8, r0
	bl setsleep
	ldr r3, [r7, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098028 @ =0x00000661
	add r5, sp, #0x10c
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	movs r4, #0
	add r0, sp, #0x120
	strb r4, [r0]
	strb r4, [r6, #1]
	strb r4, [r6, #2]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	bl setsleep
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809802C @ =0x00000662
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r0, sp, #0x124
	strb r4, [r0]
	mov r3, sb
	strb r4, [r3, #1]
	strb r4, [r3, #2]
	adds r0, r5, #0
	mov r1, sb
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	bl setsleep
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098030 @ =0x00000663
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r0, sp, #0x128
	strb r4, [r0]
	mov r3, sl
	strb r4, [r3, #1]
	strb r4, [r3, #2]
	adds r0, r5, #0
	mov r1, sl
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #8
	movs r1, #2
	bl _._5Guest
	movs r0, #1
	add sp, #0x12c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08098028: .4byte 0x00000661
_0809802C: .4byte 0x00000662
_08098030: .4byte 0x00000663

	thumb_func_start sub_08098034
sub_08098034: @ 0x08098034
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r7, #0x96
	lsls r7, r7, #2
	mov r0, sp
	movs r3, #1
	mov sb, r3
	strb r3, [r0]
	add r0, sp, #4
	mov r8, r0
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	movs r0, #0
	movs r1, #0xc8
	adds r2, r7, #0
	bl sub_08074518
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r5, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #2
	mov sl, r2
	add r3, sl
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080981FC @ =0x0000065B
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x14
	movs r4, #0x7f
	movs r6, #0
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080736B4
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	ldr r3, [r5, #0x1c]
	add r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098200 @ =0x0000065C
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x18
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080736B4
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	adds r4, #0x81
	mov r0, sp
	mov r3, sb
	strb r3, [r0]
	mov r0, r8
	strb r6, [r0]
	movs r0, #0x90
	adds r1, r4, #0
	movs r2, #0x78
	movs r3, #1
	bl sub_08074518
	ldr r1, [r5, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc8
	bl _call_via_r2
	mov r0, sp
	mov r1, sb
	strb r1, [r0]
	mov r2, r8
	strb r6, [r2]
	movs r0, #0x90
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_08074494
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r5, #0x1c]
	add r3, sl
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08098204 @ =0x0000065D
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x1c
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x3c
	bl setsleep
	ldr r1, _08098208 @ =0x00000F94
	adds r4, r5, r1
	ldr r2, [r4]
	movs r0, #0x42
	adds r1, r2, #0
	bl playSeq
	movs r0, #0x78
	bl setsleep
	movs r0, #0xf0
	lsls r0, r0, #2
	bl playSound
	ldr r0, [r4]
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
	movs r0, #0xf0
	bl setsleep
	ldr r2, [r4]
	movs r0, #0x43
	adds r1, r2, #0
	bl playSeq
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r5, #0x1c]
	add r3, sl
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809820C @ =0x0000065E
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x20
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x96
	lsls r0, r0, #1
	bl setsleep
	movs r0, #1
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080981FC: .4byte 0x0000065B
_08098200: .4byte 0x0000065C
_08098204: .4byte 0x0000065D
_08098208: .4byte 0x00000F94
_0809820C: .4byte 0x0000065E

	thumb_func_start sub_08098210
sub_08098210: @ 0x08098210
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp, #0x34]
	movs r7, #0
_08098224:
	ldr r1, [r4, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098242
	b _08098704
_08098242:
	ldr r0, _080982E8 @ =0x00000F94
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	mov sl, r1
	add r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	mov sb, r0
	ldr r0, [sp, #0x34]
	adds r0, #1
	str r0, [sp, #0x38]
	cmp r0, #4
	ble _080982F0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r1, r4, r3
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809828E
	b _08098704
_0809828E:
	movs r0, #0x78
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x1c]
	movs r3, #0x98
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _080982EC @ =0x00000674
	bl _call_via_r3
	add r1, sp, #0xc
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r1, [r4, #0x1c]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	b _0809850A
	.align 2, 0
_080982E8: .4byte 0x00000F94
_080982EC: .4byte 0x00000674
_080982F0:
	movs r0, #0xf9
	lsls r0, r0, #4
	adds r6, r4, r0
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	movs r5, #0xca
	lsls r5, r5, #2
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	movs r1, #1
	bl sub_08073FC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080983A0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098336
	b _08098704
_08098336:
	movs r0, #0x78
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0x1c]
	add r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, sb
	blt _0809836A
	b _080984FE
_0809836A:
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _0809839C @ =0x00000672
	bl _call_via_r3
	add r1, sp, #0x10
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	b _080984FE
	.align 2, 0
_0809839C: .4byte 0x00000672
_080983A0:
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	movs r3, #0xca
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	bl sub_080740AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809844C
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r1, #0xac
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098406
	b _08098704
_08098406:
	cmp r5, #6
	beq _0809840C
	b _080985B2
_0809840C:
	movs r0, #0x78
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098448 @ =0x00000672
	bl _call_via_r3
	add r1, sp, #0x14
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	b _080984EE
	.align 2, 0
_08098448: .4byte 0x00000672
_0809844C:
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	bl sub_08074020
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08098518
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080984AE
	b _08098704
_080984AE:
	cmp r5, #0
	beq _080984B4
	b _080985B2
_080984B4:
	movs r0, #0x78
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098514 @ =0x00000671
	bl _call_via_r3
	add r1, sp, #0x18
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
_080984EE:
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_080984FE:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
_0809850A:
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080985B2
	.align 2, 0
_08098514: .4byte 0x00000671
_08098518:
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	movs r1, #2
	bl sub_08073FC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080985B2
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098554
	b _08098704
_08098554:
	movs r0, #0x78
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1

	thumb_func_start sub_08098580
sub_08098580: @ 0x08098580
	ldr r2, _08098610 @ =0x00000673
	bl _call_via_r3
	add r1, sp, #0x1c
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r1, [r4, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080985B2:
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	ldr r3, _08098614 @ =0x00000F94
	adds r1, r4, r3
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080985D2
	b _08098704
_080985D2:
	movs r0, #0x78
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [sp, #0x34]
	cmp r3, #0
	bgt _0809861C
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098618 @ =0x0000066B
	bl _call_via_r3
	add r1, sp, #0x20
	b _0809868C
	.align 2, 0
_08098610: .4byte 0x00000673
_08098614: .4byte 0x00000F94
_08098618: .4byte 0x0000066B
_0809861C:
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bgt _08098644
	ldr r2, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098640 @ =0x0000066C
	bl _call_via_r3
	add r1, sp, #0x24
	b _0809868C
	.align 2, 0
_08098640: .4byte 0x0000066C
_08098644:
	ldr r0, [sp, #0x34]
	cmp r0, #2
	bgt _0809866C
	ldr r2, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098668 @ =0x0000066D
	bl _call_via_r3
	add r1, sp, #0x28
	b _0809868C
	.align 2, 0
_08098668: .4byte 0x0000066D
_0809866C:
	ldr r0, [sp, #0x34]
	cmp r0, #3
	bgt _080986A8
	ldr r2, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _080986A4 @ =0x0000066E
	bl _call_via_r3
	add r1, sp, #0x2c
_0809868C:
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	b _080986D8
	.align 2, 0
_080986A4: .4byte 0x0000066E
_080986A8:
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098708 @ =0x0000066F
	bl _call_via_r3
	add r1, sp, #0x30
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_080986D8:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809870C
_08098704:
	movs r0, #0
	b _08098718
	.align 2, 0
_08098708: .4byte 0x0000066F
_0809870C:
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x34]
	cmp r0, #4
	bgt _08098716
	b _08098224
_08098716:
	movs r0, #1
_08098718:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08098728
sub_08098728: @ 0x08098728
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r7, #0
	movs r5, #0xb4
	lsls r5, r5, #1
	b _080987E0
_08098734:
	adds r0, r7, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #5
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #6
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #7
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r3, [r1, #4]
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl _call_via_r3
	adds r7, #1
_080987E0:
	bl getPartyCount
	cmp r7, r0
	blt _08098734
	movs r0, #2
	bl sub_08072A18
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r1, r6, r2
	str r0, [r1]
	cmp r0, #0
	beq _0809885A
	movs r0, #0xbe
	bl sub_08072E38
	ldr r2, _08098864 @ =0x00000F94
	adds r1, r6, r2
	str r0, [r1]
	cmp r0, #0
	beq _0809885A
	ldr r1, [r6, #0x1c]
	movs r0, #0xa8
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
	bne _0809885A
	ldr r1, [r6, #0x1c]
	movs r0, #0xaa
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
	bne _0809885A
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0809885A:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08098864: .4byte 0x00000F94

	thumb_func_start sub_08098868
sub_08098868: @ 0x08098868
	bx lr
	.align 2, 0

	thumb_func_start sub_0809886C
sub_0809886C: @ 0x0809886C
	push {r4, lr}
	adds r4, r0, #0
	bl battle_78__6Battle
	ldr r0, [r4, #0x1c]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r4, #0
	b _080988AA
_0809888E:
	adds r0, r4, #0
	bl sub_080729F8
	ldr r2, [r0, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, #1
_080988AA:
	bl getPartyCount
	cmp r4, r0
	blt _0809888E
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080988B8
sub_080988B8: @ 0x080988B8
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
	bl sub_08074494
	add sp, #8
	pop {r0}
	bx r0

	thumb_func_start sub_080988DC
sub_080988DC: @ 0x080988DC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08098934 @ =vt_09F46450
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _08098938 @ =0x00000F84
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _080988FA
	bl __builtin_vec_delete
_080988FA:
	ldr r1, _0809893C @ =0x00000F78
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08098908
	bl __builtin_vec_delete
_08098908:
	ldr r1, _08098940 @ =0x00000F6C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08098916
	bl __builtin_vec_delete
_08098916:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08098926
	bl __builtin_vec_delete
_08098926:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08098934: .4byte vt_09F46450
_08098938: .4byte 0x00000F84
_0809893C: .4byte 0x00000F78
_08098940: .4byte 0x00000F6C

	thumb_func_start sub_08098944
sub_08098944: @ 0x08098944
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
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
	bne _08098974
	adds r0, r4, #0
	bl battle_110__6Battle
	b _080989C4
_08098974:
	ldr r3, _080989D4 @ =0x00000F98
	adds r0, r4, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	movs r1, #0x96
	lsls r1, r1, #1
	mov sb, r1
	mov r0, sp
	movs r6, #1
	strb r6, [r0]
	add r5, sp, #4
	movs r4, #0
	strb r4, [r5]
	movs r0, #0x80
	mov r1, r8
	mov r2, sb
	movs r3, #1
	bl sub_08074394
	mov r0, sp
	strb r6, [r0]
	strb r4, [r5]
	movs r0, #0
	mov r1, r8
	mov r2, sb
	movs r3, #1
	bl sub_08074518
_080989C4:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080989D4: .4byte 0x00000F98

	thumb_func_start sub_080989D8
sub_080989D8: @ 0x080989D8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	bl sub_08074614
	cmp r0, #0
	beq _08098A18
	ldr r1, _08098A3C @ =0x00000F98
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_08098A18:
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0x80
	adds r2, r6, #0
	movs r3, #1
	bl sub_08074394
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098A3C: .4byte 0x00000F98

	thumb_func_start sub_08098A40
sub_08098A40: @ 0x08098A40
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_08074614
	cmp r0, #0
	beq _08098A80
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	ldr r1, _08098AA4 @ =0x00000F98
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_08098A80:
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0x80
	adds r2, r6, #0
	movs r3, #1
	bl sub_08074414__FiiibN23
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098AA4: .4byte 0x00000F98

	thumb_func_start sub_08098AA8
sub_08098AA8: @ 0x08098AA8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xf9
	lsls r0, r0, #4
	adds r5, r4, r0
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _08098B34
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _08098B30 @ =0x00000F94
	adds r1, r4, r3
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bge _08098B34
	movs r0, #1
	b _08098B36
	.align 2, 0
_08098B30: .4byte 0x00000F94
_08098B34:
	movs r0, #0
_08098B36:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08098B3C
sub_08098B3C: @ 0x08098B3C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x9c
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
	beq _08098B60
	movs r0, #0
	b _08098BCC
_08098B60:
	ldr r1, [r6, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08098BB8
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r6, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_08098BB8:
	ldr r1, [r6, #0x1c]
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08098BCC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08098BD4
sub_08098BD4: @ 0x08098BD4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	b _08098C34
_08098BFA:
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r1, _08098C30 @ =0x000003E7
	cmp r0, r1
	bgt _08098C52
	adds r0, r4, #0
	bl battle_98__6Battle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098C34
	movs r0, #0
	b _08098CBA
	.align 2, 0
_08098C30: .4byte 0x000003E7
_08098C34:
	ldr r1, _08098CC4 @ =0x00000F94
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _08098BFA
_08098C52:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	movs r2, #0x96
	lsls r2, r2, #2
	ldr r3, [r1, #4]
	adds r1, r2, #0
	bl _call_via_r3
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098CC8 @ =0x0000065A
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0xff
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #1
_08098CBA:
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08098CC4: .4byte 0x00000F94
_08098CC8: .4byte 0x0000065A

	thumb_func_start sub_08098CCC
sub_08098CCC: @ 0x08098CCC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r0, _08098CF8 @ =0x00000F94
	adds r6, r5, r0
	b _08098D34
	.align 2, 0
_08098CF8: .4byte 0x00000F94
_08098CFC:
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r1, _08098D30 @ =0x000001F3
	cmp r0, r1
	bgt _08098D74
	adds r0, r5, #0
	bl battle_98__6Battle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098D34
	movs r0, #0
	b _08098E3C
	.align 2, 0
_08098D30: .4byte 0x000001F3
_08098D34:
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	cmp r4, r0
	bgt _08098CFC
_08098D74:
	ldr r1, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	movs r4, #0x96
	lsls r4, r4, #2
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl _call_via_r3
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r5, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098E44 @ =0x00000659
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0xff
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r5, #0x1c]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc6
	bl _call_via_r2
	ldr r1, [r5, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl _call_via_r3
	movs r0, #0xb4
	bl setsleep
	ldr r1, [r5, #0x1c]
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
_08098E3C:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08098E44: .4byte 0x00000659

	thumb_func_start sub_08098E48
sub_08098E48: @ 0x08098E48
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	movs r5, #0x96
	lsls r5, r5, #2
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl _call_via_r3
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	mov r8, r0
	add r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098F30 @ =0x00000656
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0xff
	movs r6, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl _call_via_r3
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r4, #0x1c]
	add r3, r8
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08098F34 @ =0x00000657
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0x10
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r0, [r4, #0x1c]
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098F30: .4byte 0x00000656
_08098F34: .4byte 0x00000657

	thumb_func_start sub_08098F38
sub_08098F38: @ 0x08098F38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #2
	ldr r2, _08098F84 @ =0x00000F94
	adds r1, r6, r2
	ldr r1, [r1]
	bl sub_080741AC
	bl sub_08074234
	movs r3, #0
	str r3, [sp, #0x10]
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r0, _08098F84 @ =0x00000F94
	adds r0, r0, r6
	mov r8, r0
	b _08099124
	.align 2, 0
_08098F84: .4byte 0x00000F94
_08098F88:
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r2, r4
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r1, _0809902C @ =0x000003E7
	cmp r0, r1
	ble _08098FAC
	b _08099166
_08098FAC:
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
	beq _08098FC6
	b _08099120
_08098FC6:
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
	beq _08098FE0
	b _08099120
_08098FE0:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	mov r3, r8
	ldr r0, [r3]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r4
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r7, #0
	movs r3, #0x8c
	lsls r3, r3, #2
	mov sb, r3
	b _080990E4
	.align 2, 0
_0809902C: .4byte 0x000003E7
_08099030:
	ldr r0, [r6, #0x1c]
	adds r5, r0, #0
	adds r5, #0xb8
	movs r1, #0
	ldrsh r4, [r5, r1]
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
	bne _08099120
	ldr r1, [r6, #0x1c]
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
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
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r1, r6, r2
	ldr r1, [r1]
	cmp r0, r1
	bne _080990E2
	ldr r3, [sp, #0x14]
	cmp r3, #1
	bne _080990E2
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, sl
	ble _080990E2
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bgt _080990E2
	ldr r1, [r6, #0x1c]
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r0, [sp, #0x10]
	adds r0, #1
	str r0, [sp, #0x10]
_080990E2:
	adds r7, #1
_080990E4:
	ldr r1, [r6, #0x1c]
	add r1, sb
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
	blt _08099030
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08099124
_08099120:
	movs r0, #0
	b _08099230
_08099124:
	mov r3, r8
	ldr r0, [r3]
	ldr r2, [r0, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0x1c]
	movs r3, #0xd4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	movs r1, #0x32
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_0807066C
	cmp r4, r0
	ble _08099166
	b _08098F88
_08099166:
	ldr r1, [r6, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r6, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	movs r4, #0x96
	lsls r4, r4, #2
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl _call_via_r3
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xcb
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0xff
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r6, #0x1c]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc5
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl _call_via_r3
	movs r0, #0xb4
	bl setsleep
	ldr r1, [r6, #0x1c]
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
_08099230:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start evtFlintIntervene
evtFlintIntervene: @ 0x08099240
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	adds r6, r0, #0
	movs r4, #0
_08099250:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
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
	bne _08099308
	adds r4, #1
	cmp r4, #3
	ble _08099250
	ldr r1, [r6, #0x1c]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099308
	ldr r1, [r6, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080992E6
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r6, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_080992E6:
	ldr r2, [r6, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r6, r0
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r1, r6, r1
	str r1, [sp, #0x50]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809930C
_08099308:
	movs r0, #0
	b _080995C0
_0809930C:
	ldr r2, _080995D0 @ =0x00000F94
	adds r7, r6, r2
	ldr r1, [r7]
	ldr r0, _080995D4 @ =0x000001BD
	bl sub_080741AC
	adds r4, r0, #0
	movs r0, #0x9b
	lsls r0, r0, #2
	bl playSound
	ldr r2, [r7]
	movs r0, #0x47
	adds r1, r2, #0
	bl playSeq
	ldr r2, [r4, #0x1c]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r3, sp, #0x10
	mov sl, r3
	mov r0, sl
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	add r0, sp, #0x1c
	mov sb, r0
	bl __3Msg
	add r1, sp, #0x28
	mov r8, r1
	mov r0, r8
	bl __3Msg
	mov r2, r8
	str r2, [sp]
	add r0, sp, #4
	ldr r1, _080995D8 @ =0x00000667
	mov r2, sl
	mov r3, sb
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	movs r1, #2
	bl _._3Msg
	ldr r2, [r7]
	movs r0, #0x90
	adds r1, r2, #0
	bl playSeq
	ldr r1, [r7]
	ldr r3, [sp, #0x50]
	ldr r2, [r3]
	movs r0, #0x91
	bl playSeq
	cmp r4, #0
	beq _080993C4
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080993C4:
	ldr r1, [r6, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080995DC @ =0x00000675
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080995E0 @ =0x00000652
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x3c
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	ldr r1, [r7]
	movs r0, #0x44
	movs r2, #0
	movs r3, #0
	bl sub_08073150
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xcd
	lsls r2, r2, #3
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x40
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080995E4 @ =0x00000654
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x44
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_0807367C
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	movs r0, #0xb4
	bl setsleep
	ldr r1, [r7]
	ldr r0, _080995D4 @ =0x000001BD
	bl sub_080741AC
	adds r4, r0, #0
	movs r0, #0x9b
	lsls r0, r0, #2
	bl playSound
	ldr r2, [r7]
	movs r0, #0x47
	adds r1, r2, #0
	bl playSeq
	ldr r2, [r4, #0x1c]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sl
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	mov r0, sb
	bl __3Msg
	mov r0, r8
	bl __3Msg
	mov r1, r8
	str r1, [sp]
	add r0, sp, #4
	ldr r1, _080995D8 @ =0x00000667
	mov r2, sl
	mov r3, sb
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x48
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	movs r1, #2
	bl _._3Msg
	ldr r2, [r7]
	movs r0, #0x90
	adds r1, r2, #0
	bl playSeq
	ldr r1, [r7]
	ldr r3, [sp, #0x50]
	ldr r2, [r3]
	movs r0, #0x91
	bl playSeq
	cmp r4, #0
	beq _0809955A
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0809955A:
	ldr r1, [r7]
	movs r0, #0x45
	movs r2, #0
	movs r3, #0
	bl sub_08073150
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080995E8 @ =0x00000655
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x4c
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	ldr r1, [r6, #0x1c]
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #0xb4
	bl setsleep
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080995C0:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080995D0: .4byte 0x00000F94
_080995D4: .4byte 0x000001BD
_080995D8: .4byte 0x00000667
_080995DC: .4byte 0x00000675
_080995E0: .4byte 0x00000652
_080995E4: .4byte 0x00000654
_080995E8: .4byte 0x00000655

	thumb_func_start sub_080995EC
sub_080995EC: @ 0x080995EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	movs r4, #0
_080995F8:
	ldr r1, [r7, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08099616
	b _080997E0
_08099616:
	adds r4, #1
	cmp r4, #1
	ble _080995F8
	ldr r1, [r7, #0x1c]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809963A
	b _080997E0
_0809963A:
	ldr r1, [r7, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099692
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r7, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_08099692:
	ldr r1, [r7, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r7, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	movs r5, #0x96
	lsls r5, r5, #2
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl _call_via_r3
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r7, #0x1c]
	movs r6, #0x98
	lsls r6, r6, #2
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080997D8 @ =0x0000064E
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r4, #0xff
	movs r2, #0
	mov r8, r2
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, sp
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r3, [r7, #0x1c]
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xca
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0x10
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc4
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl _call_via_r3
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r7, #0x1c]
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080997DC @ =0x00000651
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0x14
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r1, [r7, #0x1c]
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r7, #0x1c]
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080997E0
	movs r0, #1
	b _080997E2
	.align 2, 0
_080997D8: .4byte 0x0000064E
_080997DC: .4byte 0x00000651
_080997E0:
	movs r0, #0
_080997E2:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080997F0
sub_080997F0: @ 0x080997F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	movs r4, #0
_080997F8:
	ldr r1, [r7, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08099816
	b _08099988
_08099816:
	adds r4, #1
	cmp r4, #1
	ble _080997F8
	ldr r1, [r7, #0x1c]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809983A
	b _08099988
_0809983A:
	ldr r1, [r7, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099892
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r7, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_08099892:
	ldr r1, [r7, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r7, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	movs r4, #0x96
	lsls r4, r4, #2
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl _call_via_r3
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r7, #0x1c]
	movs r6, #0x98
	lsls r6, r6, #2
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08099980 @ =0x0000064D
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0xff
	movs r5, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl _call_via_r3
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r7, #0x1c]
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08099984 @ =0x0000064F
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0x10
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r1, [r7, #0x1c]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r7, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099988
	movs r0, #1
	b _0809998A
	.align 2, 0
_08099980: .4byte 0x0000064D
_08099984: .4byte 0x0000064F
_08099988:
	movs r0, #0
_0809998A:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08099994
sub_08099994: @ 0x08099994
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	movs r5, #0x96
	lsls r5, r5, #2
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl _call_via_r3
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	mov r8, r0
	add r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08099A80 @ =0x0000064B
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0xff
	movs r6, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl _call_via_r3
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r4, #0x1c]
	add r3, r8
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08099A84 @ =0x0000064C
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0x10
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r0, [r4, #0x1c]
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r0, #1
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08099A80: .4byte 0x0000064B
_08099A84: .4byte 0x0000064C

	thumb_func_start sub_08099A88
sub_08099A88: @ 0x08099A88
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	b _08099AAA
_08099A8E:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
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
	bne _08099B9C
_08099AAA:
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r1, _08099BA0 @ =0x0000031F
	cmp r0, r1
	ble _08099A8E
	ldr r1, [r6, #0x1c]
	movs r0, #0x9c
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
	bne _08099B9C
	ldr r1, [r6, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099B40
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r6, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_08099B40:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r6, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r1, r6, r3
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r0, _08099BA4 @ =0x00000F94
	adds r4, r6, r0
	ldr r1, [r4]
	movs r0, #0x90
	bl sub_080741AC
	bl sub_08074234
	ldr r0, _08099BA8 @ =0x000001BD
	ldr r1, [r4]
	bl sub_080741AC
	bl sub_08074234
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
_08099B88:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08099BB6
_08099B9C:
	movs r0, #0
	b _08099BDA
	.align 2, 0
_08099BA0: .4byte 0x0000031F
_08099BA4: .4byte 0x00000F94
_08099BA8: .4byte 0x000001BD
_08099BAC:
	ldr r1, [r6, #0x1c]
	movs r3, #0xbc
	lsls r3, r3, #2
	adds r1, r1, r3
	b _08099B88
_08099BB6:
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r1, _08099BE0 @ =0x0000063F
	cmp r0, r1
	ble _08099BAC
	movs r0, #1
_08099BDA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08099BE0: .4byte 0x0000063F

	thumb_func_start sub_08099BE4
sub_08099BE4: @ 0x08099BE4
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _08099C48 @ =0x00000F94
	adds r4, r5, r0
	ldr r2, [r4]
	movs r0, #3
	adds r1, r2, #0
	bl playSeq
	ldr r4, [r4]
	movs r0, #0xa4
	movs r1, #0xba
	bl randS32
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl hitPlayer
	ldr r3, [r5, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08099C4C @ =0x0000064A
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #1
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08099C48: .4byte 0x00000F94
_08099C4C: .4byte 0x0000064A

	thumb_func_start sub_08099C50
sub_08099C50: @ 0x08099C50
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r7, #0
	movs r5, #0xb4
	lsls r5, r5, #1
	b _08099D08
_08099C5C:
	adds r0, r7, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #5
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #6
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #7
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r3, [r1, #4]
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl _call_via_r3
	adds r7, #1
_08099D08:
	bl getPartyCount
	cmp r7, r0
	blt _08099C5C
	movs r0, #2
	bl sub_08072A18
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r1, r6, r2
	str r0, [r1]
	cmp r0, #0
	bne _08099D24
	b _08099E2C
_08099D24:
	movs r0, #0xbd
	bl sub_08072E38
	ldr r2, _08099E34 @ =0x00000F94
	adds r1, r6, r2
	str r0, [r1]
	cmp r0, #0
	beq _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xa8
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
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xaa
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
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
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
	bne _08099E2C
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
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
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
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xb2
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
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xb4
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
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xb8
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
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xba
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08099E2C:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08099E34: .4byte 0x00000F94

	thumb_func_start sub_08099E38
sub_08099E38: @ 0x08099E38
	bx lr
	.align 2, 0

	thumb_func_start sub_08099E3C
sub_08099E3C: @ 0x08099E3C
	push {r4, lr}
	adds r4, r0, #0
	bl battle_78__6Battle
	ldr r0, [r4, #0x1c]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r4, #0
	b _08099E7A
_08099E5E:
	adds r0, r4, #0
	bl sub_080729F8
	ldr r2, [r0, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, #1
_08099E7A:
	bl getPartyCount
	cmp r4, r0
	blt _08099E5E
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08099E88
sub_08099E88: @ 0x08099E88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08099F00 @ =vt_09F458E8
	str r0, [r4, #0x1c]
	ldr r1, _08099F04 @ =0x00000F98
	adds r0, r4, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08099EAC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08099EAC:
	ldr r0, _08099F08 @ =vt_09F46450
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _08099F0C @ =0x00000F84
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08099EC4
	bl __builtin_vec_delete
_08099EC4:
	ldr r3, _08099F10 @ =0x00000F78
	adds r0, r4, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08099ED2
	bl __builtin_vec_delete
_08099ED2:
	ldr r1, _08099F14 @ =0x00000F6C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08099EE0
	bl __builtin_vec_delete
_08099EE0:
	movs r3, #0xf6
	lsls r3, r3, #4
	adds r0, r4, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08099EF0
	bl __builtin_vec_delete
_08099EF0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08099F00: .4byte vt_09F458E8
_08099F04: .4byte 0x00000F98
_08099F08: .4byte vt_09F46450
_08099F0C: .4byte 0x00000F84
_08099F10: .4byte 0x00000F78
_08099F14: .4byte 0x00000F6C

	thumb_func_start sub_08099F18
sub_08099F18: @ 0x08099F18
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
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
	bne _08099F42
	adds r0, r4, #0
	bl battle_110__6Battle
	b _08099F6C
_08099F42:
	movs r4, #0xc8
	lsls r4, r4, #1
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807459C__FUsiii
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08074518
_08099F6C:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08099F74
sub_08099F74: @ 0x08099F74
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl battle_98__6Battle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099FCC
	adds r0, r4, #0
	bl battle_98__6Battle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099FCC
	ldr r3, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xc9
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #1
	b _08099FCE
_08099FCC:
	movs r0, #0
_08099FCE:
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08099FD8
sub_08099FD8: @ 0x08099FD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r6, r0, #0
	movs r0, #0x78
	bl setsleep
	ldr r1, [r6, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r3, r3, r6
	mov r8, r3
	ldr r2, [r3]
	movs r0, #0xb7
	adds r1, r2, #0
	bl sub_08073198
	mov r0, r8
	ldr r2, [r0]
	movs r0, #0x84
	adds r1, r2, #0
	bl sub_08073198
	mov r1, r8
	ldr r2, [r1]
	movs r0, #0x85
	adds r1, r2, #0
	bl playSeq
	bl sub_08073270
	ldr r0, _0809A418 @ =0x00000615
	bl playSound
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	ldr r0, _0809A41C @ =0x00000193
	movs r1, #0xb4
	movs r2, #0xb4
	movs r3, #1
	bl sub_0807459C__FUsiii
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A420 @ =0x00000642
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x14
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	mov r3, r8
	ldr r1, [r3]
	ldr r2, [r1, #0x20]
	adds r2, #0x40
	adds r1, #0x20
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r7, sp, #0x18
	adds r0, r7, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r5, #0x8a
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	add r2, sp, #0x1c
	movs r1, #0x88
	lsls r1, r1, #1
	movs r3, #0
	mov sb, r3
	strh r1, [r2]
	movs r1, #0x20
	strh r1, [r2, #2]
	ldr r2, [sp, #0x1c]
	add r1, sp, #0x20
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r1]
	strh r3, [r1, #2]
	ldr r3, [sp, #0x20]
	ldr r4, [r4, #4]
	movs r1, #0x11
	bl _call_via_r4
	ldr r1, [r6, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r7, #0
	bl _call_via_r2
	movs r0, #0x11
	bl sub_08072E38
	ldr r1, _0809A424 @ =0x00000F94
	adds r7, r6, r1
	str r0, [r7]
	cmp r0, #0
	bne _0809A142
	b _0809A460
_0809A142:
	ldr r3, [r0, #0x20]
	adds r0, #0x20
	movs r2, #0x18
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	add r1, sp, #0x24
	movs r4, #0x30
	movs r2, #4
	strh r4, [r1]
	strh r2, [r1, #2]
	ldr r2, [r3, #0x1c]
	bl _call_via_r2
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x20
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x24]
	movs r1, #6
	bl _call_via_r2
	ldr r0, _0809A428 @ =0x000003C1
	bl playSound
	ldr r0, [r7]
	add r1, sp, #0x28
	movs r2, #0x14
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #6
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x2c
	movs r2, #0x24
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #8
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x30
	movs r2, #0x34
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #0x10
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x34
	movs r2, #0x44
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #0x40
	bl sub_08073070
	ldr r0, [r7]
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
	movs r0, #0x3c
	bl setsleep
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A42C @ =0x00000643
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x38
	mov r3, sb
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	ldr r0, [r7]
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
	ldr r0, _0809A430 @ =0x000003C7
	bl playSound
	ldr r0, [r7]
	add r1, sp, #0x3c
	movs r2, #0x3c
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #0x30
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x40
	movs r2, #0x2c
	mov sl, r2
	strh r4, [r1]
	mov r3, sl
	strh r3, [r1, #2]
	movs r2, #0x10
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x44
	movs r5, #0xc
	strh r4, [r1]
	strh r5, [r1, #2]
	movs r2, #7
	bl sub_08073070
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl _call_via_r2
	movs r0, #0x5a
	bl setsleep
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #1
	bl _call_via_r2
	ldr r0, [r7]
	ldr r3, [r0, #0x20]
	adds r0, #0x20
	movs r2, #0x18
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	add r1, sp, #0x48
	movs r2, #0x90
	strh r2, [r1]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x1c]
	bl _call_via_r2
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x20
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x24]
	movs r1, #2
	bl _call_via_r2
	movs r0, #0xf2
	lsls r0, r0, #2
	bl playSound
	ldr r0, [r7]
	add r1, sp, #0x4c
	movs r2, #0xd0
	strh r2, [r1]
	mov r2, sl
	strh r2, [r1, #2]
	movs r2, #0xe
	bl sub_08073070
	movs r0, #0x5a
	bl setsleep
	ldr r0, _0809A434 @ =0x000003C9
	bl playSound
	ldr r0, [r7]
	add r1, sp, #0x50
	movs r2, #0x88
	movs r3, #0x94
	strh r2, [r1]
	strh r3, [r1, #2]
	movs r2, #0xf
	bl sub_08073070
	movs r0, #3
	bl setsleep
	ldr r0, [r7]
	add r1, sp, #0x54
	movs r2, #0x54
	movs r3, #0x20
	strh r3, [r1]
	strh r2, [r1, #2]
	movs r2, #0x14
	bl sub_08073070
	movs r0, #0x2d
	bl setsleep
	ldr r0, _0809A438 @ =0x000003CA
	bl playSound
	ldr r0, [r7]
	add r1, sp, #0x58
	movs r4, #0x78
	strh r4, [r1]
	strh r5, [r1, #2]
	movs r2, #0x10
	bl sub_08073070
	movs r0, #0x3c
	bl setsleep
	ldr r0, _0809A43C @ =0x000003CB
	bl playSound
	ldr r0, [r7]
	add r1, sp, #0x5c
	movs r2, #0x50
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #0x3c
	bl sub_08073070
	movs r0, #0x3c
	bl setsleep
	movs r0, #0xf3
	lsls r0, r0, #2
	bl playSound
	mov r0, r8
	ldr r2, [r0]
	movs r0, #0x82
	adds r1, r2, #0
	bl sub_08073198
	ldr r2, [r7]
	movs r0, #0x82
	adds r1, r2, #0
	bl sub_08073198
	movs r0, #0xf
	bl setsleep
	mov r1, r8
	ldr r0, [r1]
	bl sub_08072FE0
	mov r0, sp
	movs r5, #1
	strb r5, [r0]
	add r4, sp, #4
	mov r2, sb
	strb r2, [r4]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #8
	movs r3, #1
	bl sub_08074518
	movs r0, #8
	bl setsleep
	ldr r0, [r7]
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x20
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x24]
	movs r1, #6
	bl _call_via_r2
	movs r0, #8
	bl setsleep
	mov r0, sp
	strb r5, [r0]
	mov r0, sb
	strb r0, [r4]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #8
	movs r3, #1
	bl sub_08074494
	bl sub_08073270
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A440 @ =0x00000644
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x60
	mov r3, sb
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	b _0809A444
	.align 2, 0
_0809A418: .4byte 0x00000615
_0809A41C: .4byte 0x00000193
_0809A420: .4byte 0x00000642
_0809A424: .4byte 0x00000F94
_0809A428: .4byte 0x000003C1
_0809A42C: .4byte 0x00000643
_0809A430: .4byte 0x000003C7
_0809A434: .4byte 0x000003C9
_0809A438: .4byte 0x000003CA
_0809A43C: .4byte 0x000003CB
_0809A440: .4byte 0x00000644
_0809A444:
	bl setsleep
	ldr r1, [r6, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
	b _0809A462
_0809A460:
	movs r0, #0
_0809A462:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809A474
sub_0809A474: @ 0x0809A474
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsh r3, [r2, r1]
	adds r3, r0, r3
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r4, [r2, #4]
	adds r0, r3, #0
	movs r2, #1
	bl _call_via_r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A4A2
	movs r0, #1
	b _0809A4A4
_0809A4A2:
	movs r0, #0
_0809A4A4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809A4AC
sub_0809A4AC: @ 0x0809A4AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r4, [r7, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r6, [r4, r1]
	adds r6, r7, r6
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r5, [r0]
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r2, r0, #0
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A56C
	movs r0, #0x78
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A568 @ =0x00000641
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_0807367C
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
	b _0809A56E
	.align 2, 0
_0809A568: .4byte 0x00000641
_0809A56C:
	movs r0, #0
_0809A56E:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809A578
sub_0809A578: @ 0x0809A578
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r4, [r7, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r6, [r4, r1]
	adds r6, r7, r6
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r5, [r0]
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	adds r2, r0, #0
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A636
	movs r0, #0x78
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xc8
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_0807367C
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
	b _0809A638
_0809A636:
	movs r0, #0
_0809A638:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0809A640
sub_0809A640: @ 0x0809A640
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r4, [r7, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r6, [r4, r1]
	adds r6, r7, r6
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r5, [r0]
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r2, r0, #0
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A700
	movs r0, #0x78
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A6FC @ =0x0000063F
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_0807367C
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
	b _0809A702
	.align 2, 0
_0809A6FC: .4byte 0x0000063F
_0809A700:
	movs r0, #0
_0809A702:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809A70C
sub_0809A70C: @ 0x0809A70C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r4, [r7, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r6, [r4, r1]
	adds r6, r7, r6
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r5, [r0]
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0x64
	bl sub_0807066C
	adds r2, r0, #0
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A7CC
	movs r0, #0x78
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [r7, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A7C8 @ =0x0000063E
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_0807367C
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
	b _0809A7CE
	.align 2, 0
_0809A7C8: .4byte 0x0000063E
_0809A7CC:
	movs r0, #0
_0809A7CE:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809A7D8
sub_0809A7D8: @ 0x0809A7D8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xb
	bl sub_08072E38
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r1, r4, r2
	str r0, [r1]
	cmp r0, #0
	beq _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A8AE
	ldr r1, [r4, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0809A8AE:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809A8B8
sub_0809A8B8: @ 0x0809A8B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809A910 @ =vt_09F46450
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _0809A914 @ =0x00000F84
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809A8D6
	bl __builtin_vec_delete
_0809A8D6:
	ldr r1, _0809A918 @ =0x00000F78
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809A8E4
	bl __builtin_vec_delete
_0809A8E4:
	ldr r1, _0809A91C @ =0x00000F6C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809A8F2
	bl __builtin_vec_delete
_0809A8F2:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809A902
	bl __builtin_vec_delete
_0809A902:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809A910: .4byte vt_09F46450
_0809A914: .4byte 0x00000F84
_0809A918: .4byte 0x00000F78
_0809A91C: .4byte 0x00000F6C

	thumb_func_start sub_0809A920
sub_0809A920: @ 0x0809A920
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809A974 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0809A978 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r1, [r5, #0x1c]
	adds r1, #0x48
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	ldr r0, _0809A97C @ =gUnknown_080F31E8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r4, [r1, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl _call_via_r4
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809A974: .4byte _vt.3Unk
_0809A978: .4byte _vt.8AppClock
_0809A97C: .4byte gUnknown_080F31E8

	thumb_func_start sub_0809A980
sub_0809A980: @ 0x0809A980
	push {r4, lr}
	adds r4, r0, #0
	b _0809A98C
_0809A986:
	movs r0, #1
	bl setsleep
_0809A98C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	adds r2, #0x70
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	adds r2, #0xa8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc0
	bne _0809A986
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809A9D0
sub_0809A9D0: @ 0x0809A9D0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	bl get__12ClockManager
	bl getTime__5Clock
	ldr r2, _0809AA34 @ =0x00000F94
	adds r1, r5, r2
	adds r0, r0, r4
	str r0, [r1]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809AA38 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0809AA3C @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r1, [r5, #0x1c]
	movs r2, #0x38
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	ldr r0, _0809AA40 @ =gUnknown_080F31E8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r4, [r1, #0x3c]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl _call_via_r4
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809AA34: .4byte 0x00000F94
_0809AA38: .4byte _vt.3Unk
_0809AA3C: .4byte _vt.8AppClock
_0809AA40: .4byte gUnknown_080F31E8

	thumb_func_start sub_0809AA44
sub_0809AA44: @ 0x0809AA44
	push {r4, r5, r6, lr}
	movs r5, #0
	b _0809AA8A
_0809AA4A:
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r4, r1, r2
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r6, r0, r1
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	movs r1, #1
	cmp r1, r0
	bge _0809AA80
	adds r1, r0, #0
_0809AA80:
	ldr r2, [r4, #4]
	adds r0, r6, #0
	bl _call_via_r2
	adds r5, #1
_0809AA8A:
	bl sub_08072A88__Fv
	cmp r5, r0
	blt _0809AA4A
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809AA98
sub_0809AA98: @ 0x0809AA98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r3, #0x80
	lsls r3, r3, #1
	mov sl, r3
	mov r0, sp
	movs r5, #1
	strb r5, [r0]
	add r4, sp, #4
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x80
	mov r1, sl
	movs r2, #0x5a
	movs r3, #1
	bl sub_08074414__FiiibN23
	ldr r2, [r6, #0x1c]
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	movs r1, #0xaa
	lsls r1, r1, #1
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r0, _0809AE88 @ =0x00000791
	movs r1, #0x3c
	movs r2, #0
	movs r3, #0
	bl sub_0807459C__FUsiii
	ldr r3, [r6, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #2
	mov sb, r2
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE8C @ =0x00000632
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x14
	movs r2, #0
	mov r8, r2
	mov r3, r8
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	add r0, sp, #8
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	ldr r1, [r6, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r6, #0x1c]
	movs r3, #0xb6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sp
	strb r5, [r0]
	mov r3, r8
	strb r3, [r4]
	movs r0, #0x80
	mov r1, sl
	movs r2, #0x1e
	movs r3, #1
	bl sub_08074394
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE90 @ =0x00000633
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x18
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	movs r0, #0x82
	lsls r0, r0, #1
	bl __builtin_new
	movs r1, #0
	bl __5GuestUs
	adds r7, r0, #0
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE94 @ =0x00000634
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x1c
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE98 @ =0x0000063B
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x20
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0xc
	adds r1, r7, #0
	bl sub_08073F88
	bl sub_08074234
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AE9C @ =0x00000635
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x24
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEA0 @ =0x0000063C
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x28
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0xe
	adds r1, r7, #0
	bl sub_08073F88
	bl sub_08074234
	ldr r1, [r6, #0x1c]
	movs r3, #0x8a
	lsls r3, r3, #2
	mov sl, r3
	add r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xb8
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r5, r5, r0
	movs r0, #0x1b
	bl sub_08072E38
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEA4 @ =0x00000636
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x2c
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEA8 @ =0x0000063D
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x30
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x10
	adds r1, r7, #0
	bl sub_08073F88
	bl sub_08074234
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xb8
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0xb4
	bl sub_08072E38
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEAC @ =0x00000637
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x34
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	add r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809AEB0 @ =0x00000649
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x38
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x12
	adds r1, r7, #0
	bl sub_08073F88
	bl sub_08074234
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xb8
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0xb5
	bl sub_08072E38
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r6, #0x1c]
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r6, r6, r1
	ldr r1, [r0, #4]
	adds r0, r6, #0
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #1
	bl _call_via_r3
	cmp r7, #0
	beq _0809AE76
	ldr r1, [r7, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0809AE76:
	movs r0, #1
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809AE88: .4byte 0x00000791
_0809AE8C: .4byte 0x00000632
_0809AE90: .4byte 0x00000633
_0809AE94: .4byte 0x00000634
_0809AE98: .4byte 0x0000063B
_0809AE9C: .4byte 0x00000635
_0809AEA0: .4byte 0x0000063C
_0809AEA4: .4byte 0x00000636
_0809AEA8: .4byte 0x0000063D
_0809AEAC: .4byte 0x00000637
_0809AEB0: .4byte 0x00000649

	thumb_func_start sub_0809AEB4
sub_0809AEB4: @ 0x0809AEB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
_0809AEBC:
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
	bne _0809AF9A
	movs r0, #0xa9
	bl sub_08072E38
	cmp r0, #0
	bne _0809AEE2
_0809AEDE:
	movs r0, #1
	b _0809AF9C
_0809AEE2:
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
	bne _0809AF9A
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r7, #0
	movs r3, #0x8c
	lsls r3, r3, #2
	mov r8, r3
	b _0809AF5E
_0809AF14:
	movs r0, #0xa9
	bl sub_08072E38
	cmp r0, #0
	beq _0809AEDE
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xb8
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
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
	bne _0809AF9A
	adds r7, #1
_0809AF5E:
	ldr r1, [r6, #0x1c]
	add r1, r8
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
	blt _0809AF14
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809AEBC
_0809AF9A:
	movs r0, #0
_0809AF9C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809AFA8
sub_0809AFA8: @ 0x0809AFA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	adds r6, r0, #0
	add r1, sp, #0x34
	movs r0, #0x78
	movs r2, #0x30
	rsbs r2, r2, #0
	movs r3, #0
	mov sb, r3
	strh r0, [r1]
	strh r2, [r1, #2]
	add r2, sp, #0x38
	adds r0, #0x88
	strh r0, [r2]
	strh r0, [r2, #2]
	movs r0, #0xa9
	movs r3, #0x1e
	bl sub_08072F9C
	adds r7, r0, #0
	ldr r0, _0809B084 @ =0x00000676
	bl playSound
	movs r0, #0x5a
	bl setsleep
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r0, sp, #0x10
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	ldr r1, _0809B088 @ =0x00000631
	str r4, [sp]
	add r0, sp, #4
	mov r2, r8
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x3c
	mov r2, sb
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	add r0, sp, #4
	movs r2, #0
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
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r0, _0809B08C @ =0x0000026D
	adds r1, r7, #0
	bl sub_080741AC
	bl sub_08074234
	ldr r1, [r6, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r4
	cmp r0, #1
	beq _0809B090
	bl sub_08072A88__Fv
	cmp r0, #0
	bgt _0809B090
_0809B07E:
	movs r0, #0
	b _0809B352
	.align 2, 0
_0809B084: .4byte 0x00000676
_0809B088: .4byte 0x00000631
_0809B08C: .4byte 0x0000026D
_0809B090:
	add r1, sp, #0x40
	movs r0, #0xb8
	movs r2, #0x30
	rsbs r2, r2, #0
	movs r4, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	add r2, sp, #0x44
	adds r0, #0x48
	strh r0, [r2]
	strh r0, [r2, #2]
	movs r0, #0x91
	movs r3, #0x1e
	bl sub_08072F9C
	adds r7, r0, #0
	ldr r0, _0809B120 @ =0x00000676
	bl playSound
	movs r0, #0x5a
	bl setsleep
	ldr r2, [r7, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r0, sp, #0x1c
	bl __3Msg
	mov r0, sl
	bl __3Msg
	ldr r1, _0809B124 @ =0x00000631
	mov r2, sl
	str r2, [sp]
	add r0, sp, #4
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x48
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x1c
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x10
	movs r1, #2
	bl _._3Msg
	b _0809B13E
	.align 2, 0
_0809B120: .4byte 0x00000676
_0809B124: .4byte 0x00000631
_0809B128:
	adds r0, r6, #0
	bl battle_98__6Battle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809B13E
	bl sub_08072A88__Fv
	cmp r0, #0
	ble _0809B07E
_0809B13E:
	bl sub_08072DFC__Fv
	cmp r0, #0
	bgt _0809B128
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r6, #0x1c]
	movs r3, #0x8a
	lsls r3, r3, #2
	mov sb, r3
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	add r1, sp, #0x4c
	movs r7, #0x88
	lsls r7, r7, #1
	movs r2, #0x20
	mov r8, r2
	strh r7, [r1]
	mov r3, r8
	strh r3, [r1, #2]
	ldr r2, [sp, #0x4c]
	add r1, sp, #0x50
	movs r5, #0x80
	lsls r5, r5, #1
	strh r5, [r1]
	strh r5, [r1, #2]
	ldr r3, [sp, #0x50]
	ldr r4, [r4, #4]
	movs r1, #0x1b
	bl _call_via_r4
	ldr r1, [r6, #0x1c]
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	add r1, sp, #0x54
	strh r7, [r1]
	mov r2, r8
	strh r2, [r1, #2]
	ldr r2, [sp, #0x54]
	add r1, sp, #0x58
	strh r5, [r1]
	strh r5, [r1, #2]
	ldr r3, [sp, #0x58]
	ldr r4, [r4, #4]
	movs r1, #0xb4
	bl _call_via_r4
	ldr r1, [r6, #0x1c]
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	add r1, sp, #0x5c
	strh r7, [r1]
	mov r3, r8
	strh r3, [r1, #2]
	ldr r2, [sp, #0x5c]
	add r1, sp, #0x60
	strh r5, [r1]
	strh r5, [r1, #2]
	ldr r3, [sp, #0x60]
	ldr r4, [r4, #4]
	movs r1, #0xb5
	bl _call_via_r4
	ldr r1, [r6, #0x1c]
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #1
	bl _call_via_r3
	movs r0, #0x1b
	bl sub_08072E38
	adds r2, r0, #0
	adds r2, #0x20
	ldr r3, [r0, #0x20]
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r2, r2, r0
	add r1, sp, #0x64
	movs r5, #0x78
	movs r4, #0x30
	rsbs r4, r4, #0
	strh r5, [r1]
	strh r4, [r1, #2]
	ldr r3, [r3, #0x1c]
	adds r0, r2, #0
	bl _call_via_r3
	movs r0, #0xb4
	bl sub_08072E38
	adds r2, r0, #0
	adds r2, #0x20
	ldr r3, [r0, #0x20]
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r2, r2, r0
	add r1, sp, #0x68
	movs r0, #0x38
	mov r8, r0
	mov r0, r8
	strh r0, [r1]
	strh r4, [r1, #2]
	ldr r3, [r3, #0x1c]
	adds r0, r2, #0
	bl _call_via_r3
	movs r0, #0xb5
	bl sub_08072E38
	adds r2, r0, #0
	adds r2, #0x20
	ldr r3, [r0, #0x20]
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r2, r2, r0
	add r1, sp, #0x6c
	movs r7, #0xb8
	strh r7, [r1]
	strh r4, [r1, #2]
	ldr r3, [r3, #0x1c]
	adds r0, r2, #0
	bl _call_via_r3
	movs r0, #0x1b
	bl sub_08072E38
	add r1, sp, #0x70
	movs r2, #0x50
	strh r5, [r1]
	strh r2, [r1, #2]
	movs r2, #0x1e
	bl sub_08073070
	ldr r4, _0809B364 @ =0x00000676
	adds r0, r4, #0
	bl playSound
	movs r0, #0xb4
	bl sub_08072E38
	add r1, sp, #0x74
	movs r5, #0x3c
	mov r2, r8
	strh r2, [r1]
	strh r5, [r1, #2]
	movs r2, #0x1e
	bl sub_08073070
	adds r0, r4, #0
	bl playSound
	movs r0, #0xb5
	bl sub_08072E38
	add r1, sp, #0x78
	strh r7, [r1]
	strh r5, [r1, #2]
	movs r2, #0x1e
	bl sub_08073070
	adds r0, r4, #0
	bl playSound
	movs r0, #0x1b
	bl sub_08072E38
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r0, sp, #0x1c
	bl __3Msg
	mov r0, sl
	bl __3Msg
	movs r1, #0xc6
	lsls r1, r1, #3
	mov r2, sl
	str r2, [sp]
	add r0, sp, #4
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x7c
	movs r3, #0
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	add r0, sp, #4
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x1c
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x10
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	movs r0, #1
_0809B352:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809B364: .4byte 0x00000676

	thumb_func_start sub_0809B368
sub_0809B368: @ 0x0809B368
	push {r4, lr}
	adds r4, r0, #0
	b _0809B388
_0809B36E:
	adds r0, r4, #0
	bl battle_98__6Battle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809B388
	bl sub_08072A88__Fv
	cmp r0, #0
	bgt _0809B388
	movs r0, #0
	b _0809B392
_0809B388:
	bl sub_08072DFC__Fv
	cmp r0, #0
	bgt _0809B36E
	movs r0, #1
_0809B392:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809B398
sub_0809B398: @ 0x0809B398
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0809B3A4
sub_0809B3A4: @ 0x0809B3A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809B416
	ldr r1, [r4, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809B416
	ldr r1, [r4, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bne _0809B416
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r4, r2
	strb r1, [r0]
	ldr r1, [r4, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_0809B416:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809B420
sub_0809B420: @ 0x0809B420
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809B478 @ =vt_09F46450
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _0809B47C @ =0x00000F84
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B43E
	bl __builtin_vec_delete
_0809B43E:
	ldr r1, _0809B480 @ =0x00000F78
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B44C
	bl __builtin_vec_delete
_0809B44C:
	ldr r1, _0809B484 @ =0x00000F6C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B45A
	bl __builtin_vec_delete
_0809B45A:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B46A
	bl __builtin_vec_delete
_0809B46A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B478: .4byte vt_09F46450
_0809B47C: .4byte 0x00000F84
_0809B480: .4byte 0x00000F78
_0809B484: .4byte 0x00000F6C

	thumb_func_start sub_0809B488
sub_0809B488: @ 0x0809B488
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
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
	bne _0809B4B2
	adds r0, r4, #0
	bl battle_110__6Battle
	b _0809B4CC
_0809B4B2:
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0
	movs r2, #0x40
	movs r3, #1
	bl sub_08074518
_0809B4CC:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0809B4D4
sub_0809B4D4: @ 0x0809B4D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809B52C @ =vt_09F46450
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _0809B530 @ =0x00000F84
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B4F2
	bl __builtin_vec_delete
_0809B4F2:
	ldr r1, _0809B534 @ =0x00000F78
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B500
	bl __builtin_vec_delete
_0809B500:
	ldr r1, _0809B538 @ =0x00000F6C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B50E
	bl __builtin_vec_delete
_0809B50E:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B51E
	bl __builtin_vec_delete
_0809B51E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B52C: .4byte vt_09F46450
_0809B530: .4byte 0x00000F84
_0809B534: .4byte 0x00000F78
_0809B538: .4byte 0x00000F6C

	thumb_func_start sub_0809B53C
sub_0809B53C: @ 0x0809B53C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	b _0809B5DA
_0809B544:
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0xf6
	lsls r3, r3, #4
	adds r1, r6, r3
	lsls r4, r5, #2
	ldr r1, [r1, #8]
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _0809B604 @ =0x00000F6C
	adds r1, r6, r3
	ldr r1, [r1, #8]
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _0809B608 @ =0x00000F78
	adds r1, r6, r3
	ldr r1, [r1, #8]
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xda
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _0809B60C @ =0x00000F84
	adds r1, r6, r3
	ldr r1, [r1, #8]
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r5, #1
_0809B5DA:
	bl sub_08072A88__Fv
	cmp r5, r0
	blt _0809B544
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #0
	str r1, [r0, #4]
	ldr r2, _0809B604 @ =0x00000F6C
	adds r0, r6, r2
	str r1, [r0, #4]
	ldr r3, _0809B608 @ =0x00000F78
	adds r0, r6, r3
	str r1, [r0, #4]
	adds r2, #0x18
	adds r0, r6, r2
	str r1, [r0, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809B604: .4byte 0x00000F6C
_0809B608: .4byte 0x00000F78
_0809B60C: .4byte 0x00000F84

	thumb_func_start sub_0809B610
sub_0809B610: @ 0x0809B610
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	movs r0, #0
	b _0809B880
_0809B622:
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xe4
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	str r0, [sp]
	ldr r0, [sp, #0x10]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r4, r0, r1
	mov sl, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	add r7, sp, #4
	add r3, sp, #8
	mov r8, r3
	mov r1, sp
	adds r1, #0xc
	str r1, [sp, #0x18]
	mov r3, sb
	adds r3, #1
	str r3, [sp, #0x14]
	cmp r0, r5
	bge _0809B69C
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0809B66E
	adds r1, r0, #0
_0809B66E:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0809B68E
	adds r1, r0, #0
_0809B684:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0809B684
_0809B68E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0809B698
	bl __builtin_vec_delete
_0809B698:
	str r5, [r4]
	str r6, [r4, #8]
_0809B69C:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, sl
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xe6
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, _0809B89C @ =0x00000F6C
	adds r4, r0, r1
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0809B712
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0809B6E4
	adds r1, r0, #0
_0809B6E4:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0809B704
	adds r1, r0, #0
_0809B6FA:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0809B6FA
_0809B704:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0809B70E
	bl __builtin_vec_delete
_0809B70E:
	str r5, [r4]
	str r6, [r4, #8]
_0809B712:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r3, #0xea
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r1, _0809B8A0 @ =0x00000F78
	adds r4, r0, r1
	mov r7, r8
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0809B788
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0809B75A
	adds r1, r0, #0
_0809B75A:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0809B77A
	adds r1, r0, #0
_0809B770:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0809B770
_0809B77A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0809B784
	bl __builtin_vec_delete
_0809B784:
	str r5, [r4]
	str r6, [r4, #8]
_0809B788:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r3, #0xec
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, _0809B8A4 @ =0x00000F84
	adds r4, r0, r1
	ldr r7, [sp, #0x18]
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0809B7FE
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0809B7D0
	adds r1, r0, #0
_0809B7D0:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0809B7F0
	adds r1, r0, #0
_0809B7E6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0809B7E6
_0809B7F0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0809B7FA
	bl __builtin_vec_delete
_0809B7FA:
	str r5, [r4]
	str r6, [r4, #8]
_0809B7FE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	mov r0, sb
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xda
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r0, [sp, #0x14]
_0809B880:
	mov sb, r0
	bl sub_08072A88__Fv
	cmp sb, r0
	bge _0809B88C
	b _0809B622
_0809B88C:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809B89C: .4byte 0x00000F6C
_0809B8A0: .4byte 0x00000F78
_0809B8A4: .4byte 0x00000F84

	thumb_func_start sub_0809B8A8
sub_0809B8A8: @ 0x0809B8A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sb, r1
	mov sl, r2
_0809B8B8:
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
	bne _0809B99E
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
	beq _0809B8EE
	b _0809B99E
_0809B8EA:
	movs r0, #1
	b _0809B9A0
_0809B8EE:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r7, #0
	movs r3, #0x8c
	lsls r3, r3, #2
	mov r8, r3
	b _0809B962
_0809B908:
	mov r0, sb
	ldr r1, [r0, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, sl
	ble _0809B8EA
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xb8
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
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
	bne _0809B99E
	adds r7, #1
_0809B962:
	ldr r1, [r6, #0x1c]
	add r1, r8
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
	blt _0809B908
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809B8B8
_0809B99E:
	movs r0, #0
_0809B9A0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809B9B0
sub_0809B9B0: @ 0x0809B9B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	b _0809BA8C
_0809B9C0:
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
	bne _0809BA88
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
	bne _0809BA88
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r7, #0
	b _0809BA48
_0809BA04:
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
	bne _0809BA88
	adds r7, #1
_0809BA48:
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
	blt _0809BA04
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809BA8C
_0809BA88:
	movs r0, #0
	b _0809BAA8
_0809BA8C:
	mov r3, r8
	ldr r1, [r3, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, sb
	bgt _0809B9C0
	movs r0, #1
_0809BAA8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BAB4
sub_0809BAB4: @ 0x0809BAB4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r7, #0
	b _0809BB14
_0809BACC:
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
	beq _0809BB12
	movs r0, #0
	b _0809BB4C
_0809BB12:
	adds r7, #1
_0809BB14:
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
	blt _0809BACC
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_0809BB4C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809BB54
sub_0809BB54: @ 0x0809BB54
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809BB8C
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809BB8C
	movs r0, #1
	b _0809BB8E
_0809BB8C:
	movs r0, #0
_0809BB8E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BB94
sub_0809BB94: @ 0x0809BB94
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809BBD2
	movs r0, #0x17
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809BBD2
	ldr r0, _0809BBD8 @ =gSave
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0809BBDC
_0809BBD2:
	movs r0, #0
	b _0809BBDE
	.align 2, 0
_0809BBD8: .4byte gSave
_0809BBDC:
	adds r0, r4, #0
_0809BBDE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BBE4
sub_0809BBE4: @ 0x0809BBE4
	push {r4, r5, lr}
	ldr r4, [r0, #0x1c]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r4, r4, r1
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r0, r5
	bl battle_1f8__6Battle
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BC10
sub_0809BC10: @ 0x0809BC10
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	mov r8, r0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	add r0, sp, #4
	bl __3Msg
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	mov r0, r8
	adds r1, r5, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_08073460__3MsgiRC3MsgN22
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BC68
sub_0809BC68: @ 0x0809BC68
	push {r4, lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809BCB2
	movs r4, #0
	b _0809BCA6
_0809BC8A:
	adds r0, r4, #0
	bl sub_08072E18__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, #1
_0809BCA6:
	bl sub_08072DFC__Fv
	cmp r4, r0
	blt _0809BC8A
	movs r0, #1
	b _0809BCB4
_0809BCB2:
	movs r0, #0
_0809BCB4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809BCBC
sub_0809BCBC: @ 0x0809BCBC
	push {r4, lr}
	adds r4, r0, #0
	bl battle_78__6Battle
	ldr r0, [r4, #0x1c]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0809BCE0
sub_0809BCE0: @ 0x0809BCE0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809BD04
	movs r0, #0
	b _0809BD34
_0809BD04:
	movs r1, #0x8a
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r2, _0809BD3C @ =gCharStats
	ldr r1, _0809BD40 @ =0x040000D4
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _0809BD44 @ =0x80000360
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0809BD48 @ =gSave
	movs r0, #0x84
	lsls r0, r0, #2
	adds r3, r2, r0
	ldr r4, [r3]
	adds r0, r5, #0
	adds r0, #0x80
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _0809BD4C @ =0x80000410
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r4, [r3]
	movs r0, #1
_0809BD34:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0809BD3C: .4byte gCharStats
_0809BD40: .4byte 0x040000D4
_0809BD44: .4byte 0x80000360
_0809BD48: .4byte gSave
_0809BD4C: .4byte 0x80000410

	thumb_func_start sub_0809BD50
sub_0809BD50: @ 0x0809BD50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809BDA8 @ =vt_09F46450
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _0809BDAC @ =0x00000F84
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809BD6E
	bl __builtin_vec_delete
_0809BD6E:
	ldr r1, _0809BDB0 @ =0x00000F78
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809BD7C
	bl __builtin_vec_delete
_0809BD7C:
	ldr r1, _0809BDB4 @ =0x00000F6C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809BD8A
	bl __builtin_vec_delete
_0809BD8A:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809BD9A
	bl __builtin_vec_delete
_0809BD9A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809BDA8: .4byte vt_09F46450
_0809BDAC: .4byte 0x00000F84
_0809BDB0: .4byte 0x00000F78
_0809BDB4: .4byte 0x00000F6C

	thumb_func_start sub_0809BDB8
sub_0809BDB8: @ 0x0809BDB8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x87
	lsls r0, r0, #2
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809BF18
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BDDC
sub_0809BDDC: @ 0x0809BDDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x89
	lsls r0, r0, #2
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809BFE8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BE00
sub_0809BE00: @ 0x0809BE00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x87
	lsls r0, r0, #2
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809C0DC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BE24
sub_0809BE24: @ 0x0809BE24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x87
	lsls r0, r0, #2
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809C1B8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BE48
sub_0809BE48: @ 0x0809BE48
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x88
	lsls r0, r0, #2
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809C294
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BE6C
sub_0809BE6C: @ 0x0809BE6C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x88
	lsls r0, r0, #2
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809C37C
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BE90
sub_0809BE90: @ 0x0809BE90
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x87
	lsls r0, r0, #2
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809C464
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BEB4
sub_0809BEB4: @ 0x0809BEB4
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r3, #0x8d
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809BED4
sub_0809BED4: @ 0x0809BED4
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r3, #0x8b
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809BEF4
sub_0809BEF4: @ 0x0809BEF4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x87
	lsls r0, r0, #2
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809C540
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809BF18
sub_0809BF18: @ 0x0809BF18
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809BFC4 @ =vt_09F48BF8
	str r0, [r5, #0x20]
	ldr r0, _0809BFC8 @ =vt_09F48C70
	str r0, [r5, #0x1c]
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809BFCC @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0809BFD0 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _0809BFD4 @ =gUnknown_080F52C8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809BFD8 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _0809BFDC @ =gUnknown_080F52D0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _0809BFE0 @ =vt_09F46930
	str r0, [r5, #0x20]
	ldr r0, _0809BFE4 @ =vt_09F469A8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r5, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r5, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809BFC4: .4byte vt_09F48BF8
_0809BFC8: .4byte vt_09F48C70
_0809BFCC: .4byte _vt.3Unk
_0809BFD0: .4byte _vt.13UnitTurnBegin
_0809BFD4: .4byte gUnknown_080F52C8
_0809BFD8: .4byte _vt.11UnitTurnEnd
_0809BFDC: .4byte gUnknown_080F52D0
_0809BFE0: .4byte vt_09F46930
_0809BFE4: .4byte vt_09F469A8

	thumb_func_start sub_0809BFE8
sub_0809BFE8: @ 0x0809BFE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C0B8 @ =vt_09F48BF8
	str r0, [r7, #0x20]
	ldr r0, _0809C0BC @ =vt_09F48C70
	str r0, [r7, #0x1c]
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C0C0 @ =_vt.3Unk
	ldr r0, _0809C0C4 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _0809C0C8 @ =gUnknown_080F52C8
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
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C0CC @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _0809C0D0 @ =gUnknown_080F52D0
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
	ldr r0, _0809C0D4 @ =vt_09F46E20
	str r0, [r7, #0x20]
	ldr r0, _0809C0D8 @ =vt_09F46E98
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl unit_200__C4Unit
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r7, r2
	str r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0809C840
	adds r0, r7, #0
	movs r1, #2
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C0A4
	adds r0, r7, #0
	movs r1, #0xb
	bl sub_0807BDB4
_0809C0A4:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C0B8: .4byte vt_09F48BF8
_0809C0BC: .4byte vt_09F48C70
_0809C0C0: .4byte _vt.3Unk
_0809C0C4: .4byte _vt.13UnitTurnBegin
_0809C0C8: .4byte gUnknown_080F52C8
_0809C0CC: .4byte _vt.11UnitTurnEnd
_0809C0D0: .4byte gUnknown_080F52D0
_0809C0D4: .4byte vt_09F46E20
_0809C0D8: .4byte vt_09F46E98

	thumb_func_start sub_0809C0DC
sub_0809C0DC: @ 0x0809C0DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C194 @ =vt_09F48BF8
	str r0, [r7, #0x20]
	ldr r0, _0809C198 @ =vt_09F48C70
	str r0, [r7, #0x1c]
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C19C @ =_vt.3Unk
	ldr r0, _0809C1A0 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _0809C1A4 @ =gUnknown_080F52C8
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
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C1A8 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _0809C1AC @ =gUnknown_080F52D0
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
	ldr r0, _0809C1B0 @ =vt_09F47318
	str r0, [r7, #0x20]
	ldr r0, _0809C1B4 @ =vt_09F47390
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_0809C8B4
	adds r0, r7, #0
	movs r1, #3
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C180
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_0807BDB4
_0809C180:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C194: .4byte vt_09F48BF8
_0809C198: .4byte vt_09F48C70
_0809C19C: .4byte _vt.3Unk
_0809C1A0: .4byte _vt.13UnitTurnBegin
_0809C1A4: .4byte gUnknown_080F52C8
_0809C1A8: .4byte _vt.11UnitTurnEnd
_0809C1AC: .4byte gUnknown_080F52D0
_0809C1B0: .4byte vt_09F47318
_0809C1B4: .4byte vt_09F47390

	thumb_func_start sub_0809C1B8
sub_0809C1B8: @ 0x0809C1B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C270 @ =vt_09F48BF8
	str r0, [r7, #0x20]
	ldr r0, _0809C274 @ =vt_09F48C70
	str r0, [r7, #0x1c]
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C278 @ =_vt.3Unk
	ldr r0, _0809C27C @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _0809C280 @ =gUnknown_080F52C8
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
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C284 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _0809C288 @ =gUnknown_080F52D0
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
	ldr r0, _0809C28C @ =vt_09F47810
	str r0, [r7, #0x20]
	ldr r0, _0809C290 @ =vt_09F47888
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_0809C974
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C25C
	adds r0, r7, #0
	movs r1, #9
	bl sub_0807BDB4
_0809C25C:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C270: .4byte vt_09F48BF8
_0809C274: .4byte vt_09F48C70
_0809C278: .4byte _vt.3Unk
_0809C27C: .4byte _vt.13UnitTurnBegin
_0809C280: .4byte gUnknown_080F52C8
_0809C284: .4byte _vt.11UnitTurnEnd
_0809C288: .4byte gUnknown_080F52D0
_0809C28C: .4byte vt_09F47810
_0809C290: .4byte vt_09F47888

	thumb_func_start sub_0809C294
sub_0809C294: @ 0x0809C294
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C358 @ =vt_09F48BF8
	str r0, [r7, #0x20]
	ldr r0, _0809C35C @ =vt_09F48C70
	str r0, [r7, #0x1c]
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C360 @ =_vt.3Unk
	ldr r0, _0809C364 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _0809C368 @ =gUnknown_080F52C8
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
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C36C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _0809C370 @ =gUnknown_080F52D0
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
	ldr r0, _0809C374 @ =vt_09F47D08
	str r0, [r7, #0x20]
	ldr r0, _0809C378 @ =vt_09F47D80
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl level__C4Unit
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r7, r2
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0809CCF4
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C346
	adds r0, r7, #0
	movs r1, #6
	bl sub_0807BDB4
_0809C346:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C358: .4byte vt_09F48BF8
_0809C35C: .4byte vt_09F48C70
_0809C360: .4byte _vt.3Unk
_0809C364: .4byte _vt.13UnitTurnBegin
_0809C368: .4byte gUnknown_080F52C8
_0809C36C: .4byte _vt.11UnitTurnEnd
_0809C370: .4byte gUnknown_080F52D0
_0809C374: .4byte vt_09F47D08
_0809C378: .4byte vt_09F47D80

	thumb_func_start sub_0809C37C
sub_0809C37C: @ 0x0809C37C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C440 @ =vt_09F48BF8
	str r0, [r7, #0x20]
	ldr r0, _0809C444 @ =vt_09F48C70
	str r0, [r7, #0x1c]
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C448 @ =_vt.3Unk
	ldr r0, _0809C44C @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _0809C450 @ =gUnknown_080F52C8
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
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C454 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _0809C458 @ =gUnknown_080F52D0
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
	ldr r0, _0809C45C @ =vt_09F48200
	str r0, [r7, #0x20]
	ldr r0, _0809C460 @ =vt_09F48278
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl level__C4Unit
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r7, r2
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0809CF8C
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C42E
	adds r0, r7, #0
	movs r1, #6
	bl sub_0807BDB4
_0809C42E:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C440: .4byte vt_09F48BF8
_0809C444: .4byte vt_09F48C70
_0809C448: .4byte _vt.3Unk
_0809C44C: .4byte _vt.13UnitTurnBegin
_0809C450: .4byte gUnknown_080F52C8
_0809C454: .4byte _vt.11UnitTurnEnd
_0809C458: .4byte gUnknown_080F52D0
_0809C45C: .4byte vt_09F48200
_0809C460: .4byte vt_09F48278

	thumb_func_start sub_0809C464
sub_0809C464: @ 0x0809C464
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C51C @ =vt_09F48BF8
	str r0, [r7, #0x20]
	ldr r0, _0809C520 @ =vt_09F48C70
	str r0, [r7, #0x1c]
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C524 @ =_vt.3Unk
	ldr r0, _0809C528 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _0809C52C @ =gUnknown_080F52C8
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
	bl get__15BattleSingleton
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C530 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _0809C534 @ =gUnknown_080F52D0
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
	ldr r0, _0809C538 @ =vt_09F48700
	str r0, [r7, #0x20]
	ldr r0, _0809C53C @ =vt_09F48778
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_0809D004
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C508
	adds r0, r7, #0
	movs r1, #8
	bl sub_0807BDB4
_0809C508:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C51C: .4byte vt_09F48BF8
_0809C520: .4byte vt_09F48C70
_0809C524: .4byte _vt.3Unk
_0809C528: .4byte _vt.13UnitTurnBegin
_0809C52C: .4byte gUnknown_080F52C8
_0809C530: .4byte _vt.11UnitTurnEnd
_0809C534: .4byte gUnknown_080F52D0
_0809C538: .4byte vt_09F48700
_0809C53C: .4byte vt_09F48778

	thumb_func_start sub_0809C540
sub_0809C540: @ 0x0809C540
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C5CC @ =vt_09F48BF8
	str r0, [r5, #0x20]
	ldr r0, _0809C5D0 @ =vt_09F48C70
	str r0, [r5, #0x1c]
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C5D4 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0809C5D8 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _0809C5DC @ =gUnknown_080F52C8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C5E0 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _0809C5E4 @ =gUnknown_080F52D0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
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
_0809C5CC: .4byte vt_09F48BF8
_0809C5D0: .4byte vt_09F48C70
_0809C5D4: .4byte _vt.3Unk
_0809C5D8: .4byte _vt.13UnitTurnBegin
_0809C5DC: .4byte gUnknown_080F52C8
_0809C5E0: .4byte _vt.11UnitTurnEnd
_0809C5E4: .4byte gUnknown_080F52D0

	thumb_func_start sub_0809C5E8
sub_0809C5E8: @ 0x0809C5E8
	push {lr}
	ldr r2, _0809C5FC @ =vt_09F48BF8
	str r2, [r0, #0x20]
	ldr r2, _0809C600 @ =vt_09F48C70
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809C5FC: .4byte vt_09F48BF8
_0809C600: .4byte vt_09F48C70

	thumb_func_start sub_0809C604
sub_0809C604: @ 0x0809C604
	push {r4, lr}
	adds r4, r0, #0
	bl nullsub_31
	movs r0, #0x88
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C61C
sub_0809C61C: @ 0x0809C61C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r6, r0, #0
	adds r7, r1, #0
	bl unit_a0__4UnitP6Action
	movs r1, #0x88
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0809C63E
	b _0809C7D6
_0809C63E:
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809C658
	b _0809C7D6
_0809C658:
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl typeIsMonster
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809C67A
	b _0809C7D6
_0809C67A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x87
	lsls r1, r1, #2
	adds r5, r6, r1
	ldr r1, [r5]
	cmp r0, r1
	bgt _0809C69C
	b _0809C7D6
_0809C69C:
	ldr r1, [r6, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [r5]
	subs r4, r4, r0
	movs r0, #0x6e
	muls r0, r4, r0
	movs r1, #0x64
	bl sub_0807066C
	str r0, [sp, #0x44]
	lsls r0, r4, #6
	adds r0, r0, r4
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	mov sb, r0
	ldr r0, _0809C7E8 @ =0x000002FF
	bl playSound
	ldr r2, [r7, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x10
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	ldr r2, [r7, #0x1c]
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x1c
	mov sl, r0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r4, #0xc4
	lsls r4, r4, #1
	adds r2, r2, r4
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r5, sp, #0x28
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	adds r2, r2, r4
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r4, sp, #0x34
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	str r4, [sp]
	add r0, sp, #4
	mov r1, r8
	mov r2, sl
	adds r3, r5, #0
	bl sub_080734A0
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
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [sp, #0x44]
	mov r1, sb
	bl randS32
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl hitPlayer
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
	movs r0, #1
	adds r1, r6, #0
	bl playSeq
_0809C7D6:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809C7E8: .4byte 0x000002FF

	thumb_func_start sub_0809C7EC
sub_0809C7EC: @ 0x0809C7EC
	push {r4, lr}
	adds r4, r0, #0
	bl unit_90__4UnitP6Action
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x87
	lsls r1, r1, #2
	adds r4, r4, r1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809C818
sub_0809C818: @ 0x0809C818
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0807B4B8
	adds r0, r4, #0
	movs r1, #0x31
	bl sub_08073FC4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bne _0809C83A
	movs r2, #0x88
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
_0809C83A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C840
sub_0809C840: @ 0x0809C840
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xf6
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2e
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2f
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x30
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	movs r1, #0x31
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C898
sub_0809C898: @ 0x0809C898
	push {lr}
	ldr r2, _0809C8AC @ =vt_09F48BF8
	str r2, [r0, #0x20]
	ldr r2, _0809C8B0 @ =vt_09F48C70
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809C8AC: .4byte vt_09F48BF8
_0809C8B0: .4byte vt_09F48C70

	thumb_func_start sub_0809C8B4
sub_0809C8B4: @ 0x0809C8B4
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xf6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x2c
	bl _call_via_r2
	pop {r0}
	bx r0

	thumb_func_start sub_0809C8D0
sub_0809C8D0: @ 0x0809C8D0
	push {lr}
	ldr r2, _0809C8E4 @ =vt_09F48BF8
	str r2, [r0, #0x20]
	ldr r2, _0809C8E8 @ =vt_09F48C70
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809C8E4: .4byte vt_09F48BF8
_0809C8E8: .4byte vt_09F48C70

	thumb_func_start sub_0809C8EC
sub_0809C8EC: @ 0x0809C8EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072628
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809C96E
	bl sub_08072798
	cmp r0, #0
	bgt _0809C96E
	ldr r1, [r4, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C96E
	bl sub_080726F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C938
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #9
	bgt _0809C96E
	movs r0, #8
	b _0809C952
_0809C938:
	bl sub_08072738
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C96E
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #9
	bgt _0809C95E
	movs r0, #6
_0809C952:
	adds r1, r4, #0
	bl sub_08073F88
	bl sub_08074234
	b _0809C96E
_0809C95E:
	cmp r0, #0x1d
	bgt _0809C96E
	movs r0, #7
	adds r1, r4, #0
	bl sub_08073F88
	bl sub_08074234
_0809C96E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C974
sub_0809C974: @ 0x0809C974
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xd6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C9AC
	ldr r1, [r4, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x25
	bl _call_via_r2
_0809C9AC:
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xd7
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C9E0
	ldr r1, [r4, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x26
	bl _call_via_r2
_0809C9E0:
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xd9
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CA14
	ldr r1, [r4, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x27
	bl _call_via_r2
_0809CA14:
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xd8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CA48
	ldr r1, [r4, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl _call_via_r2
_0809CA48:
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xda
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CA7C
	ldr r1, [r4, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	bl _call_via_r2
_0809CA7C:
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xdb
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CAB0
	ldr r1, [r4, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2a
	bl _call_via_r2
_0809CAB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809CAB8
sub_0809CAB8: @ 0x0809CAB8
	push {lr}
	ldr r2, _0809CACC @ =vt_09F48BF8
	str r2, [r0, #0x20]
	ldr r2, _0809CAD0 @ =vt_09F48C70
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809CACC: .4byte vt_09F48BF8
_0809CAD0: .4byte vt_09F48C70

	thumb_func_start sub_0809CAD4
sub_0809CAD4: @ 0x0809CAD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	bl sub_0807C378
	b _0809CB12
_0809CAE2:
	ldr r0, [r6, #0x1c]
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_0809CB12:
	ldr r1, [r6, #0x1c]
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0809CAE2
	ldr r1, [r6, #0x1c]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CBC8 @ =gCharStats
	adds r1, r1, r0
	mov r8, r1
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0809CBCC @ =gLevelStatTable
	adds r1, r1, r0
	adds r5, r1, #0
	adds r5, #0xc0
	movs r7, #0x1f
_0809CB74:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0809CBB4
	ldrb r4, [r5, #2]
	ldr r1, [r6, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bgt _0809CBB4
	ldrh r1, [r5]
	mov r0, r8
	movs r2, #1
	bl sub_0805C300
	ldr r2, [r6, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldrh r1, [r5]
	ldr r2, [r2, #4]
	bl _call_via_r2
_0809CBB4:
	adds r5, #4
	subs r7, #1
	cmp r7, #0
	bge _0809CB74
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CBC8: .4byte gCharStats
_0809CBCC: .4byte gLevelStatTable

	thumb_func_start sub_0809CBD0
sub_0809CBD0: @ 0x0809CBD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CCAC @ =gCharStats
	adds r1, r1, r0
	mov r8, r1
	mov r0, r8
	bl ch_has_psi
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CC9E
	ldr r1, [r6, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r1, [r1]
	cmp r0, r1
	ble _0809CC9E
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0809CCB0 @ =gLevelStatTable
	adds r1, r1, r0
	ldr r0, _0809CCB4 @ =gUnknown_02004F94
	mov sb, r0
	adds r5, r1, #0
	adds r5, #0xc0
	movs r7, #0x1f
_0809CC56:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0809CC96
	adds r1, r0, #0
	mov r0, r8
	bl sub_0805C364
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809CC96
	ldrb r4, [r5, #2]
	ldr r1, [r6, #0x1c]
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bgt _0809CC96
	ldrh r1, [r5]
	mov r0, r8
	movs r2, #1
	bl sub_0805C248
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
_0809CC96:
	adds r5, #4
	subs r7, #1
	cmp r7, #0
	bge _0809CC56
_0809CC9E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CCAC: .4byte gCharStats
_0809CCB0: .4byte gLevelStatTable
_0809CCB4: .4byte gUnknown_02004F94

	thumb_func_start sub_0809CCB8
sub_0809CCB8: @ 0x0809CCB8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809CCE4 @ =vt_09F47D08
	str r0, [r4, #0x20]
	ldr r0, _0809CCE8 @ =vt_09F47D80
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809CBD0
	ldr r0, _0809CCEC @ =vt_09F48BF8
	str r0, [r4, #0x20]
	ldr r0, _0809CCF0 @ =vt_09F48C70
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807ACF0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809CCE4: .4byte vt_09F47D08
_0809CCE8: .4byte vt_09F47D80
_0809CCEC: .4byte vt_09F48BF8
_0809CCF0: .4byte vt_09F48C70

	thumb_func_start sub_0809CCF4
sub_0809CCF4: @ 0x0809CCF4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CD2C @ =gCharStats
	adds r6, r1, r0
	adds r0, r6, #0
	bl ch_has_psi
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CD66
	movs r5, #0
	b _0809CD5C
	.align 2, 0
_0809CD2C: .4byte gCharStats
_0809CD30:
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805C364
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CD5A
	ldr r1, [r7, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_0809CD5A:
	adds r5, #1
_0809CD5C:
	adds r0, r6, #0
	bl sub_0805C21C
	cmp r5, r0
	blt _0809CD30
_0809CD66:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809CD6C
sub_0809CD6C: @ 0x0809CD6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	bl sub_0807C378
	b _0809CDAA
_0809CD7A:
	ldr r0, [r6, #0x1c]
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_0809CDAA:
	ldr r1, [r6, #0x1c]
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0809CD7A
	ldr r1, [r6, #0x1c]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CE60 @ =gCharStats
	adds r1, r1, r0
	mov r8, r1
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0809CE64 @ =gLevelStatTable
	adds r1, r1, r0
	adds r5, r1, #0
	adds r5, #0xc0
	movs r7, #0x1f
_0809CE0C:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0809CE4C
	ldrb r4, [r5, #2]
	ldr r1, [r6, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bgt _0809CE4C
	ldrh r1, [r5]
	mov r0, r8
	movs r2, #1
	bl sub_0805C300
	ldr r2, [r6, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldrh r1, [r5]
	ldr r2, [r2, #4]
	bl _call_via_r2
_0809CE4C:
	adds r5, #4
	subs r7, #1
	cmp r7, #0
	bge _0809CE0C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CE60: .4byte gCharStats
_0809CE64: .4byte gLevelStatTable

	thumb_func_start sub_0809CE68
sub_0809CE68: @ 0x0809CE68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CF44 @ =gCharStats
	adds r1, r1, r0
	mov r8, r1
	mov r0, r8
	bl ch_has_psi
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CF36
	ldr r1, [r6, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r1, [r1]
	cmp r0, r1
	ble _0809CF36
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0809CF48 @ =gLevelStatTable
	adds r1, r1, r0
	ldr r0, _0809CF4C @ =gUnknown_02004F7A
	mov sb, r0
	adds r5, r1, #0
	adds r5, #0xc0
	movs r7, #0x1f
_0809CEEE:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0809CF2E
	adds r1, r0, #0
	mov r0, r8
	bl sub_0805C364
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809CF2E
	ldrb r4, [r5, #2]
	ldr r1, [r6, #0x1c]
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bgt _0809CF2E
	ldrh r1, [r5]
	mov r0, r8
	movs r2, #1
	bl sub_0805C248
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
_0809CF2E:
	adds r5, #4
	subs r7, #1
	cmp r7, #0
	bge _0809CEEE
_0809CF36:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CF44: .4byte gCharStats
_0809CF48: .4byte gLevelStatTable
_0809CF4C: .4byte gUnknown_02004F7A

	thumb_func_start sub_0809CF50
sub_0809CF50: @ 0x0809CF50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809CF7C @ =vt_09F48200
	str r0, [r4, #0x20]
	ldr r0, _0809CF80 @ =vt_09F48278
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809CE68
	ldr r0, _0809CF84 @ =vt_09F48BF8
	str r0, [r4, #0x20]
	ldr r0, _0809CF88 @ =vt_09F48C70
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807ACF0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809CF7C: .4byte vt_09F48200
_0809CF80: .4byte vt_09F48278
_0809CF84: .4byte vt_09F48BF8
_0809CF88: .4byte vt_09F48C70

	thumb_func_start sub_0809CF8C
sub_0809CF8C: @ 0x0809CF8C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CFC4 @ =gCharStats
	adds r6, r1, r0
	adds r0, r6, #0
	bl ch_has_psi
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CFFE
	movs r5, #0
	b _0809CFF4
	.align 2, 0
_0809CFC4: .4byte gCharStats
_0809CFC8:
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805C364
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CFF2
	ldr r1, [r7, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_0809CFF2:
	adds r5, #1
_0809CFF4:
	adds r0, r6, #0
	bl sub_0805C21C
	cmp r5, r0
	blt _0809CFC8
_0809CFFE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809D004
sub_0809D004: @ 0x0809D004
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xf6
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x20
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	movs r1, #0x23
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0809D05C
sub_0809D05C: @ 0x0809D05C
	push {lr}
	ldr r2, _0809D070 @ =vt_09F48BF8
	str r2, [r0, #0x20]
	ldr r2, _0809D074 @ =vt_09F48C70
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809D070: .4byte vt_09F48BF8
_0809D074: .4byte vt_09F48C70

	thumb_func_start sub_0809D078
sub_0809D078: @ 0x0809D078
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809D0A4
	ldr r0, _0809D0A0 @ =0x00000557
	b _0809D0D0
	.align 2, 0
_0809D0A0: .4byte 0x00000557
_0809D0A4:
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x23
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D0CE
	adds r0, r4, #0
	bl sub_0807BD9C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0809D0D0
_0809D0CE:
	ldr r0, _0809D0D8 @ =0x0000055A
_0809D0D0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D0D8: .4byte 0x0000055A

	thumb_func_start sub_0809D0DC
sub_0809D0DC: @ 0x0809D0DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809D108
	ldr r0, _0809D104 @ =0x00000556
	b _0809D134
	.align 2, 0
_0809D104: .4byte 0x00000556
_0809D108:
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x23
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D132
	adds r0, r4, #0
	bl sub_0807BD98
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0809D134
_0809D132:
	ldr r0, _0809D13C @ =0x00000559
_0809D134:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D13C: .4byte 0x00000559

	thumb_func_start sub_0809D140
sub_0809D140: @ 0x0809D140
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809D16C
	ldr r0, _0809D168 @ =0x00000555
	b _0809D19A
	.align 2, 0
_0809D168: .4byte 0x00000555
_0809D16C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x23
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D196
	adds r0, r4, #0
	bl sub_0807BD74
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0809D19A
_0809D196:
	movs r0, #0xab
	lsls r0, r0, #3
_0809D19A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809D1A0
sub_0809D1A0: @ 0x0809D1A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	cmp r1, #4
	bhi _0809D256
	movs r6, #0
	add r7, sp, #0xc
	b _0809D23E
_0809D1BA:
	ldr r1, [r5, #0x1c]
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	mov r0, sp
	bl sub_08077DB8
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl sub_08077D98
	lsls r4, r4, #0x10
	cmp r4, #0
	beq _0809D23C
	ldr r1, [r5, #0x1c]
	movs r2, #0x92
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r3, [r2, r0]
	adds r0, r7, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	adds r0, r7, #0
	bl sub_08077DB8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	movs r1, #2
	bl sub_08077D98
	adds r0, r4, #0
	b _0809D258
_0809D23C:
	adds r6, #1
_0809D23E:
	ldr r1, [r5, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0809D1BA
_0809D256:
	mov r0, r8
_0809D258:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0809D264
sub_0809D264: @ 0x0809D264
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807BE90
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r4, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #3
	adds r0, r0, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r4, r4, r2
	ldr r2, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start nullsub_53
nullsub_53: @ 0x0809D294
	bx lr
	.align 2, 0

	thumb_func_start sub_0809D298
sub_0809D298: @ 0x0809D298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r7, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32
	adds r5, r0, #0
	ldr r4, _0809D328 @ =gUnknown_080F52D8
	ldr r1, [r7, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r5, r0
	blt _0809D2D4
	b _0809D4A4
_0809D2D4:
	ldr r1, [r7, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0x94
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x5c
	movs r4, #0
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	add r1, sp, #0xc
	mov r8, r1
	b _0809D3E2
	.align 2, 0
_0809D328: .4byte gUnknown_080F52D8
_0809D32C:
	ldr r1, [r7, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	adds r2, r7, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	mov r0, r8
	bl getType__C5Goods
	adds r6, r0, #0
	mov r0, r8
	movs r1, #2
	bl _._5Goods
	adds r0, r4, #1
	mov sb, r0
	cmp r6, #4
	bne _0809D3E0
	ldr r1, [r7, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	add r1, sp, #0x60
	strh r0, [r1]
	mov r5, sp
	mov sl, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _0809D3CE
	lsls r0, r4, #1
	movs r1, #4
	cmp r6, r0
	bge _0809D39C
	adds r1, r0, #0
_0809D39C:
	adds r4, r1, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0809D3C0
	adds r1, r0, #0
_0809D3B2:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0809D3B2
_0809D3C0:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0809D3CA
	bl __builtin_vec_delete
_0809D3CA:
	str r4, [r5]
	str r6, [r5, #8]
_0809D3CE:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sl
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_0809D3E0:
	mov r4, sb
_0809D3E2:
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
	blt _0809D32C
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x27
	bgt _0809D40A
	movs r0, #5
	b _0809D48A
_0809D40A:
	cmp r0, #0x4f
	bgt _0809D488
	movs r0, #0
	ldr r1, [sp, #4]
	cmp r1, #0
	bgt _0809D418
	movs r0, #1
_0809D418:
	cmp r0, #0
	bne _0809D488
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r5, r0, #0
	ldr r2, [r7, #0x1c]
	movs r3, #0x85
	lsls r3, r3, #3
	adds r6, r2, r3
	movs r0, #0
	ldrsh r4, [r6, r0]
	adds r4, r7, r4
	movs r1, #0x88
	lsls r1, r1, #3
	adds r2, r2, r1
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r7, r0
	lsls r5, r5, #1
	ldr r1, [sp, #8]
	adds r1, r1, r5
	ldrh r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [sp, #8]
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r1, r7, #0
	bl sub_08074098
	adds r4, r0, #0
	bl sub_08072A88__Fv
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	bl sub_08072AA4__Fi
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080742EC
	b _0809D494
_0809D488:
	movs r0, #2
_0809D48A:
	adds r1, r7, #0
	bl sub_08073F88
	bl sub_08074234
_0809D494:
	adds r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0809D4A0
	bl __builtin_vec_delete
_0809D4A0:
	adds r0, r4, #0
	b _0809D4A6
_0809D4A4:
	movs r0, #0
_0809D4A6:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D4B8
sub_0809D4B8: @ 0x0809D4B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D4EE
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__C4UnitP4Unit
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D4EE
	movs r0, #0
	b _0809D4F0
_0809D4EE:
	movs r0, #1
_0809D4F0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start nullsub_52
nullsub_52: @ 0x0809D4F8
	bx lr
	.align 2, 0

	thumb_func_start sub_0809D4FC
sub_0809D4FC: @ 0x0809D4FC
	push {lr}
	ldr r2, _0809D510 @ =vt_09F48BF8
	str r2, [r0, #0x20]
	ldr r2, _0809D514 @ =vt_09F48C70
	str r2, [r0, #0x1c]
	bl sub_0807ACF0
	pop {r0}
	bx r0
	.align 2, 0
_0809D510: .4byte vt_09F48BF8
_0809D514: .4byte vt_09F48C70

	thumb_func_start sub_0809D518
sub_0809D518: @ 0x0809D518
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D8A0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D538
sub_0809D538: @ 0x0809D538
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D8BC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D558
sub_0809D558: @ 0x0809D558
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D8D8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D578
sub_0809D578: @ 0x0809D578
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D8F4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D598
sub_0809D598: @ 0x0809D598
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D910
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D5B8
sub_0809D5B8: @ 0x0809D5B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D954
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D5D8
sub_0809D5D8: @ 0x0809D5D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D970
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D5F8
sub_0809D5F8: @ 0x0809D5F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D98C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D618
sub_0809D618: @ 0x0809D618
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D9A8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D638
sub_0809D638: @ 0x0809D638
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D9C4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D658
sub_0809D658: @ 0x0809D658
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D9E0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D678
sub_0809D678: @ 0x0809D678
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809D9FC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D698
sub_0809D698: @ 0x0809D698
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809DA18
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D6B8
sub_0809D6B8: @ 0x0809D6B8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08074614
	cmp r0, #0
	beq _0809D6E4
	adds r4, r5, #0
	adds r4, #0x60
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080702C0
_0809D6E4:
	bl sub_08074614
	cmp r0, #0
	beq _0809D708
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D720
_0809D708:
	ldr r1, [r5, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
_0809D720:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809D728
sub_0809D728: @ 0x0809D728
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x58]
	cmp r0, #4
	bhi _0809D7CE
	lsls r0, r0, #2
	ldr r1, _0809D73C @ =_0809D740
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809D73C: .4byte _0809D740
_0809D740: @ jump table
	.4byte _0809D7CE @ case 0
	.4byte _0809D79C @ case 1
	.4byte _0809D754 @ case 2
	.4byte _0809D7B6 @ case 3
	.4byte _0809D7CE @ case 4
_0809D754:
	ldr r0, [r6, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809D79C
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #3
	b _0809D7AE
_0809D79C:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #4
_0809D7AE:
	movs r2, #0
	bl _call_via_r3
	b _0809D7CE
_0809D7B6:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
_0809D7CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809D7D4
sub_0809D7D4: @ 0x0809D7D4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x58]
	cmp r0, #4
	bhi _0809D832
	lsls r0, r0, #2
	ldr r1, _0809D7E8 @ =_0809D7EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809D7E8: .4byte _0809D7EC
_0809D7EC: @ jump table
	.4byte _0809D832 @ case 0
	.4byte _0809D832 @ case 1
	.4byte _0809D800 @ case 2
	.4byte _0809D81A @ case 3
	.4byte _0809D832 @ case 4
_0809D800:
	ldr r1, [r2, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
	b _0809D832
_0809D81A:
	ldr r1, [r2, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_0809D832:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809D838
sub_0809D838: @ 0x0809D838
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x58]
	cmp r0, #1
	bne _0809D85A
	ldr r1, [r2, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
_0809D85A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809D860
sub_0809D860: @ 0x0809D860
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x98
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809DA34
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D880
sub_0809D880: @ 0x0809D880
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0809DA68
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809D8A0
sub_0809D8A0: @ 0x0809D8A0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D8B8 @ =vt_09F49158
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D8B8: .4byte vt_09F49158

	thumb_func_start sub_0809D8BC
sub_0809D8BC: @ 0x0809D8BC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D8D4 @ =vt_09F493F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D8D4: .4byte vt_09F493F8

	thumb_func_start sub_0809D8D8
sub_0809D8D8: @ 0x0809D8D8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D8F0 @ =vt_09F496A0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D8F0: .4byte vt_09F496A0

	thumb_func_start sub_0809D8F4
sub_0809D8F4: @ 0x0809D8F4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D90C @ =vt_09F49948
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D90C: .4byte vt_09F49948

	thumb_func_start sub_0809D910
sub_0809D910: @ 0x0809D910
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D944 @ =vt_09F49BE8
	str r0, [r4, #0x1c]
	ldr r0, _0809D948 @ =gSave
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _0809D94C @ =gUnknown_02002214
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	beq _0809D93A
	str r1, [r2]
	ldr r1, _0809D950 @ =gUnknown_02002210
	movs r0, #0
	str r0, [r1]
_0809D93A:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D944: .4byte vt_09F49BE8
_0809D948: .4byte gSave
_0809D94C: .4byte gUnknown_02002214
_0809D950: .4byte gUnknown_02002210

	thumb_func_start sub_0809D954
sub_0809D954: @ 0x0809D954
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D96C @ =vt_09F49E88
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D96C: .4byte vt_09F49E88

	thumb_func_start sub_0809D970
sub_0809D970: @ 0x0809D970
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D988 @ =vt_09F4A128
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D988: .4byte vt_09F4A128

	thumb_func_start sub_0809D98C
sub_0809D98C: @ 0x0809D98C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D9A4 @ =vt_09F4A3C8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D9A4: .4byte vt_09F4A3C8

	thumb_func_start sub_0809D9A8
sub_0809D9A8: @ 0x0809D9A8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D9C0 @ =vt_09F4A668
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D9C0: .4byte vt_09F4A668

	thumb_func_start sub_0809D9C4
sub_0809D9C4: @ 0x0809D9C4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D9DC @ =vt_09F4A910
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D9DC: .4byte vt_09F4A910

	thumb_func_start sub_0809D9E0
sub_0809D9E0: @ 0x0809D9E0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D9F8 @ =vt_09F4ABB8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D9F8: .4byte vt_09F4ABB8

	thumb_func_start sub_0809D9FC
sub_0809D9FC: @ 0x0809D9FC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809DA14 @ =vt_09F4AE60
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809DA14: .4byte vt_09F4AE60

	thumb_func_start sub_0809DA18
sub_0809DA18: @ 0x0809DA18
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809DA30 @ =vt_09F4B108
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809DA30: .4byte vt_09F4B108

	thumb_func_start sub_0809DA34
sub_0809DA34: @ 0x0809DA34
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809DA64 @ =vt_09F4B3B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x60
	bl sub_0806FF38
	movs r0, #0x64
	str r0, [r4, #0x4c]
	movs r0, #0
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809DA64: .4byte vt_09F4B3B0

	thumb_func_start sub_0809DA68
sub_0809DA68: @ 0x0809DA68
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809DA80 @ =vt_09F4B6A8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809DA80: .4byte vt_09F4B6A8

	thumb_func_start sub_0809DA84
sub_0809DA84: @ 0x0809DA84
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _0809DACC @ =0x000002A2
	bl sub_080707E4
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809DAD0 @ =0x000001E9
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809DACC: .4byte 0x000002A2
_0809DAD0: .4byte 0x000001E9

	thumb_func_start sub_0809DAD4
sub_0809DAD4: @ 0x0809DAD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sl, r0
	adds r0, r1, #0
	bl dynaCastMonster
	adds r7, r0, #0
	cmp r7, #0
	bne _0809DAF0
	b _0809DC18
_0809DAF0:
	mov r0, sp
	bl __3Msg
	mov r0, sl
	ldr r5, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r5, r5, r1
	movs r2, #0
	ldrsh r6, [r5, r2]
	add r6, sl
	ldr r1, [r7, #0x1c]
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0xf9
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0xc
	adds r0, r4, #0
	ldr r3, [r5, #4]
	adds r1, r6, #0
	bl _call_via_r3
	mov r0, sp
	adds r1, r4, #0
	bl sub_0806E374__3MsgRC3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	ldr r1, _0809DB58 @ =0x0000FF01
	mov r0, sp
	bl sub_0806E34C
	movs r6, #0
	movs r1, #1
	str r1, [sp, #0x1c]
	mov r8, r4
	add r2, sp, #0x18
	mov sb, r2
	b _0809DBE4
	.align 2, 0
_0809DB58: .4byte 0x0000FF01
_0809DB5C:
	ldr r1, [r7, #0x1c]
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	movs r1, #0xf3
	lsls r1, r1, #0x11
	cmp r0, r1
	beq _0809DBE2
	mov r0, sl
	ldr r4, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sl
	ldr r1, [r7, #0x1c]
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl _call_via_r3
	mov r0, sp
	bl len__3Msg
	cmp r0, #0
	ble _0809DBD2
	movs r0, #1
	ldr r1, [sp, #0x1c]
	ands r0, r1
	adds r1, #1
	str r1, [sp, #0x1c]
	cmp r0, #0
	bne _0809DBD2
	ldr r1, _0809DC28 @ =0x0000FF02
	mov r0, sp
	bl sub_0806E34C
_0809DBD2:
	mov r0, sp
	mov r1, r8
	bl sub_0806E374__3MsgRC3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
_0809DBE2:
	adds r6, #1
_0809DBE4:
	ldr r1, [r7, #0x1c]
	movs r2, #0xda
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0809DB5C
	movs r0, #0
	add r1, sp, #0x18
	strb r0, [r1]
	mov r1, sb
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_0809DC18:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809DC28: .4byte 0x0000FF02

	thumb_func_start sub_0809DC2C
sub_0809DC2C: @ 0x0809DC2C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl typeIsMonster
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809DC8E
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x16
	beq _0809DC8A
	cmp r0, #0x16
	bgt _0809DC74
	cmp r0, #0xd
	beq _0809DC8A
	cmp r0, #0xd
	bgt _0809DC6E
	cmp r0, #0xb
	beq _0809DC8A
	b _0809DC8E
_0809DC6E:
	cmp r0, #0x11
	beq _0809DC8A
	b _0809DC8E
_0809DC74:
	cmp r0, #0xbd
	beq _0809DC8A
	cmp r0, #0xbd
	bgt _0809DC82
	cmp r0, #0x1c
	beq _0809DC8A
	b _0809DC8E
_0809DC82:
	cmp r0, #0xbe
	beq _0809DC8A
	cmp r0, #0xbf
	bne _0809DC8E
_0809DC8A:
	movs r0, #0
	b _0809DC96
_0809DC8E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl calcMissed__6ActionP4Unit
_0809DC96:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809DC9C
sub_0809DC9C: @ 0x0809DC9C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _0809DCE4 @ =0x0000055B
	bl sub_080707E4
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xf4
	lsls r2, r2, #1
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809DCE4: .4byte 0x0000055B

	thumb_func_start sub_0809DCE8
sub_0809DCE8: @ 0x0809DCE8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl typeIsMonster
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809DD64
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xb
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809DD1E
_0809DD1A:
	movs r0, #1
	b _0809DD6C
_0809DD1E:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x6b
	beq _0809DD1A
	cmp r0, #0x6b
	bgt _0809DD52
	cmp r0, #0x48
	beq _0809DD1A
	cmp r0, #0x48
	bgt _0809DD4C
	cmp r0, #0x47
	beq _0809DD1A
	b _0809DD64
_0809DD4C:
	cmp r0, #0x63
	beq _0809DD1A
	b _0809DD64
_0809DD52:
	cmp r0, #0x96
	beq _0809DD1A
	cmp r0, #0x96
	bgt _0809DD60
	cmp r0, #0x8f
	beq _0809DD1A
	b _0809DD64
_0809DD60:
	cmp r0, #0xa2
	beq _0809DD1A
_0809DD64:
	adds r0, r5, #0
	adds r1, r4, #0
	bl isResisted__6ActionP4Unit
_0809DD6C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809DD74
sub_0809DD74: @ 0x0809DD74
	push {lr}
	bl tellUseMessage__6Action
	ldr r0, _0809DD84 @ =0x000002EE
	bl sub_080707E4
	pop {r0}
	bx r0
	.align 2, 0
_0809DD84: .4byte 0x000002EE

	thumb_func_start sub_0809DD88
sub_0809DD88: @ 0x0809DD88
	push {lr}
	ldr r2, _0809DD98 @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809DD98: .4byte vt_09F4B6A8

	thumb_func_start sub_0809DD9C
sub_0809DD9C: @ 0x0809DD9C
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	movs r2, #0x90
	lsls r2, r2, #2
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809DDE0
sub_0809DDE0: @ 0x0809DDE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r7, r1, #0
	adds r0, r7, #0
	bl dynaCastMonster
	adds r6, r0, #0
	cmp r6, #0
	beq _0809DEA2
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x4a
	bgt _0809DE70
	ldr r2, [r5, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r7, #0
	movs r2, #0x33
	movs r3, #0x64
	bl _call_via_r4
	ldr r1, [r6, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	ldr r3, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809DE6C @ =0x00000243
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x10
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
	b _0809DEA2
	.align 2, 0
_0809DE6C: .4byte 0x00000243
_0809DE70:
	ldr r3, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809DEAC @ =0x0000023F
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x14
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
_0809DEA2:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809DEAC: .4byte 0x0000023F

	thumb_func_start sub_0809DEB0
sub_0809DEB0: @ 0x0809DEB0
	push {r4, r5, lr}
	adds r0, r1, #0
	bl dynaCastMonster
	adds r4, r0, #0
	cmp r4, #0
	bne _0809DEC2
	movs r0, #0
	b _0809DEFC
_0809DEC2:
	movs r5, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _0809DEFA
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809DEFA
	movs r5, #1
_0809DEFA:
	adds r0, r5, #0
_0809DEFC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809DF04
sub_0809DF04: @ 0x0809DF04
	push {r4, lr}
	sub sp, #4
	ldr r3, [r0, #0x1c]
	movs r2, #0x94
	lsls r2, r2, #1
	adds r3, r3, r2
	movs r4, #0
	ldrsh r2, [r3, r4]
	adds r0, r0, r2
	mov r4, sp
	movs r2, #1
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #3
	movs r3, #0x64
	bl _call_via_r4
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809DF30
sub_0809DF30: @ 0x0809DF30
	push {lr}
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809DF50
sub_0809DF50: @ 0x0809DF50
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0809DF68 @ =0x00000652
	bl playSound
	adds r0, r4, #0
	bl playAnim__6Action
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809DF68: .4byte 0x00000652

	thumb_func_start sub_0809DF6C
sub_0809DF6C: @ 0x0809DF6C
	push {lr}
	ldr r2, _0809DF7C @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809DF7C: .4byte vt_09F4B6A8

	thumb_func_start sub_0809DF80
sub_0809DF80: @ 0x0809DF80
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	b _0809DFB2
_0809DF8A:
	adds r0, r5, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl _call_via_r4
	adds r5, #1
_0809DFB2:
	bl getPartyCount
	cmp r5, r0
	blt _0809DF8A
	movs r5, #0
	b _0809DFE6
_0809DFBE:
	adds r0, r5, #0
	bl sub_08072C7C
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl _call_via_r4
	adds r5, #1
_0809DFE6:
	bl sub_08072C60
	cmp r5, r0
	blt _0809DFBE
	movs r5, #0
	b _0809E036
_0809DFF2:
	adds r0, r5, #0
	bl sub_08072E18__Fi
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #1
	bl _call_via_r2
	adds r0, r5, #0
	bl sub_08072E18__Fi
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl _call_via_r4
	adds r5, #1
_0809E036:
	bl sub_08072DFC__Fv
	cmp r5, r0
	blt _0809DFF2
	adds r0, r6, #0
	bl tellUseMessage__6Action
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809E04C
sub_0809E04C: @ 0x0809E04C
	push {lr}
	ldr r2, _0809E05C @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E05C: .4byte vt_09F4B6A8

	thumb_func_start sub_0809E060
sub_0809E060: @ 0x0809E060
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0
	movs r0, #0x78
	bl setsleep
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl tryCastPlayer__5GoodsP4Unit
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xe6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	movs r6, #0xda
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r0, r5, #0
	bl tellUseMessage__6Action
	ldr r1, [r4, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	mov r1, sb
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	adds r0, r0, r6
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	mov r1, sl
	bl _call_via_r2
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809E120
sub_0809E120: @ 0x0809E120
	push {lr}
	ldr r2, _0809E130 @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E130: .4byte vt_09F4B6A8

	thumb_func_start sub_0809E134
sub_0809E134: @ 0x0809E134
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809E170 @ =0x00000281
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x10
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
	movs r5, #0
	b _0809E19C
	.align 2, 0
_0809E170: .4byte 0x00000281
_0809E174:
	adds r0, r5, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl _call_via_r4
	adds r5, #1
_0809E19C:
	bl getPartyCount
	cmp r5, r0
	blt _0809E174
	movs r5, #0
	b _0809E1D0
_0809E1A8:
	adds r0, r5, #0
	bl sub_08072C7C
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl _call_via_r4
	adds r5, #1
_0809E1D0:
	bl sub_08072C60
	cmp r5, r0
	blt _0809E1A8
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809E1E0
sub_0809E1E0: @ 0x0809E1E0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xa0
	lsls r2, r2, #2
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	bl sub_080728B8
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x70
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	adds r0, r6, #0
	bl tryCastPlayer__5GoodsP4Unit
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809E244
sub_0809E244: @ 0x0809E244
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r4, #0
	b _0809E26A
_0809E24C:
	adds r0, r4, #0
	bl sub_080729F8
	ldr r2, [r0, #0x1c]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r6, r6, r0
	adds r4, #1
_0809E26A:
	bl getPartyCount
	cmp r4, r0
	blt _0809E24C
	bl getPartyCount
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_0807066C
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
	b _0809E2A4
_0809E286:
	adds r0, r4, #0
	bl sub_08072E18__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r5, r5, r0
	adds r4, #1
_0809E2A4:
	bl sub_08072DFC__Fv
	cmp r4, r0
	blt _0809E286
	bl sub_08072DFC__Fv
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0807066C
	adds r5, r0, #0
	ldr r0, _0809E2D4 @ =gEncounter
	ldrb r0, [r0]
	cmp r0, #2
	beq _0809E2E8
	bl sub_08072758
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809E2D8
	movs r4, #0
	b _0809E31A
	.align 2, 0
_0809E2D4: .4byte gEncounter
_0809E2D8:
	bl sub_08072718
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809E2E8
	cmp r6, r5
	ble _0809E2EC
_0809E2E8:
	movs r4, #0x64
	b _0809E31A
_0809E2EC:
	cmp r6, r5
	bne _0809E308
	ldr r0, _0809E304 @ =gUnknown_02002210
	ldr r1, [r0]
	adds r2, r1, #0
	adds r1, #1
	str r1, [r0]
	movs r4, #0x64
	cmp r2, #0
	bgt _0809E31A
	b _0809E318
	.align 2, 0
_0809E304: .4byte gUnknown_02002210
_0809E308:
	ldr r0, _0809E334 @ =gUnknown_02002210
	ldr r1, [r0]
	adds r2, r1, #0
	adds r1, #1
	str r1, [r0]
	movs r4, #0x64
	cmp r2, #1
	bgt _0809E31A
_0809E318:
	movs r4, #0x32
_0809E31A:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	movs r1, #0
	cmp r0, r4
	bge _0809E32A
	movs r1, #1
_0809E32A:
	adds r0, r1, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809E334: .4byte gUnknown_02002210

	thumb_func_start sub_0809E338
sub_0809E338: @ 0x0809E338
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl getPartyCount
	cmp r0, #1
	ble _0809E380
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809E37C @ =0x0000027A
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	b _0809E386
	.align 2, 0
_0809E37C: .4byte 0x0000027A
_0809E380:
	adds r0, r4, #0
	bl tellUseMessage__6Action
_0809E386:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809E390
sub_0809E390: @ 0x0809E390
	push {lr}
	ldr r2, _0809E3A0 @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E3A0: .4byte vt_09F4B6A8

	thumb_func_start sub_0809E3A4
sub_0809E3A4: @ 0x0809E3A4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r4, r0, #0
	adds r6, r1, #0
	adds r0, r6, #0
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bne _0809E424
	movs r0, #0
	movs r1, #2
	bl randS32
	cmp r0, #1
	beq _0809E3F0
	cmp r0, #1
	bgt _0809E3D0
	cmp r0, #0
	beq _0809E3D6
	b _0809E596
_0809E3D0:
	cmp r0, #2
	beq _0809E40A
	b _0809E596
_0809E3D6:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	mov r2, sp
	strb r5, [r2]
	ldr r4, [r1, #4]
	adds r1, r6, #0
	movs r2, #0x28
	b _0809E4D2
_0809E3F0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	mov r2, sp
	strb r5, [r2]
	ldr r4, [r1, #4]
	adds r1, r6, #0
	movs r2, #0x29
	b _0809E4D2
_0809E40A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	mov r2, sp
	strb r5, [r2]
	ldr r4, [r1, #4]
	adds r1, r6, #0
	movs r2, #0x2a
	b _0809E4D2
_0809E424:
	adds r0, r6, #0
	bl dynaCastMonster
	adds r5, r0, #0
	cmp r5, #0
	bne _0809E432
	b _0809E596
_0809E432:
	movs r0, #0
	movs r1, #4
	bl randS32
	cmp r0, #4
	bls _0809E440
	b _0809E596
_0809E440:
	lsls r0, r0, #2
	ldr r1, _0809E44C @ =_0809E450
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809E44C: .4byte _0809E450
_0809E450: @ jump table
	.4byte _0809E464 @ case 0
	.4byte _0809E480 @ case 1
	.4byte _0809E49C @ case 2
	.4byte _0809E4B8 @ case 3
	.4byte _0809E4DA @ case 4
_0809E464:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #0x20
	b _0809E4D2
_0809E480:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #0x2c
	b _0809E4D2
_0809E49C:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #0x2d
	b _0809E4D2
_0809E4B8:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #0x2e
_0809E4D2:
	movs r3, #0x64
	bl _call_via_r4
	b _0809E596
_0809E4DA:
	ldr r1, [r5, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _0809E564
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809E564
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	adds r0, r5, #0
	movs r1, #0x33
	movs r2, #0
	bl sub_08073E3C
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0x9c
	lsls r2, r2, #2
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0x10
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
	b _0809E596
_0809E564:
	ldr r2, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xec
	bl _call_via_r3
	add r1, sp, #0x14
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
_0809E596:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809E5A0
sub_0809E5A0: @ 0x0809E5A0
	push {lr}
	ldr r2, _0809E5B0 @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E5B0: .4byte vt_09F4B6A8

	thumb_func_start sub_0809E5B4
sub_0809E5B4: @ 0x0809E5B4
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _0809E5F4 @ =0x0000026D
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E5F4: .4byte 0x0000026D

	thumb_func_start sub_0809E5F8
sub_0809E5F8: @ 0x0809E5F8
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	movs r1, #0xf
	bl _call_via_r2
	movs r1, #0
	cmp r5, r0
	bge _0809E626
	movs r1, #1
_0809E626:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809E630
sub_0809E630: @ 0x0809E630
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _0809E670 @ =0x00000272
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E670: .4byte 0x00000272

	thumb_func_start sub_0809E674
sub_0809E674: @ 0x0809E674
	push {lr}
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xf
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809E694
sub_0809E694: @ 0x0809E694
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, _0809E6E4 @ =0x0000025A
	ldr r1, _0809E6E8 @ =0x00000263
	bl randS32
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E6E4: .4byte 0x0000025A
_0809E6E8: .4byte 0x00000263

	thumb_func_start sub_0809E6EC
sub_0809E6EC: @ 0x0809E6EC
	push {lr}
	ldr r2, _0809E6FC @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E6FC: .4byte vt_09F4B6A8

	thumb_func_start sub_0809E700
sub_0809E700: @ 0x0809E700
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _0809E740 @ =0x0000026B
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E740: .4byte 0x0000026B

	thumb_func_start sub_0809E744
sub_0809E744: @ 0x0809E744
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	movs r1, #0xe
	bl _call_via_r2
	movs r1, #0
	cmp r5, r0
	bge _0809E772
	movs r1, #1
_0809E772:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809E77C
sub_0809E77C: @ 0x0809E77C
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _0809E7BC @ =0x00000271
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E7BC: .4byte 0x00000271

	thumb_func_start sub_0809E7C0
sub_0809E7C0: @ 0x0809E7C0
	push {lr}
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xe
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809E7E0
sub_0809E7E0: @ 0x0809E7E0
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0x94
	lsls r0, r0, #2
	ldr r1, _0809E830 @ =0x00000259
	bl randS32
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E830: .4byte 0x00000259

	thumb_func_start sub_0809E834
sub_0809E834: @ 0x0809E834
	push {lr}
	ldr r2, _0809E844 @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E844: .4byte vt_09F4B6A8

	thumb_func_start sub_0809E848
sub_0809E848: @ 0x0809E848
	push {lr}
	ldr r2, _0809E858 @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E858: .4byte vt_09F4B6A8

	thumb_func_start sub_0809E85C
sub_0809E85C: @ 0x0809E85C
	push {lr}
	ldr r2, _0809E86C @ =vt_09F4B6A8

	thumb_func_start sub_0809E860
sub_0809E860: @ 0x0809E860
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E86C: .4byte vt_09F4B6A8

	thumb_func_start sub_0809E870
sub_0809E870: @ 0x0809E870
	push {lr}
	ldr r2, _0809E880 @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E880: .4byte vt_09F4B6A8

	thumb_func_start sub_0809E884
sub_0809E884: @ 0x0809E884
	push {lr}
	ldr r2, _0809E894 @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E894: .4byte vt_09F4B6A8

	thumb_func_start sub_0809E898
sub_0809E898: @ 0x0809E898
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _0809E8D8 @ =0x00000242
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E8D8: .4byte 0x00000242

	thumb_func_start sub_0809E8DC
sub_0809E8DC: @ 0x0809E8DC
	push {lr}
	ldr r2, _0809E8EC @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E8EC: .4byte vt_09F4B6A8

	thumb_func_start sub_0809E8F0
sub_0809E8F0: @ 0x0809E8F0
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x58]
	cmp r0, r1
	bne _0809E902
	cmp r2, #1
	bne _0809E908
_0809E902:
	str r1, [r3, #0x58]
	movs r0, #1
	b _0809E90A
_0809E908:
	movs r0, #0
_0809E90A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809E910
sub_0809E910: @ 0x0809E910
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0809E948 @ =0x000002F1
	bl get_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	beq _0809E94C
	ldr r4, [r5, #0x50]
	subs r4, #1
	movs r0, #0x1e
	bl sub_08002998
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	ble _0809E94C
	ldr r1, [r5, #0x50]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x1e
	bl sub_080028F4
	movs r0, #1
	b _0809E94E
	.align 2, 0
_0809E948: .4byte 0x000002F1
_0809E94C:
	movs r0, #0
_0809E94E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809E954
sub_0809E954: @ 0x0809E954
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r1, #0
	ldr r0, _0809EA94 @ =0x00000319
	bl playSound
	ldr r2, [r6, #0x20]
	adds r2, #0x40
	adds r3, r6, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r5, sp, #0x24
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _0809EA98 @ =0xFFFF4000
	movs r1, #0xc0
	lsls r1, r1, #8
	bl randS32
	str r0, [sp]
	movs r0, #0xa0
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0xc
	bl randS32
	str r0, [sp, #4]
	ldr r0, _0809EA9C @ =0xFFFC0000
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	add r1, sp, #0xc
	mov sb, r1
	add r2, sp, #0x2c
	mov r8, r2
	add r5, sp, #0x18
	add r4, sp, #0x28
	movs r3, #1
	str r3, [sp, #0x30]
	movs r7, #0
	mov sl, r7
_0809E9C0:
	ldr r3, [sp, #0xc]
	ldr r0, [sp]
	adds r3, r3, r0
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #4]
	adds r2, r2, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	adds r1, r1, r0
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	adds r0, r5, #0
	adds r1, r5, #0
	movs r2, #0xc
	bl memcpy
	add r1, sp, #0xc
	adds r0, r5, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [sp, #4]
	ldr r2, _0809EAA0 @ =0xFFFF63C0
	adds r1, r0, r2
	str r1, [sp, #4]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bge _0809EA0A
	asrs r0, r1, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	mov r3, sl
	mov r7, sb
	str r3, [r7, #4]
	ldr r0, [sp, #0x30]
	subs r0, #1
	str r0, [sp, #0x30]
_0809EA0A:
	add r1, sp, #0x28
	mov r2, sl
	strh r2, [r1]
	strh r2, [r4, #2]
	ldr r0, [sp, #0xc]
	asrs r0, r0, #0x10
	mov r3, sp
	ldrh r3, [r3, #0x24]
	adds r0, r0, r3
	strh r0, [r1]
	mov r7, sp
	movs r0, #0x12
	ldrsh r1, [r7, r0]
	add r0, sp, #0x24
	ldrh r0, [r0, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
	ldr r2, [r6, #0x20]
	adds r0, r6, #0
	adds r0, #0x20
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r4, #0
	bl _call_via_r2
	movs r1, #0x16
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #4
	cmp r0, #4
	ble _0809EA56
	adds r2, r0, #0
_0809EA56:
	ldr r3, [r6, #0x1c]
	movs r7, #0xf4
	lsls r7, r7, #2
	adds r3, r3, r7
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add r1, sp, #0x2c
	strh r2, [r1]
	mov r7, r8
	strh r2, [r7, #2]
	ldr r2, [r3, #4]
	mov r1, r8
	bl _call_via_r2
	movs r0, #1
	bl setsleep
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bge _0809E9C0
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809EA94: .4byte 0x00000319
_0809EA98: .4byte 0xFFFF4000
_0809EA9C: .4byte 0xFFFC0000
_0809EAA0: .4byte 0xFFFF63C0

	thumb_func_start sub_0809EAA4
sub_0809EAA4: @ 0x0809EAA4
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r5, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0809EAE8
	ldr r1, [r4, #0x1c]
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809EAE8
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _0809EAE8
	movs r5, #1
_0809EAE8:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809EAF0
sub_0809EAF0: @ 0x0809EAF0
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EB8C
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EB8C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EB8C
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EB8C
	adds r0, r4, #0
	movs r1, #0xbe
	bl sub_08072D84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EB8C
	movs r0, #1
	b _0809EB8E
_0809EB8C:
	movs r0, #0
_0809EB8E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809EB94
sub_0809EB94: @ 0x0809EB94
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x50]
	cmp r0, #0xf
	ble _0809EBA0
	movs r1, #1
_0809EBA0:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809EBA8
sub_0809EBA8: @ 0x0809EBA8
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x50]
	cmp r0, #1
	ble _0809EBB4
	movs r1, #1
_0809EBB4:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809EBBC
sub_0809EBBC: @ 0x0809EBBC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xa2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5, #0x50]
	subs r0, #1
	movs r1, #3
	bl sub_0807067C
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r5, #0x60
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FFBC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08070048
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809EC04
sub_0809EC04: @ 0x0809EC04
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08074614
	cmp r0, #0
	beq _0809EC30
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _0809EC30
	movs r0, #0
	b _0809EC38
_0809EC30:
	ldr r0, _0809EC40 @ =gUnknown_080F6044
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
_0809EC38:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809EC40: .4byte gUnknown_080F6044

	thumb_func_start sub_0809EC44
sub_0809EC44: @ 0x0809EC44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r6, r1, #0
	mov sb, r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xd0
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	mov r0, r8
	ldr r3, [r0, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	adds r7, r0, #0
	ldr r5, [r6, #0x1c]
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r5, r5, r1
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r6, r6, r0
	ldr r0, [r4, #0x1c]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	movs r1, #0
	cmp r1, r0
	bge _0809ECB4
	adds r1, r0, #0
_0809ECB4:
	muls r7, r1, r7
	adds r0, r7, #0
	movs r1, #0x64
	bl sub_0807066C
	adds r7, r0, #0
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #1
	asrs r0, r0, #4
	lsls r1, r7, #4
	adds r1, r1, r7
	asrs r1, r1, #4
	bl randS32
	adds r7, r0, #0
	ldr r1, _0809ED00 @ =gUnknown_080F6004
	mov r0, sb
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	muls r0, r7, r0
	movs r1, #0x64
	bl sub_0807066C
	adds r7, r0, #0
	movs r0, #1
	cmp r0, r7
	bge _0809ECF2
	adds r0, r7, #0
_0809ECF2:
	adds r7, r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809ED00: .4byte gUnknown_080F6004

	thumb_func_start sub_0809ED04
sub_0809ED04: @ 0x0809ED04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r2, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r6, #0x50]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r6, #0x4c]
	cmp r1, r0
	bge _0809ED2E
	b _0809F08A
_0809ED2E:
	ldr r2, [r6, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r6, #0x50]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r6, #0x4c]
	subs r1, r1, r0
	str r1, [r6, #0x4c]
	ldr r2, [r6, #0x50]
	adds r2, #1
	str r2, [r6, #0x50]
	ldr r1, [r6, #0x1c]
	movs r3, #0xaa
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r3
	mov r8, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bne _0809ED94
	mov r3, r8
	lsrs r0, r3, #0x1f
	add r0, r8
	asrs r0, r0, #1
	movs r1, #1
	cmp r4, r0
	bge _0809ED92
	adds r1, r0, #0
_0809ED92:
	add r8, r1
_0809ED94:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EDD0
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809EDE2
_0809EDD0:
	mov r3, r8
	lsrs r0, r3, #0x1f
	add r0, r8
	asrs r1, r0, #1
	movs r0, #1
	cmp r0, r1
	bge _0809EDE0
	adds r0, r1, #0
_0809EDE0:
	mov r8, r0
_0809EDE2:
	cmp r4, #1
	bne _0809EE30
	adds r0, r7, #0
	mov r1, r8
	movs r2, #1
	bl sub_08073ABC
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #1
	cmp r0, #1
	beq _0809EE10
	movs r4, #2
_0809EE10:
	ldr r1, [r6, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r7, #0
	bl sub_08073198
	b _0809EE58
_0809EE30:
	adds r0, r7, #0
	mov r1, r8
	movs r2, #1
	bl sub_0807392C
	ldr r1, [r6, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r0, #1
	adds r2, r7, #0
	bl sub_08073198
_0809EE58:
	ldr r0, [r6, #0x54]
	add r0, r8
	str r0, [r6, #0x54]
	ldr r1, [r6, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809EEAA
	ldr r0, [r6, #0x5c]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	b _0809EEA4
_0809EE90:
	ldr r0, [r6, #0x5c]
	ldr r2, [r0, #0x1c]
	adds r2, #0x98
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, #1
_0809EEA4:
	ldr r0, [r6, #0x50]
	cmp r4, r0
	blt _0809EE90
_0809EEAA:
	ldr r1, [r6, #0x1c]

	thumb_func_start sub_0809EEAC
sub_0809EEAC: @ 0x0809EEAC
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r7, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809EF60
	ldr r4, [r6, #0x1c]
	movs r3, #0xb6
	lsls r3, r3, #2
	adds r4, r4, r3
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	adds r0, r7, #0
	bl dynaCastMonster
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EF4A
	ldr r1, [r7, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_0809EF4A:
	movs r0, #0x33
	adds r1, r7, #0
	adds r2, r7, #0
	bl playSeq
	adds r0, r7, #0
	movs r1, #0x16
_0809EF58:
	movs r2, #1
	bl sub_08073EE8
	b _0809F08A
_0809EF60:
	ldr r1, [r7, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F052
	ldr r4, [r6, #0x1c]
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r6, r5
	adds r0, r7, #0
	bl dynaCastMonster
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EFEC
	ldr r1, [r7, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x10
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_0809EFEC:
	movs r0, #0x36
	adds r1, r7, #0
	adds r2, r7, #0
	bl playSeq
	ldr r1, [r6, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #1
	cmp r1, r8
	bge _0809F012
	mov r1, r8
_0809F012:
	movs r2, #1
	bl hitPlayer
	ldr r1, [r6, #0x1c]
	movs r3, #0x96
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl playSeq
	adds r0, r7, #0
	movs r1, #0x17
	b _0809EF58
_0809F052:
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _0809F08A
	ldr r1, [r6, #0x1c]
	movs r3, #0xb2
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809F08A
	movs r0, #1
	b _0809F08C
_0809F08A:
	movs r0, #0
_0809F08C:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0809F098
sub_0809F098: @ 0x0809F098
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x8c
	mov sl, r0
	str r1, [sp, #0x80]
	adds r0, r1, #0
	bl dynaCastMonster
	str r0, [sp, #0x84]
	ldr r0, [sp, #0x80]
	ldr r2, [r0, #0x20]
	adds r2, #0x58
	adds r0, #0x20
	mov sb, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r7, sp, #0x68
	adds r0, r7, #0
	ldr r2, [r2, #4]
	add r1, sb
	bl _call_via_r2
	movs r0, #0x8e
	lsls r0, r0, #1
	bl __builtin_new
	bl sub_080651C0
	adds r5, r0, #0
	mov r0, sl
	str r5, [r0, #0x5c]
	ldr r1, [r5, #0x1c]
	mov r8, r1
	movs r2, #0x68
	add r8, r2
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r5, r5, r0
	ldr r3, [sp, #0x80]
	ldr r2, [r3, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x6c
	adds r0, r4, #0
	ldr r2, [r2, #4]
	add r1, sb
	bl _call_via_r2
	movs r1, #2
	ldrsh r0, [r7, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	add r3, sp, #0x70
	movs r1, #0
	strh r1, [r3]
	strh r0, [r3, #2]
	movs r2, #0
	ldrsh r6, [r4, r2]
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r1, #2
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	add r1, sp, #0x74
	strh r6, [r1]
	strh r2, [r1, #2]
	mov r3, r8
	ldr r2, [r3, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r0, sl
	ldr r5, [r0, #0x5c]
	ldr r4, [r5, #0x1c]
	adds r4, #0x70
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r2, [sp, #0x80]
	ldr r0, [r2, #0x20]
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	add sb, r1
	ldr r1, [r0, #4]
	mov r0, sb
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r1, sl
	ldr r0, [r1, #0x5c]
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r0, sl
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x80]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809F198
	b _0809F412
_0809F198:
	mov r0, sl
	ldr r1, [r0, #0x1c]
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x80]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x88]
	cmp r0, #1
	beq _0809F1BC
	b _0809F412
_0809F1BC:
	add r0, sp, #4
	bl sub_08071F8C
	mov r1, sl
	ldr r0, [r1, #0x58]
	add r7, sp, #0x24
	cmp r0, #4
	bne _0809F1CE
	b _0809F2DE
_0809F1CE:
	bl sub_08074614
	adds r5, r0, #0
	adds r0, r7, #0
	bl __4Base
	ldr r2, _0809F508 @ =_vt.3Unk
	mov sb, r2
	ldr r0, _0809F50C @ =vt_09F81278
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F510 @ =gUnknown_080F5FE4
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #0x3c]
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r4
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	bl sub_08074614
	adds r5, r0, #0
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F514 @ =vt_09F811F8
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F518 @ =gUnknown_080F5FEC
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #0x3c]
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r4
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F51C @ =_vt.9AKeyPress
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F520 @ =gUnknown_080F5FF4
	ldr r4, [r1]
	ldr r5, [r1, #4]
	str r5, [sp]
	adds r3, r4, #0
	ldr r6, [r2, #0x3c]
	add r1, sp, #4
	adds r2, r7, #0
	bl sub_0809194C
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F524 @ =_vt.9LKeyPress
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r1, [r3, #0x1c]
	movs r2, #0x38
	ldrsh r0, [r1, r2]
	add r0, sl
	str r5, [sp]
	adds r3, r4, #0
	ldr r4, [r1, #0x3c]
	add r1, sp, #4
	adds r2, r7, #0
	bl _call_via_r4
	mov r3, sb
	str r3, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #0x44
	bl __4Base
	ldr r0, _0809F528 @ =_vt.8AppClock
	str r0, [sp, #0x60]
	add r5, sp, #0x44
	mov r0, sl
	ldr r2, [r0, #0x1c]
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F52C @ =gUnknown_080F5FFC
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #0x3c]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r4
	mov r2, sb
	str r2, [sp, #0x60]
	adds r0, r5, #0
	movs r1, #2
	bl _._4Base
_0809F2DE:
	ldr r3, [sp, #0x88]
	mov r0, sl
	str r3, [r0, #0x58]
_0809F2E4:
	movs r0, #1
	bl setsleep
	mov r1, sl
	ldr r0, [r1, #0x58]
	cmp r0, #4
	bne _0809F2E4
	bl sub_08074614
	adds r5, r0, #0
	add r0, sp, #0x24
	bl __4Base
	ldr r2, _0809F508 @ =_vt.3Unk
	mov sb, r2
	ldr r0, _0809F50C @ =vt_09F81278
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	adds r2, #0x48
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F510 @ =gUnknown_080F5FE4
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r4
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	bl sub_08074614
	adds r5, r0, #0
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F514 @ =vt_09F811F8
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	adds r2, #0x48
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F518 @ =gUnknown_080F5FEC
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r4
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F51C @ =_vt.9AKeyPress
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r2, [r3, #0x1c]
	adds r2, #0x48
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F520 @ =gUnknown_080F5FF4
	ldr r4, [r1]
	ldr r5, [r1, #4]
	str r5, [sp]
	adds r3, r4, #0
	ldr r6, [r2, #4]
	add r1, sp, #4
	adds r2, r7, #0
	bl sub_0809194C
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F524 @ =_vt.9LKeyPress
	str r0, [sp, #0x40]
	mov r3, sl
	ldr r1, [r3, #0x1c]
	adds r1, #0x48
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	str r5, [sp]
	adds r3, r4, #0
	ldr r4, [r1, #4]
	add r1, sp, #4
	adds r2, r7, #0
	bl _call_via_r4
	mov r3, sb
	str r3, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	bl get__12ClockManager
	adds r5, r0, #0
	adds r0, r7, #0
	bl __4Base
	ldr r0, _0809F528 @ =_vt.8AppClock
	str r0, [sp, #0x40]
	mov r0, sl
	ldr r2, [r0, #0x1c]
	adds r2, #0x48
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sl
	ldr r1, _0809F52C @ =gUnknown_080F5FFC
	ldr r3, [r1]
	ldr r4, [r1, #4]
	str r4, [sp]
	ldr r4, [r2, #4]
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r4
	mov r2, sb
	str r2, [sp, #0x40]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	movs r1, #2
	bl _._10KeyFocuser
_0809F412:
	mov r3, sl
	ldr r1, [r3, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F462
	movs r4, #0x9e
	lsls r4, r4, #1
	adds r0, r4, #0
	bl __builtin_new
	mov r3, sl
	ldr r1, [r3, #0x50]
	add r2, sp, #0x78
	movs r5, #0x78
	movs r3, #0x28
	strh r5, [r2]
	strh r3, [r2, #2]
	bl __9AutoComboUiRC11ComboRhythm
	adds r0, r4, #0
	bl __builtin_new
	mov r2, sl
	ldr r1, [r2, #0x54]
	add r2, sp, #0x7c
	movs r3, #0x34
	strh r5, [r2]
	strh r3, [r2, #2]
	bl __15AutoComboResultUiRC11ComboRhythm
_0809F462:
	mov r3, sl
	ldr r1, [r3, #0x1c]
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F49A
	ldr r0, _0809F530 @ =0x0000064C
	bl playSound
	mov r3, sl
	ldr r0, [r3, #0x5c]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_0809F49A:
	mov r0, sl
	ldr r2, [r0, #0x5c]
	cmp r2, #0
	beq _0809F4B2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0809F4B2:
	mov r0, sl
	ldr r1, [r0, #0x1c]
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x84]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F534
	mov r0, sl
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x84]
	bl _call_via_r2
	ldr r0, [sp, #0x84]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r2, [sp, #0x84]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	b _0809F584
	.align 2, 0
_0809F508: .4byte _vt.3Unk
_0809F50C: .4byte vt_09F81278
_0809F510: .4byte gUnknown_080F5FE4
_0809F514: .4byte vt_09F811F8
_0809F518: .4byte gUnknown_080F5FEC
_0809F51C: .4byte _vt.9AKeyPress
_0809F520: .4byte gUnknown_080F5FF4
_0809F524: .4byte _vt.9LKeyPress
_0809F528: .4byte _vt.8AppClock
_0809F52C: .4byte gUnknown_080F5FFC
_0809F530: .4byte 0x0000064C
_0809F534:
	ldr r3, [sp, #0x80]
	ldr r1, [r3, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _0809F584
	ldr r3, [sp, #0x80]
	ldr r1, [r3, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F584
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x27
	bgt _0809F584
	ldr r0, [sp, #0x80]
	movs r1, #3
	movs r2, #1
	bl sub_08073EE8
_0809F584:
	bl sub_08073270
	mov r3, sl
	ldr r1, [r3, #0x1c]
	movs r0, #0xba
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	add sp, #0x8c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809F5B0
sub_0809F5B0: @ 0x0809F5B0
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
	ldr r1, [r0, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #5
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F5EA
	movs r0, #0x28
	b _0809F668
_0809F5EA:
	adds r0, r4, #0
	bl sub_0808067C
	adds r5, r0, #0
	cmp r5, #0x63
	bgt _0809F666
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #5
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F666
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _0809F658
	ldr r1, [r4, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _0809F666
_0809F658:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r5, r0, #0
_0809F666:
	adds r0, r5, #0
_0809F668:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F670
sub_0809F670: @ 0x0809F670
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	movs r1, #0xbe
	bl sub_08072D84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F6CC
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x3b
	bgt _0809F6CC
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xce
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0
	b _0809F6D4
_0809F6CC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl calcMissed__6ActionP4Unit
_0809F6D4:
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809F6DC
sub_0809F6DC: @ 0x0809F6DC
	movs r0, #0
	bx lr

	thumb_func_start sub_0809F6E0
sub_0809F6E0: @ 0x0809F6E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809F708 @ =vt_09F4B3B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #2
	bl sub_0806FFA8
	ldr r0, _0809F70C @ =vt_09F4B6A8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08080424
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F708: .4byte vt_09F4B3B0
_0809F70C: .4byte vt_09F4B6A8

	thumb_func_start sub_0809F710
sub_0809F710: @ 0x0809F710
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xb
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F724
sub_0809F724: @ 0x0809F724
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r6, #0xa8
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F79E
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0xc
	b _0809F814
_0809F79E:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	bgt _0809F830
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F830
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x10
_0809F814:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0
	b _0809F836
_0809F830:
	adds r0, r4, #0
	bl action_1a0__6Action
_0809F836:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F840
sub_0809F840: @ 0x0809F840
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F854
sub_0809F854: @ 0x0809F854
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r6, #0xa8
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F8CE
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0xc
	b _0809F944
_0809F8CE:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	bgt _0809F960
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F960
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x10
_0809F944:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0
	b _0809F966
_0809F960:
	adds r0, r4, #0
	bl action_1a0__6Action
_0809F966:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F970
sub_0809F970: @ 0x0809F970
	push {lr}
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
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F990
sub_0809F990: @ 0x0809F990
	push {r4, r5, r6, lr}
	sub sp, #0x50
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r5, r5, r1
	ldr r1, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	adds r0, r6, #0
	mov r1, sp
	bl action_1d8__C5Goods
	mov r0, sp
	movs r1, #2
	bl _._5Goods
	adds r0, r6, #0
	add sp, #0x50
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809F9F0
sub_0809F9F0: @ 0x0809F9F0
	push {lr}
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
	subs r0, #0x25
	cmp r0, #5
	bhi _0809FA50
	lsls r0, r0, #2
	ldr r1, _0809FA1C @ =_0809FA20
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809FA1C: .4byte _0809FA20
_0809FA20: @ jump table
	.4byte _0809FA38 @ case 0
	.4byte _0809FA3C @ case 1
	.4byte _0809FA40 @ case 2
	.4byte _0809FA44 @ case 3
	.4byte _0809FA48 @ case 4
	.4byte _0809FA4C @ case 5
_0809FA38:
	movs r0, #0xd6
	b _0809FA52
_0809FA3C:
	movs r0, #0xd7
	b _0809FA52
_0809FA40:
	movs r0, #0xd9
	b _0809FA52
_0809FA44:
	movs r0, #0xd8
	b _0809FA52
_0809FA48:
	movs r0, #0xda
	b _0809FA52
_0809FA4C:
	movs r0, #0xdb
	b _0809FA52
_0809FA50:
	movs r0, #0
_0809FA52:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809FA58
sub_0809FA58: @ 0x0809FA58
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #9
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809FA6C
sub_0809FA6C: @ 0x0809FA6C
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r6, #0xa8
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809FAE6
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0xc
	b _0809FB5C
_0809FAE6:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	bgt _0809FB78
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809FB78
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x10
_0809FB5C:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0
	b _0809FB7E
_0809FB78:
	adds r0, r4, #0
	bl action_1a0__6Action
_0809FB7E:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809FB88
sub_0809FB88: @ 0x0809FB88
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0808067C
	adds r5, r0, #0
	cmp r5, #0x63
	bgt _0809FC06
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #5
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809FC06
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _0809FBF8
	ldr r1, [r4, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _0809FC06
_0809FBF8:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r5, r0, #0
_0809FC06:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809FC10
sub_0809FC10: @ 0x0809FC10
	push {lr}
	ldr r2, _0809FC20 @ =vt_09F4B6A8
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809FC20: .4byte vt_09F4B6A8

	thumb_func_start sub_0809FC24
sub_0809FC24: @ 0x0809FC24
	push {lr}
	movs r0, #0x82
	lsls r0, r0, #1
	bl __builtin_new
	bl __5Guest
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809FC38
sub_0809FC38: @ 0x0809FC38
	ldr r0, _0809FC3C @ =gUnknown_080F6D2C
	bx lr
	.align 2, 0
_0809FC3C: .4byte gUnknown_080F6D2C

	thumb_func_start init__14IoniaSingletonUs
init__14IoniaSingletonUs: @ 0x0809FC40
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x84
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	bl sub_0809FD44
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start init__15FassadSingletonUs
init__15FassadSingletonUs: @ 0x0809FC5C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x88
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	bl sub_0809FE04
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start init__13WessSingletonUs
init__13WessSingletonUs: @ 0x0809FC78
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x86
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	bl sub_0809FEE4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start init__13AlecSingletonUs
init__13AlecSingletonUs: @ 0x0809FC94
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x88
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	bl sub_0809FFB4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start init__13FuelSingletonUs
init__13FuelSingletonUs: @ 0x0809FCB0
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x84
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	bl sub_080A008C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start init__15ThomasSingletonUs
init__15ThomasSingletonUs: @ 0x0809FCCC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x84
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	bl sub_080A014C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809FCE8
sub_0809FCE8: @ 0x0809FCE8
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r3, #0xbc
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809FD08
sub_0809FD08: @ 0x0809FD08
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r3, #0xba
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start init__21DefaultGuestSingletonUs
init__21DefaultGuestSingletonUs: @ 0x0809FD28
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x84
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	bl sub_080A020C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0809FD44
sub_0809FD44: @ 0x0809FD44
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __5GuestUs
	ldr r0, _0809FDE0 @ =vt_09F4D280
	str r0, [r5, #0x20]
	ldr r0, _0809FDE4 @ =vt_09F4D2F8
	str r0, [r5, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FDE8 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0809FDEC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _0809FDF0 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FDF4 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _0809FDF8 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _0809FDFC @ =vt_09F4BD50
	str r0, [r5, #0x20]
	ldr r0, _0809FE00 @ =vt_09F4BDC8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809FDE0: .4byte vt_09F4D280
_0809FDE4: .4byte vt_09F4D2F8
_0809FDE8: .4byte _vt.3Unk
_0809FDEC: .4byte _vt.13UnitTurnBegin
_0809FDF0: .4byte gUnknown_080F741C
_0809FDF4: .4byte _vt.11UnitTurnEnd
_0809FDF8: .4byte gUnknown_080F7424
_0809FDFC: .4byte vt_09F4BD50
_0809FE00: .4byte vt_09F4BDC8

	thumb_func_start sub_0809FE04
sub_0809FE04: @ 0x0809FE04
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __5GuestUs
	ldr r0, _0809FEC0 @ =vt_09F4D280
	str r0, [r5, #0x20]
	ldr r0, _0809FEC4 @ =vt_09F4D2F8
	str r0, [r5, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	mov sb, r2
	str r2, [r0]
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FEC8 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0809FECC @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _0809FED0 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FED4 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _0809FED8 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _0809FEDC @ =vt_09F4C0D0
	str r0, [r5, #0x20]
	ldr r0, _0809FEE0 @ =vt_09F4C148
	str r0, [r5, #0x1c]
	movs r0, #2
	movs r1, #3
	bl randS32
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, sb
	str r2, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809FEC0: .4byte vt_09F4D280
_0809FEC4: .4byte vt_09F4D2F8
_0809FEC8: .4byte _vt.3Unk
_0809FECC: .4byte _vt.13UnitTurnBegin
_0809FED0: .4byte gUnknown_080F741C
_0809FED4: .4byte _vt.11UnitTurnEnd
_0809FED8: .4byte gUnknown_080F7424
_0809FEDC: .4byte vt_09F4C0D0
_0809FEE0: .4byte vt_09F4C148

	thumb_func_start sub_0809FEE4
sub_0809FEE4: @ 0x0809FEE4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __5GuestUs
	ldr r0, _0809FF90 @ =vt_09F4D280
	str r0, [r5, #0x20]
	ldr r0, _0809FF94 @ =vt_09F4D2F8
	str r0, [r5, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov sb, r1
	str r1, [r0]
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FF98 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0809FF9C @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _0809FFA0 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FFA4 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _0809FFA8 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _0809FFAC @ =vt_09F4C468
	str r0, [r5, #0x20]
	ldr r0, _0809FFB0 @ =vt_09F4C4E0
	str r0, [r5, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, sb
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
_0809FF90: .4byte vt_09F4D280
_0809FF94: .4byte vt_09F4D2F8
_0809FF98: .4byte _vt.3Unk
_0809FF9C: .4byte _vt.13UnitTurnBegin
_0809FFA0: .4byte gUnknown_080F741C
_0809FFA4: .4byte _vt.11UnitTurnEnd
_0809FFA8: .4byte gUnknown_080F7424
_0809FFAC: .4byte vt_09F4C468
_0809FFB0: .4byte vt_09F4C4E0

	thumb_func_start sub_0809FFB4
sub_0809FFB4: @ 0x0809FFB4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __5GuestUs
	ldr r0, _080A0068 @ =vt_09F4D280
	str r0, [r5, #0x20]
	ldr r0, _080A006C @ =vt_09F4D2F8
	str r0, [r5, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	str r1, [r0]
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A0070 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _080A0074 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A0078 @ =gUnknown_080F741C
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
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A007C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A0080 @ =gUnknown_080F7424
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
	ldr r0, _080A0084 @ =vt_09F4C7F0
	str r0, [r5, #0x20]
	ldr r0, _080A0088 @ =vt_09F4C868
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

	thumb_func_start sub_080A008C
sub_080A008C: @ 0x080A008C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __5GuestUs
	ldr r0, _080A0128 @ =vt_09F4D280
	str r0, [r5, #0x20]
	ldr r0, _080A012C @ =vt_09F4D2F8
	str r0, [r5, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A0130 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A0134 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A0138 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A013C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A0140 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A0144 @ =vt_09F4CB80
	str r0, [r5, #0x20]
	ldr r0, _080A0148 @ =vt_09F4CBF8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A0128: .4byte vt_09F4D280
_080A012C: .4byte vt_09F4D2F8
_080A0130: .4byte _vt.3Unk
_080A0134: .4byte _vt.13UnitTurnBegin
_080A0138: .4byte gUnknown_080F741C
_080A013C: .4byte _vt.11UnitTurnEnd
_080A0140: .4byte gUnknown_080F7424
_080A0144: .4byte vt_09F4CB80
_080A0148: .4byte vt_09F4CBF8

	thumb_func_start sub_080A014C
sub_080A014C: @ 0x080A014C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __5GuestUs
	ldr r0, _080A01E8 @ =vt_09F4D280
	str r0, [r5, #0x20]
	ldr r0, _080A01EC @ =vt_09F4D2F8
	str r0, [r5, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A01F0 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080A01F4 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080A01F8 @ =gUnknown_080F741C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__15BattleSingleton
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A01FC @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080A0200 @ =gUnknown_080F7424
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A0204 @ =vt_09F4CF00
	str r0, [r5, #0x20]
	ldr r0, _080A0208 @ =vt_09F4CF78
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A01E8: .4byte vt_09F4D280
_080A01EC: .4byte vt_09F4D2F8
_080A01F0: .4byte _vt.3Unk
_080A01F4: .4byte _vt.13UnitTurnBegin
_080A01F8: .4byte gUnknown_080F741C
_080A01FC: .4byte _vt.11UnitTurnEnd
_080A0200: .4byte gUnknown_080F7424
_080A0204: .4byte vt_09F4CF00
_080A0208: .4byte vt_09F4CF78

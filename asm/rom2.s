.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_08075A20
sub_08075A20: @ 0x08075A20
	push {r4, lr}
	ldr r4, _08075A70 @ =gUnknown_0200217C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08075A74 @ =0x09F81A38
	str r0, [r4, #8]
	ldr r4, _08075A78 @ =gUnknown_02002170
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08075A7C @ =0x09F819B8
	str r0, [r4, #8]
	ldr r4, _08075A80 @ =gUnknown_02002164
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08075A84 @ =0x09F81938
	str r0, [r4, #8]
	ldr r4, _08075A88 @ =gUnknown_02002158
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08075A8C @ =0x09F818B8
	str r0, [r4, #8]
	ldr r4, _08075A90 @ =gUnknown_0200214C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08075A94 @ =0x09F81838
	str r0, [r4, #8]
	ldr r4, _08075A98 @ =gUnknown_02002140
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08075A9C @ =0x09F817B8
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08075A70: .4byte gUnknown_0200217C
_08075A74: .4byte 0x09F81A38
_08075A78: .4byte gUnknown_02002170
_08075A7C: .4byte 0x09F819B8
_08075A80: .4byte gUnknown_02002164
_08075A84: .4byte 0x09F81938
_08075A88: .4byte gUnknown_02002158
_08075A8C: .4byte 0x09F818B8
_08075A90: .4byte gUnknown_0200214C
_08075A94: .4byte 0x09F81838
_08075A98: .4byte gUnknown_02002140
_08075A9C: .4byte 0x09F817B8

	thumb_func_start sub_08075AA0
sub_08075AA0: @ 0x08075AA0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl __4Base
	str r5, [r4, #0x20]
	ldr r0, _08075AB8 @ =0x09F81750
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08075AB8: .4byte 0x09F81750

	thumb_func_start sub_08075ABC
sub_08075ABC: @ 0x08075ABC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl __4Base
	str r5, [r4, #0x20]
	ldr r0, _08075AD4 @ =0x09F81750
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08075AD4: .4byte 0x09F81750

	thumb_func_start sub_08075AD8
sub_08075AD8: @ 0x08075AD8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl __4Base
	str r5, [r4, #0x20]
	ldr r0, _08075AF0 @ =0x09F817D0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08075AF0: .4byte 0x09F817D0

	thumb_func_start sub_08075AF4
sub_08075AF4: @ 0x08075AF4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl __4Base
	str r5, [r4, #0x20]
	ldr r0, _08075B0C @ =0x09F817D0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08075B0C: .4byte 0x09F817D0

	thumb_func_start sub_08075B10
sub_08075B10: @ 0x08075B10
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl __4Base
	str r5, [r4, #0x20]
	ldr r0, _08075B28 @ =0x09F81850
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08075B28: .4byte 0x09F81850

	thumb_func_start sub_08075B2C
sub_08075B2C: @ 0x08075B2C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl __4Base
	str r5, [r4, #0x20]
	ldr r0, _08075B44 @ =0x09F81850
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08075B44: .4byte 0x09F81850

	thumb_func_start sub_08075B48
sub_08075B48: @ 0x08075B48
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl __4Base
	str r5, [r4, #0x20]
	ldr r0, _08075B60 @ =0x09F818D0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08075B60: .4byte 0x09F818D0

	thumb_func_start sub_08075B64
sub_08075B64: @ 0x08075B64
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl __4Base
	str r5, [r4, #0x20]
	ldr r0, _08075B7C @ =0x09F818D0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08075B7C: .4byte 0x09F818D0

	thumb_func_start sub_08075B80
sub_08075B80: @ 0x08075B80
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _08075B94 @ =0x09F81950
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08075B94: .4byte 0x09F81950

	thumb_func_start sub_08075B98
sub_08075B98: @ 0x08075B98
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _08075BAC @ =0x09F819D0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08075BAC: .4byte 0x09F819D0

	thumb_func_start sub_08075BB0
sub_08075BB0: @ 0x08075BB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl __4Base
	ldr r0, _08075BF0 @ =0x09F81AC8
	str r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0
	str r0, [r4, #0x2c]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r4, #0x38]
	str r0, [r1, #4]
	str r0, [r1, #8]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08075BF4 @ =gUnknown_080CF228
	adds r0, r0, r1
	str r0, [r4, #0x24]
	str r6, [r4, #0x28]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08075BF0: .4byte 0x09F81AC8
_08075BF4: .4byte gUnknown_080CF228

	thumb_func_start sub_08075BF8
sub_08075BF8: @ 0x08075BF8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08075C24 @ =0x09F81AC8
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _08075C0C
	bl __builtin_vec_delete
_08075C0C:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _08075C16
	bl __builtin_vec_delete
_08075C16:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08075C24: .4byte 0x09F81AC8

	thumb_func_start sub_08075C28
sub_08075C28: @ 0x08075C28
	ldr r0, [r0, #0x24]
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08075C30
sub_08075C30: @ 0x08075C30
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_08075C34
sub_08075C34: @ 0x08075C34
	ldr r0, [r0, #0x24]
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_08075C3C
sub_08075C3C: @ 0x08075C3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x13
	bhi _08075CCE
	lsls r0, r0, #2
	ldr r1, _08075C60 @ =_08075C64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08075C60: .4byte _08075C64
_08075C64: @ jump table
	.4byte _08075CB4 @ case 0
	.4byte _08075CCA @ case 1
	.4byte _08075CCA @ case 2
	.4byte _08075CCA @ case 3
	.4byte _08075CCE @ case 4
	.4byte _08075CCE @ case 5
	.4byte _08075CCA @ case 6
	.4byte _08075CCA @ case 7
	.4byte _08075CCA @ case 8
	.4byte _08075CCA @ case 9
	.4byte _08075CCA @ case 10
	.4byte _08075CCA @ case 11
	.4byte _08075CCA @ case 12
	.4byte _08075CCA @ case 13
	.4byte _08075CCA @ case 14
	.4byte _08075CCA @ case 15
	.4byte _08075CCA @ case 16
	.4byte _08075CCA @ case 17
	.4byte _08075CCA @ case 18
	.4byte _08075CCA @ case 19
_08075CB4:
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072938
	b _08075CD0
_08075CCA:
	movs r0, #1
	b _08075CD0
_08075CCE:
	movs r0, #0
_08075CD0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08075CD8
sub_08075CD8: @ 0x08075CD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x13
	bhi _08075D6A
	lsls r0, r0, #2
	ldr r1, _08075CFC @ =_08075D00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08075CFC: .4byte _08075D00
_08075D00: @ jump table
	.4byte _08075D50 @ case 0
	.4byte _08075D6A @ case 1
	.4byte _08075D6A @ case 2
	.4byte _08075D6A @ case 3
	.4byte _08075D66 @ case 4
	.4byte _08075D66 @ case 5
	.4byte _08075D66 @ case 6
	.4byte _08075D6A @ case 7
	.4byte _08075D6A @ case 8
	.4byte _08075D6A @ case 9
	.4byte _08075D6A @ case 10
	.4byte _08075D6A @ case 11
	.4byte _08075D6A @ case 12
	.4byte _08075D6A @ case 13
	.4byte _08075D6A @ case 14
	.4byte _08075D6A @ case 15
	.4byte _08075D6A @ case 16
	.4byte _08075D6A @ case 17
	.4byte _08075D6A @ case 18
	.4byte _08075D6A @ case 19
_08075D50:
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072D58
	b _08075D6C
_08075D66:
	movs r0, #1
	b _08075D6C
_08075D6A:
	movs r0, #0
_08075D6C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08075D74
sub_08075D74: @ 0x08075D74
	ldr r0, [r0, #0x24]
	ldrh r0, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_08075D7C
sub_08075D7C: @ 0x08075D7C
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0
	cmp r0, #1
	bgt _08075D96
	movs r1, #1
_08075D96:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08075D9C
sub_08075D9C: @ 0x08075D9C
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0
	cmp r0, #1
	ble _08075DB6
	movs r1, #1
_08075DB6:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08075DBC
sub_08075DBC: @ 0x08075DBC
	ldr r0, [r0, #0x24]
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08075DC4
sub_08075DC4: @ 0x08075DC4
	push {lr}
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _08075DD0
	movs r0, #1
_08075DD0:
	pop {r1}
	bx r1

	thumb_func_start sub_08075DD4
sub_08075DD4: @ 0x08075DD4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08075E08
	ldr r1, [r4, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08075E0C
_08075E08:
	movs r0, #1
	b _08075E2A
_08075E0C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0
	cmp r0, #0
	bgt _08075E28
	movs r1, #1
_08075E28:
	adds r0, r1, #0
_08075E2A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08075E30
sub_08075E30: @ 0x08075E30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	b _08075E60
_08075E3A:
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xd8
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xf0
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
_08075E60:
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08075E3A
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x2c
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0x13
	bls _08075E90
	b _080760EC
_08075E90:
	lsls r0, r0, #2
	ldr r1, _08075E9C @ =_08075EA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08075E9C: .4byte _08075EA0
_08075EA0: @ jump table
	.4byte _08075EF0 @ case 0
	.4byte _08075F1A @ case 1
	.4byte _08075F66 @ case 2
	.4byte _08075F96 @ case 3
	.4byte _08075FC6 @ case 4
	.4byte _08076012 @ case 5
	.4byte _08076042 @ case 6
	.4byte _0807609A @ case 7
	.4byte _0807609A @ case 8
	.4byte _0807609A @ case 9
	.4byte _0807609A @ case 10
	.4byte _0807609A @ case 11
	.4byte _0807609A @ case 12
	.4byte _0807609A @ case 13
	.4byte _0807609A @ case 14
	.4byte _0807609A @ case 15
	.4byte _0807609A @ case 16
	.4byte _0807609A @ case 17
	.4byte _0807609A @ case 18
	.4byte _0807609A @ case 19
_08075EF0:
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xd0
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r6, #0x2c
	mov r8, r6
	b _080760EC
_08075F1A:
	movs r7, #0
	movs r0, #0x2c
	adds r0, r0, r6
	mov r8, r0
	b _08075F5C
_08075F24:
	adds r0, r7, #0
	bl sub_08072AA4
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	beq _08075F5A
	ldr r4, [r6, #0x1c]
	adds r4, #0xd0
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	adds r0, r7, #0
	bl sub_08072AA4
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_08075F5A:
	adds r7, #1
_08075F5C:
	bl sub_08072A88
	cmp r7, r0
	blt _08075F24
	b _080760EC
_08075F66:
	movs r7, #0
	movs r1, #0x2c
	adds r1, r1, r6
	mov r8, r1
	b _08075F8C
_08075F70:
	ldr r4, [r6, #0x1c]
	adds r4, #0xd0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	adds r0, r7, #0
	bl sub_08072AA4
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r7, #1
_08075F8C:
	bl sub_08072A88
	cmp r7, r0
	blt _08075F70
	b _080760EC
_08075F96:
	movs r7, #0
	movs r0, #0x2c
	adds r0, r0, r6
	mov r8, r0
	b _08075FBC
_08075FA0:
	ldr r4, [r6, #0x1c]
	adds r4, #0xd0
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r6, r5
	adds r0, r7, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r7, #1
_08075FBC:
	bl sub_080729DC
	cmp r7, r0
	blt _08075FA0
	b _080760EC
_08075FC6:
	movs r7, #0
	movs r2, #0x2c
	adds r2, r2, r6
	mov r8, r2
	b _08076008
_08075FD0:
	adds r0, r7, #0
	bl sub_08072EC4
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	beq _08076006
	ldr r4, [r6, #0x1c]
	adds r4, #0xd0
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	adds r0, r7, #0
	bl sub_08072EC4
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_08076006:
	adds r7, #1
_08076008:
	bl sub_08072EA8
	cmp r7, r0
	blt _08075FD0
	b _080760EC
_08076012:
	movs r7, #0
	movs r1, #0x2c
	adds r1, r1, r6
	mov r8, r1
	b _08076038
_0807601C:
	ldr r4, [r6, #0x1c]
	adds r4, #0xd0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	adds r0, r7, #0
	bl sub_08072EC4
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r7, #1
_08076038:
	bl sub_08072EA8
	cmp r7, r0
	blt _0807601C
	b _080760EC
_08076042:
	movs r7, #0
	movs r0, #0x2c
	adds r0, r0, r6
	mov r8, r0
	b _08076068
_0807604C:
	ldr r4, [r6, #0x1c]
	adds r4, #0xd0
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r6, r5
	adds r0, r7, #0
	bl sub_08072AA4
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r7, #1
_08076068:
	bl sub_08072A88
	cmp r7, r0
	blt _0807604C
	movs r7, #0
	b _08076090
_08076074:
	ldr r4, [r6, #0x1c]
	adds r4, #0xd0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	adds r0, r7, #0
	bl sub_08072EC4
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r7, #1
_08076090:
	bl sub_08072EA8
	cmp r7, r0
	blt _08076074
	b _080760EC
_0807609A:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08072A18
	movs r1, #0x2c
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0
	beq _080760EC
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xd0
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08072A18
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_080760EC:
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0
	cmp r0, #0
	ble _080760F8
	movs r1, #1
_080760F8:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08076104
sub_08076104: @ 0x08076104
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	str r1, [sp]
	adds r4, r0, #0
	adds r4, #0x2c
	mov r7, sp
	ldr r1, [r4, #4]
	adds r5, r1, #1
	ldr r0, [r0, #0x2c]
	cmp r0, r5
	bge _08076152
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08076124
	adds r0, r1, #0
_08076124:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08076144
	adds r1, r0, #0
_0807613A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0807613A
_08076144:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807614E
	bl __builtin_vec_delete
_0807614E:
	str r5, [r4]
	str r6, [r4, #8]
_08076152:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r0, [sp]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807616C
sub_0807616C: @ 0x0807616C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	str r1, [sp]
	adds r6, r0, #0
	adds r6, #0x2c
	mov r7, sp
	movs r5, #0
	ldr r3, [r6, #4]
	cmp r5, r3
	bge _080761BC
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08076186:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _080761B0
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _080761A8
	adds r2, r0, #0
_0807619E:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0807619E
_080761A8:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _080761BE
_080761B0:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08076186
_080761BC:
	movs r0, #0
_080761BE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080761C8
sub_080761C8: @ 0x080761C8
	ldr r0, [r0, #0x30]
	bx lr

	thumb_func_start sub_080761CC
sub_080761CC: @ 0x080761CC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, #0xa0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	cmp r0, r5
	ble _080761FA
	adds r0, r5, #0
_080761FA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08076200
sub_08076200: @ 0x08076200
	lsls r1, r1, #2
	ldr r0, [r0, #0x34]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807620C
sub_0807620C: @ 0x0807620C
	push {r4, r5, lr}
	sub sp, #4
	str r1, [sp]
	adds r3, r0, #0
	adds r3, #0x2c
	movs r2, #0
	ldr r0, [r3, #4]
	cmp r2, r0
	bge _08076236
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r1, [r3, #8]
_08076224:
	ldr r0, [r1]
	cmp r0, r5
	bne _0807622E
	adds r0, r2, #0
	b _08076238
_0807622E:
	adds r1, #4
	adds r2, #1
	cmp r2, r4
	blt _08076224
_08076236:
	ldr r0, [r3, #4]
_08076238:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08076240
sub_08076240: @ 0x08076240
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	b _0807627C
_08076250:
	ldr r0, [r7, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_0807627C:
	ldr r1, [r7, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08076250
	ldr r1, [r7, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #4
	bls _080762AA
	b _080765C2
_080762AA:
	lsls r0, r0, #2
	ldr r1, _080762B4 @ =_080762B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080762B4: .4byte _080762B8
_080762B8: @ jump table
	.4byte _080762CC @ case 0
	.4byte _08076310 @ case 1
	.4byte _08076378 @ case 2
	.4byte _08076410 @ case 3
	.4byte _08076470 @ case 4
_080762CC:
	movs r6, #0
	b _080762FA
_080762D0:
	ldr r1, [r7, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r5, r1, r3
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r7, r4
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r6, #1
_080762FA:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _080762D0
	b _080765C2
_08076310:
	movs r4, #0
	mov sb, r4
	b _08076362
_08076316:
	ldr r0, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r7, r5
	adds r6, r0, #0
	adds r6, #0xf0
	movs r3, #0
	ldrsh r4, [r6, r3]
	adds r4, r7, r4
	adds r1, r0, #0
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	mov r0, sb
	bl sub_0807067C
	adds r1, r0, #0
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	mov r3, r8
	ldr r2, [r3, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r4, #1
	add sb, r4
_08076362:
	ldr r1, [r7, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sb, r0
	blt _08076316
	b _080765C2
_08076378:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	adds r5, r7, #0
	adds r5, #0x2c
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _080763CC
	cmp r1, #0
	ble _080763CC
	adds r6, r1, #0
_0807639E:
	ldr r1, [r5, #4]
	subs r1, #1
	movs r0, #0
	bl sub_08069454
	adds r4, r0, #0
	ldr r1, [r5, #4]
	subs r1, #1
	movs r0, #0
	bl sub_08069454
	ldr r1, [r5, #8]
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r2, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r4]
	str r2, [r0]
	subs r6, #1
	cmp r6, #0
	bne _0807639E
_080763CC:
	movs r6, #0
	b _080763FA
_080763D0:
	ldr r1, [r7, #0x1c]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r5, r1, r4
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r7, r4
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r6, #1
_080763FA:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _080763D0
	b _080765C2
_08076410:
	movs r4, #0
	mov sb, r4
	movs r0, #0x2c
	adds r0, r0, r7
	mov sl, r0
	b _0807645A
_0807641C:
	ldr r4, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r6, r7, r6
	adds r4, #0xf0
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r7, r5
	mov r0, sl
	ldr r1, [r0, #4]
	subs r1, #1
	movs r0, #0
	bl sub_08070660
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r1, r0, #0
	mov r3, r8
	ldr r2, [r3, #4]
	adds r0, r6, #0
	bl _call_via_r2
	movs r4, #1
	add sb, r4
_0807645A:
	ldr r1, [r7, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sb, r0
	blt _0807641C
	b _080765C2
_08076470:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r6, #0
	b _080764F0
_0807647C:
	ldr r1, [r7, #0x1c]
	adds r1, #0xf0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	str r0, [sp, #0xc]
	mov r5, sp
	add r4, sp, #0xc
	mov r8, r4
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	adds r6, #1
	mov sb, r6
	cmp r0, r4
	bge _080764DC
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _080764AE
	adds r1, r0, #0
_080764AE:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080764CE
	adds r1, r0, #0
_080764C4:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080764C4
_080764CE:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080764D8
	bl __builtin_vec_delete
_080764D8:
	str r4, [r5]
	str r6, [r5, #8]
_080764DC:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
	mov r6, sb
_080764F0:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0807647C
	movs r0, #0
	mov r8, r0
	b _08076574
_0807650A:
	subs r5, r0, #1
	subs r0, #2
	movs r1, #1
	add r1, r8
	mov sl, r1
	cmp r0, r8
	blt _08076572
	movs r2, #0xcc
	lsls r2, r2, #1
	mov sb, r2
_0807651E:
	lsls r3, r5, #2
	ldr r0, [sp, #8]
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	add r2, sb
	movs r4, #0
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	str r3, [sp, #0x10]
	bl _call_via_r1
	str r0, [sp, #0x14]
	subs r6, r5, #1
	lsls r5, r6, #2
	ldr r0, [sp, #8]
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	add r2, sb
	movs r4, #0
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bge _0807656A
	ldr r0, [sp, #8]
	adds r2, r3, r0
	ldr r3, [r2]
	adds r0, r5, r0
	ldr r1, [r0]
	str r1, [r2]
	str r3, [r0]
_0807656A:
	adds r5, r6, #0
	subs r0, r5, #1
	cmp r0, r8
	bge _0807651E
_08076572:
	mov r8, sl
_08076574:
	ldr r0, [sp, #4]
	cmp r8, r0
	blt _0807650A
	movs r4, #0
	b _0807659C
_0807657E:
	ldr r3, [r7, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r7, r0
	lsls r2, r4, #2
	ldr r1, [sp, #8]
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [r3, #4]
	bl _call_via_r2
	adds r4, #1
_0807659C:
	ldr r1, [r7, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #4]
	cmp r1, r0
	ble _080765B4
	adds r1, r0, #0
_080765B4:
	cmp r4, r1
	blt _0807657E
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080765C2
	bl __builtin_vec_delete
_080765C2:
	ldr r1, [r7, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0
	cmp r0, #0
	ble _080765DE
	movs r1, #1
_080765DE:
	adds r0, r1, #0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080765F0
sub_080765F0: @ 0x080765F0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	str r1, [sp]
	adds r4, r0, #0
	adds r4, #0x38
	mov r7, sp
	ldr r1, [r4, #4]
	adds r5, r1, #1
	ldr r0, [r0, #0x38]
	cmp r0, r5
	bge _0807663E
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08076610
	adds r0, r1, #0
_08076610:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08076630
	adds r1, r0, #0
_08076626:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08076626
_08076630:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807663A
	bl __builtin_vec_delete
_0807663A:
	str r5, [r4]
	str r6, [r4, #8]
_0807663E:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r0, [sp]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08076658
sub_08076658: @ 0x08076658
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	str r1, [sp]
	adds r6, r0, #0
	adds r6, #0x38
	mov r7, sp
	movs r5, #0
	ldr r3, [r6, #4]
	cmp r5, r3
	bge _080766A8
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08076672:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _0807669C
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08076694
	adds r2, r0, #0
_0807668A:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0807668A
_08076694:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _080766AA
_0807669C:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08076672
_080766A8:
	movs r0, #0
_080766AA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080766B4
sub_080766B4: @ 0x080766B4
	ldr r0, [r0, #0x3c]
	bx lr

	thumb_func_start sub_080766B8
sub_080766B8: @ 0x080766B8
	lsls r1, r1, #2
	ldr r0, [r0, #0x40]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080766C4
sub_080766C4: @ 0x080766C4
	push {r4, r5, lr}
	sub sp, #4
	str r1, [sp]
	adds r3, r0, #0
	adds r3, #0x38
	movs r2, #0
	ldr r0, [r3, #4]
	cmp r2, r0
	bge _080766EE
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r1, [r3, #8]
_080766DC:
	ldr r0, [r1]
	cmp r0, r5
	bne _080766E6
	adds r0, r2, #0
	b _080766F0
_080766E6:
	adds r1, #4
	adds r2, #1
	cmp r2, r4
	blt _080766DC
_080766EE:
	ldr r0, [r3, #4]
_080766F0:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080766F8
sub_080766F8: @ 0x080766F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	str r0, [sp, #0x48]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08075BB0
	ldr r0, _08076A04 @ =0x09F81BF0
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
	ldr r2, _08076A08 @ =0x09F44FF0
	mov sl, r2
	ldr r0, _08076A0C @ =0x09F7F930
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A14 @ =0x09F7F8B0
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sl
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A18 @ =0x09F7F830
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, sl
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A20 @ =0x09F7F7B0
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A24 @ =0x09F7F730
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sl
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A2C @ =0x09F7F6B0
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, sl
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A30 @ =0x09F7F530
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A34 @ =0x09F7F4B0
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, sl
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A38 @ =0x09F7F630
	str r0, [sp, #0x20]
	ldr r0, _08076A3C @ =gUnknown_08107088
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, sl
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A40 @ =0x09F819D0
	str r0, [sp, #0x20]
	ldr r0, _08076A44 @ =gUnknown_08107090
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
	ldr r0, _08076A48 @ =0x09F818D0
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
	ldr r0, _08076A50 @ =0x09F81850
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
	ldr r0, _08076A54 @ =0x09F817D0
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
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
	ldr r0, _08076A5C @ =0x09F81750
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x48]
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r0, sl
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08076A60 @ =0x09F81950
	str r0, [sp, #0x20]
	ldr r0, _08076A64 @ =gUnknown_081070A8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
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
_08076A04: .4byte 0x09F81BF0
_08076A08: .4byte 0x09F44FF0
_08076A0C: .4byte 0x09F7F930
_08076A10: .4byte gUnknown_08107070
_08076A14: .4byte 0x09F7F8B0
_08076A18: .4byte 0x09F7F830
_08076A1C: .4byte gUnknown_08107078
_08076A20: .4byte 0x09F7F7B0
_08076A24: .4byte 0x09F7F730
_08076A28: .4byte gUnknown_08107080
_08076A2C: .4byte 0x09F7F6B0
_08076A30: .4byte 0x09F7F530
_08076A34: .4byte 0x09F7F4B0
_08076A38: .4byte 0x09F7F630
_08076A3C: .4byte gUnknown_08107088
_08076A40: .4byte 0x09F819D0
_08076A44: .4byte gUnknown_08107090
_08076A48: .4byte 0x09F818D0
_08076A4C: .4byte gUnknown_08107098
_08076A50: .4byte 0x09F81850
_08076A54: .4byte 0x09F817D0
_08076A58: .4byte gUnknown_081070A0
_08076A5C: .4byte 0x09F81750
_08076A60: .4byte 0x09F81950
_08076A64: .4byte gUnknown_081070A8

	thumb_func_start sub_08076A68
sub_08076A68: @ 0x08076A68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov sb, r1
	ldr r0, _08076AC0 @ =0x09F81BF0
	str r0, [r4, #0x1c]
	movs r5, #0
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0, #4]
	cmp r5, r0
	bge _08076AAC
	adds r6, r4, r1
_08076A88:
	lsls r1, r5, #2
	ldr r0, [r6, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08076AA4
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08076AA4:
	adds r5, #1
	ldr r0, [r6, #4]
	cmp r5, r0
	blt _08076A88
_08076AAC:
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x68
	adds r7, r4, #0
	adds r7, #0x50
	movs r0, #0x44
	adds r0, r0, r4
	mov r8, r0
	b _08076AD8
	.align 2, 0
_08076AC0: .4byte 0x09F81BF0
_08076AC4:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08076200
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_08077CF0
	adds r5, #1
_08076AD8:
	adds r0, r4, #0
	bl sub_080761C8
	cmp r5, r0
	blt _08076AC4
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #2
	bl sub_08071FBC
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08076AFE
	bl __builtin_vec_delete
_08076AFE:
	adds r0, r6, #0
	movs r1, #2
	bl sub_08083CBC
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08076B10
	bl __builtin_vec_delete
_08076B10:
	mov r1, r8
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08076B1C
	bl __builtin_vec_delete
_08076B1C:
	adds r0, r4, #0
	mov r1, sb
	bl sub_08075BF8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08076B30
sub_08076B30: @ 0x08076B30
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08075DD4
	cmp r0, #0
	beq _08076B40
_08076B3C:
	movs r0, #1
	b _08076BB6
_08076B40:
	adds r0, r4, #0
	bl sub_08076BBC
	adds r0, r4, #0
	bl sub_08076D18
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
	bne _08076B98
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080770C8
	adds r0, r4, #0
	bl sub_08077A64
	ldr r0, [r4, #0x60]
	cmp r0, #1
	bne _08076BA2
_08076B7A:
	movs r0, #1
	bl sub_0807068C
	movs r0, #1
	movs r1, #0
	bl sub_08073018
	bl sub_08072B70
	bl sub_08072D0C
	ldr r0, [r4, #0x60]
	cmp r0, #1
	beq _08076B7A
	b _08076BA2
_08076B98:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_080770C8
_08076BA2:
	ldr r0, [r4, #0x60]
	cmp r0, #3
	beq _08076B3C
	cmp r0, #3
	bgt _08076BB4
	cmp r0, #2
	bne _08076BB4
	movs r0, #0
	b _08076BB6
_08076BB4:
	movs r0, #2
_08076BB6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08076BBC
sub_08076BBC: @ 0x08076BBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0
	str r0, [r6, #0x48]
	b _08076CEE
_08076BD0:
	ldr r1, [r6, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	mov r8, r0
	movs r0, #0
	mov sb, r0
	adds r1, r6, #0
	adds r1, #0x44
	ldr r0, [r1, #4]
	str r1, [sp, #0xc]
	mov r2, sp
	adds r2, #8
	str r2, [sp, #0x10]
	mov r2, sl
	adds r2, #1
	str r2, [sp, #0x14]
	cmp sb, r0
	bge _08076C64
	adds r5, r1, #0
_08076C02:
	ldr r2, [r6, #0x1c]
	adds r2, #0xf0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r5, #8]
	add r1, sb
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r7, #0
	adds r3, r0, #0
	adds r3, #0x20
	ldr r2, [r0, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r4, [sp]
	mov r1, r8
	ldr r2, [r1, #0x20]
	adds r2, #0x40
	mov r3, r8
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	ble _08076C56
	movs r7, #1
_08076C56:
	cmp r7, #0
	bne _08076C64
	movs r1, #1
	add sb, r1
	ldr r0, [r5, #4]
	cmp sb, r0
	blt _08076C02
_08076C64:
	mov r0, sl
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r5, [sp, #0xc]
	add r1, sp, #8
	mov r8, r1
	ldr r0, [r5, #4]
	adds r4, r0, #1
	ldr r0, [r6, #0x44]
	cmp r0, r4
	bge _08076CB6
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _08076C84
	adds r1, r0, #0
_08076C84:
	adds r4, r1, #0
	adds r0, r4, #0
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r5, #8]
	adds r2, r7, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _08076CA8
	adds r1, r0, #0
_08076C9A:
	ldrb r0, [r3]
	strb r0, [r2]
	adds r3, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08076C9A
_08076CA8:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08076CB2
	bl __builtin_vec_delete
_08076CB2:
	str r4, [r5]
	str r7, [r5, #8]
_08076CB6:
	ldr r0, [r5, #8]
	add r0, sb
	ldr r1, [r5, #4]
	mov r2, sb
	subs r3, r1, r2
	adds r2, r0, #1
	subs r1, r3, #1
	adds r4, r0, r1
	adds r2, r2, r1
	cmp r3, #0
	ble _08076CDC
	adds r1, r3, #0
_08076CCE:
	ldrb r0, [r4]
	strb r0, [r2]
	subs r4, #1
	subs r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08076CCE
_08076CDC:
	ldr r0, [r5, #8]
	add r0, sb
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r0]
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
	ldr r0, [sp, #0x14]
_08076CEE:
	mov sl, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sl, r0
	bge _08076D06
	b _08076BD0
_08076D06:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08076D18
sub_08076D18: @ 0x08076D18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0
	str r0, [r6, #0x54]
	b _08076E52
_08076D2C:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	mov r8, r0
	movs r0, #0
	mov sb, r0
	adds r1, r6, #0
	adds r1, #0x50
	ldr r0, [r1, #4]
	str r1, [sp, #0x10]
	mov r2, sp
	adds r2, #8
	str r2, [sp, #0xc]
	mov r2, sl
	adds r2, #1
	str r2, [sp, #0x14]
	cmp sb, r0
	bge _08076DC8
	adds r5, r1, #0
_08076D62:
	ldr r2, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r5, #8]
	add r1, sb
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r7, #0
	adds r3, r0, #0
	adds r3, #0x20
	ldr r2, [r0, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r4, [sp]
	mov r1, r8
	ldr r2, [r1, #0x20]
	adds r2, #0x40
	mov r3, r8
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	ble _08076DBA
	movs r7, #1
_08076DBA:
	cmp r7, #0
	bne _08076DC8
	movs r1, #1
	add sb, r1
	ldr r0, [r5, #4]
	cmp sb, r0
	blt _08076D62
_08076DC8:
	mov r0, sl
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r5, [sp, #0x10]
	add r1, sp, #8
	mov r8, r1
	ldr r0, [r5, #4]
	adds r4, r0, #1
	ldr r0, [r6, #0x50]
	cmp r0, r4
	bge _08076E1A
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _08076DE8
	adds r1, r0, #0
_08076DE8:
	adds r4, r1, #0
	adds r0, r4, #0
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r5, #8]
	adds r2, r7, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _08076E0C
	adds r1, r0, #0
_08076DFE:
	ldrb r0, [r3]
	strb r0, [r2]
	adds r3, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08076DFE
_08076E0C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08076E16
	bl __builtin_vec_delete
_08076E16:
	str r4, [r5]
	str r7, [r5, #8]
_08076E1A:
	ldr r0, [r5, #8]
	add r0, sb
	ldr r1, [r5, #4]
	mov r2, sb
	subs r3, r1, r2
	adds r2, r0, #1
	subs r1, r3, #1
	adds r4, r0, r1
	adds r2, r2, r1
	cmp r3, #0
	ble _08076E40
	adds r1, r3, #0
_08076E32:
	ldrb r0, [r4]
	strb r0, [r2]
	subs r4, #1
	subs r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08076E32
_08076E40:
	ldr r0, [r5, #8]
	add r0, sb
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r0]
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
	ldr r0, [sp, #0x14]
_08076E52:
	mov sl, r0
	ldr r1, [r6, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sl, r0
	bge _08076E6E
	b _08076D2C
_08076E6E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08076E80
sub_08076E80: @ 0x08076E80
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bge _08076EF6
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r4, r0, #0
	cmp r4, #0
	bne _08076EFA
_08076EF6:
	movs r0, #0
	b _08076F2E
_08076EFA:
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	ldr r1, [r5, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r0, r5, #0
	bl sub_08076D18
	movs r0, #1
_08076F2E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08076F34
sub_08076F34: @ 0x08076F34
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bge _08076FA8
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r1, [r5, #0x1c]
	movs r3, #0xd4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #0x1c]
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r5, r0
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r4, r0, #0
	cmp r4, #0
	bne _08076FAC
_08076FA8:
	movs r0, #0
	b _08076FE0
_08076FAC:
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	ldr r1, [r5, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r0, r5, #0
	bl sub_08076D18
	movs r0, #1
_08076FE0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08076FE8
sub_08076FE8: @ 0x08076FE8
	push {lr}
	movs r1, #2
	movs r2, #0
	bl sub_080770C8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08076FF8
sub_08076FF8: @ 0x08076FF8
	push {lr}
	movs r1, #3
	movs r2, #0
	bl sub_080770C8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08077008
sub_08077008: @ 0x08077008
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08077054
	adds r0, #0xc
	movs r1, #0
	bl sub_08083CF4
	movs r4, #0
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0, #4]
	cmp r4, r0
	bge _08077054
	adds r5, r5, r1
_08077032:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _08077032
_08077054:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807705C
sub_0807705C: @ 0x0807705C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x5c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080770B2
	adds r0, r6, #0
	adds r0, #0x68
	movs r1, #1
	bl sub_08083CF4
	movs r4, #0
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0, #4]
	cmp r4, r0
	bge _080770AC
	adds r5, r6, r1
_0807708A:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #1
	bl _call_via_r2
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0807708A
_080770AC:
	adds r0, r6, #0
	bl sub_08077A64
_080770B2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080770B8
sub_080770B8: @ 0x080770B8
	push {lr}
	movs r1, #4
	movs r2, #0
	bl sub_080770C8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080770C8
sub_080770C8: @ 0x080770C8
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x60]
	cmp r0, r1
	bne _080770DA
	cmp r2, #1
	bne _080770E0
_080770DA:
	str r1, [r3, #0x60]
	movs r0, #1
	b _080770E2
_080770E0:
	movs r0, #0
_080770E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080770E8
sub_080770E8: @ 0x080770E8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08077104
	movs r0, #0
	b _08077134
_08077104:
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xf0
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, [r6, #0x4c]
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_08077134:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807713C
sub_0807713C: @ 0x0807713C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080771F2
	ldr r2, [r6, #0x1c]
	adds r2, #0xf0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	adds r4, r6, #0
	adds r4, #0x44
	ldr r1, [r4, #8]
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r7, r4, #0
	cmp r0, r8
	bne _080771BE
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xf0
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	ldr r1, [r7, #8]
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	b _080771F4
_080771A4:
	ldr r2, [r6, #0x1c]
	adds r2, #0xf0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	subs r3, r5, #1
	ldr r1, [r7, #8]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	b _080771F4
_080771BE:
	movs r5, #1
	b _080771DE
_080771C2:
	ldr r2, [r6, #0x1c]
	adds r2, #0xf0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r7, #8]
	adds r1, r1, r5
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	cmp r0, r8
	beq _080771A4
	adds r5, #1
_080771DE:
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _080771C2
_080771F2:
	movs r0, #0
_080771F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08077200
sub_08077200: @ 0x08077200
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807721C
	movs r0, #0
	b _08077230
_0807721C:
	ldr r2, [r4, #0x1c]
	adds r2, #0xf0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r4, #0x4c]
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
_08077230:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08077238
sub_08077238: @ 0x08077238
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080772E6
	ldr r1, [r7, #0x1c]
	adds r6, r1, #0
	adds r6, #0xf0
	movs r0, #0
	ldrsh r4, [r6, r0]
	adds r4, r7, r4
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r7, #0
	adds r5, #0x44
	subs r0, #1
	ldr r1, [r5, #8]
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r6, r5, #0
	cmp r0, r8
	bne _080772B0
	ldr r2, [r7, #0x1c]
	adds r2, #0xf0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	ldr r1, [r6, #8]
	b _080772A6
_08077298:
	ldr r2, [r7, #0x1c]
	adds r2, #0xf0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	ldr r1, [r6, #8]
	adds r1, r1, r5
_080772A6:
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	b _080772E8
_080772B0:
	movs r4, #0
	b _080772D0
_080772B4:
	ldr r2, [r7, #0x1c]
	adds r2, #0xf0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	ldr r1, [r6, #8]
	adds r1, r1, r4
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	cmp r0, r8
	beq _08077298
	adds r4, r5, #0
_080772D0:
	adds r5, r4, #1
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _080772B4
_080772E6:
	movs r0, #0
_080772E8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080772F4
sub_080772F4: @ 0x080772F4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08077310
	movs r0, #0
	b _0807733A
_08077310:
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xf0
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	ldr r1, [r6, #0x4c]
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_0807733A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08077340
sub_08077340: @ 0x08077340
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08077360
	movs r0, #0
	b _08077396
_08077360:
	ldr r0, [r6, #0x1c]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, [r6, #0x58]
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_08077396:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0807739C
sub_0807739C: @ 0x0807739C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov r8, r1
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	mov sb, r0
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _0807746C
	ldr r2, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	adds r4, r6, #0
	adds r4, #0x50
	ldr r1, [r4, #8]
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r7, r4, #0
	cmp r0, r8
	bne _08077430
	ldr r1, [r6, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r5, r1, r2
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	ldr r1, [r7, #8]
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	b _0807746E
_08077412:
	ldr r2, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	subs r3, r5, #1
	ldr r1, [r7, #8]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	b _0807746E
_08077430:
	movs r5, #1
	b _08077454
_08077434:
	ldr r2, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r7, #8]
	adds r1, r1, r5
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	cmp r0, r8
	beq _08077412
	adds r5, #1
_08077454:
	ldr r1, [r6, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08077434
_0807746C:
	movs r0, #0
_0807746E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807747C
sub_0807747C: @ 0x0807747C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807749C
	movs r0, #0
	b _080774B4
_0807749C:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r4, #0x58]
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
_080774B4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080774BC
sub_080774BC: @ 0x080774BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r1, [r7, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _08077584
	ldr r0, [r7, #0x1c]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r6, r0, r1
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r7, r4
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r7, #0
	adds r5, #0x50
	subs r0, #1
	ldr r1, [r5, #8]
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r6, r5, #0
	cmp r0, r8
	bne _08077546
	ldr r2, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	ldr r1, [r6, #8]
	b _0807753C
_0807752A:
	ldr r2, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	ldr r1, [r6, #8]
	adds r1, r1, r5
_0807753C:
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	b _08077586
_08077546:
	movs r4, #0
	b _0807756A
_0807754A:
	ldr r2, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	ldr r1, [r6, #8]
	adds r1, r1, r4
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	cmp r0, r8
	beq _0807752A
	adds r4, r5, #0
_0807756A:
	adds r5, r4, #1
	ldr r1, [r7, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _0807754A
_08077584:
	movs r0, #0
_08077586:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08077590
sub_08077590: @ 0x08077590
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080775B0
	movs r0, #0
	b _080775E0
_080775B0:
	ldr r0, [r6, #0x1c]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	ldr r1, [r6, #0x58]
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_080775E0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080775E8
sub_080775E8: @ 0x080775E8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08077626
	ldr r0, [r4, #0x60]
	cmp r0, #4
	beq _08077626
	cmp r0, #1
	bne _08077626
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
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
	bne _08077626
	adds r0, r4, #0
	bl sub_08077A64
	movs r0, #0xd1
	bl sub_08070824
_08077626:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807762C
sub_0807762C: @ 0x0807762C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807766A
	ldr r0, [r4, #0x60]
	cmp r0, #4
	beq _0807766A
	cmp r0, #1
	bne _0807766A
	ldr r1, [r4, #0x1c]
	movs r0, #0x98
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
	bne _0807766A
	adds r0, r4, #0
	bl sub_08077A64
	movs r0, #0xd1
	bl sub_08070824
_0807766A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08077670
sub_08077670: @ 0x08077670
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080776A8
	ldr r0, [r2, #0x60]
	cmp r0, #4
	beq _080776A8
	cmp r0, #1
	bne _080776A8
	ldr r1, [r2, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080776A8
	movs r0, #0xd2
	bl sub_08070824
_080776A8:
	pop {r0}
	bx r0

	thumb_func_start sub_080776AC
sub_080776AC: @ 0x080776AC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080776E4
	ldr r0, [r2, #0x60]
	cmp r0, #4
	beq _080776E4
	cmp r0, #1
	bne _080776E4
	ldr r1, [r2, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080776E4
	movs r0, #0xd3
	bl sub_08070824
_080776E4:
	pop {r0}
	bx r0

	thumb_func_start sub_080776E8
sub_080776E8: @ 0x080776E8
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xa4
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

	thumb_func_start sub_08077704
sub_08077704: @ 0x08077704
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, [r6, #0x60]
	cmp r0, #4
	bne _08077714
	b _08077890
_08077714:
	ldr r1, [r6, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08075BB0
	mov r0, sp
	bl sub_08075DD4
	cmp r0, #0
	beq _08077750
	b _08077888
_08077750:
	movs r4, #0
	b _08077770
_08077754:
	ldr r1, [r6, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	mov r0, sp
	bl sub_0807616C
	adds r4, #1
_08077770:
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08077754
	movs r4, #0
	b _080777AA
_08077788:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08076200
	ldr r1, [r5, #0x20]
	cmp r0, r1
	beq _080777A8
	mov r0, sp
	adds r1, r4, #0
	bl sub_08076200
	adds r1, r0, #0
	mov r0, sp
	bl sub_0807616C
	subs r4, #1
_080777A8:
	adds r4, #1
_080777AA:
	mov r0, sp
	bl sub_080761C8
	cmp r4, r0
	blt _08077788
	movs r4, #0
	b _080777D8
_080777B8:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	mov r0, sp
	bl sub_08076658
	adds r4, #1
_080777D8:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _080777B8
	movs r4, #0
	b _08077816
_080777F4:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080766B8
	ldr r1, [r5, #0x20]
	cmp r0, r1
	beq _08077814
	mov r0, sp
	adds r1, r4, #0
	bl sub_080766B8
	adds r1, r0, #0
	mov r0, sp
	bl sub_08076658
	subs r4, #1
_08077814:
	adds r4, #1
_08077816:
	mov r0, sp
	bl sub_080766B4
	cmp r4, r0
	blt _080777F4
	movs r7, #0
	b _08077842
_08077824:
	ldr r4, [r6, #0x1c]
	adds r4, #0xd0
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	mov r0, sp
	adds r1, r7, #0
	bl sub_08076200
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r7, #1
_08077842:
	mov r0, sp
	bl sub_080761C8
	cmp r7, r0
	blt _08077824
	adds r0, r6, #0
	bl sub_08076BBC
	movs r7, #0
	b _08077878
_08077856:
	ldr r4, [r6, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r4, r2
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	mov r0, sp
	adds r1, r7, #0
	bl sub_080766B8
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r7, #1
_08077878:
	mov r0, sp
	bl sub_080766B4
	cmp r7, r0
	blt _08077856
	adds r0, r6, #0
	bl sub_08076D18
_08077888:
	mov r0, sp
	movs r1, #2
	bl sub_08075BF8
_08077890:
	add sp, #0x44
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08077898
sub_08077898: @ 0x08077898
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x44
	adds r6, r0, #0
	ldr r0, [r6, #0x60]
	cmp r0, #4
	bne _080778AA
	b _08077A3C
_080778AA:
	ldr r1, [r1, #0x20]
	mov r8, r1
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r8, r0
	bne _080778D8
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08077A3C
_080778D8:
	ldr r1, [r6, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08075BB0
	mov r0, sp
	bl sub_08075DD4
	mov r0, sp
	mov r1, r8
	bl sub_0807620C
	adds r4, r0, #0
	mov r0, sp
	bl sub_080761C8
	cmp r4, r0
	bge _08077924
	b _08077A34
_08077924:
	ldr r1, [r6, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080779A4
	movs r4, #0
	b _0807795E
_08077942:
	ldr r1, [r6, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	mov r0, sp
	bl sub_0807616C
	adds r4, #1
_0807795E:
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08077942
	movs r7, #0
	b _08077994
_08077976:
	ldr r4, [r6, #0x1c]
	adds r4, #0xd0
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	mov r0, sp
	adds r1, r7, #0
	bl sub_08076200
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r7, #1
_08077994:
	mov r0, sp
	bl sub_080761C8
	cmp r7, r0
	blt _08077976
	adds r0, r6, #0
	bl sub_08076BBC
_080779A4:
	ldr r1, [r6, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08077A34
	movs r4, #0
	b _080779E6
_080779C6:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	mov r0, sp
	bl sub_08076658
	adds r4, #1
_080779E6:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _080779C6
	movs r7, #0
	b _08077A24
_08077A02:
	ldr r4, [r6, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	mov r0, sp
	adds r1, r7, #0
	bl sub_080766B8
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r7, #1
_08077A24:
	mov r0, sp
	bl sub_080766B4
	cmp r7, r0
	blt _08077A02
	adds r0, r6, #0
	bl sub_08076D18
_08077A34:
	mov r0, sp
	movs r1, #2
	bl sub_08075BF8
_08077A3C:
	add sp, #0x44
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08077A48
sub_08077A48: @ 0x08077A48
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
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

	thumb_func_start sub_08077A64
sub_08077A64: @ 0x08077A64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	movs r4, #0
	b _08077A96
_08077A76:
	ldr r1, [r6, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	bl sub_08077CF0
	adds r4, #1
_08077A96:
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08077A76
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x68
	str r7, [sp, #0x28]
	b _08077AD6
_08077AB4:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0x80
	bl sub_08077CF0
	adds r4, #1
_08077AD6:
	ldr r1, [r6, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r7, #0
	ldrsh r0, [r1, r7]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08077AB4
	movs r0, #0
	b _08077C00
_08077AF2:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r4, r6, r1
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x1c]
	lsls r2, r2, #2
	str r2, [sp, #0x24]
	add r3, sp, #0x10
	mov sb, r3
	mov r7, sp
	adds r7, #0x14
	str r7, [sp, #0x2c]
	add r1, sp, #0x18
	mov sl, r1
	ldr r2, [sp, #0x1c]
	adds r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0x1c]
	cmp r0, r3
	bgt _08077B84
	movs r0, #0x9c
	bl __builtin_new
	bl sub_0808B0D8
	str r0, [sp, #0xc]
	adds r7, r4, #0
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _08077B72
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _08077B42
	adds r1, r0, #0
_08077B42:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	mov r8, r0
	ldr r3, [r4, #8]
	mov r2, r8
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08077B62
	adds r1, r0, #0
_08077B58:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08077B58
_08077B62:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08077B6C
	bl __builtin_vec_delete
_08077B6C:
	str r5, [r7]
	mov r1, r8
	str r1, [r7, #8]
_08077B72:
	ldr r2, [r7, #4]
	ldr r1, [r7, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r3, [sp, #0x20]
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r7, #4]
_08077B84:
	movs r7, #0xaa
	lsls r7, r7, #1
	adds r0, r6, r7
	ldr r0, [r0, #8]
	ldr r1, [sp, #0x24]
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	adds r4, #0x88
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r7, #0
	ldrsh r0, [r1, r7]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x1c]
	bl _call_via_r2
	adds r3, r0, #0
	adds r3, #0x20
	ldr r2, [r0, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sb
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	movs r0, #0x18
	rsbs r0, r0, #0
	add r1, sp, #0x14
	strh r0, [r1]
	movs r3, #0x10
	rsbs r3, r3, #0
	ldr r2, [sp, #0x2c]
	strh r3, [r2, #2]
	add r0, sp, #0x10
	movs r7, #0
	ldrsh r2, [r0, r7]
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r7, sb
	movs r3, #2
	ldrsh r1, [r7, r3]
	adds r2, r2, r0
	subs r1, #0x10
	add r0, sp, #0x18
	strh r2, [r0]
	mov r7, sl
	strh r1, [r7, #2]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	ldr r0, [sp, #0x30]
_08077C00:
	str r0, [sp, #0x1c]
	ldr r1, [r6, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r7, [sp, #0x1c]
	cmp r7, r0
	bge _08077C1E
	b _08077AF2
_08077C1E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r0, r6, r3
	ldr r0, [r0, #4]
	cmp r4, r0
	bge _08077C94
	adds r7, r6, r3
_08077C42:
	lsls r5, r4, #2
	ldr r0, [r7, #8]
	adds r0, r0, r5
	ldr r2, [r0]
	cmp r2, #0
	beq _08077C5E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08077C5E:
	mov sb, r7
	ldr r3, [r7, #4]
	subs r0, r4, #1
	mov r8, r0
	cmp r4, r3
	bge _08077C8A
	ldr r2, [r7, #8]
	adds r1, r5, r2
	adds r0, r4, #1
	subs r0, r3, r0
	adds r4, r1, #4
	cmp r0, #0
	ble _08077C84
	adds r2, r0, #0
_08077C7A:
	ldm r4!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08077C7A
_08077C84:
	subs r0, r3, #1
	mov r1, sb
	str r0, [r1, #4]
_08077C8A:
	mov r4, r8
	adds r4, #1
	ldr r0, [r7, #4]
	cmp r4, r0
	blt _08077C42
_08077C94:
	ldr r1, [r6, #0x1c]
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r3, r0, #0
	ldr r4, [sp, #0x28]
	cmp r3, #0
	beq _08077CC8
	ldr r2, [r3, #0x1c]
	movs r7, #0xc4
	lsls r7, r7, #1
	adds r2, r2, r7
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	b _08077CCE
_08077CC8:
	mov r0, sp
	bl sub_0806E274
_08077CCE:
	adds r0, r4, #0
	mov r1, sp
	bl sub_08083D14
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08077CF0
sub_08077CF0: @ 0x08077CF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r1, #0
	mov r8, r2
	movs r6, #0
	adds r7, r5, #0
	adds r7, #0x20
	mov r4, sp
	b _08077D6A
_08077D06:
	ldr r2, [r5, #0x20]
	adds r2, #0x68
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r7, r1
	adds r2, r6, #0
	bl _call_via_r3
	ldrb r0, [r4]
	add r0, r8
	movs r1, #0
	cmp r0, #0
	blt _08077D2C
	adds r1, r0, #0
	cmp r1, #0xff
	ble _08077D2C
	movs r1, #0xff
_08077D2C:
	strb r1, [r4]
	ldrb r0, [r4, #1]
	add r0, r8
	movs r1, #0
	cmp r0, #0
	blt _08077D40
	adds r1, r0, #0
	cmp r1, #0xff
	ble _08077D40
	movs r1, #0xff
_08077D40:
	strb r1, [r4, #1]
	ldrb r0, [r4, #2]
	add r0, r8
	movs r1, #0
	cmp r0, #0
	blt _08077D54
	adds r1, r0, #0
	cmp r1, #0xff
	ble _08077D54
	movs r1, #0xff
_08077D54:
	strb r1, [r4, #2]
	ldr r1, [r5, #0x20]
	movs r2, #0x30
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [sp]
	ldr r3, [r1, #0x34]
	adds r1, r6, #0
	bl _call_via_r3
	adds r6, #1
_08077D6A:
	ldr r1, [r5, #0x20]
	adds r1, #0x60
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _08077D06
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08077D8C
sub_08077D8C: @ 0x08077D8C
	ldr r2, _08077D94 @ =0x09F81DA0
	str r2, [r0, #8]
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_08077D94: .4byte 0x09F81DA0

	thumb_func_start sub_08077D98
sub_08077D98: @ 0x08077D98
	push {lr}
	adds r2, r0, #0
	ldr r0, _08077DB4 @ =0x09F81DA0
	str r0, [r2, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08077DAE
	adds r0, r2, #0
	bl __builtin_delete
_08077DAE:
	pop {r0}
	bx r0
	.align 2, 0
_08077DB4: .4byte 0x09F81DA0

	thumb_func_start sub_08077DB8
sub_08077DB8: @ 0x08077DB8
	ldrh r0, [r0, #4]
	bx lr

	thumb_func_start sub_08077DBC
sub_08077DBC: @ 0x08077DBC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	mov r8, r0
	adds r0, r1, #0
	ldr r2, [r0, #8]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	adds r4, #0x9d
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl sub_0806E274
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_0806E274
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	str r5, [sp]
	mov r0, r8
	adds r1, r4, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_08073460
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08077E28
sub_08077E28: @ 0x08077E28
	push {lr}
	ldr r2, [r0, #8]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x14]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bhi _08077EA8
	lsls r0, r0, #2
	ldr r1, _08077E4C @ =_08077E50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08077E4C: .4byte _08077E50
_08077E50: @ jump table
	.4byte _08077E9C @ case 0
	.4byte _08077E9C @ case 1
	.4byte _08077E9C @ case 2
	.4byte _08077E9C @ case 3
	.4byte _08077E9C @ case 4
	.4byte _08077E8C @ case 5
	.4byte _08077E90 @ case 6
	.4byte _08077E94 @ case 7
	.4byte _08077E98 @ case 8
	.4byte _08077E98 @ case 9
	.4byte _08077E98 @ case 10
	.4byte _08077E98 @ case 11
	.4byte _08077E9C @ case 12
	.4byte _08077EA0 @ case 13
	.4byte _08077EA4 @ case 14
_08077E8C:
	movs r0, #0xb
	b _08077EAA
_08077E90:
	movs r0, #0xa
	b _08077EAA
_08077E94:
	movs r0, #8
	b _08077EAA
_08077E98:
	movs r0, #9
	b _08077EAA
_08077E9C:
	movs r0, #7
	b _08077EAA
_08077EA0:
	movs r0, #0xc
	b _08077EAA
_08077EA4:
	movs r0, #0x1c
	b _08077EAA
_08077EA8:
	movs r0, #0
_08077EAA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08077EB0
sub_08077EB0: @ 0x08077EB0
	push {lr}
	ldr r2, [r0, #8]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x14]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bhi _08077F2C
	lsls r0, r0, #2
	ldr r1, _08077ED4 @ =_08077ED8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08077ED4: .4byte _08077ED8
_08077ED8: @ jump table
	.4byte _08077F2C @ case 0
	.4byte _08077F2C @ case 1
	.4byte _08077F2C @ case 2
	.4byte _08077F2C @ case 3
	.4byte _08077F2C @ case 4
	.4byte _08077F14 @ case 5
	.4byte _08077F18 @ case 6
	.4byte _08077F1C @ case 7
	.4byte _08077F20 @ case 8
	.4byte _08077F20 @ case 9
	.4byte _08077F20 @ case 10
	.4byte _08077F20 @ case 11
	.4byte _08077F2C @ case 12
	.4byte _08077F24 @ case 13
	.4byte _08077F28 @ case 14
_08077F14:
	movs r0, #4
	b _08077F2E
_08077F18:
	movs r0, #3
	b _08077F2E
_08077F1C:
	movs r0, #1
	b _08077F2E
_08077F20:
	movs r0, #2
	b _08077F2E
_08077F24:
	movs r0, #5
	b _08077F2E
_08077F28:
	movs r0, #0x1b
	b _08077F2E
_08077F2C:
	movs r0, #0
_08077F2E:
	pop {r1}
	bx r1
	.align 2, 0

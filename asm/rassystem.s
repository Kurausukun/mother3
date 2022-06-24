.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0806E820
sub_0806E820: @ 0x0806E820
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806E8AC @ =vt_09F7FFE0
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x20
	bl __15Struct_09F85088
	adds r0, r7, #0
	adds r0, #0x2c
	bl __3Msg
	movs r4, #0
	movs r0, #0
	strh r0, [r7, #0x38]
	strh r0, [r7, #0x3a]
	adds r1, r7, #0
	adds r1, #0x44
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r7, #0
	adds r0, #0x4c
	bl __1V
	add r0, sp, #0x28
	strb r4, [r0]
	strb r4, [r0, #1]
	strb r4, [r0, #2]
	ldr r0, [sp, #0x28]
	str r0, [r7, #0x3c]
	adds r0, r7, #0
	adds r0, #0x40
	strb r4, [r0]
	adds r0, #8
	strb r4, [r0]
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #2
	strb r0, [r1]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806E8B0 @ =_vt.3Unk
	ldr r0, _0806E8B4 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0806E8B8 @ =gUnknown_081002E4
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
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806E8AC: .4byte vt_09F7FFE0
_0806E8B0: .4byte _vt.3Unk
_0806E8B4: .4byte _vt.8AppClock
_0806E8B8: .4byte gUnknown_081002E4

	thumb_func_start sub_0806E8BC
sub_0806E8BC: @ 0x0806E8BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806E908 @ =vt_09F7FFE0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0806E93C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806E8DA
	adds r0, r4, #0
	bl sub_0806EAC8
_0806E8DA:
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #2
	bl _._1V
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #2
	bl _._15Struct_09F85088
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E908: .4byte vt_09F7FFE0

	thumb_func_start sub_0806E90C
sub_0806E90C: @ 0x0806E90C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x49
	ldrb r4, [r5]
	movs r3, #0xfe
	ands r3, r4
	strb r3, [r5]
	adds r0, #0x20
	bl sub_08088E4C__15Struct_09F85088PPUcP7Setting
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806E934
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #1
	b _0806E936
_0806E934:
	movs r0, #0
_0806E936:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806E93C
sub_0806E93C: @ 0x0806E93C
	adds r0, #0x49
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_0806E948
sub_0806E948: @ 0x0806E948
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0806E960
	adds r2, r0, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #8
	b _0806E970
_0806E960:
	adds r2, r0, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0xf7
	ands r0, r1
	movs r1, #4
_0806E970:
	orrs r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0

	thumb_func_start sub_0806E978
sub_0806E978: @ 0x0806E978
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	bl sub_0806E2E8__3MsgRC3Msg
	adds r4, #0x49
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E998
	movs r0, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
_0806E998:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E9A0
sub_0806E9A0: @ 0x0806E9A0
	push {lr}
	ldr r1, [r1]
	str r1, [r0, #0x38]
	adds r2, r0, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E9BE
	movs r0, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0806E9BE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E9C4
sub_0806E9C4: @ 0x0806E9C4
	push {lr}
	ldr r1, [r1]
	str r1, [r0, #0x3c]
	adds r2, r0, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E9E2
	movs r0, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0806E9E2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E9E8
sub_0806E9E8: @ 0x0806E9E8
	push {lr}
	adds r2, r0, #0
	adds r2, #0x40
	strb r1, [r2]
	adds r2, #9
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806EA06
	movs r0, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0806EA06:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806EA0C
sub_0806EA0C: @ 0x0806EA0C
	adds r0, #0x49
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_0806EA18
sub_0806EA18: @ 0x0806EA18
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x2c
	bl sub_0806E2B8
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806EA2C
sub_0806EA2C: @ 0x0806EA2C
	ldr r1, [r1, #0x38]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806EA34
sub_0806EA34: @ 0x0806EA34
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r1, #0x20
	mov r5, sp
	mov r0, sp
	bl __7SettingRC7Setting
	adds r0, r6, #0
	adds r0, #0x2c
	bl len__3Msg
	mov r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r6, #0
	adds r2, #0x40
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	muls r0, r1, r0
	movs r2, #2
	ldrsh r1, [r5, r2]
	strh r0, [r4]
	strh r1, [r4, #2]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0806EA74
sub_0806EA74: @ 0x0806EA74
	ldr r1, [r1, #0x3c]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806EA7C
sub_0806EA7C: @ 0x0806EA7C
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_0806EA88
sub_0806EA88: @ 0x0806EA88
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x49
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806EAA8
	adds r0, r5, #0
	bl sub_0806EAC8
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4]
_0806EAA8:
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806EAC0
	adds r0, r5, #0
	bl sub_0806EB2C
	ldrb r1, [r4]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r4]
_0806EAC0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806EAC8
sub_0806EAC8: @ 0x0806EAC8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	str r0, [sp]
	movs r7, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r7, r0
	bge _0806EB18
	adds r6, r4, #0
	adds r6, #0x20
	mov r5, sp
_0806EAE4:
	adds r0, r4, #0
	adds r0, #0x4c
	adds r1, r6, #0
	mov r2, sp
	bl sub_08088F00__1VG7SettingPs
	add r0, sp, #4
	adds r1, r6, #0
	bl __7SettingRC7Setting
	ldr r1, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	adds r7, #1
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r7, r0
	blt _0806EAE4
_0806EB18:
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #0
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806EB2C
sub_0806EB2C: @ 0x0806EB2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	str r0, [sp, #4]
	bl sub_0806E4B8
	ldr r2, [r0, #0x1c]
	adds r2, #0x68
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r5, #0
	movs r0, #0x2c
	adds r0, r0, r4
	mov sl, r0
	mov r8, sl
	adds r7, r4, #0
	adds r7, #0x20
	add r6, sp, #4
	b _0806EBA6
_0806EB6E:
	mov r0, r8
	adds r1, r5, #0
	bl sub_0806E334__3Msgi
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x4c
	adds r1, r7, #0
	add r2, sp, #4
	mov r3, sb
	bl sub_08089178
	add r0, sp, #8
	adds r1, r7, #0
	bl __7SettingRC7Setting
	ldr r1, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	adds r5, #1
_0806EBA6:
	mov r0, r8
	bl len__3Msg
	cmp r5, r0
	blt _0806EB6E
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x44]
	mov r0, sl
	bl len__3Msg
	adds r1, r4, #0
	adds r1, #0x48
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806EBD0
sub_0806EBD0: @ 0x0806EBD0
	ldr r0, _0806EBD4 @ =gUnknown_02001E6C
	bx lr
	.align 2, 0
_0806EBD4: .4byte gUnknown_02001E6C

	thumb_func_start sub_0806EBD8
sub_0806EBD8: @ 0x0806EBD8
	push {r4, lr}
	ldr r1, _0806EC00 @ =gUnknown_02001E78
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806EBF4
	ldr r4, _0806EC04 @ =gUnknown_02001E7C
	movs r0, #0x38
	bl __builtin_new
	bl sub_0806EC5C
	str r0, [r4]
_0806EBF4:
	ldr r0, _0806EC04 @ =gUnknown_02001E7C
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806EC00: .4byte gUnknown_02001E78
_0806EC04: .4byte gUnknown_02001E7C

	thumb_func_start sub_0806EC08
sub_0806EC08: @ 0x0806EC08
	ldr r0, _0806EC10 @ =gUnknown_02001E7C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806EC10: .4byte gUnknown_02001E7C

	thumb_func_start sub_0806EC14
sub_0806EC14: @ 0x0806EC14
	push {r4, r5, lr}
	ldr r1, _0806EC48 @ =gUnknown_02001E78
	ldr r0, [r1]
	cmp r0, #0
	ble _0806EC40
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806EC40
	ldr r5, _0806EC4C @ =gUnknown_02001E7C
	ldr r2, [r5]
	cmp r2, #0
	beq _0806EC3E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806EC3E:
	str r4, [r5]
_0806EC40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806EC48: .4byte gUnknown_02001E78
_0806EC4C: .4byte gUnknown_02001E7C

	thumb_func_start sub_0806EC50
sub_0806EC50: @ 0x0806EC50
	push {lr}
	bl sub_0806EBD0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806EC5C
sub_0806EC5C: @ 0x0806EC5C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	bl __4Base
	ldr r0, _0806ECFC @ =vt_09F800B0
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x30
	bl sub_0805D2A4
	movs r0, #0
	strh r0, [r6, #0x20]
	strh r0, [r6, #0x28]
	bl sub_0806B040
	adds r4, r0, #0
	mov r1, sp
	movs r5, #0x80
	lsls r5, r5, #1
	mov r0, sp
	strh r5, [r0]
	strh r5, [r1, #2]
	adds r0, r4, #0
	movs r1, #2
	mov r2, sp
	bl sub_0806B2CC
	adds r0, r4, #0
	movs r1, #2
	adds r2, r5, #0
	bl sub_0806B698
	adds r0, r4, #0
	movs r1, #2
	movs r2, #2
	bl sub_0806B850
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_0806BA74
	adds r0, r4, #0
	movs r1, #2
	movs r2, #6
	bl sub_0806BACC
	add r2, sp, #4
	strh r5, [r2]
	strh r5, [r2, #2]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806B2CC
	adds r0, r4, #0
	movs r1, #3
	adds r2, r5, #0
	bl sub_0806B698
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_0806B850
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	bl sub_0806BA74
	adds r0, r4, #0
	movs r1, #3
	movs r2, #6
	bl sub_0806BACC
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806ECFC: .4byte vt_09F800B0

	thumb_func_start sub_0806ED00
sub_0806ED00: @ 0x0806ED00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806ED28 @ =vt_09F800B0
	str r0, [r4, #0x1c]
	bl sub_0806B07C
	adds r0, r4, #0
	adds r0, #0x30
	movs r1, #2
	bl sub_0805D2B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806ED28: .4byte vt_09F800B0

	thumb_func_start sub_0806ED2C
sub_0806ED2C: @ 0x0806ED2C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, _0806ED84 @ =0x20736172
	cmp r1, r0
	bne _0806ED8C
	ldrh r0, [r2, #4]
	strh r0, [r4, #0x28]
	adds r0, r2, #0
	adds r0, #8
	str r0, [r4, #0x2c]
	ldrh r0, [r2, #6]
	strh r0, [r4, #0x20]
	ldr r2, [r4, #0x1c]
	adds r2, #0x88
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x28]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r0, [r4, #0x24]
	ldr r2, [r4, #0x1c]
	adds r2, #0x78
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r0]
	ldr r0, _0806ED88 @ =0x7361727E
	cmp r1, r0
	bne _0806ED8C
	adds r0, r4, #0
	adds r0, #0x30
	adds r1, r5, #0
	bl sub_0805D2D4
	b _0806ED8E
	.align 2, 0
_0806ED84: .4byte 0x20736172
_0806ED88: .4byte 0x7361727E
_0806ED8C:
	movs r0, #0
_0806ED8E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806ED94
sub_0806ED94: @ 0x0806ED94
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0806ED98
sub_0806ED98: @ 0x0806ED98
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r0, [r0, #0x24]
	adds r0, r0, r2
	bx lr

	thumb_func_start sub_0806EDA4
sub_0806EDA4: @ 0x0806EDA4
	ldrh r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_0806EDA8
sub_0806EDA8: @ 0x0806EDA8
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #4
	ldr r0, [r0, #0x2c]
	adds r0, r0, r2
	bx lr

	thumb_func_start sub_0806EDB4
sub_0806EDB4: @ 0x0806EDB4
	push {lr}
	adds r0, #0x30
	bl sub_0805D2DC
	pop {r1}
	bx r1

	thumb_func_start sub_0806EDC0
sub_0806EDC0: @ 0x0806EDC0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x30
	bl sub_0805D2F0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806EDD4
sub_0806EDD4: @ 0x0806EDD4
	push {r4, lr}
	ldr r4, _0806EDE8 @ =gUnknown_02001E6C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806EDEC @ =vt_09F80150
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806EDE8: .4byte gUnknown_02001E6C
_0806EDEC: .4byte vt_09F80150

.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_080C0D1C
sub_080C0D1C: @ 0x080C0D1C
	push {lr}
	movs r0, #0x7c
	bl __builtin_new
	bl sub_0806A9F8
	pop {r1}
	bx r1

	thumb_func_start sub_080C0D2C
sub_080C0D2C: @ 0x080C0D2C
	ldr r0, _080C0D30 @ =gUnknown_080FF134
	bx lr
	.align 2, 0
_080C0D30: .4byte gUnknown_080FF134

	thumb_func_start sub_080C0D34
sub_080C0D34: @ 0x080C0D34
	push {lr}
	movs r0, #0x88
	lsls r0, r0, #1
	bl __builtin_new
	bl sub_0806B0C4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C0D48
sub_080C0D48: @ 0x080C0D48
	ldr r0, _080C0D4C @ =gUnknown_080FF278
	bx lr
	.align 2, 0
_080C0D4C: .4byte gUnknown_080FF278

	thumb_func_start sub_080C0D50
sub_080C0D50: @ 0x080C0D50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrh r0, [r6]
	movs r7, #0
	strh r0, [r5]
	adds r4, r5, #4
	adds r0, r6, #4
	mov r8, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080C0D74
	bl __builtin_vec_delete
_080C0D74:
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r0, #0
	bgt _080C0D8E
	str r7, [r5, #4]
	str r7, [r4, #4]
	str r7, [r4, #8]
	adds r7, r5, #0
	adds r7, #0x18
	movs r2, #0x18
	adds r2, r2, r6
	mov sb, r2
	b _080C0DC0
_080C0D8E:
	str r0, [r5, #4]
	str r0, [r4, #4]
	lsls r0, r0, #1
	bl __builtin_vec_new
	str r0, [r4, #8]
	mov r7, r8
	ldr r3, [r7, #8]
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r7, r5, #0
	adds r7, #0x18
	movs r1, #0x18
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #0
	ble _080C0DC0
	adds r1, r0, #0
_080C0DB2:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080C0DB2
_080C0DC0:
	ldrh r0, [r6, #0x10]
	movs r2, #0
	mov sl, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r6, #0x12]
	strh r0, [r5, #0x12]
	ldrh r0, [r6, #0x14]
	strh r0, [r5, #0x14]
	ldrh r0, [r6, #0x16]
	strh r0, [r5, #0x16]
	adds r4, r7, #0
	mov r8, sb
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080C0DE2
	bl __builtin_vec_delete
_080C0DE2:
	mov r3, r8
	ldr r0, [r3, #4]
	cmp r0, #0
	bgt _080C0DF4
	mov r7, sl
	str r7, [r5, #0x18]
	str r7, [r4, #4]
	str r7, [r4, #8]
	b _080C0E2E
_080C0DF4:
	str r0, [r5, #0x18]
	str r0, [r7, #4]
	lsls r0, r0, #5
	bl __builtin_vec_new
	str r0, [r7, #8]
	mov r1, sb
	ldr r1, [r1, #8]
	mov r8, r1
	mov sb, r0
	ldr r0, [r7, #4]
	cmp r0, #0
	ble _080C0E2E
	adds r2, r0, #0
_080C0E10:
	mov r1, sb
	mov r0, r8
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	movs r7, #0x20
	add r8, r7
	movs r0, #0x20
	add sb, r0
	subs r2, #1
	cmp r2, #0
	bne _080C0E10
_080C0E2E:
	ldr r0, [r6, #0x24]
	str r0, [r5, #0x24]
	ldr r0, [r6, #0x28]
	str r0, [r5, #0x28]
	ldr r0, [r6, #0x2c]
	str r0, [r5, #0x2c]
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	ldrh r0, [r6, #0x34]
	strh r0, [r5, #0x34]
	adds r0, r5, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C0E54
sub_080C0E54: @ 0x080C0E54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	ldrh r0, [r6]
	movs r2, #0
	strh r0, [r4]
	adds r5, r4, #4
	adds r7, r6, #4
	ldr r1, [r7, #4]
	cmp r1, #0
	bgt _080C0E7E
	str r2, [r4, #4]
	str r2, [r5, #4]
	str r2, [r5, #8]
	adds r7, r4, #0
	adds r7, #0x18
	adds r5, r6, #0
	adds r5, #0x18
	b _080C0EAE
_080C0E7E:
	ldr r0, [r6, #4]
	str r0, [r4, #4]
	str r1, [r5, #4]
	lsls r0, r1, #1
	bl __builtin_vec_new
	str r0, [r5, #8]
	ldr r3, [r7, #8]
	adds r2, r0, #0
	ldr r0, [r5, #4]
	adds r7, r4, #0
	adds r7, #0x18
	adds r5, r6, #0
	adds r5, #0x18
	cmp r0, #0
	ble _080C0EAE
	adds r1, r0, #0
_080C0EA0:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080C0EA0
_080C0EAE:
	ldrh r0, [r6, #0x10]
	movs r2, #0
	strh r0, [r4, #0x10]
	ldrh r0, [r6, #0x12]
	strh r0, [r4, #0x12]
	ldrh r0, [r6, #0x14]
	strh r0, [r4, #0x14]
	ldrh r0, [r6, #0x16]
	strh r0, [r4, #0x16]
	ldr r1, [r5, #4]
	cmp r1, #0
	bgt _080C0ECE
	str r2, [r4, #0x18]
	str r2, [r7, #4]
	str r2, [r7, #8]
	b _080C0F08
_080C0ECE:
	ldr r0, [r6, #0x18]
	str r0, [r4, #0x18]
	str r1, [r7, #4]
	lsls r0, r1, #5
	bl __builtin_vec_new
	str r0, [r7, #8]
	ldr r5, [r5, #8]
	mov ip, r5
	mov r8, r0
	ldr r0, [r7, #4]
	cmp r0, #0
	ble _080C0F08
	adds r2, r0, #0
_080C0EEA:
	mov r1, r8
	mov r0, ip
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	movs r7, #0x20
	add ip, r7
	movs r0, #0x20
	add r8, r0
	subs r2, #1
	cmp r2, #0
	bne _080C0EEA
_080C0F08:
	ldr r0, [r6, #0x24]
	str r0, [r4, #0x24]
	ldr r0, [r6, #0x28]
	str r0, [r4, #0x28]
	ldr r0, [r6, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r6, #0x30]
	str r0, [r4, #0x30]
	ldrh r0, [r6, #0x34]
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080C0F28
sub_080C0F28: @ 0x080C0F28
	push {lr}
	movs r0, #0xb5
	lsls r0, r0, #4
	bl __builtin_new
	bl sub_0806BE68
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C0F3C
sub_080C0F3C: @ 0x080C0F3C
	ldr r0, _080C0F40 @ =gUnknown_080FF3C0
	bx lr
	.align 2, 0
_080C0F40: .4byte gUnknown_080FF3C0

	thumb_func_start sub_080C0F44
sub_080C0F44: @ 0x080C0F44
	push {lr}
	movs r0, #0x50
	bl __builtin_new
	bl sub_0806C4AC
	pop {r1}
	bx r1

	thumb_func_start sub_080C0F54
sub_080C0F54: @ 0x080C0F54
	ldr r0, _080C0F58 @ =gUnknown_080FF510
	bx lr
	.align 2, 0
_080C0F58: .4byte gUnknown_080FF510

	thumb_func_start sub_080C0F5C
sub_080C0F5C: @ 0x080C0F5C
	push {lr}
	movs r0, #0x2c
	bl __builtin_new
	bl sub_0806C800
	pop {r1}
	bx r1

	thumb_func_start sub_080C0F6C
sub_080C0F6C: @ 0x080C0F6C
	ldr r0, _080C0F70 @ =gUnknown_080FF658
	bx lr
	.align 2, 0
_080C0F70: .4byte gUnknown_080FF658

	thumb_func_start sub_080C0F74
sub_080C0F74: @ 0x080C0F74
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C0F90 @ =vt_09F7F1B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C0F90: .4byte vt_09F7F1B0

	thumb_func_start sub_080C0F94
sub_080C0F94: @ 0x080C0F94
	ldr r0, _080C0F98 @ =gUnknown_080FF9A0
	bx lr
	.align 2, 0
_080C0F98: .4byte gUnknown_080FF9A0

	thumb_func_start sub_080C0F9C
sub_080C0F9C: @ 0x080C0F9C
	push {lr}
	ldr r2, _080C0FAC @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C0FAC: .4byte vt_09F44FF0

	thumb_func_start sub_080C0FB0
sub_080C0FB0: @ 0x080C0FB0
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C0FCC @ =vt_09F7F230
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C0FCC: .4byte vt_09F7F230

	thumb_func_start sub_080C0FD0
sub_080C0FD0: @ 0x080C0FD0
	ldr r0, _080C0FD4 @ =gUnknown_080FF97C
	bx lr
	.align 2, 0
_080C0FD4: .4byte gUnknown_080FF97C

	thumb_func_start sub_080C0FD8
sub_080C0FD8: @ 0x080C0FD8
	push {lr}
	ldr r2, _080C0FE8 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C0FE8: .4byte vt_09F44FF0

	thumb_func_start sub_080C0FEC
sub_080C0FEC: @ 0x080C0FEC
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1008 @ =vt_09F7F2B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1008: .4byte vt_09F7F2B0

	thumb_func_start sub_080C100C
sub_080C100C: @ 0x080C100C
	ldr r0, _080C1010 @ =gUnknown_080FF958
	bx lr
	.align 2, 0
_080C1010: .4byte gUnknown_080FF958

	thumb_func_start sub_080C1014
sub_080C1014: @ 0x080C1014
	push {lr}
	ldr r2, _080C1024 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1024: .4byte vt_09F44FF0

	thumb_func_start sub_080C1028
sub_080C1028: @ 0x080C1028
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1044 @ =vt_09F7F330
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1044: .4byte vt_09F7F330

	thumb_func_start sub_080C1048
sub_080C1048: @ 0x080C1048
	ldr r0, _080C104C @ =gUnknown_080FF934
	bx lr
	.align 2, 0
_080C104C: .4byte gUnknown_080FF934

	thumb_func_start sub_080C1050
sub_080C1050: @ 0x080C1050
	push {lr}
	ldr r2, _080C1060 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1060: .4byte vt_09F44FF0

	thumb_func_start sub_080C1064
sub_080C1064: @ 0x080C1064
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1080 @ =vt_09F7F3B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1080: .4byte vt_09F7F3B0

	thumb_func_start sub_080C1084
sub_080C1084: @ 0x080C1084
	ldr r0, _080C1088 @ =gUnknown_080FF914
	bx lr
	.align 2, 0
_080C1088: .4byte gUnknown_080FF914

	thumb_func_start sub_080C108C
sub_080C108C: @ 0x080C108C
	push {lr}
	ldr r2, _080C109C @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C109C: .4byte vt_09F44FF0

	thumb_func_start sub_080C10A0
sub_080C10A0: @ 0x080C10A0
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C10BC @ =vt_09F7F430
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C10BC: .4byte vt_09F7F430

	thumb_func_start sub_080C10C0
sub_080C10C0: @ 0x080C10C0
	ldr r0, _080C10C4 @ =gUnknown_080FF8F8
	bx lr
	.align 2, 0
_080C10C4: .4byte gUnknown_080FF8F8

	thumb_func_start sub_080C10C8
sub_080C10C8: @ 0x080C10C8
	push {lr}
	ldr r2, _080C10D8 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C10D8: .4byte vt_09F44FF0

	thumb_func_start sub_080C10DC
sub_080C10DC: @ 0x080C10DC
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C10F8 @ =vt_09F7F4B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C10F8: .4byte vt_09F7F4B0

	thumb_func_start sub_080C10FC
sub_080C10FC: @ 0x080C10FC
	ldr r0, _080C1100 @ =gUnknown_080FF8DC
	bx lr
	.align 2, 0
_080C1100: .4byte gUnknown_080FF8DC

	thumb_func_start sub_080C1104
sub_080C1104: @ 0x080C1104
	push {lr}
	ldr r2, _080C1114 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1114: .4byte vt_09F44FF0

	thumb_func_start sub_080C1118
sub_080C1118: @ 0x080C1118
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1134 @ =vt_09F7F530
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1134: .4byte vt_09F7F530

	thumb_func_start sub_080C1138
sub_080C1138: @ 0x080C1138
	ldr r0, _080C113C @ =gUnknown_080FF8C0
	bx lr
	.align 2, 0
_080C113C: .4byte gUnknown_080FF8C0

	thumb_func_start sub_080C1140
sub_080C1140: @ 0x080C1140
	push {lr}
	ldr r2, _080C1150 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1150: .4byte vt_09F44FF0

	thumb_func_start sub_080C1154
sub_080C1154: @ 0x080C1154
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1170 @ =vt_09F7F5B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1170: .4byte vt_09F7F5B0

	thumb_func_start sub_080C1174
sub_080C1174: @ 0x080C1174
	ldr r0, _080C1178 @ =gUnknown_080FF8A4
	bx lr
	.align 2, 0
_080C1178: .4byte gUnknown_080FF8A4

	thumb_func_start sub_080C117C
sub_080C117C: @ 0x080C117C
	push {lr}
	ldr r2, _080C118C @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C118C: .4byte vt_09F44FF0

	thumb_func_start sub_080C1190
sub_080C1190: @ 0x080C1190
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C11AC @ =vt_09F7F630
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C11AC: .4byte vt_09F7F630

	thumb_func_start sub_080C11B0
sub_080C11B0: @ 0x080C11B0
	ldr r0, _080C11B4 @ =gUnknown_080FF888
	bx lr
	.align 2, 0
_080C11B4: .4byte gUnknown_080FF888

	thumb_func_start sub_080C11B8
sub_080C11B8: @ 0x080C11B8
	push {lr}
	ldr r2, _080C11C8 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C11C8: .4byte vt_09F44FF0

	thumb_func_start sub_080C11CC
sub_080C11CC: @ 0x080C11CC
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C11E8 @ =vt_09F7F6B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C11E8: .4byte vt_09F7F6B0

	thumb_func_start sub_080C11EC
sub_080C11EC: @ 0x080C11EC
	ldr r0, _080C11F0 @ =gUnknown_080FF86C
	bx lr
	.align 2, 0
_080C11F0: .4byte gUnknown_080FF86C

	thumb_func_start sub_080C11F4
sub_080C11F4: @ 0x080C11F4
	push {lr}
	ldr r2, _080C1204 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1204: .4byte vt_09F44FF0

	thumb_func_start sub_080C1208
sub_080C1208: @ 0x080C1208
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1224 @ =vt_09F7F730
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1224: .4byte vt_09F7F730

	thumb_func_start sub_080C1228
sub_080C1228: @ 0x080C1228
	ldr r0, _080C122C @ =gUnknown_080FF850
	bx lr
	.align 2, 0
_080C122C: .4byte gUnknown_080FF850

	thumb_func_start sub_080C1230
sub_080C1230: @ 0x080C1230
	push {lr}
	ldr r2, _080C1240 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1240: .4byte vt_09F44FF0

	thumb_func_start sub_080C1244
sub_080C1244: @ 0x080C1244
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1260 @ =vt_09F7F7B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1260: .4byte vt_09F7F7B0

	thumb_func_start sub_080C1264
sub_080C1264: @ 0x080C1264
	ldr r0, _080C1268 @ =gUnknown_080FF830
	bx lr
	.align 2, 0
_080C1268: .4byte gUnknown_080FF830

	thumb_func_start sub_080C126C
sub_080C126C: @ 0x080C126C
	push {lr}
	ldr r2, _080C127C @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C127C: .4byte vt_09F44FF0

	thumb_func_start sub_080C1280
sub_080C1280: @ 0x080C1280
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C129C @ =vt_09F7F830
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C129C: .4byte vt_09F7F830

	thumb_func_start sub_080C12A0
sub_080C12A0: @ 0x080C12A0
	ldr r0, _080C12A4 @ =gUnknown_080FF80C
	bx lr
	.align 2, 0
_080C12A4: .4byte gUnknown_080FF80C

	thumb_func_start sub_080C12A8
sub_080C12A8: @ 0x080C12A8
	push {lr}
	ldr r2, _080C12B8 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C12B8: .4byte vt_09F44FF0

	thumb_func_start sub_080C12BC
sub_080C12BC: @ 0x080C12BC
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C12D8 @ =vt_09F7F8B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C12D8: .4byte vt_09F7F8B0

	thumb_func_start sub_080C12DC
sub_080C12DC: @ 0x080C12DC
	ldr r0, _080C12E0 @ =gUnknown_080FF7E8
	bx lr
	.align 2, 0
_080C12E0: .4byte gUnknown_080FF7E8

	thumb_func_start sub_080C12E4
sub_080C12E4: @ 0x080C12E4
	push {lr}
	ldr r2, _080C12F4 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C12F4: .4byte vt_09F44FF0

	thumb_func_start sub_080C12F8
sub_080C12F8: @ 0x080C12F8
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1314 @ =vt_09F7F930
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1314: .4byte vt_09F7F930

	thumb_func_start sub_080C1318
sub_080C1318: @ 0x080C1318
	ldr r0, _080C131C @ =gUnknown_080FF7C4
	bx lr
	.align 2, 0
_080C131C: .4byte gUnknown_080FF7C4

	thumb_func_start sub_080C1320
sub_080C1320: @ 0x080C1320
	push {lr}
	ldr r2, _080C1330 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1330: .4byte vt_09F44FF0

	thumb_func_start sub_080C1334
sub_080C1334: @ 0x080C1334
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1350 @ =vt_09F7F9B0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1350: .4byte vt_09F7F9B0

	thumb_func_start sub_080C1354
sub_080C1354: @ 0x080C1354
	ldr r0, _080C1358 @ =gUnknown_080FF7A0
	bx lr
	.align 2, 0
_080C1358: .4byte gUnknown_080FF7A0

	thumb_func_start sub_080C135C
sub_080C135C: @ 0x080C135C
	push {lr}
	ldr r2, _080C136C @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C136C: .4byte vt_09F44FF0

	thumb_func_start sub_080C1370
sub_080C1370: @ 0x080C1370
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C138C @ =vt_09F7FA30
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C138C: .4byte vt_09F7FA30

	thumb_func_start sub_080C1390
sub_080C1390: @ 0x080C1390
	ldr r0, _080C1394 @ =gUnknown_080FF77C
	bx lr
	.align 2, 0
_080C1394: .4byte gUnknown_080FF77C

	thumb_func_start sub_080C1398
sub_080C1398: @ 0x080C1398
	push {lr}
	ldr r2, _080C13A8 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C13A8: .4byte vt_09F44FF0

	thumb_func_start sub_080C13AC
sub_080C13AC: @ 0x080C13AC
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C13C8 @ =vt_09F7FAB0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C13C8: .4byte vt_09F7FAB0

	thumb_func_start sub_080C13CC
sub_080C13CC: @ 0x080C13CC
	ldr r0, _080C13D0 @ =gUnknown_080FF75C
	bx lr
	.align 2, 0
_080C13D0: .4byte gUnknown_080FF75C

	thumb_func_start sub_080C13D4
sub_080C13D4: @ 0x080C13D4
	push {lr}
	ldr r2, _080C13E4 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C13E4: .4byte vt_09F44FF0

	thumb_func_start sub_080C13E8
sub_080C13E8: @ 0x080C13E8
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1404 @ =vt_09F7FB30
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1404: .4byte vt_09F7FB30

	thumb_func_start sub_080C1408
sub_080C1408: @ 0x080C1408
	ldr r0, _080C140C @ =gUnknown_080FF740
	bx lr
	.align 2, 0
_080C140C: .4byte gUnknown_080FF740

	thumb_func_start sub_080C1410
sub_080C1410: @ 0x080C1410
	push {lr}
	ldr r2, _080C1420 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1420: .4byte vt_09F44FF0

	thumb_func_start sub_080C1424
sub_080C1424: @ 0x080C1424
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl __6KeyPad
	pop {r1}
	bx r1

	thumb_func_start sub_080C1434
sub_080C1434: @ 0x080C1434
	ldr r0, _080C1438 @ =gUnknown_080FF72C
	bx lr
	.align 2, 0
_080C1438: .4byte gUnknown_080FF72C

	thumb_func_start sub_080C143C
sub_080C143C: @ 0x080C143C
	push {lr}
	movs r0, #0xa4
	bl __builtin_new
	bl sub_0806E50C
	pop {r1}
	bx r1

	thumb_func_start sub_080C144C
sub_080C144C: @ 0x080C144C
	ldr r0, _080C1450 @ =gUnknown_08100190
	bx lr
	.align 2, 0
_080C1450: .4byte gUnknown_08100190

	thumb_func_start sub_080C1454
sub_080C1454: @ 0x080C1454
	push {lr}
	movs r0, #0x38
	bl __builtin_new
	bl sub_0806EC5C
	pop {r1}
	bx r1

	thumb_func_start sub_080C1464
sub_080C1464: @ 0x080C1464
	ldr r0, _080C1468 @ =gUnknown_08100420
	bx lr
	.align 2, 0
_080C1468: .4byte gUnknown_08100420

	thumb_func_start sub_080C146C
sub_080C146C: @ 0x080C146C
	push {lr}
	movs r0, #0x40
	bl __builtin_new
	bl sub_0806FBFC
	pop {r1}
	bx r1

	thumb_func_start sub_080C147C
sub_080C147C: @ 0x080C147C
	ldr r0, _080C1480 @ =gUnknown_08101BE0
	bx lr
	.align 2, 0
_080C1480: .4byte gUnknown_08101BE0

	thumb_func_start sub_080C1484
sub_080C1484: @ 0x080C1484
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_0806FE04
	pop {r1}
	bx r1

	thumb_func_start sub_080C1494
sub_080C1494: @ 0x080C1494
	ldr r0, _080C1498 @ =gUnknown_08101CB0
	bx lr
	.align 2, 0
_080C1498: .4byte gUnknown_08101CB0

	thumb_func_start sub_080C149C
sub_080C149C: @ 0x080C149C
	push {lr}
	movs r0, #0x2c
	bl __builtin_new
	bl sub_0807207C
	pop {r1}
	bx r1

	thumb_func_start sub_080C14AC
sub_080C14AC: @ 0x080C14AC
	ldr r0, _080C14B0 @ =gUnknown_08104FB8
	bx lr
	.align 2, 0
_080C14B0: .4byte gUnknown_08104FB8

	thumb_func_start sub_080C14B4
sub_080C14B4: @ 0x080C14B4
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C14D0 @ =vt_09F811F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C14D0: .4byte vt_09F811F8

	thumb_func_start sub_080C14D4
sub_080C14D4: @ 0x080C14D4
	ldr r0, _080C14D8 @ =gUnknown_08105BA4
	bx lr
	.align 2, 0
_080C14D8: .4byte gUnknown_08105BA4

	thumb_func_start sub_080C14DC
sub_080C14DC: @ 0x080C14DC
	push {lr}
	ldr r2, _080C14EC @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C14EC: .4byte vt_09F44FF0

	thumb_func_start sub_080C14F0
sub_080C14F0: @ 0x080C14F0
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C150C @ =vt_09F81278
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C150C: .4byte vt_09F81278

	thumb_func_start sub_080C1510
sub_080C1510: @ 0x080C1510
	ldr r0, _080C1514 @ =gUnknown_08105B8C
	bx lr
	.align 2, 0
_080C1514: .4byte gUnknown_08105B8C

	thumb_func_start sub_080C1518
sub_080C1518: @ 0x080C1518
	push {lr}
	ldr r2, _080C1528 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1528: .4byte vt_09F44FF0

	thumb_func_start sub_080C152C
sub_080C152C: @ 0x080C152C
	push {lr}
	movs r0, #0x60
	bl __builtin_new
	bl sub_08074A1C
	pop {r1}
	bx r1

	thumb_func_start sub_080C153C
sub_080C153C: @ 0x080C153C
	ldr r0, _080C1540 @ =gUnknown_08105B74
	bx lr
	.align 2, 0
_080C1540: .4byte gUnknown_08105B74

	thumb_func_start sub_080C1544
sub_080C1544: @ 0x080C1544
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_08075ABC
	pop {r1}
	bx r1

	thumb_func_start sub_080C1554
sub_080C1554: @ 0x080C1554
	ldr r0, _080C1558 @ =gUnknown_081062B0
	bx lr
	.align 2, 0
_080C1558: .4byte gUnknown_081062B0

	thumb_func_start sub_080C155C
sub_080C155C: @ 0x080C155C
	push {lr}
	ldr r2, _080C156C @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C156C: .4byte vt_09F44FF0

	thumb_func_start sub_080C1570
sub_080C1570: @ 0x080C1570
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_08075AF4
	pop {r1}
	bx r1

	thumb_func_start sub_080C1580
sub_080C1580: @ 0x080C1580
	ldr r0, _080C1584 @ =gUnknown_0810629C
	bx lr
	.align 2, 0
_080C1584: .4byte gUnknown_0810629C

	thumb_func_start sub_080C1588
sub_080C1588: @ 0x080C1588
	push {lr}
	ldr r2, _080C1598 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1598: .4byte vt_09F44FF0

	thumb_func_start sub_080C159C
sub_080C159C: @ 0x080C159C
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_08075B2C
	pop {r1}
	bx r1

	thumb_func_start sub_080C15AC
sub_080C15AC: @ 0x080C15AC
	ldr r0, _080C15B0 @ =gUnknown_08106284
	bx lr
	.align 2, 0
_080C15B0: .4byte gUnknown_08106284

	thumb_func_start sub_080C15B4
sub_080C15B4: @ 0x080C15B4
	push {lr}
	ldr r2, _080C15C4 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C15C4: .4byte vt_09F44FF0

	thumb_func_start sub_080C15C8
sub_080C15C8: @ 0x080C15C8
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_08075B64
	pop {r1}
	bx r1

	thumb_func_start sub_080C15D8
sub_080C15D8: @ 0x080C15D8
	ldr r0, _080C15DC @ =gUnknown_0810626C
	bx lr
	.align 2, 0
_080C15DC: .4byte gUnknown_0810626C

	thumb_func_start sub_080C15E0
sub_080C15E0: @ 0x080C15E0
	push {lr}
	ldr r2, _080C15F0 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C15F0: .4byte vt_09F44FF0

	thumb_func_start sub_080C15F4
sub_080C15F4: @ 0x080C15F4
	push {lr}
	movs r0, #0x20
	bl __builtin_new
	bl sub_08075B80
	pop {r1}
	bx r1

	thumb_func_start sub_080C1604
sub_080C1604: @ 0x080C1604
	ldr r0, _080C1608 @ =gUnknown_08106258
	bx lr
	.align 2, 0
_080C1608: .4byte gUnknown_08106258

	thumb_func_start sub_080C160C
sub_080C160C: @ 0x080C160C
	push {lr}
	ldr r2, _080C161C @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C161C: .4byte vt_09F44FF0

	thumb_func_start sub_080C1620
sub_080C1620: @ 0x080C1620
	push {lr}
	movs r0, #0x20
	bl __builtin_new
	bl sub_08075B98
	pop {r1}
	bx r1

	thumb_func_start sub_080C1630
sub_080C1630: @ 0x080C1630
	ldr r0, _080C1634 @ =gUnknown_08106248
	bx lr
	.align 2, 0
_080C1634: .4byte gUnknown_08106248

	thumb_func_start sub_080C1638
sub_080C1638: @ 0x080C1638
	push {lr}
	ldr r2, _080C1648 @ =vt_09F44FF0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1648: .4byte vt_09F44FF0

	thumb_func_start sub_080C164C
sub_080C164C: @ 0x080C164C
	push {lr}
	adds r2, r0, #0
	ldr r0, _080C1668 @ =vt_09F81A50
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1662
	adds r0, r2, #0
	bl __builtin_delete
_080C1662:
	pop {r0}
	bx r0
	.align 2, 0
_080C1668: .4byte vt_09F81A50

	thumb_func_start sub_080C166C
sub_080C166C: @ 0x080C166C
	push {lr}
	movs r0, #0x87
	lsls r0, r0, #2
	bl __builtin_new
	bl sub_0807C6B8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C1680
sub_080C1680: @ 0x080C1680
	ldr r0, _080C1684 @ =gUnknown_081083B8
	bx lr
	.align 2, 0
_080C1684: .4byte gUnknown_081083B8

	thumb_func_start sub_080C1688
sub_080C1688: @ 0x080C1688
	push {lr}
	ldr r2, _080C1698 @ =vt_09F826C8
	str r2, [r0, #0x1c]
	bl sub_0807113C
	pop {r0}
	bx r0
	.align 2, 0
_080C1698: .4byte vt_09F826C8

	thumb_func_start sub_080C169C
sub_080C169C: @ 0x080C169C
	push {lr}
	ldr r2, _080C16AC @ =vt_09F82898
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_080C16AC: .4byte vt_09F82898

	thumb_func_start sub_080C16B0
sub_080C16B0: @ 0x080C16B0
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl sub_0808075C
	pop {r1}
	bx r1

	thumb_func_start sub_080C16C0
sub_080C16C0: @ 0x080C16C0
	ldr r0, _080C16C4 @ =gUnknown_0810A504
	bx lr
	.align 2, 0
_080C16C4: .4byte gUnknown_0810A504

	thumb_func_start sub_080C16C8
sub_080C16C8: @ 0x080C16C8
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl sub_080809B8
	pop {r1}
	bx r1

	thumb_func_start sub_080C16D8
sub_080C16D8: @ 0x080C16D8
	ldr r0, _080C16DC @ =gUnknown_0810ABAC
	bx lr
	.align 2, 0
_080C16DC: .4byte gUnknown_0810ABAC

	thumb_func_start sub_080C16E0
sub_080C16E0: @ 0x080C16E0
	push {lr}
	movs r0, #0xa0
	lsls r0, r0, #1
	bl __builtin_new
	bl sub_08081C08
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C16F4
sub_080C16F4: @ 0x080C16F4
	ldr r0, _080C16F8 @ =gUnknown_0810B240
	bx lr
	.align 2, 0
_080C16F8: .4byte gUnknown_0810B240

	thumb_func_start sub_080C16FC
sub_080C16FC: @ 0x080C16FC
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl sub_08082484
	pop {r1}
	bx r1

	thumb_func_start sub_080C170C
sub_080C170C: @ 0x080C170C
	ldr r0, _080C1710 @ =gUnknown_0810BF68
	bx lr
	.align 2, 0
_080C1710: .4byte gUnknown_0810BF68

	thumb_func_start sub_080C1714
sub_080C1714: @ 0x080C1714
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl sub_08083098
	pop {r1}
	bx r1

	thumb_func_start sub_080C1724
sub_080C1724: @ 0x080C1724
	ldr r0, _080C1728 @ =gUnknown_0810CC04
	bx lr
	.align 2, 0
_080C1728: .4byte gUnknown_0810CC04

	thumb_func_start sub_080C172C
sub_080C172C: @ 0x080C172C
	push {lr}
	ldr r2, _080C173C @ =vt_09F83E40
	str r2, [r0, #0x1c]
	bl sub_0808AE24
	pop {r0}
	bx r0
	.align 2, 0
_080C173C: .4byte vt_09F83E40

	thumb_func_start sub_080C1740
sub_080C1740: @ 0x080C1740
	push {lr}
	adds r2, r0, #0
	ldr r0, _080C175C @ =vt_09F84CA8
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1756
	adds r0, r2, #0
	bl __builtin_delete
_080C1756:
	pop {r0}
	bx r0
	.align 2, 0
_080C175C: .4byte vt_09F84CA8

	thumb_func_start sub_080C1760
sub_080C1760: @ 0x080C1760
	push {lr}
	bl sub_08089664
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C176C
sub_080C176C: @ 0x080C176C
	push {lr}
	ldr r2, _080C177C @ =vt_09F85378
	str r2, [r0, #0x1c]
	bl sub_080895C0
	pop {r0}
	bx r0
	.align 2, 0
_080C177C: .4byte vt_09F85378

	thumb_func_start sub_080C1780
sub_080C1780: @ 0x080C1780
	push {lr}
	adds r2, r0, #0
	ldr r0, _080C179C @ =vt_09F85E70
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1796
	adds r0, r2, #0
	bl __builtin_delete
_080C1796:
	pop {r0}
	bx r0
	.align 2, 0
_080C179C: .4byte vt_09F85E70

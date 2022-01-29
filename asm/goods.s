.include "asm/macros.inc"

.syntax unified
.section .text

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
	ldr r0, _0806226C @ =vt_09F4B9D8
	str r0, [r4, #0x20]
	ldr r0, _08062270 @ =vt_09F4BA50
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806226C: .4byte vt_09F4B9D8
_08062270: .4byte vt_09F4BA50

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
	ldr r0, _08062438 @ =vt_09F4E320
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
	ldr r6, _0806243C @ =vt_09F44FF0
	ldr r0, _08062440 @ =vt_09F7ED20
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
_08062438: .4byte vt_09F4E320
_0806243C: .4byte vt_09F44FF0
_08062440: .4byte vt_09F7ED20
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
	ldr r0, _080625C4 @ =vt_09F4E320
	mov r1, r8
	str r0, [r1, #0x1c]
	adds r1, #0x60
	str r1, [sp, #8]
	adds r4, r1, #0
	b _080625FC
	.align 2, 0
_080625C4: .4byte vt_09F4E320
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
	ldr r3, _080632D4 @ =vt_09F44FF0
	mov r8, r3
	ldr r0, _080632D8 @ =vt_09F819D0
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
	ldr r0, _080632DC @ =vt_09F818D0
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
	ldr r0, _080632E0 @ =vt_09F81950
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
_080632D4: .4byte vt_09F44FF0
_080632D8: .4byte vt_09F819D0
_080632DC: .4byte vt_09F818D0
_080632E0: .4byte vt_09F81950

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
	ldr r3, _08063468 @ =vt_09F44FF0
	mov r8, r3
	ldr r0, _0806346C @ =vt_09F819D0
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
	ldr r0, _08063470 @ =vt_09F817D0
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
	ldr r0, _08063474 @ =vt_09F81950
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
_08063468: .4byte vt_09F44FF0
_0806346C: .4byte vt_09F819D0
_08063470: .4byte vt_09F817D0
_08063474: .4byte vt_09F81950

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
	ldr r0, _080636FC @ =vt_09F44FF0
	mov r8, r0
	ldr r0, _08063700 @ =vt_09F819D0
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
	ldr r0, _08063704 @ =vt_09F81750
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
	ldr r0, _08063708 @ =vt_09F81950
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
_080636FC: .4byte vt_09F44FF0
_08063700: .4byte vt_09F819D0
_08063704: .4byte vt_09F81750
_08063708: .4byte vt_09F81950
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
	ldr r0, _080638A8 @ =vt_09F44FF0
	mov r8, r0
	ldr r0, _080638AC @ =vt_09F819D0
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
	ldr r0, _080638B0 @ =vt_09F81750
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
	ldr r0, _080638B4 @ =vt_09F81950
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
_080638A8: .4byte vt_09F44FF0
_080638AC: .4byte vt_09F819D0
_080638B0: .4byte vt_09F81750
_080638B4: .4byte vt_09F81950
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
	ldr r1, _080639A4 @ =vt_09F4E460
	str r1, [r0, #4]
	movs r1, #5
	strh r1, [r0]
	bx lr
	.align 2, 0
_080639A4: .4byte vt_09F4E460

	thumb_func_start sub_080639A8
sub_080639A8: @ 0x080639A8
	ldr r2, _080639B0 @ =vt_09F4E460
	str r2, [r0, #4]
	strh r1, [r0]
	bx lr
	.align 2, 0
_080639B0: .4byte vt_09F4E460

	thumb_func_start sub_080639B4
sub_080639B4: @ 0x080639B4
	push {lr}
	adds r2, r0, #0
	ldr r0, _080639D0 @ =vt_09F4E460
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
_080639D0: .4byte vt_09F4E460

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
	ldr r0, _080649E0 @ =vt_09F79A58
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
_080649E0: .4byte vt_09F79A58
_080649E4: .4byte gItemData

	thumb_func_start sub_080649E8
sub_080649E8: @ 0x080649E8
	push {lr}
	ldr r2, _080649F8 @ =vt_09F79A58
	str r2, [r0, #0x1c]
	bl sub_080781E0
	pop {r0}
	bx r0
	.align 2, 0
_080649F8: .4byte vt_09F79A58

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
	ldr r0, _08064FE4 @ =vt_09F79D20
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064FE0: .4byte gUnknown_020038B0
_08064FE4: .4byte vt_09F79D20

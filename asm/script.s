.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start cmd_D7
cmd_D7: @ 0x0801FD9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	movs r1, #5
	bl scriptstack_peek
	mov sb, r0
	adds r0, r4, #0
	movs r1, #4
	bl scriptstack_peek
	mov sl, r0
	adds r0, r4, #0
	movs r1, #3
	bl scriptstack_peek
	mov r8, r0
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sb
	bl get_obj
	adds r4, r0, #0
	cmp r4, #0
	beq _0801FE14
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r0, r4, #0
	bl sub_08035E98
_0801FE14:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_D9
cmd_D9: @ 0x0801FE28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #6
	bl scriptstack_peek
	mov sl, r0
	adds r0, r4, #0
	movs r1, #5
	bl scriptstack_peek
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #4
	bl scriptstack_peek
	mov sb, r0
	adds r0, r4, #0
	movs r1, #3
	bl scriptstack_peek
	mov r8, r0
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sl
	bl get_obj
	adds r4, r0, #0
	cmp r4, #0
	beq _0801FEAC
	ldr r0, [sp, #0xc]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	asrs r3, r3, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	adds r0, r4, #0
	bl sub_08035E98
_0801FEAC:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_DA
cmd_DA: @ 0x0801FEC0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	adds r0, r5, #0
	bl get_obj
	adds r6, r0, #0
	cmp r6, #0
	beq _0801FF38
	adds r2, r6, #0
	adds r2, #0xc7
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0xba
	movs r5, #0
	movs r1, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	add r4, sp, #0xc
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08036BEC
	ldrh r0, [r4, #2]
	subs r0, #0xa0
	strh r0, [r4, #2]
	adds r0, r6, #0
	movs r1, #0x28
	add r2, sp, #0xc
	bl sub_08035DFC
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #0x1e
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_080362C0
_0801FF38:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_E9
cmd_E9: @ 0x0801FF44
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	ldr r1, _0801FF60 @ =gGame
	ldr r2, _0801FF64 @ =0x000082AF
	adds r1, r1, r2
	strb r0, [r1]
	bl sub_08033B90
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_0801FF60: .4byte gGame
_0801FF64: .4byte 0x000082AF

	thumb_func_start cmd_F3
cmd_F3: @ 0x0801FF68
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl get_obj
	cmp r0, #0
	beq _0801FF94
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	bl sub_08036338
_0801FF94:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start cmd_F7
cmd_F7: @ 0x0801FF9C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl get_obj
	adds r2, r0, #0
	cmp r2, #0
	beq _08020010
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801FFE8
	subs r0, #1
	cmp r5, r0
	bne _0801FFDA
	movs r0, #0
	bl sub_08036B6C
	b _08020010
_0801FFDA:
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036A68
	b _08020010
_0801FFE8:
	cmp r1, #7
	bgt _08020010
	movs r0, #2
	rsbs r0, r0, #0
	cmp r5, r0
	bne _08020000
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036B6C
	b _08020010
_08020000:
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08036A68
_08020010:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start cmd_FD
cmd_FD: @ 0x08020018
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	bl get_obj
	cmp r0, #0
	beq _08020032
	adds r0, #0x8b
	ldrb r0, [r0]
	adds r0, #1
	bl scriptstack_push
_08020032:
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start cmd_FE
cmd_FE: @ 0x08020038
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	adds r4, r0, #0
	adds r0, r5, #0
	bl get_obj
	cmp r0, #0
	beq _0802005C
	adds r0, #0xbb
	strb r4, [r0]
_0802005C:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start cmd_96
cmd_96: @ 0x08020064
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	bl get_obj
	cmp r0, #0
	beq _08020088
	movs r1, #0
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08020082
	movs r1, #1
_08020082:
	adds r0, r1, #0
	bl scriptstack_push
_08020088:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_set_fade
cmd_set_fade: @ 0x08020090
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r4, _080200B8 @ =gGame
	ldr r2, _080200BC @ =0x0000595B
	adds r1, r4, r2
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r1, _080200C0 @ =0x0000595C
	adds r4, r4, r1
	strb r0, [r4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080200B8: .4byte gGame
_080200BC: .4byte 0x0000595B
_080200C0: .4byte 0x0000595C

	thumb_func_start cmd_fade_in
cmd_fade_in: @ 0x080200C4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08020134 @ =gGame
	ldr r1, _08020138 @ =0x0000595B
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802012A
	ldr r2, _0802013C @ =0x00009488
	adds r0, r5, r2
	ldr r1, _08020140 @ =gUnknown_03005314
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	ldrb r4, [r5]
	ldr r0, _08020144 @ =gSomeBlend
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
	ldrh r2, [r0, #2]
	strh r1, [r0, #2]
	ldrh r2, [r0, #4]
	strh r1, [r0, #4]
	ldr r2, _08020148 @ =0x0000679C
	adds r1, r5, r2
	ldrh r1, [r1]
	ldrh r2, [r0]
	strh r1, [r0]
	ldr r2, _0802014C @ =0x0000679E
	adds r1, r5, r2
	ldrh r1, [r1]
	ldrh r2, [r0, #2]
	strh r1, [r0, #2]
	ldr r2, _08020150 @ =0x000067A0
	adds r1, r5, r2
	ldrh r1, [r1]
	ldrh r2, [r0, #4]
	strh r1, [r0, #4]
	movs r0, #6
	strb r0, [r5]
	adds r0, r6, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r2, _08020154 @ =0x00005960
	adds r1, r5, r2
	strh r0, [r1]
	bl sub_08013D38
	strb r4, [r5]
_0802012A:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020134: .4byte gGame
_08020138: .4byte 0x0000595B
_0802013C: .4byte 0x00009488
_08020140: .4byte gUnknown_03005314
_08020144: .4byte gSomeBlend
_08020148: .4byte 0x0000679C
_0802014C: .4byte 0x0000679E
_08020150: .4byte 0x000067A0
_08020154: .4byte 0x00005960

	thumb_func_start cmd_play_fade
cmd_play_fade: @ 0x08020158
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08020198 @ =gGame
	ldr r1, _0802019C @ =0x0000595C
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08020190
	ldr r0, _080201A0 @ =gUnknown_03005314
	ldr r2, _080201A4 @ =0x00009488
	adds r1, r5, r2
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	ldrb r4, [r5]
	movs r0, #7
	strb r0, [r5]
	adds r0, r6, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r2, _080201A8 @ =0x00005960
	adds r1, r5, r2
	strh r0, [r1]
	bl sub_08013EB8
	strb r4, [r5]
_08020190:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020198: .4byte gGame
_0802019C: .4byte 0x0000595C
_080201A0: .4byte gUnknown_03005314
_080201A4: .4byte 0x00009488
_080201A8: .4byte 0x00005960

	thumb_func_start cmd_71
cmd_71: @ 0x080201AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #2
	bl scriptstack_peek
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #5
	cmp r4, #0
	bne _080201DC
	movs r0, #4
_080201DC:
	adds r1, r6, #0
	bl sub_080272F4
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_72
cmd_72: @ 0x080201EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0
	cmp r5, #1
	bhi _08020228
	movs r0, #7
	cmp r6, #0
	bne _08020222
	movs r0, #6
_08020222:
	bl sub_080274AC
	b _08020236
_08020228:
	movs r0, #7
	cmp r6, #0
	bne _08020230
	movs r0, #6
_08020230:
	adds r1, r5, #0
	bl sub_080272F4
_08020236:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_73
cmd_73: @ 0x08020240
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #3
	bl scriptstack_peek
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801B414
	ldr r1, _08020298 @ =gGame
	ldr r2, _0802029C @ =0x000083A4
	adds r1, r1, r2
	str r0, [r1]
	movs r0, #9
	cmp r5, #0
	bne _08020288
	movs r0, #8
_08020288:
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_080272F4
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020298: .4byte gGame
_0802029C: .4byte 0x000083A4

	thumb_func_start cmd_set_palettes
cmd_set_palettes: @ 0x080202A0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #2
	bl scriptstack_peek
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0xb
	cmp r4, #0
	bne _080202D0
	movs r0, #0xa
_080202D0:
	adds r1, r6, #0
	bl sub_080272F4
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_75
cmd_75: @ 0x080202E0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #2
	bl scriptstack_peek
	ldr r4, _08020318 @ =gGame
	ldr r2, _0802031C @ =0x000083A8
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r2, _08020320 @ =0x000083AA
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r1, _08020324 @ =0x000083AC
	adds r4, r4, r1
	strh r0, [r4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08020318: .4byte gGame
_0802031C: .4byte 0x000083A8
_08020320: .4byte 0x000083AA
_08020324: .4byte 0x000083AC

	thumb_func_start cmd_76
cmd_76: @ 0x08020328
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _08020388 @ =gGame
	ldr r0, _0802038C @ =0x00008495
	adds r6, r4, r0
	ldrb r0, [r6]
	movs r1, #8
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #3
	bl scriptstack_peek
	ldr r2, _08020390 @ =0x000083C8
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	bl scriptstack_peek
	ldr r2, _08020394 @ =0x000083C4
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r1, _08020398 @ =0x000083C6
	adds r4, r4, r1
	strh r0, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #4
	ldrb r2, [r6]
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020388: .4byte gGame
_0802038C: .4byte 0x00008495
_08020390: .4byte 0x000083C8
_08020394: .4byte 0x000083C4
_08020398: .4byte 0x000083C6

	thumb_func_start cmd_stop_shake
cmd_stop_shake: @ 0x0802039C
	ldr r0, _080203B0 @ =gGame
	ldr r1, _080203B4 @ =0x00008495
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080203B0: .4byte gGame
_080203B4: .4byte 0x00008495

	thumb_func_start cmd_play_anim_above
cmd_play_anim_above: @ 0x080203B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r1, #2
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r7, r6, #0
	adds r0, r5, #0
	bl get_obj
	adds r4, r0, #0
	cmp r4, #0
	beq _0802041A
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r1, r8
	bl sub_080334D0
	cmp r6, #1
	bne _0802040A
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #4
	b _08020416
_0802040A:
	cmp r7, #2
	bne _0802041A
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #2
_08020416:
	orrs r1, r2
	strb r1, [r0]
_0802041A:
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_79
cmd_79: @ 0x08020428
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	bl get_obj
	cmp r0, #0
	beq _08020440
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033548
_08020440:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_7A
cmd_7A: @ 0x08020448
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #3
	bl scriptstack_peek
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r5, #9
	bls _080204EC
	cmp r5, #0x1d
	bls _080204A4
	adds r0, r5, #0
	subs r0, #0x1e
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _0802049C @ =gGame
	ldr r0, _080204A0 @ =0x000067C5
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	b _08020500
	.align 2, 0
_0802049C: .4byte gGame
_080204A0: .4byte 0x000067C5
_080204A4:
	cmp r5, #0x13
	bls _080204C8
	adds r0, r5, #0
	subs r0, #0x14
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _080204C0 @ =gGame
	ldr r0, _080204C4 @ =0x000067C5
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	b _080204FA
	.align 2, 0
_080204C0: .4byte gGame
_080204C4: .4byte 0x000067C5
_080204C8:
	adds r0, r5, #0
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _080204E4 @ =gGame
	ldr r0, _080204E8 @ =0x000067C5
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	b _08020500
	.align 2, 0
_080204E4: .4byte gGame
_080204E8: .4byte 0x000067C5
_080204EC:
	ldr r2, _0802051C @ =gGame
	ldr r0, _08020520 @ =0x000067C5
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
_080204FA:
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
_08020500:
	strb r0, [r2]
	cmp r5, #2
	bhi _08020512
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08019BF0
_08020512:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802051C: .4byte gGame
_08020520: .4byte 0x000067C5

	thumb_func_start cmd_7B
cmd_7B: @ 0x08020524
	push {lr}
	bl sub_08019D04
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start cmd_7C
cmd_7C: @ 0x08020530
	push {lr}
	bl sub_0802781C
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start cmd_7D
cmd_7D: @ 0x0802053C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0802059C @ =0xFFFF0000
	ands r5, r1
	orrs r5, r0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	ldr r1, _080205A0 @ =0x0000FFFF
	ands r5, r1
	orrs r5, r0
	mov r4, sp
	mov r0, sp
	bl sub_0801A530
	ldr r2, _080205A4 @ =gGame
	mov r0, sp
	ldrh r0, [r0]
	subs r0, r5, r0
	ldr r3, _080205A8 @ =0x00005964
	adds r1, r2, r3
	strh r0, [r1]
	asrs r0, r5, #0x10
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	adds r3, #2
	adds r1, r2, r3
	strh r0, [r1]
	ldr r0, _080205AC @ =0x0000598C
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802059C: .4byte 0xFFFF0000
_080205A0: .4byte 0x0000FFFF
_080205A4: .4byte gGame
_080205A8: .4byte 0x00005964
_080205AC: .4byte 0x0000598C

	thumb_func_start cmd_7E
cmd_7E: @ 0x080205B0
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	bl get_obj
	cmp r0, #0
	beq _080205DA
	ldr r1, _080205E0 @ =gGame
	adds r0, #0x85
	ldrb r2, [r0]
	ldr r3, _080205E4 @ =0x0000595D
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _080205E8 @ =0x0000598C
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_080205DA:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080205E0: .4byte gGame
_080205E4: .4byte 0x0000595D
_080205E8: .4byte 0x0000598C

	thumb_func_start cmd_7F
cmd_7F: @ 0x080205EC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r1, #3
	bl scriptstack_peek
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	adds r5, r0, #0
	cmp r4, #0
	bne _08020628
	adds r0, r6, #0
	bl sub_080222F8
	b _0802062E
_08020628:
	adds r0, r6, #0
	bl sub_08027F38
_0802062E:
	lsls r1, r7, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	bl sub_080250B4
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_80
cmd_80: @ 0x08020644
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r1, #3
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08027F38
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	mov r8, r0
	movs r0, #1
	bl sub_0800ADBC
	ldr r0, _080206B4 @ =0x06008000
	movs r1, #0x80
	lsls r1, r1, #8
	bl memclear
	ldr r4, _080206B8 @ =gUnknown_02016078
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_080012BC
	ldr r0, _080206BC @ =gUnknown_080C1B60
	movs r1, #0xc
	movs r2, #0x20
	bl sub_08016F4C
	cmp r5, #1
	beq _080206E4
	cmp r5, #1
	bgt _080206C0
	cmp r5, #0
	beq _080206C6
	b _08020744
	.align 2, 0
_080206B4: .4byte 0x06008000
_080206B8: .4byte gUnknown_02016078
_080206BC: .4byte gUnknown_080C1B60
_080206C0:
	cmp r5, #2
	beq _08020724
	b _08020744
_080206C6:
	ldr r0, _080206E0 @ =0x00005348
	adds r1, r4, r0
	movs r0, #3
	subs r0, r0, r6
	strh r0, [r1]
	strh r5, [r1, #2]
	adds r0, r7, #0
	bl sub_08024B9C
	bl sub_0800494C
	b _08020744
	.align 2, 0
_080206E0: .4byte 0x00005348
_080206E4:
	ldr r2, _08020714 @ =0x00005348
	adds r1, r4, r2
	movs r0, #3
	subs r0, r0, r6
	strh r0, [r1]
	movs r0, #7
	mov r2, r8
	subs r0, r0, r2
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl sub_08024CC8
	bl sub_08004BB8
	ldr r0, _08020718 @ =gGame
	ldr r1, _0802071C @ =0x000067AC
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08020720 @ =0x000002C7
	cmp r1, r0
	bne _08020744
	bl sub_08005BFC
	b _08020744
	.align 2, 0
_08020714: .4byte 0x00005348
_08020718: .4byte gGame
_0802071C: .4byte 0x000067AC
_08020720: .4byte 0x000002C7
_08020724:
	ldr r2, _08020750 @ =0x00005348
	adds r1, r4, r2
	movs r0, #3
	subs r0, r0, r6
	strh r0, [r1]
	movs r0, #2
	mov r2, r8
	subs r0, r0, r2
	strh r0, [r1, #2]
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r7, #0
	bl sub_08024DCC
	bl sub_08004CB8
_08020744:
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020750: .4byte 0x00005348

	thumb_func_start cmd_81
cmd_81: @ 0x08020754
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_080038A4
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08020774
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08020774:
	ldr r0, _08020788 @ =gGame
	ldr r2, _0802078C @ =0x00008462
	adds r0, r0, r2
	strh r1, [r0]
	bl sub_08004794
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08020788: .4byte gGame
_0802078C: .4byte 0x00008462

	thumb_func_start cmd_disp_text_special
cmd_disp_text_special: @ 0x08020790
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08027F38
	adds r6, r0, #0
	movs r0, #1
	bl sub_0800ADBC
	ldr r0, _080207E8 @ =0x06008000
	movs r1, #0x80
	lsls r1, r1, #8
	bl memclear
	ldr r4, _080207EC @ =gUnknown_02016078
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_080012BC
	ldr r0, _080207F0 @ =gUnknown_080C1B60
	movs r1, #0xc
	movs r2, #0x20
	bl sub_08016F4C
	cmp r5, #1
	beq _08020814
	cmp r5, #1
	bgt _080207F4
	cmp r5, #0
	beq _080207FA
	b _08020846
	.align 2, 0
_080207E8: .4byte 0x06008000
_080207EC: .4byte gUnknown_02016078
_080207F0: .4byte gUnknown_080C1B60
_080207F4:
	cmp r5, #2
	beq _08020830
	b _08020846
_080207FA:
	ldr r0, _08020810 @ =0x00005348
	adds r1, r4, r0
	movs r0, #3
	strh r0, [r1]
	strh r5, [r1, #2]
	adds r0, r6, #0
	bl sub_08024B9C
	bl sub_0800494C
	b _08020846
	.align 2, 0
_08020810: .4byte 0x00005348
_08020814:
	ldr r1, _0802082C @ =0x00005348
	adds r0, r4, r1
	movs r1, #3
	strh r1, [r0]
	movs r1, #7
	strh r1, [r0, #2]
	adds r0, r6, #0
	bl sub_08024CC8
	bl sub_08004BB8
	b _08020846
	.align 2, 0
_0802082C: .4byte 0x00005348
_08020830:
	ldr r1, _08020850 @ =0x00005348
	adds r0, r4, r1
	movs r1, #3
	strh r1, [r0]
	strh r5, [r0, #2]
	subs r1, #4
	adds r0, r6, #0
	bl sub_08024DCC
	bl sub_08004CB8
_08020846:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020850: .4byte 0x00005348

	thumb_func_start cmd_B9
cmd_B9: @ 0x08020854
	push {r4, lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08020876
	lsrs r0, r1, #0x10
	bl sub_0801B414
	ldr r1, _080208AC @ =gGame
	str r0, [r1, #0x28]
	bl sub_08027904
_08020876:
	ldr r2, _080208AC @ =gGame
	ldr r1, _080208B0 @ =0x00009480
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080208C6
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bgt _080208C6
	cmp r0, #2
	blt _080208C6
	ldr r1, _080208B4 @ =0x0000595B
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _080208BC
	ldr r0, _080208B8 @ =gUnknown_03005314
	movs r1, #0x80
	lsls r1, r1, #3
	adds r2, r4, #0
	bl sub_08001B54
	b _080208C6
	.align 2, 0
_080208AC: .4byte gGame
_080208B0: .4byte 0x00009480
_080208B4: .4byte 0x0000595B
_080208B8: .4byte gUnknown_03005314
_080208BC:
	ldr r0, _080208D0 @ =gUnknown_03005314
	movs r1, #0x80
	lsls r1, r1, #3
	bl memclear
_080208C6:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080208D0: .4byte gUnknown_03005314

	thumb_func_start cmd_BB
cmd_BB: @ 0x080208D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #2
	bl scriptstack_peek
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r6, #0
	movs r1, #1
	bl scriptstack_peek
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	movs r1, #0
	bl scriptstack_peek
	movs r1, #3
	ands r5, r1
	movs r1, #0x3f
	ands r4, r1
	ands r0, r1
	ldr r2, _08020928 @ =gSomeBlend
	ldr r1, _0802092C @ =gGame
	lsls r5, r5, #6
	orrs r4, r5
	lsls r0, r0, #8
	orrs r4, r0
	ldr r0, _08020930 @ =0x0000679C
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r4, [r1]
	ldrh r0, [r1]
	ldrh r1, [r2]
	strh r0, [r2]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020928: .4byte gSomeBlend
_0802092C: .4byte gGame
_08020930: .4byte 0x0000679C

	thumb_func_start cmd_BC
cmd_BC: @ 0x08020934
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	cmp r5, #0x10
	bls _08020956
	movs r1, #0x10
_08020956:
	adds r5, r1, #0
	adds r1, r0, #0
	cmp r0, #0x10
	bls _08020960
	movs r1, #0x10
_08020960:
	ldr r2, _08020980 @ =gSomeBlend
	ldr r0, _08020984 @ =gGame
	lsls r1, r1, #8
	orrs r5, r1
	ldr r1, _08020988 @ =0x0000679E
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r5, [r0]
	ldrh r0, [r0]
	ldrh r1, [r2, #2]
	strh r0, [r2, #2]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08020980: .4byte gSomeBlend
_08020984: .4byte gGame
_08020988: .4byte 0x0000679E

	thumb_func_start cmd_BD
cmd_BD: @ 0x0802098C
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r3, #0
	cmp r3, #0x10
	bls _080209A0
	movs r0, #0x10
_080209A0:
	adds r3, r0, #0
	ldr r1, _080209BC @ =gSomeBlend
	ldr r0, _080209C0 @ =gGame
	ldr r2, _080209C4 @ =0x000067A0
	adds r0, r0, r2
	ldrh r2, [r0]
	strh r3, [r0]
	ldrh r0, [r0]
	ldrh r2, [r1, #4]
	strh r0, [r1, #4]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080209BC: .4byte gSomeBlend
_080209C0: .4byte gGame
_080209C4: .4byte 0x000067A0

	thumb_func_start cmd_BE
cmd_BE: @ 0x080209C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #4
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	movs r1, #3
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r7, #0
	cmp r7, #0x10
	bls _08020A16
	movs r1, #0x10
_08020A16:
	adds r7, r1, #0
	adds r1, r6, #0
	cmp r6, #0x10
	bls _08020A20
	movs r1, #0x10
_08020A20:
	adds r6, r1, #0
	adds r1, r5, #0
	cmp r5, #0x10
	bls _08020A2A
	movs r1, #0x10
_08020A2A:
	adds r5, r1, #0
	adds r1, r0, #0
	cmp r0, #0x10
	bls _08020A34
	movs r1, #0x10
_08020A34:
	str r1, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08027940
	movs r0, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start cmd_C7
cmd_C7: @ 0x08020A50
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _08020AA0 @ =gGame
	ldr r0, _08020AA4 @ =0x000067C4
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r1, _08020AA8 @ =0x000067BC
	adds r6, r5, r1
	strh r0, [r6]
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r1, _08020AAC @ =0x000067BE
	adds r4, r5, r1
	strh r0, [r4]
	bl sub_080030A4
	ldrh r1, [r4]
	bl __umodsi3
	ldrh r1, [r6]
	adds r1, r1, r0
	ldr r0, _08020AB0 @ =0x000067BA
	adds r5, r5, r0
	strh r1, [r5]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020AA0: .4byte gGame
_08020AA4: .4byte 0x000067C4
_08020AA8: .4byte 0x000067BC
_08020AAC: .4byte 0x000067BE
_08020AB0: .4byte 0x000067BA

	thumb_func_start cmd_C8
cmd_C8: @ 0x08020AB4
	ldr r2, _08020AEC @ =gGame
	ldr r0, _08020AF0 @ =0x000067C4
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08020AF4 @ =gSomeBlend
	ldr r2, _08020AF8 @ =0x00002C9C
	adds r0, r1, r2
	ldrb r2, [r0]
	movs r2, #0
	strb r2, [r0]
	ldr r3, _08020AFC @ =0x00002C9D
	adds r0, r1, r3
	ldrb r3, [r0]
	strb r2, [r0]
	ldr r0, _08020B00 @ =0x00002C9E
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r2, [r1]
	movs r0, #0
	bx lr
	.align 2, 0
_08020AEC: .4byte gGame
_08020AF0: .4byte 0x000067C4
_08020AF4: .4byte gSomeBlend
_08020AF8: .4byte 0x00002C9C
_08020AFC: .4byte 0x00002C9D
_08020B00: .4byte 0x00002C9E

	thumb_func_start cmd_CE
cmd_CE: @ 0x08020B04
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _08020B4C
	ldr r1, _08020B40 @ =gGame
	ldr r0, _08020B44 @ =0x000067C5
	adds r3, r1, r0
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldr r0, _08020B48 @ =0x000067AC
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_080123B0
	b _08020B58
	.align 2, 0
_08020B40: .4byte gGame
_08020B44: .4byte 0x000067C5
_08020B48: .4byte 0x000067AC
_08020B4C:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0802724C
_08020B58:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start cmd_CF
cmd_CF: @ 0x08020B60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r1, #4
	bl scriptstack_peek
	mov r8, r0
	adds r0, r4, #0
	movs r1, #3
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, r7, #0
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	mov sl, r0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	adds r6, r0, #0
	mov r0, r8
	bl get_obj
	adds r4, r0, #0
	cmp r4, #0
	beq _08020BFE
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r1, sb
	bl sub_080334D0
	cmp r7, #1
	bne _08020BCA
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #4
	b _08020BD6
_08020BCA:
	cmp r5, #2
	bne _08020BDA
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #2
_08020BD6:
	orrs r1, r2
	strb r1, [r0]
_08020BDA:
	adds r0, r4, #0
	adds r0, #0x46
	mov r1, sl
	strh r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _08020BFE
	adds r2, r4, #0
	adds r2, #0x49
	movs r0, #3
	ands r6, r0
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
_08020BFE:
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_D1
cmd_D1: @ 0x08020C10
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0xa
	bl sub_080274AC
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_set_logo_disp
cmd_set_logo_disp: @ 0x08020C2C
	push {lr}
	movs r0, #0
	bl sub_0803C4DC
	ldr r1, _08020C48 @ =gGame
	movs r0, #0xb
	strb r0, [r1]
	movs r0, #5
	bl sub_080052E4
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08020C48: .4byte gGame

	thumb_func_start cmd_F4
cmd_F4: @ 0x08020C4C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r1, #2
	bl scriptstack_peek
	ldr r4, _08020CA4 @ =gSomeBlend
	ldr r1, _08020CA8 @ =0x00002C9C
	adds r6, r4, r1
	ldrb r1, [r6]
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r1, _08020CAC @ =0x00002C9D
	adds r7, r4, r1
	ldrb r1, [r7]
	strb r0, [r7]
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r1, _08020CB0 @ =0x00002C9E
	adds r4, r4, r1
	ldrb r1, [r4]
	strb r0, [r4]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08020CBC
	ldrb r0, [r7]
	cmp r0, #0
	bne _08020CBC
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020CBC
	ldr r0, _08020CB4 @ =gGame
	ldr r1, _08020CB8 @ =0x0000598C
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	b _08020CC8
	.align 2, 0
_08020CA4: .4byte gSomeBlend
_08020CA8: .4byte 0x00002C9C
_08020CAC: .4byte 0x00002C9D
_08020CB0: .4byte 0x00002C9E
_08020CB4: .4byte gGame
_08020CB8: .4byte 0x0000598C
_08020CBC:
	ldr r0, _08020CD4 @ =gGame
	ldr r1, _08020CD8 @ =0x0000598C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
_08020CC8:
	strb r1, [r0]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020CD4: .4byte gGame
_08020CD8: .4byte 0x0000598C

	thumb_func_start cmd_disp_staffroll
cmd_disp_staffroll: @ 0x08020CDC
	push {lr}
	movs r0, #0
	bl sub_0803C4DC
	ldr r1, _08020CFC @ =gUnknown_02004850
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08020D00 @ =gGame
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #6
	bl sub_080052E4
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08020CFC: .4byte gUnknown_02004850
_08020D00: .4byte gGame

	thumb_func_start cmd_play_sound_ext
cmd_play_sound_ext: @ 0x08020D04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _08020D5C @ =gGame
	ldr r2, _08020D60 @ =0x00009480
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bgt _08020D6C
	cmp r0, #2
	blt _08020D6C
	ldr r2, _08020D64 @ =0x0000847A
	adds r0, r1, r2
	mov r2, r8
	strh r2, [r0]
	ldr r2, _08020D68 @ =0x0000847C
	adds r0, r1, r2
	strh r7, [r0]
	movs r0, #0x82
	lsls r0, r0, #3
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08020DEE
	mov r0, r8
	bl sub_080038A4
	b _08020DEE
	.align 2, 0
_08020D5C: .4byte gGame
_08020D60: .4byte 0x00009480
_08020D64: .4byte 0x0000847A
_08020D68: .4byte 0x0000847C
_08020D6C:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, r6
	bne _08020D94
	ldr r0, _08020D8C @ =gGame
	ldr r1, _08020D90 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_080083B8
	b _08020DEE
	.align 2, 0
_08020D8C: .4byte gGame
_08020D90: .4byte 0x000067AC
_08020D94:
	lsrs r4, r1, #0x10
	adds r0, r4, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	beq _08020DEE
	adds r0, r4, #0
	bl sub_080038A4
	lsls r1, r7, #0x10
	asrs r0, r1, #0x10
	lsls r5, r5, #0x10
	cmp r0, r6
	beq _08020DCA
	lsrs r4, r5, #0x10
	lsrs r0, r1, #0x10
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_08020DCA:
	asrs r0, r5, #0x10
	cmp r0, #0
	beq _08020DD6
	cmp r0, #1
	beq _08020DE4
	b _08020DEE
_08020DD6:
	ldr r0, _08020DDC @ =gGame
	ldr r2, _08020DE0 @ =0x000067AE
	b _08020DE8
	.align 2, 0
_08020DDC: .4byte gGame
_08020DE0: .4byte 0x000067AE
_08020DE4:
	ldr r0, _08020DFC @ =gGame
	ldr r2, _08020E00 @ =0x000067B0
_08020DE8:
	adds r0, r0, r2
	mov r1, r8
	strh r1, [r0]
_08020DEE:
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020DFC: .4byte gGame
_08020E00: .4byte 0x000067B0

	thumb_func_start cmd_play_sound
cmd_play_sound: @ 0x08020E04
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl play_sound
	lsls r6, r4, #0x10
	asrs r0, r6, #0x10
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	beq _08020E54
	adds r0, r5, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _08020E54
	lsrs r0, r6, #0x10
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_08020E54:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start cmd_84
cmd_84: @ 0x08020E5C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #2
	bl scriptstack_peek
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r4, #0
	bne _08020E90
	adds r0, r6, #0
	bl sub_08003A00
	b _08020E96
_08020E90:
	adds r0, r6, #0
	bl sub_08003AB8
_08020E96:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_85
cmd_85: @ 0x08020EA0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #2
	bl scriptstack_peek
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r4, #0
	bne _08020ED4
	adds r0, r6, #0
	bl sub_08003AE0
	b _08020EDA
_08020ED4:
	adds r0, r6, #0
	bl sub_08003B30
_08020EDA:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_86
cmd_86: @ 0x08020EE4
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08020F06
	movs r0, #0
	bl sub_08003B58
	movs r0, #1
	bl sub_08003B58
	b _08020F0C
_08020F06:
	lsrs r0, r2, #0x10
	bl sub_08003B58
_08020F0C:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_87
cmd_87: @ 0x08020F14
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08020F3C
	movs r0, #3
	bl sub_08003BA8
	movs r0, #4
	bl sub_08003BA8
	movs r0, #5
	bl sub_08003BA8
	b _08020F42
_08020F3C:
	lsrs r0, r2, #0x10
	bl sub_08003BA8
_08020F42:
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start cmd_88
cmd_88: @ 0x08020F48
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	movs r1, #3
	bl scriptstack_peek
	mov r8, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	movs r1, #2
	bl scriptstack_peek
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r6, #0
	movs r1, #1
	bl scriptstack_peek
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	movs r1, #0
	bl scriptstack_peek
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08027BD0
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_set_bgm
cmd_set_bgm: @ 0x08020FA8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, r6
	bne _08020FDE
	ldr r0, _08020FF8 @ =gGame
	ldr r1, _08020FFC @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B3A4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08020FDE:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _08021004
	ldr r0, _08020FF8 @ =gGame
	lsls r2, r5, #0x10
	asrs r1, r2, #0x10
	ldr r3, _08021000 @ =0x00009C88
	adds r0, r0, r3
	adds r1, r1, r0
	ldrb r3, [r1]
	b _0802100A
	.align 2, 0
_08020FF8: .4byte gGame
_08020FFC: .4byte 0x000067AC
_08021000: .4byte 0x00009C88
_08021004:
	movs r3, #0xff
	ands r3, r0
	lsls r2, r5, #0x10
_0802100A:
	ldr r0, _0802102C @ =gSave
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	ldr r4, _08021030 @ =0x00000482
	adds r0, r0, r4
	adds r1, r1, r0
	ldrh r0, [r1]
	lsrs r0, r0, #8
	cmp r2, #0x7f
	bgt _08021024
	lsls r0, r0, #8
	orrs r3, r0
	strh r3, [r1]
_08021024:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802102C: .4byte gSave
_08021030: .4byte 0x00000482

	thumb_func_start cmd_set_bgm_other
cmd_set_bgm_other: @ 0x08021034
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, r6
	bne _0802106A
	ldr r0, _08021078 @ =gGame
	ldr r1, _0802107C @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B3A4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0802106A:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _08021080
	movs r4, #0
	b _08021084
	.align 2, 0
_08021078: .4byte gGame
_0802107C: .4byte 0x000067AC
_08021080:
	movs r4, #0xff
	ands r4, r0
_08021084:
	lsls r2, r5, #0x10
	ldr r0, _080210A8 @ =gSave
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	ldr r3, _080210AC @ =0x00000482
	adds r0, r0, r3
	adds r1, r1, r0
	ldrb r3, [r1]
	cmp r2, #0x7f
	bgt _0802109E
	lsls r0, r4, #8
	orrs r3, r0
	strh r3, [r1]
_0802109E:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080210A8: .4byte gSave
_080210AC: .4byte 0x00000482

	thumb_func_start cmd_8A
cmd_8A: @ 0x080210B0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080210E6
	movs r5, #0x64
	b _080210F0
_080210E6:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080210F0
	movs r5, #0x41
_080210F0:
	adds r0, r5, #0
	bl sub_08003E20
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r4, r7, #0x10
	asrs r1, r4, #0x10
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08021134
	adds r0, #1
	cmp r1, r0
	bne _0802117A
	movs r0, #0
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r5, #0
	movs r0, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_08027B84
	movs r0, #1
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	b _08021170
_08021134:
	movs r0, #3
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r5, #0
	movs r0, #3
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_08027B84
	movs r0, #4
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #4
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_08027B84
	movs r0, #5
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #5
_08021170:
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_08027B84
	b _08021192
_0802117A:
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r5, #0
	adds r0, r4, #0
	adds r3, r6, #0
	bl sub_08027B84
_08021192:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_CB
cmd_CB: @ 0x0802119C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, r1, #0
	cmp r5, #0
	bne _080211DC
	ldr r2, _080211D4 @ =gGame
	ldr r0, _080211D8 @ =0x00008496
	adds r2, r2, r0
	movs r0, #1
	ands r1, r0
	ldrb r3, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	b _080211F8
	.align 2, 0
_080211D4: .4byte gGame
_080211D8: .4byte 0x00008496
_080211DC:
	cmp r5, #1
	bne _080211F8
	ldr r1, _08021200 @ =gGame
	ldr r0, _08021204 @ =0x00008496
	adds r1, r1, r0
	movs r0, #1
	ands r3, r0
	lsls r3, r3, #1
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
_080211F8:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08021200: .4byte gGame
_08021204: .4byte 0x00008496

	thumb_func_start cmd_D0
cmd_D0: @ 0x08021208
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003D48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl scriptstack_push
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_set_volume
cmd_set_volume: @ 0x08021228
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, r6
	bne _0802125E
	ldr r0, _08021284 @ =gGame
	ldr r1, _08021288 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B3A4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0802125E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _08021268
	movs r4, #0x64
_08021268:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x7f
	bgt _0802127C
	ldr r0, _0802128C @ =gSave
	lsls r1, r1, #1
	ldr r2, _08021290 @ =0x00000582
	adds r0, r0, r2
	adds r1, r1, r0
	strh r4, [r1]
_0802127C:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08021284: .4byte gGame
_08021288: .4byte 0x000067AC
_0802128C: .4byte gSave
_08021290: .4byte 0x00000582

	thumb_func_start cmd_DB
cmd_DB: @ 0x08021294
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080212B6
	movs r0, #0
	bl sub_08003BF8
	movs r0, #1
	bl sub_08003BF8
	b _080212BC
_080212B6:
	lsrs r0, r2, #0x10
	bl sub_08003BF8
_080212BC:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_DC
cmd_DC: @ 0x080212C4
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080212E6
	movs r0, #0
	bl sub_08003C20
	movs r0, #1
	bl sub_08003C20
	b _080212EC
_080212E6:
	lsrs r0, r2, #0x10
	bl sub_08003C20
_080212EC:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_E1
cmd_E1: @ 0x080212F4
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl scriptstack_push
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_play_sfx
cmd_play_sfx: @ 0x08021314
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bhi _080213E0
	lsls r0, r0, #2
	ldr r1, _08021330 @ =_08021334
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021330: .4byte _08021334
_08021334: @ jump table
	.4byte _08021360 @ case 0
	.4byte _08021368 @ case 1
	.4byte _0802136E @ case 2
	.4byte _08021376 @ case 3
	.4byte _0802137C @ case 4
	.4byte _08021382 @ case 5
	.4byte _08021388 @ case 6
	.4byte _08021390 @ case 7
	.4byte _08021396 @ case 8
	.4byte _0802139C @ case 9
	.4byte _080213A8 @ case 10
_08021360:
	movs r0, #0x6d
	movs r2, #0x9c
	lsls r2, r2, #1
	b _080213AC
_08021368:
	movs r0, #0x6e
	movs r2, #0x97
	b _080213AC
_0802136E:
	movs r0, #0x77
	movs r2, #0xba
	lsls r2, r2, #1
	b _080213AC
_08021376:
	movs r0, #0x78
	movs r2, #0xb4
	b _080213AC
_0802137C:
	movs r0, #0xc9
	movs r2, #0x5e
	b _080213AC
_08021382:
	movs r0, #0x2b
	movs r2, #0xfc
	b _080213AC
_08021388:
	movs r0, #0xd2
	lsls r0, r0, #1
	movs r2, #0xc8
	b _080213AC
_08021390:
	movs r0, #0x72
	movs r2, #0xb8
	b _080213AC
_08021396:
	movs r0, #0xcb
	movs r2, #0xb4
	b _080213AC
_0802139C:
	ldr r0, _080213A4 @ =0x000001B3
	movs r2, #0xb4
	b _080213AC
	.align 2, 0
_080213A4: .4byte 0x000001B3
_080213A8:
	ldr r0, _080213E8 @ =0x000005EF
	movs r2, #0xa2
_080213AC:
	adds r2, #0x50
	movs r1, #0x50
	bl sub_08027C20
	movs r0, #0
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08027B84
	movs r0, #1
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0
	movs r3, #0x20
	bl sub_08027B84
_080213E0:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080213E8: .4byte 0x000005EF

	thumb_func_start cmd_init_battle
cmd_init_battle: @ 0x080213EC
	push {r4, lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, _08021420 @ =gGame
	ldr r2, _08021424 @ =0x00008450
	adds r1, r4, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_08026508
	movs r0, #1
	bl sub_080052E4
	ldr r0, _08021428 @ =0x00008494
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08021420: .4byte gGame
_08021424: .4byte 0x00008450
_08021428: .4byte 0x00008494

	thumb_func_start cmd_8D
cmd_8D: @ 0x0802142C
	push {lr}
	ldr r0, _08021444 @ =gGame
	ldr r1, _08021448 @ =0x00008490
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0802144C
	movs r0, #1
	bl scriptstack_push
	b _08021452
	.align 2, 0
_08021444: .4byte gGame
_08021448: .4byte 0x00008490
_0802144C:
	movs r0, #0
	bl scriptstack_push
_08021452:
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start cmd_8E
cmd_8E: @ 0x08021458
	push {lr}
	ldr r0, _08021470 @ =gGame
	ldr r1, _08021474 @ =0x00008490
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #3
	bne _08021478
	movs r0, #1
	bl scriptstack_push
	b _0802147E
	.align 2, 0
_08021470: .4byte gGame
_08021474: .4byte 0x00008490
_08021478:
	movs r0, #0
	bl scriptstack_push
_0802147E:
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start cmd_8F
cmd_8F: @ 0x08021484
	push {lr}
	ldr r0, _0802149C @ =gGame
	ldr r1, _080214A0 @ =0x00008490
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	bne _080214A4
	movs r0, #1
	bl scriptstack_push
	b _080214AA
	.align 2, 0
_0802149C: .4byte gGame
_080214A0: .4byte 0x00008490
_080214A4:
	movs r0, #0
	bl scriptstack_push
_080214AA:
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start cmd_90
cmd_90: @ 0x080214B0
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	adds r1, r0, #0
	cmp r1, #0
	bne _080214C8
	ldr r0, _080214C4 @ =gEncounter
	strb r1, [r0, #4]
	b _080214CE
	.align 2, 0
_080214C4: .4byte gEncounter
_080214C8:
	ldr r1, _080214D4 @ =gEncounter
	movs r0, #1
	strb r0, [r1, #4]
_080214CE:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080214D4: .4byte gEncounter

	thumb_func_start cmd_91
cmd_91: @ 0x080214D8
	movs r0, #0
	bx lr

	thumb_func_start cmd_set_gameover
cmd_set_gameover: @ 0x080214DC
	push {lr}
	movs r0, #3
	bl sub_080038A4
	movs r0, #3
	bl sub_080052E4
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start cmd_93
cmd_93: @ 0x080214F0
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	bl get_obj
	cmp r0, #0
	beq _08021508
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08026610
_08021508:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_open_shop
cmd_open_shop: @ 0x08021510
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r5, _08021548 @ =gUnknown_02004100
	strb r0, [r5, #3]
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	strb r0, [r5, #4]
	ldr r3, _0802154C @ =gGame
	ldr r0, _08021550 @ =0x00008450
	adds r2, r3, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08021554
	ldrh r0, [r2]
	bl get_obj_direct
	adds r0, #0x88
	ldrh r0, [r0]
	b _08021572
	.align 2, 0
_08021548: .4byte gUnknown_02004100
_0802154C: .4byte gGame
_08021550: .4byte 0x00008450
_08021554:
	ldr r2, _0802156C @ =0x00008452
	adds r1, r3, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _08021570
	ldrh r0, [r1]
	bl get_obj_direct
	adds r0, #0x88
	ldrh r0, [r0]
	b _08021572
	.align 2, 0
_0802156C: .4byte 0x00008452
_08021570:
	movs r0, #0
_08021572:
	strh r0, [r5, #6]
	movs r0, #1
	bl sub_0803C4DC
	ldr r1, _08021594 @ =gUnknown_02004100
	movs r0, #5
	strb r0, [r1]
	ldr r1, _08021598 @ =gGame
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #2
	bl sub_080052E4
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08021594: .4byte gUnknown_02004100
_08021598: .4byte gGame

	thumb_func_start cmd_open_save
cmd_open_save: @ 0x0802159C
	push {lr}
	movs r0, #1
	rsbs r0, r0, #0
	bl get_obj
	adds r2, r0, #0
	cmp r2, #0
	beq _080215BA
	adds r3, r2, #0
	adds r3, #0xbf
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_080215BA:
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1d
	movs r0, #0x5a
	bl sub_080028F4
	movs r0, #1
	bl sub_0803C4DC
	ldr r1, _080215E8 @ =gUnknown_02004100
	movs r0, #7
	strb r0, [r1]
	ldr r1, _080215EC @ =gGame
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #2
	bl sub_080052E4
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_080215E8: .4byte gUnknown_02004100
_080215EC: .4byte gGame

	thumb_func_start cmd_open_naming
cmd_open_naming: @ 0x080215F0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #1
	bl sub_0803C4DC
	ldr r4, _08021620 @ =gUnknown_02004100
	movs r0, #0xc
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	strb r0, [r4, #1]
	ldr r1, _08021624 @ =gGame
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #2
	bl sub_080052E4
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08021620: .4byte gUnknown_02004100
_08021624: .4byte gGame

	thumb_func_start cmd_cmp_input_name
cmd_cmp_input_name: @ 0x08021628
	push {r4, lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08021658
	movs r0, #3
	bl sub_08022354
	adds r4, r0, #0
	movs r0, #0x28
	bl sub_08039B24
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #9
	bl sub_08002474
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802165C
	b _08021682
_08021658:
	cmp r0, #2
	beq _08021664
_0802165C:
	movs r0, #0
	bl scriptstack_push
	b _08021690
_08021664:
	movs r0, #4
	bl sub_08022354
	adds r4, r0, #0
	movs r0, #0x29
	bl sub_08039B24
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #9
	bl sub_08002474
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802168A
_08021682:
	movs r0, #1
	bl scriptstack_push
	b _08021690
_0802168A:
	movs r0, #0
	bl scriptstack_push
_08021690:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start cmd_open_itemguy
cmd_open_itemguy: @ 0x08021698
	push {lr}
	ldr r3, _080216BC @ =gGame
	ldr r0, _080216C0 @ =0x00008450
	adds r2, r3, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080216C8
	ldrh r0, [r2]
	bl get_obj_direct
	ldr r1, _080216C4 @ =gUnknown_02004100
	adds r0, #0x88
	ldrh r0, [r0]
	b _080216F0
	.align 2, 0
_080216BC: .4byte gGame
_080216C0: .4byte 0x00008450
_080216C4: .4byte gUnknown_02004100
_080216C8:
	ldr r2, _080216E4 @ =0x00008452
	adds r1, r3, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _080216EC
	ldrh r0, [r1]
	bl get_obj_direct
	ldr r1, _080216E8 @ =gUnknown_02004100
	adds r0, #0x88
	ldrh r0, [r0]
	b _080216F0
	.align 2, 0
_080216E4: .4byte 0x00008452
_080216E8: .4byte gUnknown_02004100
_080216EC:
	ldr r1, _08021710 @ =gUnknown_02004100
	movs r0, #0
_080216F0:
	strh r0, [r1, #6]
	movs r0, #1
	bl sub_0803C4DC
	ldr r1, _08021710 @ =gUnknown_02004100
	movs r0, #6
	strb r0, [r1]
	ldr r1, _08021714 @ =gGame
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #2
	bl sub_080052E4
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08021710: .4byte gUnknown_02004100
_08021714: .4byte gGame

	thumb_func_start cmd_open_bank
cmd_open_bank: @ 0x08021718
	push {lr}
	bl sub_08037A7C
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start cmd_A6
cmd_A6: @ 0x08021724
	push {lr}
	movs r0, #1
	bl sub_080517AC
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start cmd_restart
cmd_restart: @ 0x08021734
	push {lr}
	bl DoReset
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start cmd_set_movement_property
cmd_set_movement_property: @ 0x08021740
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #3
	bl scriptstack_peek
	ldr r4, _08021794 @ =gGame
	movs r5, #1
	ands r0, r5
	ldrb r2, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #8]
	adds r0, r6, #0
	movs r1, #2
	bl scriptstack_peek
	ands r0, r5
	lsls r0, r0, #2
	ldrb r2, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #8]
	adds r0, r6, #0
	movs r1, #1
	bl scriptstack_peek
	ands r0, r5
	lsls r0, r0, #3
	ldrb r2, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #8]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08021794: .4byte gGame

	thumb_func_start cmd_AC
cmd_AC: @ 0x08021798
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	ldr r2, _080217B0 @ =gGame
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080217B0: .4byte gGame

	thumb_func_start cmd_AD
cmd_AD: @ 0x080217B4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #3
	bl scriptstack_peek
	ldr r4, _080217FC @ =gSave
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	bl scriptstack_peek
	ldr r2, _08021800 @ =0x0000070A
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r2, _08021804 @ =0x0000070C
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r1, _08021808 @ =0x0000070E
	adds r4, r4, r1
	strh r0, [r4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080217FC: .4byte gSave
_08021800: .4byte 0x0000070A
_08021804: .4byte 0x0000070C
_08021808: .4byte 0x0000070E

	thumb_func_start cmd_AE
cmd_AE: @ 0x0802180C
	push {r4, lr}
	movs r1, #0
	bl scriptstack_peek
	adds r4, r0, #0
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl scriptstack_push
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start cmd_AF
cmd_AF: @ 0x08021834
	movs r0, #0
	bx lr

	thumb_func_start cmd_B0
cmd_B0: @ 0x08021838
	push {lr}
	ldr r1, _08021854 @ =gGame
	ldr r2, _08021858 @ =0x00008370
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #3
	adds r1, r1, r2
	ldrb r1, [r1]
	subs r0, r0, r1
	bl scriptstack_push
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08021854: .4byte gGame
_08021858: .4byte 0x00008370

	thumb_func_start cmd_B1
cmd_B1: @ 0x0802185C
	push {lr}
	ldr r0, _08021870 @ =gGame
	ldr r1, _08021874 @ =0x00008373
	adds r0, r0, r1
	ldrb r0, [r0]
	bl scriptstack_push
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08021870: .4byte gGame
_08021874: .4byte 0x00008373

	thumb_func_start sub_08021878
sub_08021878: @ 0x08021878
	push {r4, lr}
	adds r3, r1, #0
	adds r4, r2, #0
	ldrh r1, [r4]
	lsls r1, r1, #2
	adds r2, r0, r1
	ldrb r0, [r2, #1]
	strb r0, [r3]
	ldrb r0, [r2, #2]
	strb r0, [r3, #1]
	ldrb r1, [r2, #3]
	strb r1, [r3, #2]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802189E
	movs r0, #0xff
_0802189E:
	strb r0, [r3, #3]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080218B0
sub_080218B0: @ 0x080218B0
	push {lr}
	cmp r0, r1
	bne _080218BE
	movs r0, #1
	bl scriptstack_push
	b _080218C4
_080218BE:
	movs r0, #0
	bl scriptstack_push
_080218C4:
	pop {r0}
	bx r0

	thumb_func_start scriptstack_set
scriptstack_set: @ 0x080218C8
	lsls r1, r1, #0x10
	ldr r3, _080218E0 @ =gGame
	lsrs r1, r1, #0xe
	subs r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #2
	ldr r1, _080218E4 @ =0x000084C4
	adds r3, r3, r1
	adds r0, r0, r3
	str r2, [r0]
	bx lr
	.align 2, 0
_080218E0: .4byte gGame
_080218E4: .4byte 0x000084C4

	thumb_func_start scriptstack_push
scriptstack_push: @ 0x080218E8
	push {r4, lr}
	ldr r2, _08021908 @ =gGame
	ldr r1, _0802190C @ =0x00009474
	adds r3, r2, r1
	ldrh r1, [r3]
	lsls r1, r1, #2
	ldr r4, _08021910 @ =0x000084C4
	adds r2, r2, r4
	adds r1, r1, r2
	str r0, [r1]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021908: .4byte gGame
_0802190C: .4byte 0x00009474
_08021910: .4byte 0x000084C4

	thumb_func_start scriptstack_peek
scriptstack_peek: @ 0x08021914
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	subs r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

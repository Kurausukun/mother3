.include "asm/macros.inc"

.syntax unified
.section .text

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

	thumb_func_start __5Goods
__5Goods: @ 0x08064FE8
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
	ldr r0, _08065010 @ =_vt.5Goods
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08065010: .4byte _vt.5Goods

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

	thumb_func_start sub_080651A4__FUsP4Unit
sub_080651A4__FUsP4Unit: @ 0x080651A4
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
	ldr r0, _08065290 @ =vt_09F7DEB0
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
	bl randS32
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
	ldr r4, _08065298 @ =_vt.1D
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
	ldr r6, _0806529C @ =_vt.3Unk
	ldr r0, _080652A0 @ =_vt.8AppClock
	str r0, [sp, #0x2c]
	ldr r0, _080652A4 @ =gUnknown_080FBDA0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	mov r2, r8
	bl listen__4BasePvRC4BaseG9ClockData
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
_08065290: .4byte vt_09F7DEB0
_08065294: .4byte 0x000003FF
_08065298: .4byte _vt.1D
_0806529C: .4byte _vt.3Unk
_080652A0: .4byte _vt.8AppClock
_080652A4: .4byte gUnknown_080FBDA0

	thumb_func_start sub_080652A8
sub_080652A8: @ 0x080652A8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080652D8 @ =vt_09F7DEB0
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
_080652D8: .4byte vt_09F7DEB0

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
	bl setsleep
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

	thumb_func_start __9AutoComboUiRC11ComboRhythm
__9AutoComboUiRC11ComboRhythm: @ 0x080655FC
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
	ldr r0, _08065720 @ =vt_09F7DF60
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
	ldr r0, _08065728 @ =_vt.1D
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
	ldr r0, _0806572C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08065730 @ =_vt.12PostAppClock
	str r0, [sp, #0x24]
	ldr r0, _08065734 @ =gUnknown_080FC428
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	add r2, sp, #8
	bl listen__4BasePvRC4BaseG9ClockData
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
_08065720: .4byte vt_09F7DF60
_08065724: .4byte 0x0000027B
_08065728: .4byte _vt.1D
_0806572C: .4byte _vt.3Unk
_08065730: .4byte _vt.12PostAppClock
_08065734: .4byte gUnknown_080FC428

	thumb_func_start sub_08065738
sub_08065738: @ 0x08065738
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08065764 @ =vt_09F7DF60
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
_08065764: .4byte vt_09F7DF60

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

	thumb_func_start __15AutoComboResultUiRC11ComboRhythm
__15AutoComboResultUiRC11ComboRhythm: @ 0x08065864
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
	ldr r0, _08065974 @ =vt_09F7E0D0
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
	ldr r0, _0806597C @ =_vt.1D
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
	ldr r0, _08065980 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08065984 @ =_vt.12PostAppClock
	str r0, [sp, #0x24]
	ldr r0, _08065988 @ =gUnknown_080FCAB0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #8
	bl listen__4BasePvRC4BaseG9ClockData
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
_08065974: .4byte vt_09F7E0D0
_08065978: .4byte 0x0000027B
_0806597C: .4byte _vt.1D
_08065980: .4byte _vt.3Unk
_08065984: .4byte _vt.12PostAppClock
_08065988: .4byte gUnknown_080FCAB0

	thumb_func_start sub_0806598C
sub_0806598C: @ 0x0806598C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080659B8 @ =vt_09F7E0D0
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
_080659B8: .4byte vt_09F7E0D0

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
	ldr r1, _08065A90 @ =vt_09F7E240
	str r1, [r0, #0x10]
	adds r2, r0, #4
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r2, #4]
	str r1, [r2, #8]
	bx lr
	.align 2, 0
_08065A90: .4byte vt_09F7E240

	thumb_func_start sub_08065A94
sub_08065A94: @ 0x08065A94
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08065AEC @ =vt_09F7E240
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
_08065AEC: .4byte vt_09F7E240

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
	bl setsleep
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
	ldr r0, _08065F88 @ =vt_09F7E280
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
	ldr r6, _08065F8C @ =_vt.3Unk
	ldr r0, _08065F90 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _08065F94 @ =gUnknown_080FD560
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
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08065F88: .4byte vt_09F7E280
_08065F8C: .4byte _vt.3Unk
_08065F90: .4byte _vt.8AppClock
_08065F94: .4byte gUnknown_080FD560

	thumb_func_start sub_08065F98
sub_08065F98: @ 0x08065F98
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08066000 @ =vt_09F7E280
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
_08066000: .4byte vt_09F7E280

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
	bl setsleep
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
	bl setsleep
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
	bl KeyPadInstance
	bl getNewKeys__6KeyPad
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bne _08066272
	bl DoReset
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
	ldr r0, _08066290 @ =vt_09F7E310
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806628C: .4byte gUnknown_020040E0
_08066290: .4byte vt_09F7E310

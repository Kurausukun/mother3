.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_08066294
sub_08066294: @ 0x08066294
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080662AC @ =vt_09F7E328
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080662AC: .4byte vt_09F7E328

	thumb_func_start sub_080662B0
sub_080662B0: @ 0x080662B0
	push {lr}
	ldr r2, _080662C0 @ =vt_09F7E328
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080662C0: .4byte vt_09F7E328

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
	ldr r0, _080666DC @ =vt_09F7E3E8
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
	ldr r5, _080666E4 @ =_vt.1D
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
	ldr r6, _080666E8 @ =vt_09F7E458
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
	bl Message_dtor
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
	bl Message_dtor
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
_080666DC: .4byte vt_09F7E3E8
_080666E0: .4byte gUnknown_08CE39F8
_080666E4: .4byte _vt.1D
_080666E8: .4byte vt_09F7E458
_080666EC: .4byte 0x00000289
_080666F0: .4byte 0x000003A7

	thumb_func_start sub_080666F4
sub_080666F4: @ 0x080666F4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _08066730 @ =vt_09F7E3E8
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0xec
	ldr r4, _08066734 @ =vt_09F7E458
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
_08066730: .4byte vt_09F7E3E8
_08066734: .4byte vt_09F7E458

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
	ldr r0, _08066B1C @ =vt_09F7E538
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
	ldr r4, _08066B28 @ =_vt.1D
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
	ldr r0, _08066B2C @ =vt_09F7E458
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
	ldr r2, _08066B28 @ =_vt.1D
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
	ldr r0, _08066B4C @ =vt_09F7E660
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
_08066B1C: .4byte vt_09F7E538
_08066B20: .4byte 0x000004D4
_08066B24: .4byte gUnknown_08CE39F8
_08066B28: .4byte _vt.1D
_08066B2C: .4byte vt_09F7E458
_08066B30: .4byte 0x0000043C
_08066B34: .4byte 0x0000028E
_08066B38: .4byte 0x00000286
_08066B3C: .4byte 0x000004B4
_08066B40: .4byte 0x000004BC
_08066B44: .4byte 0x000004C4
_08066B48: .4byte 0x000004CC
_08066B4C: .4byte vt_09F7E660
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
	ldr r1, _08066E1C @ =_vt.3Unk
	mov r8, r1
	ldr r0, _08066E20 @ =_vt.10UpKeyPress
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
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E28 @ =_vt.14UpKeyLongPress
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E2C @ =_vt.12DownKeyPress
	str r0, [sp, #0x2c]
	ldr r0, _08066E30 @ =gUnknown_080FE1E8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E34 @ =_vt.16DownKeyLongPress
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E38 @ =_vt.12LeftKeyPress
	str r0, [sp, #0x2c]
	ldr r0, _08066E3C @ =gUnknown_080FE1F0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E40 @ =_vt.16LeftKeyLongPress
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E44 @ =_vt.13RightKeyPress
	str r0, [sp, #0x2c]
	ldr r0, _08066E48 @ =gUnknown_080FE1F8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E4C @ =_vt.17RightKeyLongPress
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E50 @ =_vt.9AKeyPress
	str r0, [sp, #0x2c]
	ldr r0, _08066E54 @ =gUnknown_080FE200
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E58 @ =_vt.13AKeyLongPress
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E5C @ =_vt.9BKeyPress
	str r0, [sp, #0x2c]
	ldr r0, _08066E60 @ =gUnknown_080FE208
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x2c]
	adds r0, r7, #0
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl __4Base
	ldr r0, _08066E64 @ =_vt.9RKeyPress
	str r0, [sp, #0x2c]
	ldr r0, _08066E68 @ =gUnknown_080FE210
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r6, #0
	adds r2, r7, #0
	bl listen__4BasePvRC4BaseG9ClockData
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
_08066E1C: .4byte _vt.3Unk
_08066E20: .4byte _vt.10UpKeyPress
_08066E24: .4byte gUnknown_080FE1E0
_08066E28: .4byte _vt.14UpKeyLongPress
_08066E2C: .4byte _vt.12DownKeyPress
_08066E30: .4byte gUnknown_080FE1E8
_08066E34: .4byte _vt.16DownKeyLongPress
_08066E38: .4byte _vt.12LeftKeyPress
_08066E3C: .4byte gUnknown_080FE1F0
_08066E40: .4byte _vt.16LeftKeyLongPress
_08066E44: .4byte _vt.13RightKeyPress
_08066E48: .4byte gUnknown_080FE1F8
_08066E4C: .4byte _vt.17RightKeyLongPress
_08066E50: .4byte _vt.9AKeyPress
_08066E54: .4byte gUnknown_080FE200
_08066E58: .4byte _vt.13AKeyLongPress
_08066E5C: .4byte _vt.9BKeyPress
_08066E60: .4byte gUnknown_080FE208
_08066E64: .4byte _vt.9RKeyPress
_08066E68: .4byte gUnknown_080FE210

	thumb_func_start sub_08066E6C
sub_08066E6C: @ 0x08066E6C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08066ED8 @ =vt_09F7E538
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
_08066ED8: .4byte vt_09F7E538
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
	bl _._10KeyFocuser
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
	ldr r1, _08066F60 @ =vt_09F7E458
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
_08066F60: .4byte vt_09F7E458

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
	bl Message_dtor
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
	ldr r0, _080675D0 @ =vt_09F7E758
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
	ldr r3, _080675D4 @ =_vt.1D
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
	ldr r0, _080675DC @ =vt_09F7E458
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
	ldr r5, _080675D4 @ =_vt.1D
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
	ldr r0, _080675E4 @ =vt_09F7E890
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
_080675D0: .4byte vt_09F7E758
_080675D4: .4byte _vt.1D
_080675D8: .4byte gUnknown_08CE39F8
_080675DC: .4byte vt_09F7E458
_080675E0: .4byte 0x0000081C
_080675E4: .4byte vt_09F7E890
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
	ldr r0, _08067A14 @ =_vt.1D
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
	ldr r0, _08067A30 @ =vt_09F7E988
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
	ldr r0, _08067A14 @ =_vt.1D
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
_08067A14: .4byte _vt.1D
_08067A18: .4byte 0x000004B4
_08067A1C: .4byte 0x000004BC
_08067A20: .4byte 0x000004C4
_08067A24: .4byte 0x000004CC
_08067A28: .4byte 0x000004D4
_08067A2C: .4byte 0x000004DC
_08067A30: .4byte vt_09F7E988
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
	ldr r0, _08067D3C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08067D40 @ =_vt.10UpKeyPress
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
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D48 @ =_vt.14UpKeyLongPress
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D4C @ =_vt.12DownKeyPress
	str r0, [sp, #0x5c]
	ldr r0, _08067D50 @ =gUnknown_080FE678
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D54 @ =_vt.16DownKeyLongPress
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D58 @ =_vt.12LeftKeyPress
	str r0, [sp, #0x5c]
	ldr r0, _08067D5C @ =gUnknown_080FE680
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D60 @ =_vt.16LeftKeyLongPress
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D64 @ =_vt.13RightKeyPress
	str r0, [sp, #0x5c]
	ldr r0, _08067D68 @ =gUnknown_080FE688
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D6C @ =_vt.17RightKeyLongPress
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D70 @ =_vt.9AKeyPress
	str r0, [sp, #0x5c]
	ldr r0, _08067D74 @ =gUnknown_080FE690
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D78 @ =_vt.13AKeyLongPress
	str r0, [sp, #0x5c]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D7C @ =_vt.9BKeyPress
	str r0, [sp, #0x5c]
	ldr r0, _08067D80 @ =gUnknown_080FE698
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x5c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08067D84 @ =_vt.9LKeyPress
	str r0, [sp, #0x5c]
	ldr r0, _08067D88 @ =gUnknown_080FE6A0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
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
_08067D3C: .4byte _vt.3Unk
_08067D40: .4byte _vt.10UpKeyPress
_08067D44: .4byte gUnknown_080FE670
_08067D48: .4byte _vt.14UpKeyLongPress
_08067D4C: .4byte _vt.12DownKeyPress
_08067D50: .4byte gUnknown_080FE678
_08067D54: .4byte _vt.16DownKeyLongPress
_08067D58: .4byte _vt.12LeftKeyPress
_08067D5C: .4byte gUnknown_080FE680
_08067D60: .4byte _vt.16LeftKeyLongPress
_08067D64: .4byte _vt.13RightKeyPress
_08067D68: .4byte gUnknown_080FE688
_08067D6C: .4byte _vt.17RightKeyLongPress
_08067D70: .4byte _vt.9AKeyPress
_08067D74: .4byte gUnknown_080FE690
_08067D78: .4byte _vt.13AKeyLongPress
_08067D7C: .4byte _vt.9BKeyPress
_08067D80: .4byte gUnknown_080FE698
_08067D84: .4byte _vt.9LKeyPress
_08067D88: .4byte gUnknown_080FE6A0

	thumb_func_start sub_08067D8C
sub_08067D8C: @ 0x08067D8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	ldr r0, _08067DF8 @ =vt_09F7E758
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
_08067DF8: .4byte vt_09F7E758
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
	bl _._10KeyFocuser
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
	ldr r1, _08067F00 @ =vt_09F7E890
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0806D9A4
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r0, _08067F04 @ =vt_09F7E458
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
_08067F00: .4byte vt_09F7E890
_08067F04: .4byte vt_09F7E458

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
	bl Message_dtor
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
	bl Message_dtor
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
	bl Message_dtor
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
	ldr r0, _080687A0 @ =vt_09F7EA80
	str r0, [r4, #4]
	ldr r0, _080687A4 @ =gUnknown_09C90960
	movs r1, #1
	rsbs r1, r1, #0
	ldr r5, _080687A8 @ =_vt.1D
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
_080687A0: .4byte vt_09F7EA80
_080687A4: .4byte gUnknown_09C90960
_080687A8: .4byte _vt.1D

	thumb_func_start sub_080687AC
sub_080687AC: @ 0x080687AC
	push {lr}
	ldr r2, _080687BC @ =vt_09F7EA80
	str r2, [r0, #4]
	bl sub_0805D2B4
	pop {r0}
	bx r0
	.align 2, 0
_080687BC: .4byte vt_09F7EA80

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

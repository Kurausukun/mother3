.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0806C420
sub_0806C420: @ 0x0806C420
	ldr r0, _0806C424 @ =gUnknown_02001D08
	bx lr
	.align 2, 0
_0806C424: .4byte gUnknown_02001D08

	thumb_func_start sub_0806C428
sub_0806C428: @ 0x0806C428
	push {r4, lr}
	ldr r1, _0806C450 @ =gUnknown_02001D14
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806C444
	ldr r4, _0806C454 @ =gUnknown_02001D18
	movs r0, #0x50
	bl __builtin_new
	bl sub_0806C4AC
	str r0, [r4]
_0806C444:
	ldr r0, _0806C454 @ =gUnknown_02001D18
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806C450: .4byte gUnknown_02001D14
_0806C454: .4byte gUnknown_02001D18

	thumb_func_start sub_0806C458
sub_0806C458: @ 0x0806C458
	ldr r0, _0806C460 @ =gUnknown_02001D18
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806C460: .4byte gUnknown_02001D18

	thumb_func_start sub_0806C464
sub_0806C464: @ 0x0806C464
	push {r4, r5, lr}
	ldr r1, _0806C498 @ =gUnknown_02001D14
	ldr r0, [r1]
	cmp r0, #0
	ble _0806C490
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806C490
	ldr r5, _0806C49C @ =gUnknown_02001D18
	ldr r2, [r5]
	cmp r2, #0
	beq _0806C48E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806C48E:
	str r4, [r5]
_0806C490:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C498: .4byte gUnknown_02001D14
_0806C49C: .4byte gUnknown_02001D18

	thumb_func_start sub_0806C4A0
sub_0806C4A0: @ 0x0806C4A0
	push {lr}
	bl sub_0806C420
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806C4AC
sub_0806C4AC: @ 0x0806C4AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806C50C @ =vt_09F7F0B0
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x20
	movs r2, #3
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
_0806C4C6:
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, #0xc
	subs r2, #1
	cmp r2, r3
	bne _0806C4C6
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806C510 @ =_vt.3Unk
	ldr r0, _0806C514 @ =_vt.8SysClock
	str r0, [sp, #0x20]
	ldr r0, _0806C518 @ =gUnknown_080FF534
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
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806C50C: .4byte vt_09F7F0B0
_0806C510: .4byte _vt.3Unk
_0806C514: .4byte _vt.8SysClock
_0806C518: .4byte gUnknown_080FF534

	thumb_func_start sub_0806C51C
sub_0806C51C: @ 0x0806C51C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _0806C558 @ =vt_09F7F0B0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x20
	cmp r0, #0
	beq _0806C548
	adds r4, r5, #0
	adds r4, #0x50
	cmp r0, r4
	beq _0806C548
	adds r6, r0, #0
_0806C538:
	subs r4, #0xc
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806C544
	bl __builtin_vec_delete
_0806C544:
	cmp r6, r4
	bne _0806C538
_0806C548:
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C558: .4byte vt_09F7F0B0

	thumb_func_start sub_0806C55C
sub_0806C55C: @ 0x0806C55C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r1, r4, #0
	bl sub_0806C634
	mov r8, r0
	ldr r1, _0806C62C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	lsls r5, r5, #0x10
	ldr r1, _0806C630 @ =0x0000FFFF
	ands r0, r1
	orrs r0, r5
	str r0, [sp]
	str r4, [sp, #4]
	lsrs r4, r4, #4
	movs r0, #3
	ands r4, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r6, r0, r6
	adds r6, #0x20
	ldr r0, [r6, #4]
	adds r4, r0, #1
	ldr r0, [r6]
	cmp r0, r4
	bge _0806C5DA
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _0806C5AC
	adds r0, r1, #0
_0806C5AC:
	adds r4, r0, #0
	lsls r0, r4, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r5, [r6, #8]
	adds r3, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0806C5CC
	adds r2, r0, #0
_0806C5C2:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0806C5C2
_0806C5CC:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0806C5D6
	bl __builtin_vec_delete
_0806C5D6:
	str r4, [r6]
	str r7, [r6, #8]
_0806C5DA:
	mov r0, r8
	lsls r2, r0, #3
	ldr r1, [r6, #8]
	adds r1, r2, r1
	ldr r0, [r6, #4]
	mov r3, r8
	subs r5, r0, r3
	adds r3, r1, #0
	adds r3, #8
	lsls r0, r5, #3
	subs r0, #8
	adds r4, r1, r0
	adds r3, r3, r0
	adds r7, r2, #0
	cmp r5, #0
	ble _0806C60E
	adds r2, r5, #0
_0806C5FC:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r3]
	str r1, [r3, #4]
	subs r4, #8
	subs r3, #8
	subs r2, #1
	cmp r2, #0
	bne _0806C5FC
_0806C60E:
	ldr r0, [r6, #8]
	adds r0, r7, r0
	ldr r1, [sp]
	ldr r2, [sp, #4]
	str r1, [r0]
	str r2, [r0, #4]
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C62C: .4byte 0xFFFF0000
_0806C630: .4byte 0x0000FFFF

	thumb_func_start sub_0806C634
sub_0806C634: @ 0x0806C634
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsrs r1, r4, #4
	movs r0, #3
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #2
	adds r0, r1, r5
	ldr r0, [r0, #0x24]
	cmp r0, #0
	ble _0806C678
	movs r3, #0
	adds r2, r0, #0
	cmp r3, r2
	bge _0806C676
	adds r0, r1, r5
	ldr r5, [r0, #0x28]
_0806C65A:
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #3
	adds r0, r5, r0
	ldr r0, [r0, #4]
	cmp r0, r4
	bhs _0806C670
	adds r3, r1, #1
	b _0806C672
_0806C670:
	adds r2, r1, #0
_0806C672:
	cmp r3, r2
	blt _0806C65A
_0806C676:
	adds r0, r3, #0
_0806C678:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806C680
sub_0806C680: @ 0x0806C680
	push {r4, r5, lr}
	adds r5, r0, #0
	lsrs r4, r1, #4
	movs r0, #3
	ands r4, r0
	adds r0, r5, #0
	bl sub_0806C6C4
	adds r2, r0, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r3, r0, #2
	adds r0, r3, r5
	ldr r0, [r0, #0x24]
	cmp r2, r0
	blt _0806C6A8
	ldr r0, _0806C6A4 @ =0x0000FFFF
	b _0806C6BE
	.align 2, 0
_0806C6A4: .4byte 0x0000FFFF
_0806C6A8:
	adds r0, r3, r5
	lsls r2, r2, #3
	ldr r1, [r0, #0x28]
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r0, r3, r5
	ldr r0, [r0, #0x28]
	adds r0, r0, r2
	ldrh r0, [r0, #2]
_0806C6BE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806C6C4
sub_0806C6C4: @ 0x0806C6C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r7, r1, #0
	lsrs r4, r7, #4
	movs r0, #3
	ands r4, r0
	lsls r1, r4, #1
	adds r0, r1, r4
	lsls r6, r0, #2
	mov r2, ip
	adds r0, r6, r2
	ldr r5, [r0, #0x24]
	cmp r5, #0
	bgt _0806C6E8
	adds r0, r5, #0
	b _0806C72E
_0806C6E8:
	movs r3, #0
	subs r2, r5, #1
	mov r8, r1
	cmp r3, r2
	bge _0806C714
	mov r1, ip
	adds r0, r6, r1
	ldr r6, [r0, #0x28]
_0806C6F8:
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #3
	adds r0, r6, r0
	ldr r0, [r0, #4]
	cmp r0, r7
	bhs _0806C70E
	adds r3, r1, #1
	b _0806C710
_0806C70E:
	adds r2, r1, #0
_0806C710:
	cmp r3, r2
	blt _0806C6F8
_0806C714:
	mov r2, r8
	adds r0, r2, r4
	lsls r0, r0, #2
	add r0, ip
	lsls r1, r3, #3
	ldr r0, [r0, #0x28]
	adds r0, r0, r1
	ldr r0, [r0, #4]
	adds r1, r5, #0
	cmp r0, r7
	bne _0806C72C
	adds r1, r3, #0
_0806C72C:
	adds r0, r1, #0
_0806C72E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806C738
sub_0806C738: @ 0x0806C738
	push {lr}
	movs r2, #0
	adds r0, #0x20
	movs r1, #3
_0806C740:
	str r2, [r0, #4]
	adds r0, #0xc
	subs r1, #1
	cmp r1, #0
	bge _0806C740
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806C750
sub_0806C750: @ 0x0806C750
	push {r4, lr}
	ldr r4, _0806C764 @ =gUnknown_02001D08
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806C768 @ =vt_09F7F118
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C764: .4byte gUnknown_02001D08
_0806C768: .4byte vt_09F7F118

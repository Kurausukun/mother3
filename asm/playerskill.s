.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0807C4F0
sub_0807C4F0: @ 0x0807C4F0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r3, [r4, #0x1c]
	adds r3, #0xe8
	movs r0, #0
	ldrsh r1, [r3, r0]
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807C518
sub_0807C518: @ 0x0807C518
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r3, [r4, #0x1c]
	adds r3, #0xe0
	movs r0, #0
	ldrsh r1, [r3, r0]
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807C540
sub_0807C540: @ 0x0807C540
	push {lr}
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807C560
sub_0807C560: @ 0x0807C560
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, [r1]
	ldr r2, [r3, #0x1c]
	adds r2, #0xd0
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807C588
sub_0807C588: @ 0x0807C588
	push {lr}
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807C5A8
sub_0807C5A8: @ 0x0807C5A8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, [r1]
	ldr r2, [r3, #0x1c]
	adds r2, #0xc0
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807C5D0
sub_0807C5D0: @ 0x0807C5D0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, [r1]
	ldr r2, [r3, #0x1c]
	adds r2, #0xb8
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807C5F8
sub_0807C5F8: @ 0x0807C5F8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08060ED4
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0807C610
sub_0807C610: @ 0x0807C610
	movs r0, #1
	bx lr

	thumb_func_start sub_0807C614
sub_0807C614: @ 0x0807C614
	push {r4, r5, lr}
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [r0, #0x1c]
	adds r3, #0xa8
	movs r5, #0
	ldrsh r4, [r3, r5]
	adds r0, r0, r4
	ldr r3, [r3, #4]
	bl _call_via_r3
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0807C634
sub_0807C634: @ 0x0807C634
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0xa0
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807C654
sub_0807C654: @ 0x0807C654
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x98
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807C674
sub_0807C674: @ 0x0807C674
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x90
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807C694
sub_0807C694: @ 0x0807C694
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x86
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807C6B8
sub_0807C6B8: @ 0x0807C6B8
	push {r4, lr}
	adds r4, r0, #0
	bl __4Unit
	ldr r0, _0807C710 @ =vt_09F82070
	str r0, [r4, #0x20]
	ldr r0, _0807C714 @ =vt_09F820E8
	str r0, [r4, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_0808AE80
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r4, r2
	bl sub_0808AE80
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r2, #0xc
	adds r1, r4, r2
	str r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08060E70
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807C710: .4byte vt_09F82070
_0807C714: .4byte vt_09F820E8

	thumb_func_start sub_0807C718
sub_0807C718: @ 0x0807C718
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	mov sb, r1
	bl __4Base
	ldr r0, _0807C8DC @ =vt_09F82558
	str r0, [r6, #0x1c]
	mov r0, sb
	str r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_0807C96C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r2, sp, #0x10
	mov r8, r2
	mov r0, r8
	bl sub_080706A0
	add r0, sp, #4
	mov r1, r8
	bl sub_0806D48C
	ldr r3, _0807C8E0 @ =_vt.1D
	mov sl, r3
	str r3, [sp, #0x18]
	add r0, sp, #4
	bl sub_0806D53C
	adds r1, r6, #0
	adds r1, #0x28
	ldr r4, _0807C8E4 @ =0x040000D4
	str r0, [r4]
	str r1, [r4, #4]
	ldr r5, _0807C8E8 @ =0x80000010
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	add r0, sp, #4
	bl sub_0806D53C
	adds r7, r6, #0
	adds r7, #0x48
	str r0, [r4]
	str r7, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x9c
	bl __builtin_new
	bl sub_0807D0EC
	adds r5, r0, #0
	str r5, [r6, #0x68]
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r3, sb
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, r8
	ldr r2, [r2, #4]
	add r1, sb
	bl _call_via_r2
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, r8
	bl _call_via_r2
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	movs r0, #0xe4
	bl __builtin_new
	mov r1, sl
	str r1, [sp, #0x18]
	str r7, [sp, #0x10]
	movs r2, #0x20
	mov r3, r8
	str r2, [r3, #4]
	mov r1, r8
	bl sub_08071714
	str r0, [r6, #0x6c]
	mov r0, sl
	str r0, [sp, #0x18]
	movs r0, #0xe4
	bl __builtin_new
	mov r1, sl
	str r1, [sp, #0x18]
	str r7, [sp, #0x10]
	movs r2, #0x20
	mov r3, r8
	str r2, [r3, #4]
	mov r1, r8
	bl sub_08071714
	str r0, [r6, #0x70]
	mov r0, sl
	str r0, [sp, #0x18]
	movs r0, #0xa0
	bl __builtin_new
	mov r1, sb
	bl sub_080869BC
	str r0, [r6, #0x74]
	movs r0, #0xa4
	bl __builtin_new
	bl sub_0806DC78
	adds r4, r0, #0
	str r4, [r6, #0x78]
	ldr r5, [r4, #0x1c]
	adds r5, #0x68
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r4, r4, r0
	adds r0, r6, #0
	bl sub_0807C8F8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	bl sub_080706A0
	add r2, sp, #0x1c
	mov sb, r2
	mov r0, sb
	movs r1, #5
	bl sub_080706A0
	add r3, sp, #0x28
	mov r0, sl
	str r0, [sp, #0x30]
	str r7, [sp, #0x28]
	movs r1, #0x20
	str r1, [r3, #4]
	ldr r5, [r5, #4]
	adds r0, r4, #0
	mov r1, r8
	mov r2, sb
	bl _call_via_r5
	mov r2, sl
	str r2, [sp, #0x30]
	str r2, [sp, #0x24]
	str r2, [sp, #0x18]
	adds r0, r6, #0
	bl sub_0807CAEC
	ldr r0, [r6, #0x78]
	ldr r2, [r0, #0x1c]
	adds r5, r2, #0
	adds r5, #0x98
	movs r3, #0
	ldrsh r4, [r5, r3]
	adds r4, r0, r4
	adds r2, #0xf0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	bl get__12ClockManager
	adds r5, r0, #0
	mov r0, r8
	bl __4Base
	ldr r0, _0807C8EC @ =_vt.3Unk
	mov sb, r0
	ldr r0, _0807C8F0 @ =_vt.11PreAppClock
	str r0, [sp, #0x2c]
	ldr r0, _0807C8F4 @ =gUnknown_08108AE0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, r8
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x2c]
	mov r0, r8
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r6, #0
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807C8DC: .4byte vt_09F82558
_0807C8E0: .4byte _vt.1D
_0807C8E4: .4byte 0x040000D4
_0807C8E8: .4byte 0x80000010
_0807C8EC: .4byte _vt.3Unk
_0807C8F0: .4byte _vt.11PreAppClock
_0807C8F4: .4byte gUnknown_08108AE0

	thumb_func_start sub_0807C8F8
sub_0807C8F8: @ 0x0807C8F8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _0807C920
	cmp r0, #4
	beq _0807C932
	b _0807C940
_0807C920:
	movs r0, #4
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0807C940
	movs r0, #0xe
	b _0807C95A
_0807C932:
	movs r0, #4
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0807C958
_0807C940:
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0807C95A
_0807C958:
	movs r0, #0xf
_0807C95A:
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807C96C
sub_0807C96C: @ 0x0807C96C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _0807C994
	cmp r0, #4
	beq _0807C9A6
	b _0807C9B4
_0807C994:
	movs r0, #4
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0807C9B4
	movs r4, #0xe
	b _0807C9CE
_0807C9A6:
	movs r0, #4
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0807C9CC
_0807C9B4:
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0807C9CE
_0807C9CC:
	movs r4, #0xf
_0807C9CE:
	bl sub_0807078C
	adds r1, r0, #0
	lsls r0, r4, #3
	subs r0, r0, r4
	ldr r2, _0807C9E8 @ =0x00000109
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0807C9E8: .4byte 0x00000109

	thumb_func_start sub_0807C9EC
sub_0807C9EC: @ 0x0807C9EC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0807CA74 @ =vt_09F82558
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x78]
	cmp r2, #0
	beq _0807CA0C
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807CA0C:
	ldr r2, [r4, #0x74]
	cmp r2, #0
	beq _0807CA22
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807CA22:
	ldr r2, [r4, #0x70]
	cmp r2, #0
	beq _0807CA38
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807CA38:
	ldr r2, [r4, #0x6c]
	cmp r2, #0
	beq _0807CA4E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807CA4E:
	ldr r2, [r4, #0x68]
	cmp r2, #0
	beq _0807CA64
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807CA64:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807CA74: .4byte vt_09F82558

	thumb_func_start sub_0807CA78
sub_0807CA78: @ 0x0807CA78
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _0807CAE6
	ldr r0, [r4, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r0, [r4, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #2
	bl _call_via_r2
	ldr r0, [r4, #0x78]
	ldr r2, [r0, #0x1c]
	adds r5, r2, #0
	adds r5, #0x98
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r0, r4
	adds r2, #0xf0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_0807CAE6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0807CAEC
sub_0807CAEC: @ 0x0807CAEC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	beq _0807CB5A
	ldr r0, [r4, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r0, [r4, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	ldr r0, [r4, #0x78]
	ldr r2, [r0, #0x1c]
	adds r5, r2, #0
	adds r5, #0x98
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r0, r4
	adds r2, #0xf0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_0807CB5A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0807CB60
sub_0807CB60: @ 0x0807CB60
	push {r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	bl sub_0807C96C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, sp
	adds r1, r4, #0
	bl sub_0806D48C
	ldr r0, _0807CBB4 @ =_vt.1D
	str r0, [sp, #0x14]
	mov r0, sp
	bl sub_0806D53C
	movs r2, #0
	adds r1, r0, #0
	adds r5, #0x28
_0807CB90:
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1]
	strh r0, [r5, #0x20]
	adds r1, #2
	adds r5, #2
	adds r2, #1
	cmp r2, #0xf
	bls _0807CB90
	mov r0, sp
	movs r1, #2
	bl sub_0806D4B0
	add sp, #0x18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807CBB4: .4byte _vt.1D

	thumb_func_start sub_0807CBB8
sub_0807CBB8: @ 0x0807CBB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	mov r8, r0
	bl sub_0807C96C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, sp
	adds r1, r4, #0
	bl sub_0806D48C
	ldr r0, _0807CC74 @ =_vt.1D
	str r0, [sp, #0x14]
	mov r0, sp
	bl sub_0806D53C
	movs r7, #0
	add r4, sp, #0x18
	adds r5, r4, #0
	adds r6, r0, #0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
_0807CBF4:
	lsls r3, r7, #1
	ldrh r1, [r6]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r5]
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	lsrs r0, r0, #5
	strb r0, [r4, #1]
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r1, r0
	lsrs r1, r1, #0xa
	strb r1, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #3
	strb r0, [r5]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	strb r0, [r4, #1]
	ldrb r0, [r4, #2]
	lsls r0, r0, #3
	strb r0, [r4, #2]
	ldrb r0, [r5]
	lsrs r1, r0, #2
	subs r0, r0, r1
	strb r0, [r5]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	strb r0, [r4, #1]
	ldrb r1, [r4, #2]
	lsrs r1, r1, #1
	strb r1, [r4, #2]
	ldrb r2, [r5]
	lsrs r2, r2, #3
	lsrs r0, r0, #3
	lsls r0, r0, #5
	orrs r2, r0
	lsrs r1, r1, #3
	lsls r1, r1, #0xa
	orrs r2, r1
	mov r0, r8
	adds r0, #0x28
	adds r0, r0, r3
	strh r2, [r0]
	mov r0, r8
	adds r0, #0x48
	adds r0, r0, r3
	strh r2, [r0]
	adds r6, #2
	adds r7, #1
	cmp r7, #0xf
	bls _0807CBF4
	mov r0, sp
	movs r1, #2
	bl sub_0806D4B0
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807CC74: .4byte _vt.1D

	thumb_func_start sub_0807CC78
sub_0807CC78: @ 0x0807CC78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	cmp r1, #1
	bne _0807CCD6
	ldr r5, [r7, #0x68]
	ldr r4, [r5, #0x1c]
	adds r4, #0x70
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r3, [r7, #0x78]
	ldr r2, [r3, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r6, sp
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	add r1, sp, #4
	movs r0, #0
	movs r3, #0xc
	rsbs r3, r3, #0
	strh r0, [r1]
	strh r3, [r1, #2]
	mov r0, sp
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r1, #2
	ldrsh r0, [r6, r1]
	add r1, sp, #8
	adds r0, r0, r3
	strh r2, [r1]
	strh r0, [r1, #2]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	b _0807CCF2
_0807CCD6:
	ldr r0, [r7, #0x68]
	ldr r3, [r0, #0x1c]
	adds r3, #0x70
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	add r1, sp, #0xc
	movs r2, #0x64
	rsbs r2, r2, #0
	strh r2, [r1]
	strh r2, [r1, #2]
	ldr r2, [r3, #4]
	bl _call_via_r2
_0807CCF2:
	ldr r0, [r7, #0x6c]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	ldr r0, [r7, #0x70]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	ldr r0, [r7, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807CD3C
sub_0807CD3C: @ 0x0807CD3C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	mov r8, r0
	adds r5, r1, #0
	ldr r0, [r0, #0x68]
	ldr r3, [r0, #0x1c]
	adds r3, #0x70
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r6, [r5, r1]
	movs r1, #2
	ldrsh r2, [r5, r1]
	mov r4, sp
	subs r2, #0xc
	mov r1, sp
	strh r6, [r1]
	strh r2, [r4, #2]
	ldr r2, [r3, #4]
	bl _call_via_r2
	mov r2, r8
	ldr r0, [r2, #0x6c]
	ldr r4, [r0, #0x1c]
	adds r4, #0x80
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r5, r1]
	movs r1, #2
	ldrsh r3, [r5, r1]
	add r1, sp, #4
	subs r2, #1
	subs r3, #4
	strh r2, [r1]
	strh r3, [r1, #2]
	ldr r2, [r4, #4]
	bl _call_via_r2
	mov r2, r8
	ldr r0, [r2, #0x70]
	ldr r4, [r0, #0x1c]
	adds r4, #0x80
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r5, r1]
	movs r1, #2
	ldrsh r3, [r5, r1]
	add r1, sp, #8
	subs r2, #1
	adds r3, #6
	strh r2, [r1]
	strh r3, [r1, #2]
	ldr r2, [r4, #4]
	bl _call_via_r2
	mov r2, r8
	ldr r0, [r2, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807CDDC
sub_0807CDDC: @ 0x0807CDDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x6c]
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x70]
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x74]
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start nullsub_58
nullsub_58: @ 0x0807CE4C
	bx lr
	.align 2, 0

	thumb_func_start sub_0807CE50
sub_0807CE50: @ 0x0807CE50
	push {r4, lr}
	sub sp, #4
	str r2, [sp]
	mov r4, sp
	mov r2, sp
	ldrb r3, [r2]
	lsrs r3, r3, #3
	ldrb r2, [r4, #1]
	lsrs r2, r2, #3
	lsls r2, r2, #5
	orrs r3, r2
	ldrb r2, [r4, #2]
	lsrs r2, r2, #3
	lsls r2, r2, #0xa
	orrs r3, r2
	lsls r1, r1, #1
	adds r0, #0x48
	adds r0, r0, r1
	strh r3, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807CE80
sub_0807CE80: @ 0x0807CE80
	push {lr}
	ldr r0, [r0, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1

	thumb_func_start sub_0807CE98
sub_0807CE98: @ 0x0807CE98
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r1, #0x78]
	ldr r2, [r3, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0807CEB8
sub_0807CEB8: @ 0x0807CEB8
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r1, #0x78]
	ldr r2, [r3, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0807CED8
sub_0807CED8: @ 0x0807CED8
	push {lr}
	ldr r0, [r0, #0x78]
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1

	thumb_func_start sub_0807CEF4
sub_0807CEF4: @ 0x0807CEF4
	movs r1, #0x3c
	movs r2, #0x20
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807CF00
sub_0807CF00: @ 0x0807CF00
	movs r0, #0x10
	bx lr

	thumb_func_start sub_0807CF04
sub_0807CF04: @ 0x0807CF04
	push {r4, lr}
	lsls r2, r2, #1
	adds r1, #0x28
	adds r1, r1, r2
	ldrh r1, [r1]
	movs r3, #0x1f
	ands r3, r1
	movs r4, #0xf8
	lsls r4, r4, #2
	ands r4, r1
	movs r2, #0xf8
	lsls r2, r2, #7
	ands r1, r2
	lsls r3, r3, #3
	strb r3, [r0]
	lsrs r4, r4, #2
	strb r4, [r0, #1]
	lsrs r1, r1, #7
	strb r1, [r0, #2]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0807CF30
sub_0807CF30: @ 0x0807CF30
	push {r4, lr}
	lsls r2, r2, #1
	adds r1, #0x48
	adds r1, r1, r2
	ldrh r1, [r1]
	movs r3, #0x1f
	ands r3, r1
	movs r4, #0xf8
	lsls r4, r4, #2
	ands r4, r1
	movs r2, #0xf8
	lsls r2, r2, #7
	ands r1, r2
	lsls r3, r3, #3
	strb r3, [r0]
	lsrs r4, r4, #2
	strb r4, [r0, #1]
	lsrs r1, r1, #7
	strb r1, [r0, #2]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0807CF5C
sub_0807CF5C: @ 0x0807CF5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r6, r0, #0
	ldr r5, [r6, #0x6c]
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, [r6, #0x24]
	ldr r1, [r0, #0x1c]
	movs r2, #0xe2
	lsls r2, r2, #2
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
	ldr r5, [r6, #0x70]
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, [r6, #0x24]
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #2
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
	mov r7, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r7, #2]
	ldr r0, [r6, #0x78]
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	ble _0807D056
	ldr r3, [r6, #0x78]
	ldr r2, [r3, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r5, [r6, #0x78]
	ldr r2, [r5, #0x1c]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r4, sp, #8
	adds r0, r4, #0
	ldr r3, [r2, #4]
	adds r1, r5, r1
	movs r2, #1
	bl _call_via_r3
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0
	ldrsh r5, [r4, r3]
	movs r2, #2
	ldrsh r0, [r7, r2]
	movs r2, #2
	ldrsh r3, [r4, r2]
	add r2, sp, #0xc
	adds r1, r1, r5
	adds r0, r0, r3
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [sp, #0xc]
	str r0, [sp]
	add r2, sp, #0x10
	movs r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	strh r0, [r2]
	strh r1, [r2, #2]
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r2, #2
	ldrsh r1, [r7, r2]
	add r2, sp, #0x14
	adds r0, #0x10
	subs r1, #0x10
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r0, [sp, #0x14]
	b _0807D0CC
_0807D056:
	ldr r3, [r6, #0x78]
	ldr r2, [r3, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x18
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r5, [r6, #0x78]
	ldr r2, [r5, #0x1c]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r4, sp, #0x1c
	adds r0, r4, #0
	ldr r3, [r2, #4]
	adds r1, r5, r1
	movs r2, #0
	bl _call_via_r3
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0
	ldrsh r5, [r4, r3]
	movs r2, #2
	ldrsh r0, [r7, r2]
	movs r2, #2
	ldrsh r3, [r4, r2]
	add r2, sp, #0x20
	adds r1, r1, r5
	adds r0, r0, r3
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [sp, #0x20]
	str r0, [sp]
	add r1, sp, #0x24
	movs r0, #0x1e
	movs r3, #0x14
	rsbs r3, r3, #0
	strh r0, [r1]
	strh r3, [r1, #2]
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #2
	ldrsh r1, [r7, r2]
	add r2, sp, #0x28
	adds r0, #0x1e
	adds r1, r1, r3
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r0, [sp, #0x28]
_0807D0CC:
	str r0, [sp]
	ldr r0, [r6, #0x74]
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807D0EC
sub_0807D0EC: @ 0x0807D0EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r5, r0, #0
	bl __4Base
	ldr r0, _0807D1E4 @ =vt_09F82648
	str r0, [r5, #0x1c]
	movs r4, #0
	movs r6, #0
	strh r6, [r5, #0x28]
	strh r6, [r5, #0x2a]
	movs r0, #0x34
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _0807D1E8 @ =gUnknown_08D0B010
	ldr r1, _0807D1EC @ =_vt.1D
	mov sl, r1
	str r1, [sp, #0xc]
	str r0, [sp, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #8]
	add r2, sp, #0x40
	movs r0, #8
	strh r0, [r2]
	strh r0, [r2, #2]
	mov r0, r8
	add r1, sp, #4
	bl sub_08071108
	mov r1, sl
	str r1, [sp, #0xc]
	ldr r0, _0807D1F0 @ =vt_09F826C8
	mov r1, r8
	str r0, [r1, #0x1c]
	adds r7, r5, #0
	adds r7, #0x90
	adds r0, r7, #0
	bl sub_0806D478
	ldr r1, _0807D1F4 @ =gUnknown_020021B8
	ldrh r2, [r1]
	adds r0, r2, #1
	strh r0, [r1]
	movs r0, #0x24
	adds r0, r0, r5
	mov sb, r0
	strb r2, [r0]
	str r6, [r5, #0x2c]
	adds r0, r5, #0
	adds r0, #0x30
	strb r4, [r0]
	add r1, sp, #0x44
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, r8
	bl sub_0806E9C4
	mov r1, sb
	ldrb r0, [r1]
	add r1, sp, #0x48
	lsls r0, r0, #6
	movs r2, #0xa0
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, r8
	bl sub_08071194
	mov r0, r8
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_0806E9E8
	ldr r1, _0807D1F8 @ =0x00000109
	add r4, sp, #0x10
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0806D4D0
	mov r0, sl
	str r0, [sp, #0x18]
	bl get__12ClockManager
	mov r8, r0
	add r0, sp, #0x1c
	bl __4Base
	ldr r1, _0807D1FC @ =_vt.3Unk
	mov sb, r1
	ldr r0, _0807D200 @ =_vt.8AppClock
	str r0, [sp, #0x38]
	add r6, sp, #0x1c
	ldr r0, _0807D204 @ =gUnknown_08109168
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x38]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807D1E4: .4byte vt_09F82648
_0807D1E8: .4byte gUnknown_08D0B010
_0807D1EC: .4byte _vt.1D
_0807D1F0: .4byte vt_09F826C8
_0807D1F4: .4byte gUnknown_020021B8
_0807D1F8: .4byte 0x00000109
_0807D1FC: .4byte _vt.3Unk
_0807D200: .4byte _vt.8AppClock
_0807D204: .4byte gUnknown_08109168

	thumb_func_start sub_0807D208
sub_0807D208: @ 0x0807D208
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0807D240 @ =vt_09F82648
	str r0, [r4, #0x1c]
	ldr r1, _0807D244 @ =gUnknown_020021B8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x90
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r4, #0
	adds r0, #0x34
	ldr r1, _0807D248 @ =vt_09F826C8
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807D240: .4byte vt_09F82648
_0807D244: .4byte gUnknown_020021B8
_0807D248: .4byte vt_09F826C8

	thumb_func_start sub_0807D24C
sub_0807D24C: @ 0x0807D24C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x34
	adds r0, r5, #0
	bl sub_08071150
	mov r0, sp
	adds r1, r5, #0
	bl sub_0806EA34
	ldr r0, [sp]
	adds r4, #0x30
	strb r0, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807D274
sub_0807D274: @ 0x0807D274
	ldr r1, [r1]
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807D27C
sub_0807D27C: @ 0x0807D27C
	str r1, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0807D280
sub_0807D280: @ 0x0807D280
	push {lr}
	bl sub_0807D28C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807D28C
sub_0807D28C: @ 0x0807D28C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	bl sub_0806BE14
	adds r4, r0, #0
	mov r0, r8
	ldr r5, [r0, #0x2c]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806C010
	mov sb, r0
	mov r0, r8
	bl sub_0807D360
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	bl sub_0807D3A8
	lsls r0, r0, #0x10
	mov r1, r8
	ldr r3, [r1, #0x2c]
	lsls r3, r3, #0xf
	lsrs r3, r3, #0x10
	movs r4, #0x28
	ldrsh r2, [r1, r4]
	movs r7, #0x30
	add r7, r8
	mov ip, r7
	ldrb r1, [r7]
	lsrs r1, r1, #1
	subs r2, r2, r1
	lsls r2, r2, #0x10
	ldr r1, _0807D35C @ =0x01FF0000
	ands r2, r1
	mov r4, sb
	str r2, [r4]
	mov r7, r8
	ldrh r4, [r7, #0x2a]
	movs r5, #0xff
	adds r1, r5, #0
	ands r1, r4
	orrs r2, r1
	movs r1, #0x80
	lsls r1, r1, #7
	mov sl, r1
	orrs r2, r1
	movs r4, #0x80
	lsls r4, r4, #0x17
	orrs r2, r4
	mov r7, sb
	str r2, [r7]
	lsls r3, r3, #0xa
	adds r1, r6, #0
	orrs r1, r3
	lsrs r0, r0, #4
	orrs r1, r0
	strh r1, [r7, #4]
	mov r2, r8
	movs r7, #0x28
	ldrsh r1, [r2, r7]
	mov r7, ip
	ldrb r2, [r7]
	lsrs r2, r2, #1
	subs r1, r1, r2
	adds r1, #0x20
	lsls r1, r1, #0x10
	ldr r2, _0807D35C @ =0x01FF0000
	ands r1, r2
	mov r7, sb
	str r1, [r7, #8]
	mov r7, r8
	ldrh r2, [r7, #0x2a]
	ands r5, r2
	orrs r1, r5
	mov r2, sl
	orrs r1, r2
	orrs r1, r4
	mov r4, sb
	str r1, [r4, #8]
	adds r6, #4
	orrs r3, r6
	orrs r3, r0
	strh r3, [r4, #0xc]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D35C: .4byte 0x01FF0000

	thumb_func_start sub_0807D360
sub_0807D360: @ 0x0807D360
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_0806BE14
	adds r6, r0, #0
	bl sub_0806B070
	adds r5, r0, #0
	adds r4, #0x34
	mov r0, sp
	adds r1, r4, #0
	bl sub_080711BC
	adds r0, r5, #0
	movs r1, #0
	mov r2, sp
	bl sub_0806B410
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806B828
	adds r2, r0, #0
	adds r0, r6, #0
	movs r1, #8
	bl sub_0806C0B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807D3A8
sub_0807D3A8: @ 0x0807D3A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0806C7AC
	adds r6, r0, #0
	adds r4, #0x90
	adds r0, r4, #0
	bl sub_0806D53C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806C9A0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0807D3F0 @ =0x0000FFFF
	cmp r4, r0
	bne _0807D3E8
	bl sub_0806BE14
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806C174
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806C898
_0807D3E8:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807D3F0: .4byte 0x0000FFFF

	thumb_func_start sub_0807D3F4
sub_0807D3F4: @ 0x0807D3F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x128
	mov sl, r0
	str r1, [sp, #0x98]
	bl __4Base
	ldr r0, _0807D7E0 @ =vt_09F827A8
	mov r1, sl
	str r0, [r1, #0x1c]
	adds r1, #0x28
	movs r0, #0
	mov r2, sl
	str r0, [r2, #0x28]
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r4, sl
	adds r4, #0x48
	adds r0, r4, #0
	bl sub_0806D64C
	mov r0, sl
	adds r0, #0xb4
	movs r1, #2
	mov r2, sp
	adds r2, #0x4c
	str r2, [sp, #0xbc]
	subs r2, #0x3c
	str r2, [sp, #0x118]
	adds r2, #0x40
	str r2, [sp, #0xc4]
	subs r2, #0x34
	str r2, [sp, #0x11c]
	adds r2, #0x38
	str r2, [sp, #0xc8]
	add r2, sp, #0x28
	mov sb, r2
	mov r2, sp
	adds r2, #0x34
	str r2, [sp, #0xa8]
	adds r2, #0xc
	str r2, [sp, #0xac]
	adds r2, #0x18
	str r2, [sp, #0xd0]
	adds r2, #4
	str r2, [sp, #0xd8]
	adds r2, #4
	str r2, [sp, #0xdc]
	adds r2, #4
	str r2, [sp, #0xe0]
	adds r2, #4
	str r2, [sp, #0xe4]
	adds r2, #4
	str r2, [sp, #0xe8]
	adds r2, #4
	str r2, [sp, #0xec]
	adds r2, #4
	str r2, [sp, #0xf0]
	adds r2, #4
	str r2, [sp, #0xf4]
	adds r2, #4
	str r2, [sp, #0xf8]
	adds r2, #4
	str r2, [sp, #0xfc]
	adds r2, #4
	str r2, [sp, #0x100]
	adds r2, #4
	str r2, [sp, #0x104]
	adds r2, #4
	str r2, [sp, #0x108]
	adds r2, #4
	str r2, [sp, #0x10c]
	adds r2, #4
	str r2, [sp, #0x110]
	str r4, [sp, #0xd4]
	subs r4, #0x14
	str r4, [sp, #0xb0]
	mov r2, sl
	adds r2, #0x35
	str r2, [sp, #0xb4]
	adds r4, #2
	str r4, [sp, #0xb8]
	adds r2, #7
	str r2, [sp, #0xc0]
	adds r4, #0xe
	str r4, [sp, #0xcc]
	movs r3, #1
	rsbs r3, r3, #0
_0807D4AA:
	adds r4, r0, #0
	movs r6, #1
	movs r0, #0xb8
	adds r0, r0, r4
	mov r8, r0
	subs r1, #1
	str r1, [sp, #0x120]
	ldr r5, [sp, #0xbc]
	movs r7, #0xa
_0807D4BC:
	ldr r1, _0807D7E4 @ =_vt.1D
	str r1, [sp, #0xc]
	ldr r2, _0807D7E8 @ =gUnknown_08CE39F8
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r0, sp, #0x4c
	strh r7, [r0]
	strh r7, [r5, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r5, #0
	str r3, [sp, #0x124]
	bl sub_08071108
	ldr r0, _0807D7E4 @ =_vt.1D
	str r0, [sp, #0xc]
	ldr r1, _0807D7EC @ =vt_09F7E458
	str r1, [r4, #0x1c]
	adds r4, #0x5c
	subs r6, #1
	ldr r3, [sp, #0x124]
	cmp r6, r3
	bne _0807D4BC
	mov r0, r8
	ldr r1, [sp, #0x120]
	cmp r1, r3
	bne _0807D4AA
	movs r0, #0xb7
	lsls r0, r0, #2
	add r0, sl
	bl sub_0808B0D8
	movs r0, #0xde
	lsls r0, r0, #2
	add r0, sl
	bl sub_08071D2C
	ldr r0, _0807D7F0 @ =0x00000414
	add r0, sl
	bl sub_08071E5C
	movs r0, #0x96
	lsls r0, r0, #3
	add r0, sl
	bl sub_0806D64C
	ldr r0, _0807D7F4 @ =0x0000051C
	add r0, sl
	bl sub_08086750
	ldr r2, _0807D7F8 @ =0x0000054C
	add r2, sl
	mov r8, r2
	ldr r5, _0807D7E4 @ =_vt.1D
	str r5, [sp, #0x18]
	ldr r4, _0807D7E8 @ =gUnknown_08CE39F8
	str r4, [sp, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0x118]
	str r0, [r1, #4]
	movs r4, #0xa
	movs r6, #0
	movs r7, #0
	add r0, sp, #0x50
	strh r4, [r0]
	ldr r2, [sp, #0xc4]
	strh r4, [r2, #2]
	mov r0, r8
	ldr r1, [sp, #0x118]
	ldr r2, [sp, #0xc4]
	bl sub_08071108
	str r5, [sp, #0x18]
	ldr r0, _0807D7EC @ =vt_09F7E458
	mov r1, r8
	str r0, [r1, #0x1c]
	movs r2, #0xb5
	lsls r2, r2, #3
	add r2, sl
	mov r8, r2
	str r5, [sp, #0x24]
	ldr r0, _0807D7E8 @ =gUnknown_08CE39F8
	str r0, [sp, #0x1c]
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, [sp, #0x11c]
	str r1, [r2, #4]
	add r0, sp, #0x54
	strh r4, [r0]
	ldr r0, [sp, #0xc8]
	strh r4, [r0, #2]
	mov r0, r8
	ldr r1, [sp, #0x11c]
	ldr r2, [sp, #0xc8]
	bl sub_08071108
	str r5, [sp, #0x24]
	ldr r1, _0807D7EC @ =vt_09F7E458
	mov r2, r8
	str r1, [r2, #0x1c]
	ldr r0, _0807D7FC @ =0x00000604
	add r0, sl
	bl sub_0808B218
	movs r0, #0xd3
	lsls r0, r0, #3
	add r0, sl
	bl sub_08071F8C
	ldr r4, [sp, #0x98]
	mov r0, sl
	str r4, [r0, #0x24]
	ldr r1, [sp, #0xb0]
	strb r6, [r1]
	ldr r2, [sp, #0xb4]
	strb r6, [r2]
	ldr r4, [sp, #0xb8]
	strb r6, [r4]
	str r7, [r0, #0x38]
	ldr r0, [sp, #0xc0]
	strb r6, [r0]
	mov r1, sl
	str r7, [r1, #0x40]
	movs r0, #1
	ldr r2, [sp, #0xcc]
	strb r0, [r2]
	mov r0, sl
	bl sub_0807DB08
	ldr r1, _0807D800 @ =0x0000028A
	mov r0, sb
	bl sub_080706A0
	ldr r0, [sp, #0xa8]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r4, #0x9f
	lsls r4, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0xac]
	bl sub_080706A0
	ldr r0, [sp, #0xac]
	str r0, [sp]
	ldr r0, [sp, #0xd4]
	movs r1, #1
	mov r2, sb
	ldr r3, [sp, #0xa8]
	bl sub_0806D744
	str r5, [sp, #0x48]
	str r5, [sp, #0x3c]
	str r5, [sp, #0x30]
	add r0, sp, #0x58
	strh r7, [r0]
	ldr r1, [sp, #0xd0]
	strh r7, [r1, #2]
	ldr r0, [sp, #0xd4]
	ldr r1, [sp, #0xd0]
	bl sub_0806D814
	movs r1, #0xf0
	movs r2, #0x30
	add r0, sp, #0x5c
	strh r1, [r0]
	ldr r4, [sp, #0xd8]
	strh r2, [r4, #2]
	ldr r0, [sp, #0xd4]
	ldr r1, [sp, #0xd8]
	bl sub_0806D828
	add r0, sp, #0x60
	strh r7, [r0]
	ldr r0, [sp, #0xdc]
	strh r7, [r0, #2]
	ldr r0, [sp, #0xd4]
	ldr r1, [sp, #0xdc]
	bl sub_0806D83C
	movs r2, #0
	ldr r7, [sp, #0xe0]
	ldr r1, [sp, #0xe4]
	str r1, [sp, #0xa0]
	movs r3, #0
_0807D63A:
	movs r6, #0
	lsls r1, r2, #1
	adds r4, r2, #1
	str r4, [sp, #0x114]
	movs r4, #0xb8
	adds r0, r2, #0
	muls r0, r4, r0
	mov r8, r0
	adds r0, #0xb4
	add r0, sl
	str r0, [sp, #0x9c]
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #6
	str r1, [sp, #0xa4]
_0807D658:
	movs r0, #0x5c
	adds r5, r6, #0
	muls r5, r0, r5
	mov r4, r8
	add r4, sl
	adds r4, r5, r4
	adds r4, #0xb4
	ldr r2, [r4, #0x1c]
	adds r2, #0x90
	ldr r0, [sp, #0x9c]
	adds r5, r0, r5
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	add r1, sp, #0x64
	strb r3, [r1]
	strb r3, [r7, #1]
	strb r3, [r7, #2]
	ldr r2, [r2, #4]
	adds r1, r7, #0
	str r3, [sp, #0x124]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	adds r2, #0x88
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r5, r5, r0
	movs r0, #0x6c
	muls r0, r6, r0
	adds r0, #0xa
	add r1, sp, #0x68
	strh r0, [r1]
	add r0, sp, #0xa4
	ldrh r1, [r0]
	ldr r0, [sp, #0xa0]
	strh r1, [r0, #2]
	ldr r2, [r2, #4]
	adds r0, r5, #0
	ldr r1, [sp, #0xa0]
	bl _call_via_r2
	adds r6, #1
	ldr r3, [sp, #0x124]
	cmp r6, #1
	ble _0807D658
	ldr r2, [sp, #0x114]
	cmp r2, #2
	ble _0807D63A
	movs r0, #0xde
	lsls r0, r0, #2
	add r0, sl
	movs r4, #0xdc
	movs r2, #7
	movs r6, #0
	add r1, sp, #0x6c
	strh r4, [r1]
	ldr r1, [sp, #0xe8]
	strh r2, [r1, #2]
	ldr r1, [sp, #0xe8]
	bl sub_08071DF8
	ldr r0, _0807D7F0 @ =0x00000414
	add r0, sl
	movs r2, #0x1e
	add r1, sp, #0x70
	strh r4, [r1]
	ldr r4, [sp, #0xec]
	strh r2, [r4, #2]
	ldr r1, [sp, #0xec]
	bl sub_08071F28
	ldr r1, _0807D800 @ =0x0000028A
	mov r0, sb
	bl sub_080706A0
	ldr r0, [sp, #0xa8]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0xac]
	bl sub_080706A0
	movs r4, #0x96
	lsls r4, r4, #3
	add r4, sl
	ldr r1, [sp, #0xac]
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #1
	mov r2, sb
	ldr r3, [sp, #0xa8]
	bl sub_0806D744
	ldr r0, _0807D7E4 @ =_vt.1D
	str r0, [sp, #0x48]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x30]
	movs r5, #0x80
	add r0, sp, #0x74
	strh r6, [r0]
	ldr r2, [sp, #0xf0]
	strh r5, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xf0]
	bl sub_0806D814
	movs r1, #0xf0
	movs r2, #0x20
	add r0, sp, #0x78
	strh r1, [r0]
	ldr r0, [sp, #0xf4]
	strh r2, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xf4]
	bl sub_0806D828
	add r0, sp, #0x7c
	strh r6, [r0]
	ldr r1, [sp, #0xf8]
	strh r5, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xf8]
	bl sub_0806D83C
	ldr r0, _0807D7F4 @ =0x0000051C
	add r0, sl
	movs r2, #0xa
	movs r3, #0x84
	add r1, sp, #0x80
	strh r2, [r1]
	ldr r2, [sp, #0xfc]
	strh r3, [r2, #2]
	ldr r1, [sp, #0xfc]
	bl sub_080867FC
	ldr r4, _0807D7F8 @ =0x0000054C
	add r4, sl
	add r0, sp, #0x84
	strb r6, [r0]
	ldr r0, [sp, #0x100]
	strb r6, [r0, #1]
	strb r6, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x100]
	bl sub_0806E9C4
	movs r5, #0x24
	movs r1, #0x86
	add r0, sp, #0x88
	strh r5, [r0]
	ldr r2, [sp, #0x104]
	strh r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x104]
	bl sub_08071194
	movs r4, #0xb5
	lsls r4, r4, #3
	add r4, sl
	add r0, sp, #0x8c
	strb r6, [r0]
	ldr r0, [sp, #0x108]
	strb r6, [r0, #1]
	strb r6, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x108]
	bl sub_0806E9C4
	movs r1, #0x92
	add r0, sp, #0x90
	strh r5, [r0]
	ldr r2, [sp, #0x10c]
	strh r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x10c]
	bl sub_08071194
	ldr r0, _0807D7FC @ =0x00000604
	add r0, sl
	movs r2, #0xc9
	movs r3, #0x7a
	add r1, sp, #0x94
	strh r2, [r1]
	ldr r4, [sp, #0x110]
	strh r3, [r4, #2]
	ldr r1, [sp, #0x110]
	b _0807D804
	.align 2, 0
_0807D7E0: .4byte vt_09F827A8
_0807D7E4: .4byte _vt.1D
_0807D7E8: .4byte gUnknown_08CE39F8
_0807D7EC: .4byte vt_09F7E458
_0807D7F0: .4byte 0x00000414
_0807D7F4: .4byte 0x0000051C
_0807D7F8: .4byte 0x0000054C
_0807D7FC: .4byte 0x00000604
_0807D800: .4byte 0x0000028A
_0807D804:
	bl sub_0806DB74
	mov r0, sl
	bl sub_0807DCC4
	mov r0, sb
	bl __4Base
	ldr r6, _0807DA9C @ =_vt.3Unk
	ldr r0, _0807DAA0 @ =_vt.10UpKeyPress
	str r0, [sp, #0x44]
	movs r7, #0xd3
	lsls r7, r7, #3
	add r7, sl
	ldr r0, _0807DAA4 @ =gUnknown_081097F0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAA8 @ =_vt.14UpKeyLongPress
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAAC @ =_vt.12DownKeyPress
	str r0, [sp, #0x44]
	ldr r0, _0807DAB0 @ =gUnknown_081097F8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAB4 @ =_vt.16DownKeyLongPress
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAB8 @ =_vt.12LeftKeyPress
	str r0, [sp, #0x44]
	ldr r0, _0807DABC @ =gUnknown_08109800
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAC0 @ =_vt.13RightKeyPress
	str r0, [sp, #0x44]
	ldr r0, _0807DAC4 @ =gUnknown_08109808
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAC8 @ =_vt.14SelectKeyPress
	str r0, [sp, #0x44]
	ldr r0, _0807DACC @ =gUnknown_08109810
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAD0 @ =_vt.9AKeyPress
	str r0, [sp, #0x44]
	ldr r0, _0807DAD4 @ =gUnknown_08109818
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAD8 @ =_vt.13AKeyLongPress
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DADC @ =_vt.9LKeyPress
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAE0 @ =_vt.13LKeyLongPress
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAE4 @ =_vt.9BKeyPress
	str r0, [sp, #0x44]
	ldr r0, _0807DAE8 @ =gUnknown_08109820
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r5, r0, #0
	mov r0, sb
	bl __4Base
	ldr r0, _0807DAEC @ =_vt.7Suspend
	str r0, [sp, #0x44]
	ldr r0, _0807DAF0 @ =gUnknown_08109828
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r5, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov r8, r0
	mov r0, sb
	bl __4Base
	movs r0, #0
	str r0, [sp, #0x48]
	ldr r0, _0807DAF4 @ =_vt.10UnitEscape
	str r0, [sp, #0x44]
	ldr r0, _0807DAF8 @ =gUnknown_08109830
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov r8, r0
	mov r0, sb
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x48]
	ldr r0, _0807DAFC @ =_vt.7UnitDie
	str r0, [sp, #0x44]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r5, r0, #0
	mov r0, sb
	bl __4Base
	ldr r0, _0807DB00 @ =_vt.6Resume
	str r0, [sp, #0x44]
	ldr r0, _0807DB04 @ =gUnknown_08109838
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r5, #0
	mov r2, sb
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	mov r0, sl
	add sp, #0x128
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807DA9C: .4byte _vt.3Unk
_0807DAA0: .4byte _vt.10UpKeyPress
_0807DAA4: .4byte gUnknown_081097F0
_0807DAA8: .4byte _vt.14UpKeyLongPress
_0807DAAC: .4byte _vt.12DownKeyPress
_0807DAB0: .4byte gUnknown_081097F8
_0807DAB4: .4byte _vt.16DownKeyLongPress
_0807DAB8: .4byte _vt.12LeftKeyPress
_0807DABC: .4byte gUnknown_08109800
_0807DAC0: .4byte _vt.13RightKeyPress
_0807DAC4: .4byte gUnknown_08109808
_0807DAC8: .4byte _vt.14SelectKeyPress
_0807DACC: .4byte gUnknown_08109810
_0807DAD0: .4byte _vt.9AKeyPress
_0807DAD4: .4byte gUnknown_08109818
_0807DAD8: .4byte _vt.13AKeyLongPress
_0807DADC: .4byte _vt.9LKeyPress
_0807DAE0: .4byte _vt.13LKeyLongPress
_0807DAE4: .4byte _vt.9BKeyPress
_0807DAE8: .4byte gUnknown_08109820
_0807DAEC: .4byte _vt.7Suspend
_0807DAF0: .4byte gUnknown_08109828
_0807DAF4: .4byte _vt.10UnitEscape
_0807DAF8: .4byte gUnknown_08109830
_0807DAFC: .4byte _vt.7UnitDie
_0807DB00: .4byte _vt.6Resume
_0807DB04: .4byte gUnknown_08109838

	thumb_func_start sub_0807DB08
sub_0807DB08: @ 0x0807DB08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x54]
	movs r6, #0
	b _0807DC86
_0807DB1E:
	mov r2, r8
	ldr r1, [r2, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #3
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	mov r0, sp
	bl goods_2c0__5Goods
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl _._5Goods
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #1
	bne _0807DC1C
	add r0, sp, #0x50
	strh r6, [r0]
	mov r7, r8
	adds r7, #0x28
	ldr r3, [sp, #0x54]
	mov sb, r3
	adds r3, #1
	str r3, [sp, #0x54]
	ldr r0, [r7, #4]
	adds r4, r0, #1
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r6, #1
	mov sl, r6
	cmp r0, r4
	bge _0807DBDE
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _0807DBAC
	adds r1, r0, #0
_0807DBAC:
	adds r4, r1, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [r7, #8]
	adds r2, r5, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	ble _0807DBD0
	adds r1, r0, #0
_0807DBC2:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807DBC2
_0807DBD0:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0807DBDA
	bl __builtin_vec_delete
_0807DBDA:
	str r4, [r7]
	str r5, [r7, #8]
_0807DBDE:
	mov r2, sb
	lsls r4, r2, #1
	ldr r3, [r7, #8]
	adds r1, r4, r3
	ldr r2, [r7, #4]
	mov r0, sb
	subs r6, r2, r0
	adds r5, r1, #2
	lsls r0, r6, #1
	subs r0, #2
	adds r1, r1, r0
	adds r5, r5, r0
	mov ip, r2
	cmp r6, #0
	ble _0807DC0C
	adds r2, r6, #0
_0807DBFE:
	ldrh r0, [r1]
	strh r0, [r5]
	subs r1, #2
	subs r5, #2
	subs r2, #1
	cmp r2, #0
	bne _0807DBFE
_0807DC0C:
	adds r0, r4, r3
	add r2, sp, #0x50
	ldrh r1, [r2]
	strh r1, [r0]
	mov r0, ip
	adds r0, #1
	str r0, [r7, #4]
	b _0807DC84
_0807DC1C:
	mov r0, sp
	adds r0, #0x52
	strh r6, [r0]
	mov r4, r8
	adds r4, #0x28
	adds r7, r0, #0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	mov r3, r8
	ldr r0, [r3, #0x28]
	adds r6, #1
	mov sl, r6
	cmp r0, r5
	bge _0807DC74
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0807DC42
	adds r1, r0, #0
_0807DC42:
	adds r5, r1, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0807DC66
	adds r1, r0, #0
_0807DC58:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807DC58
_0807DC66:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807DC70
	bl __builtin_vec_delete
_0807DC70:
	str r5, [r4]
	str r6, [r4, #8]
_0807DC74:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r7]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0807DC84:
	mov r6, sl
_0807DC86:
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r6, r0
	bge _0807DCB2
	b _0807DB1E
_0807DCB2:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807DCC4
sub_0807DCC4: @ 0x0807DCC4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xb0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	bl sub_08072858
	ldrb r1, [r0, #0xe]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807DCE8
sub_0807DCE8: @ 0x0807DCE8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _0807DDB0 @ =vt_09F827A8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_0807DDCC
	movs r1, #0xd3
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #2
	bl _._10KeyFocuser
	ldr r2, _0807DDB4 @ =0x00000604
	adds r0, r5, r2
	ldr r1, _0807DDB8 @ =vt_09F82898
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0806D9A4
	movs r1, #0xb5
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r4, _0807DDBC @ =vt_09F7E458
	str r4, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	ldr r2, _0807DDC0 @ =0x0000054C
	adds r0, r5, r2
	str r4, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	ldr r1, _0807DDC4 @ =0x0000051C
	adds r0, r5, r1
	movs r1, #2
	bl sub_080867C0
	movs r2, #0x96
	lsls r2, r2, #3
	adds r0, r5, r2
	movs r1, #2
	bl sub_0806D6E0
	ldr r1, _0807DDC8 @ =0x00000414
	adds r0, r5, r1
	movs r1, #2
	bl sub_08071F14
	movs r2, #0xde
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #2
	bl sub_08071DE4
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0808B194
	adds r0, r5, #0
	adds r0, #0xb4
	cmp r0, #0
	beq _0807DD8C
	cmp r0, r4
	beq _0807DD8C
	adds r6, r0, #0
_0807DD76:
	subs r4, #0x5c
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _0807DD76
_0807DD8C:
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #2
	bl sub_0806D6E0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0807DDA0
	bl __builtin_vec_delete
_0807DDA0:
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807DDB0: .4byte vt_09F827A8
_0807DDB4: .4byte 0x00000604
_0807DDB8: .4byte vt_09F82898
_0807DDBC: .4byte vt_09F7E458
_0807DDC0: .4byte 0x0000054C
_0807DDC4: .4byte 0x0000051C
_0807DDC8: .4byte 0x00000414

	thumb_func_start sub_0807DDCC
sub_0807DDCC: @ 0x0807DDCC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08072858
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, #0xc0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	strb r0, [r5, #0xe]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0807DDF0
sub_0807DDF0: @ 0x0807DDF0
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0807DE06
	adds r2, r0, #0
	adds r2, #0x44
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _0807DE10
_0807DE06:
	adds r2, r0, #0
	adds r2, #0x44
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_0807DE10:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807DE18
sub_0807DE18: @ 0x0807DE18
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_0807DE1C
sub_0807DE1C: @ 0x0807DE1C
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_0807DE28
sub_0807DE28: @ 0x0807DE28
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r1, #1
	movs r2, #0
	bl sub_0807E428
_0807DE38:
	ldr r0, [r4, #0x40]
	subs r0, #1
	cmp r0, #4
	bhi _0807DE38
	lsls r0, r0, #2
	ldr r1, _0807DE4C @ =_0807DE50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807DE4C: .4byte _0807DE50
_0807DE50: @ jump table
	.4byte _0807DE64 @ case 0
	.4byte _0807DE6E @ case 1
	.4byte _0807DE90 @ case 2
	.4byte _0807DE94 @ case 3
	.4byte _0807DEB2 @ case 4
_0807DE64:
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	b _0807DE7A
_0807DE6E:
	cmp r5, #1
	bne _0807DE84
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
_0807DE7A:
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0807DE38
_0807DE84:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl sub_0807E428
	b _0807DE38
_0807DE90:
	movs r0, #0
	b _0807DECE
_0807DE94:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _0807DEAA
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807DEAA:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #1
	b _0807DECE
_0807DEB2:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _0807DEC8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807DEC8:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #2
_0807DECE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807DED4
sub_0807DED4: @ 0x0807DED4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807E61C
	b _0807DEF4
_0807DEDE:
	movs r0, #1
	bl setsleep
	movs r0, #1
	movs r1, #0
	bl sub_08073018
	bl sub_08072B70
	bl sub_08072D0C
_0807DEF4:
	ldr r0, [r4, #0x40]
	cmp r0, #1
	beq _0807DEDE
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807DF00
sub_0807DF00: @ 0x0807DF00
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x34
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r5, r4, #0
	adds r5, #0x35
	movs r2, #0
	ldrsb r2, [r5, r2]
	subs r2, #1
	adds r7, r4, #0
	adds r7, #0x36
	movs r3, #0
	ldrsb r3, [r7, r3]
	bl sub_0807E994
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807DF30
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	b _0807DF54
_0807DF30:
	movs r1, #0
	ldrsb r1, [r6, r1]
	subs r1, #1
	movs r2, #0
	ldrsb r2, [r5, r2]
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r4, #0
	bl sub_0807E994
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807DF4E
	movs r0, #0
	b _0807DF56
_0807DF4E:
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
_0807DF54:
	movs r0, #1
_0807DF56:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807DF5C
sub_0807DF5C: @ 0x0807DF5C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x34
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r5, r6, #0
	adds r5, #0x35
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r2, #1
	adds r7, r6, #0
	adds r7, #0x36
	movs r3, #0
	ldrsb r3, [r7, r3]
	bl sub_0807E994
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807DF8C
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _0807DFD2
_0807DF8C:
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, #1
	movs r2, #0
	ldrsb r2, [r5, r2]
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0807E994
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0807DFB0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _0807DFD2
_0807DFB0:
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, #1
	adds r0, r6, #0
	movs r2, #2
	movs r3, #0
	bl sub_0807E994
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807DFCA
	movs r0, #0
	b _0807DFD4
_0807DFCA:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	strb r5, [r7]
_0807DFD2:
	movs r0, #1
_0807DFD4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807DFDC
sub_0807DFDC: @ 0x0807DFDC
	push {r4, lr}
	mov ip, r0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r4, ip
	adds r4, #0x36
	movs r3, #0
	ldrsb r3, [r4, r3]
	subs r3, #1
	mov r0, ip
	bl sub_0807E994
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807E006
	movs r0, #0
	b _0807E00E
_0807E006:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
_0807E00E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0807E014
sub_0807E014: @ 0x0807E014
	push {r4, lr}
	mov ip, r0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r4, ip
	adds r4, #0x36
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r3, #1
	mov r0, ip
	bl sub_0807E994
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807E03E
	movs r0, #0
	b _0807E046
_0807E03E:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r0, #1
_0807E046:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0807E04C
sub_0807E04C: @ 0x0807E04C
	push {r4, r5, lr}
	ldr r2, [r0, #0x1c]
	adds r5, r2, #0
	adds r5, #0xb0
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r0, r4
	adds r2, #0xc0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807E088
sub_0807E088: @ 0x0807E088
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x50
	adds r6, r0, #0
	movs r0, #0x34
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #0x35
	adds r2, r2, r6
	mov r8, r2
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r7, r6, #0
	adds r7, #0x36
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0807E994
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	mov r0, sp
	bl goods_2c0__5Goods
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl _._5Goods
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #1
	beq _0807E0F6
	movs r0, #0
	b _0807E154
_0807E0F6:
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r0, r8
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0807E994
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r0, r8
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0807EA24
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08065148
	str r0, [r6, #0x38]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_0807E428
_0807E154:
	add sp, #0x50
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807E164
sub_0807E164: @ 0x0807E164
	push {lr}
	movs r1, #4
	movs r2, #0
	bl sub_0807E428
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807E174
sub_0807E174: @ 0x0807E174
	push {r4, r5, r6, r7, lr}
	sub sp, #0x180
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r0, [r7, #0x38]
	ldr r1, [r0, #0x1c]
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r7, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl __16UnitTargetChoiceUsP4Unit
	mov r0, sp
	bl sub_08076B30
	cmp r0, #1
	beq _0807E212
	cmp r0, #1
	bgt _0807E1D4
	cmp r0, #0
	beq _0807E1DA
	b _0807E242
_0807E1D4:
	cmp r0, #2
	beq _0807E238
	b _0807E242
_0807E1DA:
	movs r6, #0
	b _0807E202
_0807E1DE:
	ldr r5, [r7, #0x38]
	ldr r4, [r5, #0x1c]
	movs r3, #0xb4
	lsls r3, r3, #1
	adds r4, r4, r3
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r0, sp
	adds r1, r6, #0
	bl attackdata_118__10UnitTargeti
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r6, #1
_0807E202:
	mov r0, sp
	bl attackdata_110__C10UnitTarget
	cmp r6, r0
	blt _0807E1DE
	adds r0, r7, #0
	movs r1, #3
	b _0807E230
_0807E212:
	ldr r2, [r7, #0x38]
	cmp r2, #0
	beq _0807E228
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807E228:
	movs r0, #0
	str r0, [r7, #0x38]
	adds r0, r7, #0
	movs r1, #1
_0807E230:
	movs r2, #0
	bl sub_0807E428
	b _0807E242
_0807E238:
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	bl sub_0807E428
_0807E242:
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sp
	movs r1, #2
	bl _._16UnitTargetChoice
	add sp, #0x180
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807E264
sub_0807E264: @ 0x0807E264
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0807E31C
	adds r0, #0xc
	movs r1, #0
	bl sub_0806D7DC
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806DB38
	movs r0, #0
	movs r3, #0xb8
	mov sb, r3
_0807E296:
	movs r4, #0
	adds r1, r0, #1
	mov r8, r1
	mov r6, sb
	muls r6, r0, r6
	adds r0, r6, #0
	adds r0, #0xb4
	adds r7, r5, r0
_0807E2A6:
	movs r0, #0x5c
	muls r0, r4, r0
	adds r1, r6, r5
	adds r1, r0, r1
	adds r1, #0xb4
	ldr r2, [r1, #0x1c]
	adds r2, #0x78
	adds r0, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
	cmp r4, #1
	ble _0807E2A6
	mov r0, r8
	cmp r0, #2
	ble _0807E296
	movs r1, #0xde
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806DB38
	ldr r3, _0807E328 @ =0x00000414
	adds r0, r5, r3
	movs r1, #0
	bl sub_0806DB38
	movs r1, #0x96
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806D7DC
	ldr r3, _0807E32C @ =0x0000051C
	adds r0, r5, r3
	movs r1, #0
	bl sub_080867D4
	ldr r1, _0807E330 @ =0x0000054C
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806E948
	movs r3, #0xb5
	lsls r3, r3, #3
	adds r0, r5, r3
	movs r1, #0
	bl sub_0806E948
	ldr r1, _0807E334 @ =0x00000604
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806DB38
_0807E31C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E328: .4byte 0x00000414
_0807E32C: .4byte 0x0000051C
_0807E330: .4byte 0x0000054C
_0807E334: .4byte 0x00000604

	thumb_func_start sub_0807E338
sub_0807E338: @ 0x0807E338
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807E3FA
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #1
	bl sub_0806D7DC
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl sub_0806DB38
	movs r0, #0
	movs r3, #0xb8
	mov sb, r3
_0807E36E:
	movs r4, #0
	adds r1, r0, #1
	mov r8, r1
	mov r6, sb
	muls r6, r0, r6
	adds r0, r6, #0
	adds r0, #0xb4
	adds r7, r5, r0
_0807E37E:
	movs r0, #0x5c
	muls r0, r4, r0
	adds r1, r6, r5
	adds r1, r0, r1
	adds r1, #0xb4
	ldr r2, [r1, #0x1c]
	adds r2, #0x78
	adds r0, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #1
	bl _call_via_r2
	adds r4, #1
	cmp r4, #1
	ble _0807E37E
	mov r0, r8
	cmp r0, #2
	ble _0807E36E
	movs r1, #0xde
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl sub_0806DB38
	ldr r3, _0807E408 @ =0x00000414
	adds r0, r5, r3
	movs r1, #1
	bl sub_0806DB38
	movs r1, #0x96
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #1
	bl sub_0806D7DC
	ldr r3, _0807E40C @ =0x0000051C
	adds r0, r5, r3
	movs r1, #1
	bl sub_080867D4
	ldr r1, _0807E410 @ =0x0000054C
	adds r0, r5, r1
	movs r1, #1
	bl sub_0806E948
	movs r3, #0xb5
	lsls r3, r3, #3
	adds r0, r5, r3
	movs r1, #1
	bl sub_0806E948
	ldr r1, _0807E414 @ =0x00000604
	adds r0, r5, r1
	movs r1, #1
	bl sub_0806DB38
	adds r0, r5, #0
	bl sub_0807E61C
_0807E3FA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E408: .4byte 0x00000414
_0807E40C: .4byte 0x0000051C
_0807E410: .4byte 0x0000054C
_0807E414: .4byte 0x00000604

	thumb_func_start sub_0807E418
sub_0807E418: @ 0x0807E418
	push {lr}
	movs r1, #5
	movs r2, #0
	bl sub_0807E428
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807E428
sub_0807E428: @ 0x0807E428
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x40]
	cmp r0, r1
	bne _0807E43A
	cmp r2, #1
	bne _0807E440
_0807E43A:
	str r1, [r3, #0x40]
	movs r0, #1
	b _0807E442
_0807E440:
	movs r0, #0
_0807E442:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807E448
sub_0807E448: @ 0x0807E448
	ldr r0, [r0, #0x38]
	bx lr

	thumb_func_start sub_0807E44C
sub_0807E44C: @ 0x0807E44C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807E486
	ldr r0, [r4, #0x40]
	cmp r0, #5
	beq _0807E486
	cmp r0, #1
	bne _0807E486
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
	bne _0807E486
	adds r0, r4, #0
	bl sub_0807E61C
	movs r0, #0xd0
	bl playSound
_0807E486:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807E48C
sub_0807E48C: @ 0x0807E48C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807E4C6
	ldr r0, [r4, #0x40]
	cmp r0, #5
	beq _0807E4C6
	cmp r0, #1
	bne _0807E4C6
	ldr r1, [r4, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807E4C6
	adds r0, r4, #0
	bl sub_0807E61C
	movs r0, #0xd0
	bl playSound
_0807E4C6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807E4CC
sub_0807E4CC: @ 0x0807E4CC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807E506
	ldr r0, [r4, #0x40]
	cmp r0, #5
	beq _0807E506
	cmp r0, #1
	bne _0807E506
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807E506
	adds r0, r4, #0
	bl sub_0807E61C
	movs r0, #0xd1
	bl playSound
_0807E506:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807E50C
sub_0807E50C: @ 0x0807E50C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807E546
	ldr r0, [r4, #0x40]
	cmp r0, #5
	beq _0807E546
	cmp r0, #1
	bne _0807E546
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807E546
	adds r0, r4, #0
	bl sub_0807E61C
	movs r0, #0xd1
	bl playSound
_0807E546:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807E54C
sub_0807E54C: @ 0x0807E54C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807E586
	ldr r0, [r4, #0x40]
	cmp r0, #5
	beq _0807E586
	cmp r0, #1
	bne _0807E586
	ldr r1, [r4, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807E586
	adds r0, r4, #0
	bl sub_0807E61C
	movs r0, #0xda
	bl playSound
_0807E586:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807E58C
sub_0807E58C: @ 0x0807E58C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807E5D4
	ldr r0, [r4, #0x40]
	cmp r0, #5
	beq _0807E5D4
	cmp r0, #1
	bne _0807E5D4
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
	bne _0807E5C8
	adds r0, r4, #0
	bl sub_0807E61C
	movs r0, #0xd2
	bl playSound
	b _0807E5D4
_0807E5C8:
	adds r0, r4, #0
	bl sub_0807E61C
	movs r0, #0xd3
	bl playSound
_0807E5D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807E5DC
sub_0807E5DC: @ 0x0807E5DC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807E616
	ldr r0, [r4, #0x40]
	cmp r0, #5
	beq _0807E616
	cmp r0, #1
	bne _0807E616
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
	bne _0807E616
	adds r0, r4, #0
	bl sub_0807E61C
	movs r0, #0xd3
	bl playSound
_0807E616:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807E61C
sub_0807E61C: @ 0x0807E61C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	adds r6, r0, #0
	ldr r0, [r6, #0x40]
	cmp r0, #5
	bne _0807E632
	b _0807E974
_0807E632:
	movs r0, #0
	str r0, [sp, #0x74]
	adds r1, r6, #0
	adds r1, #0x34
	str r1, [sp, #0x84]
	add r2, sp, #0x50
	mov r8, r2
	adds r3, r6, #0
	adds r3, #0x36
	str r3, [sp, #0x8c]
	adds r0, r6, #0
	adds r0, #0x35
	str r0, [sp, #0x88]
	mov r1, sp
	adds r1, #0x70
	str r1, [sp, #0x90]
	add r7, sp, #0x5c
	mov r2, sp
	adds r2, #0x68
	str r2, [sp, #0x80]
	add r3, sp, #0x6c
	mov sl, r3
_0807E65E:
	movs r0, #0
	mov sb, r0
	ldr r1, [sp, #0x74]
	adds r1, #1
	str r1, [sp, #0x94]
	ldr r3, [sp, #0x74]
	movs r0, #0xb8
	adds r2, r3, #0
	muls r2, r0, r2
	str r2, [sp, #0x78]
	adds r0, r2, #0
	adds r0, #0xb4
	adds r0, r6, r0
	str r0, [sp, #0x7c]
_0807E67A:
	ldr r2, [sp, #0x84]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r6, #0
	ldr r2, [sp, #0x74]
	mov r3, sb
	bl sub_0807E994
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0807E694
	b _0807E794
_0807E694:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	mov r0, r8
	bl __3Msg
	ldr r0, [sp, #0x84]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r6, #0
	ldr r2, [sp, #0x74]
	mov r3, sb
	bl sub_0807EAB4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807E6F4
	mov r0, r8
	ldr r1, _0807E6F0 @ =0x0000FF22
	bl sub_0806E34C
	adds r0, r7, #0
	mov r1, sp
	bl name__C5Goods
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806E374
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
	b _0807E714
	.align 2, 0
_0807E6F0: .4byte 0x0000FF22
_0807E6F4:
	mov r0, r8
	movs r1, #0
	bl sub_0806E34C
	adds r0, r7, #0
	mov r1, sp
	bl name__C5Goods
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806E374
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
_0807E714:
	movs r0, #0x5c
	mov r2, sb
	muls r2, r0, r2
	ldr r1, [sp, #0x78]
	adds r0, r1, r6
	adds r0, r2, r0
	adds r4, r0, #0
	adds r4, #0xb4
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	ldr r3, [sp, #0x7c]
	adds r5, r3, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	mov r0, sp
	bl goods_2c0__5Goods
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807E766
	ldr r2, [r4, #0x1c]
	adds r2, #0x90
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r5, r0
	movs r1, #0
	ldr r3, [sp, #0x80]
	strb r1, [r3]
	strb r1, [r3, #1]
	strb r1, [r3, #2]
	ldr r2, [r2, #4]
	ldr r1, [sp, #0x80]
	bl _call_via_r2
	b _0807E782
_0807E766:
	ldr r2, [r4, #0x1c]
	adds r2, #0x90
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	movs r1, #0xa0
	mov r3, sl
	strb r1, [r3]
	strb r1, [r3, #1]
	strb r1, [r3, #2]
	ldr r2, [r2, #4]
	mov r1, sl
	bl _call_via_r2
_0807E782:
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	mov r0, sp
	movs r1, #2
	bl _._5Goods
	b _0807E7C8
_0807E794:
	movs r0, #0x5c
	mov r4, sb
	muls r4, r0, r4
	ldr r1, [sp, #0x78]
	adds r0, r1, r6
	adds r0, r4, r0
	adds r0, #0xb4
	ldr r5, [r0, #0x1c]
	adds r5, #0x80
	ldr r2, [sp, #0x7c]
	adds r4, r2, r4
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r4, r4, r0
	mov r0, sp
	bl __3Msg
	ldr r2, [r5, #4]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_0807E7C8:
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #1
	bgt _0807E7D4
	b _0807E67A
_0807E7D4:
	ldr r2, [sp, #0x94]
	str r2, [sp, #0x74]
	cmp r2, #2
	bgt _0807E7DE
	b _0807E65E
_0807E7DE:
	movs r3, #0xb7
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r1, [sp, #0x8c]
	movs r2, #0
	ldrsb r2, [r1, r2]
	ldr r3, [sp, #0x88]
	movs r4, #0
	ldrsb r4, [r3, r4]
	movs r1, #0x6c
	adds r3, r2, #0
	muls r3, r1, r3
	adds r3, #3
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	subs r1, #3
	add r2, sp, #0x70
	strh r3, [r2]
	ldr r2, [sp, #0x90]
	strh r1, [r2, #2]
	ldr r1, [sp, #0x90]
	bl sub_0808B1A8
	movs r3, #0xde
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r0, [sp, #0x84]
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807E994
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	bl sub_0806DB38
	ldr r1, _0807E984 @ =0x00000414
	adds r4, r6, r1
	ldr r2, [sp, #0x84]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r1, #3
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807E994
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	bl sub_0806DB38
	movs r3, #0x96
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806D7DC
	ldr r3, [sp, #0x84]
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x88]
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, [sp, #0x8c]
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r6, #0
	bl sub_0807E994
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	ldr r3, _0807E988 @ =0x0000051C
	adds r4, r6, r3
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080867D4
	mov r0, sp
	bl id__C5Goods
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080867F8
	ldr r3, _0807E98C @ =0x0000054C
	adds r4, r6, r3
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806E948
	mov r0, r8
	mov r1, sp
	movs r2, #0
	bl action_fixme__6Actioni
	adds r0, r4, #0
	mov r1, r8
	bl sub_08071150
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	movs r3, #0xb5
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806E948
	mov r0, r8
	mov r1, sp
	movs r2, #1
	bl action_fixme__6Actioni
	adds r0, r4, #0
	mov r1, r8
	bl sub_08071150
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r3, _0807E990 @ =0x00000604
	adds r4, r6, r3
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806DB38
	mov r0, sp
	movs r1, #2
	bl _._5Goods
_0807E974:
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E984: .4byte 0x00000414
_0807E988: .4byte 0x0000051C
_0807E98C: .4byte 0x0000054C
_0807E990: .4byte 0x00000604

	thumb_func_start sub_0807E994
sub_0807E994: @ 0x0807E994
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	cmp r1, #0
	blt _0807EA1C
	cmp r2, #0
	blt _0807EA1C
	cmp r2, #2
	bgt _0807EA1C
	cmp r3, #0
	blt _0807EA1C
	cmp r3, #1
	bgt _0807EA1C
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r1, r0, r3
	adds r6, r5, #0
	adds r6, #0x28
	ldr r0, [r6, #4]
	cmp r1, r0
	bge _0807EA1C
	lsls r7, r1, #1
	ldr r0, [r6, #8]
	adds r0, r0, r7
	ldrh r4, [r0]
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bge _0807EA1C
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0x84
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r6, #8]
	adds r1, r1, r7
	ldrh r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0807EA1E
_0807EA1C:
	movs r0, #0
_0807EA1E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807EA24
sub_0807EA24: @ 0x0807EA24
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	cmp r1, #0
	blt _0807EAAC
	cmp r2, #0
	blt _0807EAAC
	cmp r2, #2
	bgt _0807EAAC
	cmp r3, #0
	blt _0807EAAC
	cmp r3, #1
	bgt _0807EAAC
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r1, r0, r3
	adds r6, r5, #0
	adds r6, #0x28
	ldr r0, [r6, #4]
	cmp r1, r0
	bge _0807EAAC
	lsls r7, r1, #1
	ldr r0, [r6, #8]
	adds r0, r0, r7
	ldrh r4, [r0]
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bge _0807EAAC
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0x85
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r6, #8]
	adds r1, r1, r7
	ldrh r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0807EAAE
_0807EAAC:
	movs r0, #0
_0807EAAE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807EAB4
sub_0807EAB4: @ 0x0807EAB4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	cmp r1, #0
	blt _0807EB38
	cmp r2, #0
	blt _0807EB38
	cmp r2, #2
	bgt _0807EB38
	cmp r3, #0
	blt _0807EB38
	cmp r3, #1
	bgt _0807EB38
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r1, r0, r3
	adds r6, r5, #0
	adds r6, #0x28
	ldr r0, [r6, #4]
	cmp r1, r0
	bge _0807EB38
	lsls r7, r1, #1
	ldr r0, [r6, #8]
	adds r0, r0, r7
	ldrh r4, [r0]
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bge _0807EB38
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0x86
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r6, #8]
	adds r1, r1, r7
	ldrh r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	b _0807EB3A
_0807EB38:
	movs r0, #0
_0807EB3A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807EB40
sub_0807EB40: @ 0x0807EB40
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807EB58
sub_0807EB58: @ 0x0807EB58
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r1, #0x20]
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _0807EB82
	ldr r1, [r5, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_0807EB82:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0807EB88
sub_0807EB88: @ 0x0807EB88
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807EBA0
sub_0807EBA0: @ 0x0807EBA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	mov sl, r0
	adds r6, r1, #0
	bl __4Base
	ldr r0, _0807EF78 @ =vt_09F82990
	mov r1, sl
	str r0, [r1, #0x1c]
	mov r5, sl
	adds r5, #0x28
	movs r4, #0
	str r4, [r1, #0x28]
	str r4, [r5, #4]
	str r4, [r5, #8]
	mov r0, sl
	adds r0, #0x48
	bl sub_08083BBC
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, sl
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, sl
	bl sub_08071F8C
	mov r3, sl
	str r6, [r3, #0x24]
	movs r1, #0
	strh r4, [r3, #0x34]
	str r4, [r3, #0x38]
	mov r0, sl
	adds r0, #0x3c
	strb r1, [r0]
	str r4, [r3, #0x40]
	adds r0, #8
	strh r4, [r0]
	mov r0, sl
	bl sub_0807F12C
	movs r7, #0
	ldr r0, [r5, #4]
	cmp r7, r0
	blt _0807EC0A
	b _0807ED1E
_0807EC0A:
	movs r6, #0x9a
	lsls r6, r6, #1
	add r6, sl
	mov r4, sp
	adds r4, #0x28
	str r4, [sp, #0x30]
_0807EC16:
	movs r0, #0x90
	bl __builtin_new
	bl sub_0806D8EC
	str r0, [sp, #0x28]
	ldr r0, [r6, #4]
	adds r4, r0, #1
	ldr r0, [r6]
	mov r5, sl
	adds r5, #0x28
	str r5, [sp, #0x38]
	lsls r1, r7, #2
	str r1, [sp, #0x3c]
	add r3, sp, #0x10
	mov r8, r3
	add r5, sp, #0x1c
	mov sb, r5
	mov r1, sp
	adds r1, #0x2c
	str r1, [sp, #0x34]
	lsls r3, r7, #4
	str r3, [sp, #0x40]
	adds r7, #1
	cmp r0, r4
	bge _0807EC82
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _0807EC54
	adds r1, r0, #0
_0807EC54:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [r6, #8]
	adds r2, r5, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0807EC74
	adds r1, r0, #0
_0807EC6A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0807EC6A
_0807EC74:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0807EC7E
	bl __builtin_vec_delete
_0807EC7E:
	str r4, [r6]
	str r5, [r6, #8]
_0807EC82:
	ldr r2, [r6, #4]
	ldr r3, [r6, #8]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r4, [sp, #0x30]
	ldr r1, [r4]
	str r1, [r0]
	adds r2, #1
	str r2, [r6, #4]
	ldr r5, [sp, #0x3c]
	adds r3, r3, r5
	ldr r5, [r3]
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	add r0, sp, #4
	ldr r1, _0807EF7C @ =0x00000291
	bl sub_080706A0
	mov r0, r8
	movs r1, #2
	bl sub_080706A0
	mov r0, sb
	ldr r1, _0807EF80 @ =0x00000283
	bl sub_080706A0
	ldr r4, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	mov r2, r8
	mov r3, sb
	bl _call_via_r4
	ldr r3, _0807EF84 @ =_vt.1D
	str r3, [sp, #0x24]
	str r3, [sp, #0x18]
	str r3, [sp, #0xc]
	ldr r0, [r6, #8]
	ldr r4, [sp, #0x3c]
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r5, #0
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	movs r3, #0
	add r1, sp, #0x2c
	add r4, sp, #0x40
	ldrh r4, [r4]
	strh r4, [r1]
	ldr r5, [sp, #0x34]
	strh r3, [r5, #2]
	ldr r2, [r2, #4]
	ldr r1, [sp, #0x34]
	bl _call_via_r2
	ldr r0, [r6, #8]
	ldr r1, [sp, #0x3c]
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x90
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #4
	bl _call_via_r2
	ldr r4, [sp, #0x38]
	ldr r0, [r4, #4]
	cmp r7, r0
	bge _0807ED1E
	b _0807EC16
_0807ED1E:
	add r0, sp, #4
	bl __4Base
	ldr r5, _0807EF88 @ =_vt.3Unk
	mov r8, r5
	ldr r0, _0807EF8C @ =_vt.12LeftKeyPress
	str r0, [sp, #0x20]
	movs r6, #0xa0
	lsls r6, r6, #1
	add r6, sl
	ldr r0, _0807EF90 @ =gUnknown_08109EC0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EF94 @ =_vt.16LeftKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EF98 @ =_vt.13RightKeyPress
	str r0, [sp, #0x20]
	ldr r0, _0807EF9C @ =gUnknown_08109EC8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EFA0 @ =_vt.17RightKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r4, r8
	str r4, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EFA4 @ =_vt.9AKeyPress
	str r0, [sp, #0x20]
	ldr r0, _0807EFA8 @ =gUnknown_08109ED0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EFAC @ =_vt.13AKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EFB0 @ =_vt.9LKeyPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EFB4 @ =_vt.13LKeyLongPress
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r4, r8
	str r4, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0807EFB8 @ =_vt.9BKeyPress
	str r0, [sp, #0x20]
	ldr r0, _0807EFBC @ =gUnknown_08109ED8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r5, r8
	str r5, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r7, _0807EFC0 @ =_vt.7Suspend
	str r7, [sp, #0x20]
	ldr r0, _0807EFC4 @ =gUnknown_08109EE0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	movs r4, #0
	str r4, [sp, #0x24]
	ldr r5, _0807EFC8 @ =_vt.10UnitEscape
	mov sb, r5
	str r5, [sp, #0x20]
	ldr r0, _0807EFCC @ =gUnknown_08109EE8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x24]
	mov r3, sb
	str r3, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	b _0807EFD0
	.align 2, 0
_0807EF78: .4byte vt_09F82990
_0807EF7C: .4byte 0x00000291
_0807EF80: .4byte 0x00000283
_0807EF84: .4byte _vt.1D
_0807EF88: .4byte _vt.3Unk
_0807EF8C: .4byte _vt.12LeftKeyPress
_0807EF90: .4byte gUnknown_08109EC0
_0807EF94: .4byte _vt.16LeftKeyLongPress
_0807EF98: .4byte _vt.13RightKeyPress
_0807EF9C: .4byte gUnknown_08109EC8
_0807EFA0: .4byte _vt.17RightKeyLongPress
_0807EFA4: .4byte _vt.9AKeyPress
_0807EFA8: .4byte gUnknown_08109ED0
_0807EFAC: .4byte _vt.13AKeyLongPress
_0807EFB0: .4byte _vt.9LKeyPress
_0807EFB4: .4byte _vt.13LKeyLongPress
_0807EFB8: .4byte _vt.9BKeyPress
_0807EFBC: .4byte gUnknown_08109ED8
_0807EFC0: .4byte _vt.7Suspend
_0807EFC4: .4byte gUnknown_08109EE0
_0807EFC8: .4byte _vt.10UnitEscape
_0807EFCC: .4byte gUnknown_08109EE8
_0807EFD0:
	movs r1, #0
	str r1, [sp, #0x24]
	mov r3, sb
	str r3, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x24]
	ldr r3, _0807F120 @ =_vt.7UnitDie
	mov sb, r3
	str r3, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x24]
	mov r3, sb
	str r3, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x24]
	mov r3, sb
	str r3, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r4, r8
	str r4, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r7, _0807F124 @ =_vt.6Resume
	str r7, [sp, #0x20]
	ldr r0, _0807F128 @ =gUnknown_08109EF0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sl
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	mov r4, sl
	ldrh r1, [r4, #0x34]
	mov r0, sl
	bl sub_080801F8
	mov r0, sl
	bl sub_080802A4
	mov r0, sl
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807F120: .4byte _vt.7UnitDie
_0807F124: .4byte _vt.6Resume
_0807F128: .4byte gUnknown_08109EF0

	thumb_func_start sub_0807F12C
sub_0807F12C: @ 0x0807F12C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r6, #0
	b _0807F1CC
_0807F13E:
	ldr r1, [r7, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r6, #0
	bl _call_via_r2
	mov r1, sp
	strh r0, [r1]
	adds r4, r7, #0
	adds r4, #0x28
	mov r8, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x28]
	adds r6, #1
	mov sb, r6
	cmp r0, r5
	bge _0807F1B8
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0807F186
	adds r1, r0, #0
_0807F186:
	adds r5, r1, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0807F1AA
	adds r1, r0, #0
_0807F19C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807F19C
_0807F1AA:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807F1B4
	bl __builtin_vec_delete
_0807F1B4:
	str r5, [r4]
	str r6, [r4, #8]
_0807F1B8:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r6, r8
	ldrh r1, [r6]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r6, sb
_0807F1CC:
	ldr r1, [r7, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0xf2
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0807F13E
	movs r6, #0
	movs r5, #0
	b _0807F21C
_0807F1FA:
	adds r0, r5, #0
	bl sub_08072AA4
	ldr r2, [r0, #0x1c]
	movs r1, #0xca
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _0807F21A
	adds r6, #1
_0807F21A:
	adds r5, #1
_0807F21C:
	bl sub_08072A88
	cmp r5, r0
	bge _0807F240
	adds r0, r5, #0
	bl sub_08072AA4
	adds r4, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _0807F1FA
_0807F240:
	cmp r6, #0
	bgt _0807F2AA
	movs r0, #0xd
	mov r1, sp
	adds r1, #2
	strh r0, [r1]
	adds r4, r7, #0
	adds r4, #0x28
	mov r8, r1
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x28]
	cmp r0, r5
	bge _0807F298
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0807F266
	adds r0, r1, #0
_0807F266:
	adds r5, r0, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0807F28A
	adds r1, r0, #0
_0807F27C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807F27C
_0807F28A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807F294
	bl __builtin_vec_delete
_0807F294:
	str r5, [r4]
	str r6, [r4, #8]
_0807F298:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0807F2AA:
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807F394
	ldr r1, [r7, #0x1c]
	adds r1, #0x88
	movs r6, #0
	ldrsh r0, [r1, r6]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r0, #0
	bl sub_08072AA4
	cmp r4, r0
	bne _0807F394
	movs r0, #0xd
	add r1, sp, #4
	strh r0, [r1]
	adds r5, r7, #0
	adds r5, #0x28
	mov r8, r1
	movs r1, #0
	ldr r3, [r5, #4]
	mov sl, r5
	movs r0, #6
	add r0, sp
	mov sb, r0
	cmp r1, r3
	bge _0807F32E
	ldr r0, [r5, #8]
	adds r4, r0, #2
	adds r2, r0, #0
_0807F2F4:
	ldrh r6, [r2]
	mov ip, r6
	mov r0, r8
	ldrh r0, [r0]
	cmp ip, r0
	bne _0807F322
	adds r0, r1, #1
	subs r0, r3, r0
	adds r3, r4, #0
	ldr r4, [r5, #4]
	cmp r0, #0
	ble _0807F31C
	adds r1, r0, #0
_0807F30E:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807F30E
_0807F31C:
	subs r0, r4, #1
	str r0, [r5, #4]
	b _0807F32E
_0807F322:
	adds r4, #2
	adds r2, #2
	adds r1, #1
	ldr r3, [r5, #4]
	cmp r1, r3
	blt _0807F2F4
_0807F32E:
	movs r0, #0xe
	mov r1, sb
	strh r0, [r1]
	mov r4, sl
	movs r2, #6
	add r2, sp
	mov r8, r2
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x28]
	cmp r0, r5
	bge _0807F382
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0807F350
	adds r0, r1, #0
_0807F350:
	adds r5, r0, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0807F374
	adds r1, r0, #0
_0807F366:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807F366
_0807F374:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0807F37E
	bl __builtin_vec_delete
_0807F37E:
	str r5, [r4]
	str r6, [r4, #8]
_0807F382:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0807F394:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807F3A4
sub_0807F3A4: @ 0x0807F3A4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0807F420 @ =vt_09F82990
	str r0, [r6, #0x1c]
	movs r4, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0, #4]
	cmp r4, r0
	bge _0807F3E2
	adds r5, r6, r1
_0807F3BE:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0807F3DA
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F3DA:
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0807F3BE
_0807F3E2:
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #2
	bl _._10KeyFocuser
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r6, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0807F3FE
	bl __builtin_vec_delete
_0807F3FE:
	adds r0, r6, #0
	adds r0, #0x48
	movs r1, #2
	bl _._12TextAccessor
	ldr r0, [r6, #0x30]
	cmp r0, #0
	beq _0807F412
	bl __builtin_vec_delete
_0807F412:
	adds r0, r6, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F420: .4byte vt_09F82990

	thumb_func_start sub_0807F424
sub_0807F424: @ 0x0807F424
	push {r4, lr}
	adds r4, r0, #0
_0807F428:
	movs r0, #0
	str r0, [r4, #0x38]
	str r0, [r4, #0x40]
_0807F42E:
	movs r0, #1
	bl setsleep
	movs r0, #1
	movs r1, #0
	bl sub_08073018
	bl sub_08072B70
	bl sub_08072D0C
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0807F42E
	cmp r0, #2
	beq _0807F496
	cmp r0, #2
	bgt _0807F49A
	cmp r0, #1
	bne _0807F49A
	ldr r1, [r4, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0807F4A4
	cmp r0, #1
	beq _0807F484
	cmp r0, #1
	bgt _0807F47A
	cmp r0, #0
	beq _0807F480
	b _0807F484
_0807F47A:
	cmp r0, #2
	beq _0807F49A
	b _0807F484
_0807F480:
	movs r0, #0
	b _0807F49C
_0807F484:
	ldr r1, [r4, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0807F428
_0807F496:
	movs r0, #1
	b _0807F49C
_0807F49A:
	movs r0, #2
_0807F49C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807F4A4
sub_0807F4A4: @ 0x0807F4A4
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x34]
	lsls r1, r1, #1
	ldr r0, [r2, #0x30]
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0xe
	bhi _0807F550
	lsls r0, r0, #2
	ldr r1, _0807F4C0 @ =_0807F4C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807F4C0: .4byte _0807F4C4
_0807F4C4: @ jump table
	.4byte _0807F500 @ case 0
	.4byte _0807F500 @ case 1
	.4byte _0807F500 @ case 2
	.4byte _0807F500 @ case 3
	.4byte _0807F500 @ case 4
	.4byte _0807F508 @ case 5
	.4byte _0807F510 @ case 6
	.4byte _0807F518 @ case 7
	.4byte _0807F520 @ case 8
	.4byte _0807F528 @ case 9
	.4byte _0807F530 @ case 10
	.4byte _0807F538 @ case 11
	.4byte _0807F550 @ case 12
	.4byte _0807F540 @ case 13
	.4byte _0807F548 @ case 14
_0807F500:
	adds r0, r2, #0
	bl sub_0807F558
	b _0807F552
_0807F508:
	adds r0, r2, #0
	bl sub_0807F5D0
	b _0807F552
_0807F510:
	adds r0, r2, #0
	bl sub_0807F648
	b _0807F552
_0807F518:
	adds r0, r2, #0
	bl sub_0807F7DC
	b _0807F552
_0807F520:
	adds r0, r2, #0
	bl sub_0807F964
	b _0807F552
_0807F528:
	adds r0, r2, #0
	bl sub_0807FAF4
	b _0807F552
_0807F530:
	adds r0, r2, #0
	bl sub_0807FC84
	b _0807F552
_0807F538:
	adds r0, r2, #0
	bl sub_0807FE08
	b _0807F552
_0807F540:
	adds r0, r2, #0
	bl sub_0807FF98
	b _0807F552
_0807F548:
	adds r0, r2, #0
	bl sub_08080040
	b _0807F552
_0807F550:
	movs r0, #1
_0807F552:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807F558
sub_0807F558: @ 0x0807F558
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r0, #1
	bl sub_08061A4C
	adds r1, r0, #0
	str r1, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08080060
	cmp r0, #1
	beq _0807F58E
	cmp r0, #1
	bgt _0807F5AC
	cmp r0, #0
	bne _0807F5AC
	movs r0, #0
	b _0807F5C8
_0807F58E:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _0807F5A4
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F5A4:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #1
	b _0807F5C8
_0807F5AC:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _0807F5C2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F5C2:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #2
_0807F5C8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807F5D0
sub_0807F5D0: @ 0x0807F5D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r0, #2
	bl sub_08061A4C
	adds r1, r0, #0
	str r1, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08080060
	cmp r0, #1
	beq _0807F606
	cmp r0, #1
	bgt _0807F624
	cmp r0, #0
	bne _0807F624
	movs r0, #0
	b _0807F640
_0807F606:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _0807F61C
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F61C:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #1
	b _0807F640
_0807F624:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _0807F63A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F63A:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #2
_0807F640:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807F648
sub_0807F648: @ 0x0807F648
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
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
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807F724
	movs r0, #0x8e
	lsls r0, r0, #1
	bl __builtin_new
	mov sl, r0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	add r3, sp, #0x14
	mov r8, r3
	mov r0, r8
	bl __3Msg
	add r6, sp, #0x20
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x2c
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #8
	adds r0, r4, #0
	movs r1, #0x79
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	mov r0, sl
	mov r1, sb
	adds r2, r4, #0
	bl sub_0808DFD4
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F720
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F720:
	adds r0, r4, #0
	b _0807F7CA
_0807F724:
	ldr r0, _0807F794 @ =0x00000874
	bl __builtin_new
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl __9DebugMenu
	str r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _0807F798
	cmp r0, #1
	bgt _0807F7B2
	cmp r0, #0
	bne _0807F7B2
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r5, #0x38]
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F790
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F790:
	movs r0, #0
	b _0807F7CA
	.align 2, 0
_0807F794: .4byte 0x00000874
_0807F798:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F7AE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F7AE:
	movs r0, #1
	b _0807F7CA
_0807F7B2:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F7C8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F7C8:
	movs r0, #2
_0807F7CA:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807F7DC
sub_0807F7DC: @ 0x0807F7DC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807F8B2
	movs r0, #0x8e
	lsls r0, r0, #1
	bl __builtin_new
	mov sl, r0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	add r3, sp, #0x14
	mov r8, r3
	mov r0, r8
	bl __3Msg
	add r6, sp, #0x20
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x2c
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #8
	adds r0, r4, #0
	movs r1, #0x7a
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	mov r0, sl
	mov r1, sb
	adds r2, r4, #0
	bl sub_0808DFD4
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F8AE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F8AE:
	adds r0, r4, #0
	b _0807F954
_0807F8B2:
	movs r0, #0xd7
	lsls r0, r0, #3
	bl __builtin_new
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0807D3F4
	str r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	cmp r0, #1
	beq _0807F922
	cmp r0, #1
	bgt _0807F93C
	cmp r0, #0
	bne _0807F93C
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r5, #0x38]
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F91E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F91E:
	movs r0, #0
	b _0807F954
_0807F922:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F938
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F938:
	movs r0, #1
	b _0807F954
_0807F93C:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F952
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F952:
	movs r0, #2
_0807F954:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0807F964
sub_0807F964: @ 0x0807F964
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
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
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807FA40
	movs r0, #0x8e
	lsls r0, r0, #1
	bl __builtin_new
	mov sl, r0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	add r3, sp, #0x14
	mov r8, r3
	mov r0, r8
	bl __3Msg
	add r6, sp, #0x20
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x2c
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #8
	adds r0, r4, #0
	movs r1, #0x79
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	mov r0, sl
	mov r1, sb
	adds r2, r4, #0
	bl sub_0808DFD4
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FA3C
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FA3C:
	adds r0, r4, #0
	b _0807FAE2
_0807FA40:
	ldr r0, _0807FAAC @ =0x00000574
	bl __builtin_new
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0808CBD8
	str r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _0807FAB0
	cmp r0, #1
	bgt _0807FACA
	cmp r0, #0
	bne _0807FACA
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r5, #0x38]
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FAA8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FAA8:
	movs r0, #0
	b _0807FAE2
	.align 2, 0
_0807FAAC: .4byte 0x00000574
_0807FAB0:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FAC6
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FAC6:
	movs r0, #1
	b _0807FAE2
_0807FACA:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FAE0
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FAE0:
	movs r0, #2
_0807FAE2:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807FAF4
sub_0807FAF4: @ 0x0807FAF4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
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
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807FBD0
	movs r0, #0x8e
	lsls r0, r0, #1
	bl __builtin_new
	mov sl, r0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	add r3, sp, #0x14
	mov r8, r3
	mov r0, r8
	bl __3Msg
	add r6, sp, #0x20
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x2c
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #8
	adds r0, r4, #0
	movs r1, #0x79
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	mov r0, sl
	mov r1, sb
	adds r2, r4, #0
	bl sub_0808DFD4
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FBCC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FBCC:
	adds r0, r4, #0
	b _0807FC72
_0807FBD0:
	ldr r0, _0807FC3C @ =0x00000574
	bl __builtin_new
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0808CBD8
	str r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _0807FC40
	cmp r0, #1
	bgt _0807FC5A
	cmp r0, #0
	bne _0807FC5A
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r5, #0x38]
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FC38
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FC38:
	movs r0, #0
	b _0807FC72
	.align 2, 0
_0807FC3C: .4byte 0x00000574
_0807FC40:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FC56
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FC56:
	movs r0, #1
	b _0807FC72
_0807FC5A:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FC70
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FC70:
	movs r0, #2
_0807FC72:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807FC84
sub_0807FC84: @ 0x0807FC84
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
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
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807FD60
	movs r0, #0x8e
	lsls r0, r0, #1
	bl __builtin_new
	mov sl, r0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	add r3, sp, #0x14
	mov r8, r3
	mov r0, r8
	bl __3Msg
	add r6, sp, #0x20
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x2c
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #8
	adds r0, r4, #0
	movs r1, #0x79
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	mov r0, sl
	mov r1, sb
	adds r2, r4, #0
	bl sub_0808DFD4
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FD5C
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FD5C:
	adds r0, r4, #0
	b _0807FDF8
_0807FD60:
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xfc
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08073F88
	adds r1, r0, #0
	str r1, [r5, #0x38]
	adds r0, r5, #0
	bl sub_08080060
	cmp r0, #1
	beq _0807FDBE
	cmp r0, #1
	bgt _0807FDDC
	cmp r0, #0
	bne _0807FDDC
	movs r0, #0
	b _0807FDF8
_0807FDBE:
	ldr r2, [r5, #0x38]
	cmp r2, #0
	beq _0807FDD4
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FDD4:
	movs r0, #0
	str r0, [r5, #0x38]
	movs r0, #1
	b _0807FDF8
_0807FDDC:
	ldr r2, [r5, #0x38]
	cmp r2, #0
	beq _0807FDF2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FDF2:
	movs r0, #0
	str r0, [r5, #0x38]
	movs r0, #2
_0807FDF8:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0807FE08
sub_0807FE08: @ 0x0807FE08
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
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
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807FEE4
	movs r0, #0x8e
	lsls r0, r0, #1
	bl __builtin_new
	mov sl, r0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	add r3, sp, #0x14
	mov r8, r3
	mov r0, r8
	bl __3Msg
	add r6, sp, #0x20
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x2c
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #8
	adds r0, r4, #0
	movs r1, #0x79
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460
	mov r0, sl
	mov r1, sb
	adds r2, r4, #0
	bl sub_0808DFD4
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FEE0
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FEE0:
	adds r0, r4, #0
	b _0807FF86
_0807FEE4:
	ldr r0, _0807FF50 @ =0x00000574
	bl __builtin_new
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0808CBD8
	str r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _0807FF54
	cmp r0, #1
	bgt _0807FF6E
	cmp r0, #0
	bne _0807FF6E
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r5, #0x38]
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FF4C
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FF4C:
	movs r0, #0
	b _0807FF86
	.align 2, 0
_0807FF50: .4byte 0x00000574
_0807FF54:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FF6A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FF6A:
	movs r0, #1
	b _0807FF86
_0807FF6E:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807FF84
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FF84:
	movs r0, #2
_0807FF86:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807FF98
sub_0807FF98: @ 0x0807FF98
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r0, #3
	bl sub_08073F88
	adds r1, r0, #0
	str r1, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08080060
	adds r5, r0, #0
	cmp r5, #1
	beq _0807FFFE
	cmp r5, #1
	bgt _0808001C
	cmp r5, #0
	bne _0808001C
	ldr r0, [r4, #0x38]
	ldr r1, [r0, #0x1c]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _0807FFF8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FFF8:
	str r5, [r4, #0x38]
	movs r0, #0
	b _08080038
_0807FFFE:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _08080014
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08080014:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #1
	b _08080038
_0808001C:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _08080032
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08080032:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #2
_08080038:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08080040
sub_08080040: @ 0x08080040
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08080060
sub_08080060: @ 0x08080060
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x180
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
	bl __16UnitTargetChoiceUsP4Unit
	mov r0, sp
	bl sub_08076B30
	mov r8, r0
	movs r6, #0
	b _080800D0
_080800AE:
	ldr r4, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	mov r0, sp
	adds r1, r6, #0
	bl attackdata_118__10UnitTargeti
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r6, #1
_080800D0:
	mov r0, sp
	bl attackdata_110__C10UnitTarget
	cmp r6, r0
	blt _080800AE
	mov r0, sp
	movs r1, #2
	bl _._16UnitTargetChoice
	mov r0, r8
	add sp, #0x180
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080800F0
sub_080800F0: @ 0x080800F0
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0808010A
	adds r0, #0xc
	movs r1, #0
	bl sub_08083CF4
_0808010A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08080110
sub_08080110: @ 0x08080110
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08080134
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #1
	bl sub_08083CF4
	adds r0, r4, #0
	bl sub_080802A4
_08080134:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808013C
sub_0808013C: @ 0x0808013C
	movs r1, #3
	str r1, [r0, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080144
sub_08080144: @ 0x08080144
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_08080148
sub_08080148: @ 0x08080148
	ldr r0, [r0, #0x38]
	bx lr

	thumb_func_start sub_0808014C
sub_0808014C: @ 0x0808014C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808019C
	ldr r0, [r4, #0x40]
	cmp r0, #3
	beq _0808019C
	cmp r0, #0
	bne _0808019C
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	beq _08080180
	adds r1, r0, #0
	subs r1, #1
	adds r0, r4, #0
	bl sub_080801F8
	adds r0, r4, #0
	bl sub_080802A4
	movs r0, #0xd1
	bl playSound
	b _0808019C
_08080180:
	ldr r0, [r4, #0x2c]
	subs r1, r0, #1
	ldrh r0, [r4, #0x34]
	cmp r1, r0
	ble _0808019C
	adds r0, r4, #0
	bl sub_080801F8
	adds r0, r4, #0
	bl sub_080802A4
	movs r0, #0xd1
	bl playSound
_0808019C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080801A4
sub_080801A4: @ 0x080801A4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080801F0
	ldr r0, [r4, #0x40]
	cmp r0, #3
	beq _080801F0
	cmp r0, #0
	bne _080801F0
	ldrh r0, [r4, #0x34]
	adds r1, r0, #1
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	bge _080801D8
	adds r0, r4, #0
	bl sub_080801F8
	adds r0, r4, #0
	bl sub_080802A4
	movs r0, #0xd1
	bl playSound
	b _080801F0
_080801D8:
	cmp r0, #0
	ble _080801F0
	adds r0, r4, #0
	movs r1, #0
	bl sub_080801F8
	adds r0, r4, #0
	bl sub_080802A4
	movs r0, #0xd1
	bl playSound
_080801F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080801F8
sub_080801F8: @ 0x080801F8
	strh r1, [r0, #0x34]
	bx lr

	thumb_func_start sub_080801FC
sub_080801FC: @ 0x080801FC
	push {lr}
	adds r1, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808021C
	ldr r0, [r1, #0x40]
	cmp r0, #3
	beq _0808021C
	cmp r0, #0
	bne _0808021C
	movs r0, #1
	str r0, [r1, #0x40]
	movs r0, #0xd2
	bl playSound
_0808021C:
	pop {r0}
	bx r0

	thumb_func_start sub_08080220
sub_08080220: @ 0x08080220
	push {lr}
	adds r1, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08080240
	ldr r0, [r1, #0x40]
	cmp r0, #3
	beq _08080240
	cmp r0, #0
	bne _08080240
	movs r0, #2
	str r0, [r1, #0x40]
	movs r0, #0xd3
	bl playSound
_08080240:
	pop {r0}
	bx r0

	thumb_func_start sub_08080244
sub_08080244: @ 0x08080244
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808025C
sub_0808025C: @ 0x0808025C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r1, #0x20]
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _08080286
	ldr r1, [r5, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08080286:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0808028C
sub_0808028C: @ 0x0808028C
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080802A4
sub_080802A4: @ 0x080802A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	ldr r0, [r7, #0x40]
	cmp r0, #3
	beq _080803A4
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080803A4
	adds r6, r7, #0
	adds r6, #0x48
	add r4, sp, #0xc
	ldrh r1, [r7, #0x34]
	adds r5, r7, #0
	adds r5, #0x28
	lsls r1, r1, #1
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08077D8C
	mov r0, sp
	adds r1, r4, #0
	bl sub_08077DBC
	adds r0, r6, #0
	mov r1, sp
	bl sub_08083D14
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl sub_08077D98
	movs r6, #0
	ldr r0, [r5, #4]
	mov sl, r5
	cmp r6, r0
	bge _080803A4
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r0, r7, r0
	str r0, [sp, #0x18]
	mov sb, r6
	mov r8, r6
_08080312:
	ldrh r1, [r7, #0x34]
	cmp r6, r1
	bne _08080356
	ldr r1, [sp, #0x18]
	ldr r0, [r1, #8]
	add r0, r8
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	adds r4, #0x80
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r1, sl
	ldr r0, [r1, #8]
	add r0, sb
	ldrh r1, [r0]
	mov r0, sp
	bl sub_08077D8C
	mov r0, sp
	bl sub_08077EB0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl sub_08077D98
	b _08080392
_08080356:
	ldr r1, [sp, #0x18]
	ldr r0, [r1, #8]
	add r0, r8
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	adds r4, #0x80
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r1, sl
	ldr r0, [r1, #8]
	add r0, sb
	ldrh r1, [r0]
	mov r0, sp
	bl sub_08077D8C
	mov r0, sp
	bl sub_08077E28
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl sub_08077D98
_08080392:
	movs r0, #2
	add sb, r0
	movs r1, #4
	add r8, r1
	adds r6, #1
	mov r1, sl
	ldr r0, [r1, #4]
	cmp r6, r0
	blt _08080312
_080803A4:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080803B4
sub_080803B4: @ 0x080803B4
	ldr r0, _080803B8 @ =gUnknown_02002200
	bx lr
	.align 2, 0
_080803B8: .4byte gUnknown_02002200

	thumb_func_start sub_080803BC
sub_080803BC: @ 0x080803BC
	push {lr}
	bl sub_080803B4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080803C8
sub_080803C8: @ 0x080803C8
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0xd
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #0xd
	bl get_misctext_len
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl genMisctextMsg__3MsgPvUi
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080803F4
sub_080803F4: @ 0x080803F4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl __6ActionP4Unit
	ldr r0, _0808041C @ =vt_09F82A28
	str r0, [r5, #0x1c]
	movs r0, #0x2c
	muls r0, r4, r0
	ldr r1, _08080420 @ =gPlayerSkillData
	adds r0, r0, r1
	str r0, [r5, #0x48]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0808041C: .4byte vt_09F82A28
_08080420: .4byte gPlayerSkillData

	thumb_func_start sub_08080424
sub_08080424: @ 0x08080424
	push {lr}
	ldr r2, _08080434 @ =vt_09F82A28
	str r2, [r0, #0x1c]
	bl _._6Action
	pop {r0}
	bx r0
	.align 2, 0
_08080434: .4byte vt_09F82A28

	thumb_func_start sub_08080438
sub_08080438: @ 0x08080438
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808044C
sub_0808044C: @ 0x0808044C
	ldr r0, [r0, #0x48]
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080454
sub_08080454: @ 0x08080454
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
	bl sub_080803C8
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08080484
sub_08080484: @ 0x08080484
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08001C2C
	adds r1, r0, #0
	ldr r2, _0808051C @ =0x0000FFFF
	add r0, sp, #4
	bl genMisctextMsg__3MsgPvUi
	ldr r2, [r5, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x10
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	adds r6, r4, #0
	ldr r1, [r5, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r8, r6
	cmp r0, #0
	beq _08080520
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
	b _08080528
	.align 2, 0
_0808051C: .4byte 0x0000FFFF
_08080520:
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
_08080528:
	adds r5, r4, #0
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_080734A0
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg

	thumb_func_start sub_08080560
sub_08080560: @ 0x08080560
	adds r0, r7, #0
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08080570
sub_08080570: @ 0x08080570
	movs r0, #0
	bx lr

	thumb_func_start sub_08080574
sub_08080574: @ 0x08080574
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808057C
sub_0808057C: @ 0x0808057C
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080584
sub_08080584: @ 0x08080584
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808058C
sub_0808058C: @ 0x0808058C
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080594
sub_08080594: @ 0x08080594
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x12]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808059C
sub_0808059C: @ 0x0808059C
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_080805A4
sub_080805A4: @ 0x080805A4
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x16]
	bx lr
	.align 2, 0

	thumb_func_start sub_080805AC
sub_080805AC: @ 0x080805AC
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x17]
	bx lr
	.align 2, 0

	thumb_func_start sub_080805B4
sub_080805B4: @ 0x080805B4
	push {lr}
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _080805C0
	movs r0, #1
_080805C0:
	pop {r1}
	bx r1

	thumb_func_start sub_080805C4
sub_080805C4: @ 0x080805C4
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x1c]
	bx lr
	.align 2, 0

	thumb_func_start sub_080805CC
sub_080805CC: @ 0x080805CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r0, [r1, #0x48]
	ldrh r2, [r0, #0x20]
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080805F4
sub_080805F4: @ 0x080805F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0x48]
	ldrh r1, [r0, #0x20]
	adds r0, r4, #0
	bl sub_08073444__5GoodsUs
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808060C
sub_0808060C: @ 0x0808060C
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808061A
	movs r0, #1
_0808061A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08080620
sub_08080620: @ 0x08080620
	ldr r0, [r0, #0x48]
	adds r0, #0x23
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08080628
sub_08080628: @ 0x08080628
	ldr r0, [r0, #0x48]
	adds r0, #0x24
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08080630
sub_08080630: @ 0x08080630
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
	beq _0808066A
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
	b _0808066C
_0808066A:
	movs r0, #0
_0808066C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08080674
sub_08080674: @ 0x08080674
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x26]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808067C
sub_0808067C: @ 0x0808067C
	ldr r0, [r0, #0x48]
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #0x64
	subs r0, r0, r1
	bx lr

	thumb_func_start sub_08080688
sub_08080688: @ 0x08080688
	ldr r0, [r0, #0x48]
	adds r0, #0x29
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08080690
sub_08080690: @ 0x08080690
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808069E
	movs r0, #1
_0808069E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080806A4
sub_080806A4: @ 0x080806A4
	push {lr}
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
	movs r2, #0x82
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

	thumb_func_start sub_080806D8
sub_080806D8: @ 0x080806D8
	push {lr}
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
	movs r2, #0x84
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

	thumb_func_start sub_0808070C
sub_0808070C: @ 0x0808070C
	push {lr}
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
	movs r2, #0x86
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

	thumb_func_start sub_08080740
sub_08080740: @ 0x08080740
	push {r4, lr}
	ldr r4, _08080754 @ =gUnknown_02002200
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08080758 @ =vt_09F82CC8
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08080754: .4byte gUnknown_02002200
_08080758: .4byte vt_09F82CC8

	thumb_func_start sub_0808075C
sub_0808075C: @ 0x0808075C
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
	ldr r0, _08080784 @ =vt_09F82A28
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08080784: .4byte vt_09F82A28

.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_08074A1C
sub_08074A1C: @ 0x08074A1C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FF38
	ldr r0, _08074A30 @ =vt_09F812F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08074A30: .4byte vt_09F812F8

	thumb_func_start sub_08074A34
sub_08074A34: @ 0x08074A34
	ldr r0, _08074A38 @ =gUnknown_0200217C
	bx lr
	.align 2, 0
_08074A38: .4byte gUnknown_0200217C

	thumb_func_start sub_08074A3C
sub_08074A3C: @ 0x08074A3C
	push {lr}
	bl sub_08074A34
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074A48
sub_08074A48: @ 0x08074A48
	ldr r0, _08074A4C @ =gUnknown_02002170
	bx lr
	.align 2, 0
_08074A4C: .4byte gUnknown_02002170

	thumb_func_start sub_08074A50
sub_08074A50: @ 0x08074A50
	push {lr}
	bl sub_08074A48
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074A5C
sub_08074A5C: @ 0x08074A5C
	ldr r0, _08074A60 @ =gUnknown_02002164
	bx lr
	.align 2, 0
_08074A60: .4byte gUnknown_02002164

	thumb_func_start sub_08074A64
sub_08074A64: @ 0x08074A64
	push {lr}
	bl sub_08074A5C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074A70
sub_08074A70: @ 0x08074A70
	ldr r0, _08074A74 @ =gUnknown_02002158
	bx lr
	.align 2, 0
_08074A74: .4byte gUnknown_02002158

	thumb_func_start sub_08074A78
sub_08074A78: @ 0x08074A78
	push {lr}
	bl sub_08074A70
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074A84
sub_08074A84: @ 0x08074A84
	ldr r0, _08074A88 @ =gUnknown_0200214C
	bx lr
	.align 2, 0
_08074A88: .4byte gUnknown_0200214C

	thumb_func_start sub_08074A8C
sub_08074A8C: @ 0x08074A8C
	push {lr}
	bl sub_08074A84
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074A98
sub_08074A98: @ 0x08074A98
	ldr r0, _08074A9C @ =gUnknown_02002140
	bx lr
	.align 2, 0
_08074A9C: .4byte gUnknown_02002140

	thumb_func_start sub_08074AA0
sub_08074AA0: @ 0x08074AA0
	push {lr}
	bl sub_08074A98
	pop {r1}
	bx r1
	.align 2, 0


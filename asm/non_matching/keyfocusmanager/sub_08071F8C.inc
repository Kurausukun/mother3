.include "asm/macros.inc"
	.syntax unified
sub_08071F8C:
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _08071FB8
	str r0, [r4, #0x1c]
	bl sub_08071FF8
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08071FB8: .4byte vt_09F810F8
thumb_func_start _._10KeyFocuser
_._10KeyFocuser:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08071FEC
	str r0, [r4, #0x1c]
	bl sub_08072028
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072034
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071FEC: .4byte vt_09F810F8
	.syntax divided

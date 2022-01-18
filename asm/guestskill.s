.include "asm/macros.inc"

.syntax unified
.section .text

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
	ldr r0, _08080784 @ =0x09F82A28
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08080784: .4byte 0x09F82A28

	thumb_func_start sub_08080788
sub_08080788: @ 0x08080788
	ldr r0, _0808078C @ =gUnknown_02002368
	bx lr
	.align 2, 0
_0808078C: .4byte gUnknown_02002368

	thumb_func_start sub_08080790
sub_08080790: @ 0x08080790
	push {lr}
	bl sub_08080788
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808079C
sub_0808079C: @ 0x0808079C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E274
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080807AC
sub_080807AC: @ 0x080807AC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08077F34
	ldr r0, _080807D4 @ =0x09F82CE0
	str r0, [r5, #0x1c]
	movs r0, #0x2c
	muls r0, r4, r0
	ldr r1, _080807D8 @ =gUnknown_080D0228
	adds r0, r0, r1
	str r0, [r5, #0x48]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080807D4: .4byte 0x09F82CE0
_080807D8: .4byte gUnknown_080D0228

	thumb_func_start sub_080807DC
sub_080807DC: @ 0x080807DC
	push {lr}
	ldr r2, _080807EC @ =0x09F82CE0
	str r2, [r0, #0x1c]
	bl sub_080781E0
	pop {r0}
	bx r0
	.align 2, 0
_080807EC: .4byte 0x09F82CE0

	thumb_func_start sub_080807F0
sub_080807F0: @ 0x080807F0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08080804
sub_08080804: @ 0x08080804
	ldr r0, [r0, #0x48]
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808080C
sub_0808080C: @ 0x0808080C
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
	bl sub_0808079C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808083C
sub_0808083C: @ 0x0808083C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E274
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0808084C
sub_0808084C: @ 0x0808084C
	movs r0, #0
	bx lr

	thumb_func_start sub_08080850
sub_08080850: @ 0x08080850
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080858
sub_08080858: @ 0x08080858
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080860
sub_08080860: @ 0x08080860
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080868
sub_08080868: @ 0x08080868
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080870
sub_08080870: @ 0x08080870
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x12]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080878
sub_08080878: @ 0x08080878
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080880
sub_08080880: @ 0x08080880
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x16]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080888
sub_08080888: @ 0x08080888
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x17]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080890
sub_08080890: @ 0x08080890
	push {lr}
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _0808089C
	movs r0, #1
_0808089C:
	pop {r1}
	bx r1

	thumb_func_start sub_080808A0
sub_080808A0: @ 0x080808A0
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x1c]
	bx lr
	.align 2, 0

	thumb_func_start sub_080808A8
sub_080808A8: @ 0x080808A8
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

	thumb_func_start sub_080808D0
sub_080808D0: @ 0x080808D0
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

	thumb_func_start sub_080808F8
sub_080808F8: @ 0x080808F8
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	beq _08080906
	movs r0, #1
_08080906:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808090C
sub_0808090C: @ 0x0808090C
	ldr r0, [r0, #0x48]
	adds r0, #0x23
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08080914
sub_08080914: @ 0x08080914
	ldr r0, [r0, #0x48]
	adds r0, #0x24
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_0808091C
sub_0808091C: @ 0x0808091C
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
	beq _08080956
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
	b _08080958
_08080956:
	movs r0, #0
_08080958:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08080960
sub_08080960: @ 0x08080960
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x26]
	bx lr
	.align 2, 0

	thumb_func_start sub_08080968
sub_08080968: @ 0x08080968
	ldr r0, [r0, #0x48]
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #0x64
	subs r0, r0, r1
	bx lr

	thumb_func_start sub_08080974
sub_08080974: @ 0x08080974
	ldr r0, [r0, #0x48]
	adds r0, #0x29
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_0808097C
sub_0808097C: @ 0x0808097C
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808098A
	movs r0, #1
_0808098A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08080990
sub_08080990: @ 0x08080990
	movs r0, #0
	bx lr

	thumb_func_start sub_08080994
sub_08080994: @ 0x08080994
	movs r0, #0
	bx lr

	thumb_func_start sub_08080998
sub_08080998: @ 0x08080998
	movs r0, #0
	bx lr

	thumb_func_start sub_0808099C
sub_0808099C: @ 0x0808099C
	push {r4, lr}
	ldr r4, _080809B0 @ =gUnknown_02002368
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _080809B4 @ =0x09F82F80
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080809B0: .4byte gUnknown_02002368
_080809B4: .4byte 0x09F82F80

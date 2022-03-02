.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_08083098
sub_08083098: @ 0x08083098
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
	ldr r0, _080830C0 @ =vt_09F83958
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080830C0: .4byte vt_09F83958

	thumb_func_start sub_080830C4
sub_080830C4: @ 0x080830C4
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #2
	bl get_string
	adds r4, r0, #0
	movs r0, #2
	bl get_misctext_block
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

	thumb_func_start sub_080830F0
sub_080830F0: @ 0x080830F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl __4Base
	ldr r0, _0808313C @ =vt_09F83C28
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	str r1, [r4, #0x3c]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, #0xc
	str r1, [r4, #0x48]
	str r1, [r0, #4]
	str r1, [r0, #8]
	movs r0, #0x6c
	muls r0, r5, r0
	ldr r2, _08083140 @ =gGoodsInfo
	adds r0, r0, r2
	str r0, [r4, #0x24]
	str r6, [r4, #0x28]
	strh r1, [r4, #0x2c]
	strh r1, [r4, #0x2e]
	strh r1, [r4, #0x30]
	strh r1, [r4, #0x32]
	strh r1, [r4, #0x34]
	strh r1, [r4, #0x36]
	strh r1, [r4, #0x38]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808313C: .4byte vt_09F83C28
_08083140: .4byte gGoodsInfo

	thumb_func_start sub_08083144
sub_08083144: @ 0x08083144
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08083170 @ =vt_09F83C28
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08083158
	bl __builtin_vec_delete
_08083158:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _08083162
	bl __builtin_vec_delete
_08083162:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08083170: .4byte vt_09F83C28

	thumb_func_start sub_08083174
sub_08083174: @ 0x08083174
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x24]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x28]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x2c]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x30]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x34]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x38]
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0x3c]
	movs r6, #0
	b _080832DE
_08083250:
	mov r3, sb
	ldr r4, [r3, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	str r0, [sp, #0x18]
	mov r5, sp
	add r3, sp, #0x18
	mov r8, r3
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	adds r6, #1
	mov sl, r6
	cmp r0, r4
	bge _080832CA
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _0808329C
	adds r1, r0, #0
_0808329C:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080832BC
	adds r1, r0, #0
_080832B2:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080832B2
_080832BC:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080832C6
	bl __builtin_vec_delete
_080832C6:
	str r4, [r5]
	str r6, [r5, #8]
_080832CA:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
	mov r6, sl
_080832DE:
	ldr r1, [r7, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _08083250
	movs r6, #0
	b _08083382
_080832F6:
	mov r3, sb
	ldr r4, [r3, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	str r0, [sp, #0x1c]
	add r3, sp, #0x1c
	mov r8, r3
	ldr r0, [sp, #0x10]
	adds r4, r0, #1
	ldr r0, [sp, #0xc]
	adds r6, #1
	cmp r0, r4
	bge _08083370
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _08083342
	adds r1, r0, #0
_08083342:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [sp, #0x14]
	adds r2, r5, #0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _08083362
	adds r1, r0, #0
_08083358:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08083358
_08083362:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0808336C
	bl __builtin_vec_delete
_0808336C:
	str r4, [sp, #0xc]
	str r5, [sp, #0x14]
_08083370:
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [sp, #0x10]
_08083382:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _080832F6
	mov r3, sb
	ldr r4, [r3, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [sp, #0x24]
	adds r1, r3, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r0, sb
	ldr r4, [r0, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0x98
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp, #0x28]
	adds r1, r0, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r1, sb
	ldr r4, [r1, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r4, r4, r2
	movs r3, #0
	ldrsh r5, [r4, r3]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [sp, #0x2c]
	adds r1, r3, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r0, sb
	ldr r4, [r0, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp, #0x30]
	adds r1, r0, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r1, sb
	ldr r4, [r1, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r4, r4, r2
	movs r3, #0
	ldrsh r5, [r4, r3]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [sp, #0x34]
	adds r1, r3, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r0, sb
	ldr r4, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp, #0x38]
	adds r1, r0, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r1, sb
	ldr r4, [r1, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r4, r4, r2
	movs r3, #0
	ldrsh r5, [r4, r3]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [sp, #0x3c]
	adds r1, r3, r1
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r0, #0
	mov sl, r0
	b _0808352E
_080834DE:
	mov r1, sb
	ldr r5, [r1, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r5, r5, r2
	movs r3, #0
	ldrsh r6, [r5, r3]
	add r6, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	mov r8, r0
	mov r3, sl
	lsls r0, r3, #2
	ldr r4, [sp, #8]
	adds r4, r4, r0
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	ldr r2, [r4]
	adds r2, r2, r0
	ldr r3, [r5, #4]
	adds r0, r6, #0
	mov r1, r8
	bl _call_via_r3
	movs r3, #1
	add sl, r3
_0808352E:
	ldr r1, [r7, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sl, r0
	blt _080834DE
	movs r3, #0
	mov sl, r3
	b _0808359E
_08083548:
	mov r0, sb
	ldr r6, [r0, #0x1c]
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r6, r6, r1
	movs r3, #0
	ldrsh r2, [r6, r3]
	mov r8, r2
	add r8, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r3, sl
	lsls r0, r3, #2
	ldr r4, [sp, #0x14]
	adds r4, r4, r0
	ldr r1, [r7, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	ldr r2, [r4]
	adds r2, r2, r0
	ldr r3, [r6, #4]
	mov r0, r8
	adds r1, r5, #0
	bl _call_via_r3
	movs r3, #1
	add sl, r3
_0808359E:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sl, r0
	blt _08083548
	mov r3, sb
	ldr r1, [r3, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [sp, #0x24]
	subs r0, r0, r3
	strh r0, [r7, #0x2c]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #0x28]
	subs r0, r0, r1
	strh r0, [r7, #0x2e]
	mov r2, sb
	ldr r1, [r2, #0x1c]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [sp, #0x2c]
	subs r0, r0, r3
	strh r0, [r7, #0x30]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #0x30]
	subs r0, r0, r1
	strh r0, [r7, #0x32]
	mov r2, sb
	ldr r1, [r2, #0x1c]
	movs r3, #0xec
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [sp, #0x34]
	subs r0, r0, r3
	strh r0, [r7, #0x34]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #0x38]
	subs r0, r0, r1
	strh r0, [r7, #0x36]
	mov r2, sb
	ldr r1, [r2, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [sp, #0x3c]
	subs r0, r0, r3
	strh r0, [r7, #0x38]
	movs r6, #0
	b _08083718
_0808367A:
	mov r0, sb
	ldr r4, [r0, #0x1c]
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r5, [r4, r2]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r2, r6, #2
	ldr r1, [sp, #8]
	adds r1, r1, r2
	ldr r1, [r1]
	subs r0, r0, r1
	add r1, sp, #0x20
	strh r0, [r1]
	adds r4, r7, #0
	adds r4, #0x3c
	mov sl, r1
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x3c]
	adds r6, #1
	mov r8, r6
	cmp r0, r5
	bge _08083704
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _080836D2
	adds r1, r0, #0
_080836D2:
	adds r5, r1, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080836F6
	adds r1, r0, #0
_080836E8:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080836E8
_080836F6:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08083700
	bl __builtin_vec_delete
_08083700:
	str r5, [r4]
	str r6, [r4, #8]
_08083704:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sl
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r6, r8
_08083718:
	ldr r1, [r7, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0808367A
	movs r6, #0
	b _080837D4
_08083730:
	mov r3, sb
	ldr r4, [r3, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r2, r6, #2
	ldr r1, [sp, #0x14]
	adds r1, r1, r2
	ldr r1, [r1]
	subs r0, r0, r1
	mov r1, sp
	adds r1, #0x22
	strh r0, [r1]
	adds r4, r7, #0
	adds r4, #0x48
	mov sl, r1
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x48]
	adds r6, #1
	mov r8, r6
	cmp r0, r5
	bge _080837C0
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0808378E
	adds r1, r0, #0
_0808378E:
	adds r5, r1, #0
	lsls r0, r5, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080837B2
	adds r1, r0, #0
_080837A4:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080837A4
_080837B2:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080837BC
	bl __builtin_vec_delete
_080837BC:
	str r5, [r4]
	str r6, [r4, #8]
_080837C0:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sl
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r6, r8
_080837D4:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _08083730
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _080837F2
	bl __builtin_vec_delete
_080837F2:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080837FC
	bl __builtin_vec_delete
_080837FC:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808380C
sub_0808380C: @ 0x0808380C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r0, [r0, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	add r4, sl
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r2, #0x2c
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r3, sl
	ldr r0, [r3, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	add r4, sl
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r3, #0x2e
	ldrsh r0, [r7, r3]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r1, sl
	ldr r0, [r1, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r5, r0, r2
	movs r3, #0
	ldrsh r4, [r5, r3]
	add r4, sl
	adds r2, #0x90
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r2, #0x30
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r3, sl
	ldr r0, [r3, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	add r4, sl
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r3, #0x32
	ldrsh r0, [r7, r3]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r1, sl
	ldr r0, [r1, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r5, r0, r2
	movs r3, #0
	ldrsh r4, [r5, r3]
	add r4, sl
	adds r2, #0x90
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r3, sl
	ldr r0, [r3, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	add r4, sl
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r3, #0x36
	ldrsh r0, [r7, r3]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r1, sl
	ldr r0, [r1, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r5, r0, r2
	movs r3, #0
	ldrsh r4, [r5, r3]
	add r4, sl
	adds r2, #0x90
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r2, #0x38
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	movs r3, #0
	str r3, [sp]
	b _080839FA
_08083988:
	mov r0, sl
	ldr r6, [r0, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r6, r6, r1
	movs r3, #0
	ldrsh r2, [r6, r3]
	mov r8, r2
	add r8, sl
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	ldr r1, [sp]
	bl _call_via_r2
	mov sb, r0
	mov r3, sl
	ldr r4, [r3, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sl
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	ldr r1, [sp]
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r2, r0, #0
	ldr r3, [sp]
	lsls r1, r3, #1
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	ldr r3, [r6, #4]
	mov r0, r8
	mov r1, sb
	bl _call_via_r3
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
_080839FA:
	ldr r1, [r7, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp]
	cmp r1, r0
	blt _08083988
	movs r2, #0
	str r2, [sp, #4]
	adds r3, r7, #0
	adds r3, #0x3c
	str r3, [sp, #8]
	adds r0, r7, #0
	adds r0, #0x48
	str r0, [sp, #0xc]
	b _08083AA4
_08083A22:
	mov r1, sl
	ldr r1, [r1, #0x1c]
	mov r8, r1
	movs r2, #0xb4
	lsls r2, r2, #1
	add r8, r2
	mov r3, r8
	movs r0, #0
	ldrsh r3, [r3, r0]
	mov sb, r3
	add sb, sl
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	ldr r1, [sp, #4]
	bl _call_via_r2
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r3, sl
	ldr r4, [r3, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sl
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	ldr r1, [sp, #4]
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r2, r0, #0
	ldr r3, [sp, #4]
	lsls r1, r3, #1
	ldr r3, [sp, #0xc]
	ldr r0, [r3, #8]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	mov r0, r8
	ldr r3, [r0, #4]
	mov r0, sb
	adds r1, r6, #0
	bl _call_via_r3
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #4]
_08083AA4:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [sp, #4]
	cmp r3, r0
	blt _08083A22
	movs r0, #0
	strh r0, [r7, #0x2c]
	strh r0, [r7, #0x2e]
	strh r0, [r7, #0x30]
	strh r0, [r7, #0x32]
	strh r0, [r7, #0x34]
	strh r0, [r7, #0x36]
	strh r0, [r7, #0x38]
	ldr r1, [sp, #8]
	str r0, [r1, #4]
	ldr r2, [sp, #0xc]
	str r0, [r2, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08083AE4
sub_08083AE4: @ 0x08083AE4
	ldr r0, [r0, #0x24]
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08083AEC
sub_08083AEC: @ 0x08083AEC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080830C4
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08083B18
sub_08083B18: @ 0x08083B18
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_08083B1C
sub_08083B1C: @ 0x08083B1C
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_08083B28
sub_08083B28: @ 0x08083B28
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_08083B34
sub_08083B34: @ 0x08083B34
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_08083B40
sub_08083B40: @ 0x08083B40
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_08083B4C
sub_08083B4C: @ 0x08083B4C
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_08083B58
sub_08083B58: @ 0x08083B58
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_08083B64
sub_08083B64: @ 0x08083B64
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_08083B70
sub_08083B70: @ 0x08083B70
	movs r0, #5
	bx lr

	thumb_func_start sub_08083B74
sub_08083B74: @ 0x08083B74
	adds r0, r1, #0
	bx lr

	thumb_func_start sub_08083B78
sub_08083B78: @ 0x08083B78
	ldr r0, [r0, #0x24]
	adds r0, #0x36
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_08083B88
sub_08083B88: @ 0x08083B88
	movs r0, #0xb
	bx lr

	thumb_func_start sub_08083B8C
sub_08083B8C: @ 0x08083B8C
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_08083B94
sub_08083B94: @ 0x08083B94
	ldr r0, [r0, #0x24]
	lsls r1, r1, #1
	adds r0, #0x20
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr

	thumb_func_start sub_08083BA4
sub_08083BA4: @ 0x08083BA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0x24]
	adds r0, #0x3b
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08083BBC
sub_08083BBC: @ 0x08083BBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	mov sl, r0
	bl __4Base
	ldr r0, _08083CAC @ =vt_09F83D28
	mov r1, sl
	str r0, [r1, #0x1c]
	mov r6, sl
	adds r6, #0x24
	adds r0, r6, #0
	bl sub_0806D64C
	mov r7, sl
	adds r7, #0x90
	ldr r0, _08083CB0 @ =gUnknown_08CE39F8
	movs r1, #1
	rsbs r1, r1, #0
	ldr r5, _08083CB4 @ =_vt.1D
	str r5, [sp, #0xc]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r2, sp, #0x34
	movs r0, #0xa
	strh r0, [r2]
	strh r0, [r2, #2]
	adds r0, r7, #0
	add r1, sp, #4
	bl sub_08071108
	str r5, [sp, #0xc]
	ldr r0, _08083CB8 @ =vt_09F7E458
	str r0, [r7, #0x1c]
	movs r1, #0xa2
	lsls r1, r1, #2
	add r0, sp, #0x10
	mov sb, r0
	bl sub_080706A0
	add r1, sp, #0x1c
	mov r8, r1
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
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_080706A0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #1
	mov r2, sb
	mov r3, r8
	bl sub_0806D744
	str r5, [sp, #0x30]
	str r5, [sp, #0x24]
	str r5, [sp, #0x18]
	add r1, sp, #0x38
	movs r4, #0x78
	strh r4, [r1]
	movs r0, #0
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_0806D814
	add r1, sp, #0x3c
	movs r0, #0x90
	movs r2, #0x18
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r6, #0
	bl sub_0806D828
	add r1, sp, #0x40
	strh r4, [r1]
	movs r0, #0
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_0806D83C
	add r1, sp, #0x44
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r0, r7, #0
	bl sub_0806E9C4
	add r1, sp, #0x48
	movs r0, #0x82
	movs r2, #6
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r7, #0
	bl sub_08071194
	mov r0, sl
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08083CAC: .4byte vt_09F83D28
_08083CB0: .4byte gUnknown_08CE39F8
_08083CB4: .4byte _vt.1D
_08083CB8: .4byte vt_09F7E458

	thumb_func_start _._12TextAccessor
_._12TextAccessor: @ 0x08083CBC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08083CEC @ =vt_09F83D28
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, _08083CF0 @ =vt_09F7E458
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	adds r0, r4, #0
	adds r0, #0x24
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08083CEC: .4byte vt_09F83D28
_08083CF0: .4byte vt_09F7E458

	thumb_func_start sub_08083CF4
sub_08083CF4: @ 0x08083CF4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x18
	adds r0, #0x24
	adds r1, r5, #0
	bl sub_0806D7DC
	adds r4, #0x90
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806E948
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08083D14
sub_08083D14: @ 0x08083D14
	push {lr}
	adds r0, #0x90
	bl sub_08071150
	pop {r0}
	bx r0

	thumb_func_start sub_08083D20
sub_08083D20: @ 0x08083D20
	push {lr}
	adds r0, #0x24
	bl sub_0806D854
	pop {r1}
	bx r1

	thumb_func_start sub_08083D2C
sub_08083D2C: @ 0x08083D2C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x90
	bl sub_0806EA18
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08083D40
sub_08083D40: @ 0x08083D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	mov sl, r0
	bl __4Base
	ldr r0, _08083FB4 @ =vt_09F83DB0
	mov r1, sl
	str r0, [r1, #0x1c]
	mov r4, sl
	adds r4, #0x34
	adds r0, r4, #0
	bl sub_0806D64C
	mov r3, sl
	adds r3, #0xa0
	movs r0, #1
	mov r2, sp
	adds r2, #0x38
	str r2, [sp, #0x5c]
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x7c]
	subs r2, #0x1c
	str r2, [sp, #0x80]
	adds r1, #0x18
	str r1, [sp, #0x54]
	adds r2, #0x20
	str r2, [sp, #0x64]
	adds r1, #0x18
	str r1, [sp, #0x68]
	adds r2, #8
	str r2, [sp, #0x6c]
	adds r1, #8
	str r1, [sp, #0x74]
	str r4, [sp, #0x70]
	mov r2, sl
	adds r2, #0x28
	str r2, [sp, #0x60]
	mov r1, sl
	adds r1, #0x24
	str r1, [sp, #0x58]
	movs r7, #1
	rsbs r7, r7, #0
	add r6, sp, #0x34
	movs r2, #0xa
	mov sb, r2
_08083DA4:
	adds r4, r3, #0
	movs r5, #0x15
	subs r0, #1
	mov r8, r0
_08083DAC:
	ldr r0, _08083FB8 @ =_vt.1D
	str r0, [sp, #0xc]
	ldr r1, _08083FBC @ =gUnknown_08CE39F8
	str r1, [sp, #4]
	str r7, [sp, #8]
	add r0, sp, #0x34
	mov r2, sb
	strh r2, [r0]
	strh r2, [r6, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r6, #0
	str r3, [sp, #0x84]
	bl sub_0808ADF0
	ldr r0, _08083FB8 @ =_vt.1D
	str r0, [sp, #0xc]
	ldr r0, _08083FC0 @ =vt_09F83E40
	str r0, [r4, #0x1c]
	adds r4, #0x58
	subs r5, #1
	ldr r3, [sp, #0x84]
	cmp r5, r7
	bne _08083DAC
	movs r1, #0xf2
	lsls r1, r1, #3
	adds r3, r3, r1
	mov r0, r8
	cmp r0, r7
	bne _08083DA4
	movs r0, #0xfc
	lsls r0, r0, #4
	add r0, sl
	bl sub_08071F8C
	movs r4, #0
	add r0, sp, #0x38
	strb r4, [r0]
	ldr r2, [sp, #0x5c]
	strb r4, [r2, #1]
	strb r4, [r2, #2]
	ldr r0, [sp, #0x38]
	mov r3, sl
	str r0, [r3, #0x24]
	movs r0, #1
	ldr r1, [sp, #0x60]
	strb r0, [r1]
	strh r4, [r3, #0x2a]
	strh r4, [r3, #0x2c]
	str r4, [r3, #0x30]
	ldr r1, _08083FC4 @ =0x00000289
	ldr r0, [sp, #0x7c]
	bl sub_080706A0
	ldr r0, [sp, #0x80]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x54]
	bl sub_080706A0
	ldr r3, [sp, #0x54]
	str r3, [sp]
	ldr r0, [sp, #0x70]
	movs r1, #1
	ldr r2, [sp, #0x7c]
	ldr r3, [sp, #0x80]
	bl sub_0806D744
	ldr r0, _08083FB8 @ =_vt.1D
	str r0, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	add r0, sp, #0x3c
	strh r4, [r0]
	ldr r0, [sp, #0x64]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x64]
	bl sub_0806D814
	movs r1, #0xf0
	movs r2, #0x20
	add r0, sp, #0x40
	strh r1, [r0]
	ldr r1, [sp, #0x68]
	strh r2, [r1, #2]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x68]
	bl sub_0806D828
	add r0, sp, #0x44
	strh r4, [r0]
	ldr r2, [sp, #0x6c]
	strh r4, [r2, #2]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x6c]
	bl sub_0806D83C
	movs r2, #0
	ldr r3, [sp, #0x74]
	str r3, [sp, #0x50]
_08083E88:
	movs r7, #0
	lsls r0, r2, #4
	lsls r1, r2, #1
	adds r3, r2, #1
	str r3, [sp, #0x78]
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r0, r0, #4
	mov r8, r0
	adds r0, #0xa0
	add r0, sl
	str r0, [sp, #0x4c]
	movs r6, #0xc
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #6
	mov sb, r1
_08083EAC:
	movs r0, #0x58
	adds r5, r7, #0
	muls r5, r0, r5
	mov r4, r8
	add r4, sl
	adds r4, r5, r4
	adds r4, #0xa0
	ldr r1, [r4, #0x1c]
	adds r1, #0x90
	ldr r0, [sp, #0x4c]
	adds r5, r0, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x58]
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	add r0, sp, #0x48
	strh r6, [r0]
	mov r2, sb
	ldr r0, [sp, #0x50]
	strh r2, [r0, #2]
	ldr r2, [r1, #4]
	adds r0, r5, #0
	ldr r1, [sp, #0x50]
	bl _call_via_r2
	adds r6, #0xa
	adds r7, #1
	cmp r7, #0x15
	ble _08083EAC
	ldr r2, [sp, #0x78]
	cmp r2, #1
	ble _08083E88
	add r0, sp, #0x10
	bl __4Base
	ldr r3, _08083FC8 @ =_vt.3Unk
	mov sb, r3
	ldr r0, _08083FCC @ =_vt.9AKeyPress
	str r0, [sp, #0x2c]
	movs r0, #0xfc
	lsls r0, r0, #4
	add r0, sl
	mov r8, r0
	ldr r0, _08083FD0 @ =gUnknown_0810E028
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x7c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x7c]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x7c]
	bl __4Base
	ldr r0, _08083FD4 @ =_vt.13AKeyLongPress
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x7c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x2c]
	ldr r0, [sp, #0x7c]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x7c]
	bl __4Base
	ldr r0, _08083FD8 @ =_vt.9LKeyPress
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x7c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x2c]
	ldr r0, [sp, #0x7c]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x7c]
	bl __4Base
	ldr r0, _08083FDC @ =_vt.13LKeyLongPress
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x7c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x7c]
	movs r1, #2
	bl _._4Base
	mov r0, sl
	add sp, #0x88
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08083FB4: .4byte vt_09F83DB0
_08083FB8: .4byte _vt.1D
_08083FBC: .4byte gUnknown_08CE39F8
_08083FC0: .4byte vt_09F83E40
_08083FC4: .4byte 0x00000289
_08083FC8: .4byte _vt.3Unk
_08083FCC: .4byte _vt.9AKeyPress
_08083FD0: .4byte gUnknown_0810E028
_08083FD4: .4byte _vt.13AKeyLongPress
_08083FD8: .4byte _vt.9LKeyPress
_08083FDC: .4byte _vt.13LKeyLongPress

	thumb_func_start sub_08083FE0
sub_08083FE0: @ 0x08083FE0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _08084034 @ =vt_09F83DB0
	str r0, [r5, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #4
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl _._10KeyFocuser
	adds r0, r5, #0
	adds r0, #0xa0
	cmp r0, #0
	beq _0808401C
	cmp r0, r4
	beq _0808401C
	adds r6, r0, #0
_08084006:
	subs r4, #0x58
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _08084006
_0808401C:
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084034: .4byte vt_09F83DB0

	thumb_func_start sub_08084038
sub_08084038: @ 0x08084038
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r3, r1, #0
	ldr r0, [r3]
	str r0, [r7, #0x24]
	movs r1, #0
_0808404C:
	movs r4, #0
	lsls r0, r1, #4
	adds r2, r1, #1
	mov r8, r2
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r5, r0, #4
	adds r0, r5, #0
	adds r0, #0xa0
	adds r0, r0, r7
	mov sb, r0
_08084064:
	movs r0, #0x58
	muls r0, r4, r0
	adds r1, r5, r7
	adds r1, r0, r1
	adds r1, #0xa0
	ldr r2, [r1, #0x1c]
	adds r2, #0x90
	add r0, sb
	movs r6, #0
	ldrsh r1, [r2, r6]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r3, #0
	str r3, [sp]
	bl _call_via_r2
	adds r4, #1
	ldr r3, [sp]
	cmp r4, #0x15
	ble _08084064
	mov r1, r8
	cmp r1, #1
	ble _0808404C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080840A0
sub_080840A0: @ 0x080840A0
	adds r0, #0x28
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080840A8
sub_080840A8: @ 0x080840A8
	ldr r1, [r1, #0x24]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080840B0
sub_080840B0: @ 0x080840B0
	adds r0, #0x28
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080840B8
sub_080840B8: @ 0x080840B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	movs r0, #0
	str r0, [r6, #0x30]
	strh r0, [r6, #0x2a]
	strh r0, [r6, #0x2c]
	movs r7, #0
	b _080841A6
_080840CE:
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _080840F4 @ =0x0000FF30
	cmp r1, r0
	beq _08084136
	cmp r1, r0
	bgt _08084104
	subs r0, #0x2f
	cmp r1, r0
	beq _0808412E
	cmp r1, r0
	bgt _080840F8
	cmp r1, #0
	beq _08084120
	b _0808415E
	.align 2, 0
_080840F4: .4byte 0x0000FF30
_080840F8:
	ldr r0, _08084100 @ =0x0000FF02
	cmp r1, r0
	beq _08084128
	b _0808415E
	.align 2, 0
_08084100: .4byte 0x0000FF02
_08084104:
	ldr r0, _0808411C @ =0x0000FF32
	cmp r1, r0
	beq _08084146
	cmp r1, r0
	blt _0808413E
	adds r0, #1
	cmp r1, r0
	beq _0808414E
	adds r0, #1
	cmp r1, r0
	beq _08084156
	b _0808415E
	.align 2, 0
_0808411C: .4byte 0x0000FF32
_08084120:
	adds r0, r6, #0
	bl sub_080841E8
	b _080841A4
_08084128:
	adds r0, r6, #0
	bl sub_080842E0
_0808412E:
	adds r0, r6, #0
	bl sub_080841C0
	b _080841A4
_08084136:
	movs r0, #5
	bl sub_0807068C
	b _080841A4
_0808413E:
	movs r0, #0xa
	bl sub_0807068C
	b _080841A4
_08084146:
	movs r0, #0x1e
	bl sub_0807068C
	b _080841A4
_0808414E:
	movs r0, #0x3c
	bl sub_0807068C
	b _080841A4
_08084156:
	movs r0, #0x5a
	bl sub_0807068C
	b _080841A4
_0808415E:
	ldrh r2, [r6, #0x2a]
	ldrh r1, [r6, #0x2c]
	movs r0, #0x58
	muls r1, r0, r1
	lsls r4, r2, #4
	subs r4, r4, r2
	lsls r4, r4, #3
	adds r4, r4, r2
	lsls r4, r4, #4
	adds r0, r4, r6
	adds r0, r1, r0
	adds r0, #0xa0
	ldr r5, [r0, #0x1c]
	adds r5, #0xd0
	adds r4, #0xa0
	adds r4, r6, r4
	adds r4, r4, r1
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r4, r4, r0
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r0, r6, #0
	bl sub_080841E8
	adds r0, r6, #0
	bl sub_080842C0
_080841A4:
	adds r7, #1
_080841A6:
	mov r0, r8
	bl sub_0806E414
	cmp r7, r0
	blt _080840CE
	adds r0, r6, #0
	bl sub_080842E0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080841C0
sub_080841C0: @ 0x080841C0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x2a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080841E0
	adds r0, r4, #0
	bl sub_08084204
	str r5, [r4, #0x30]
	movs r0, #1
	strh r0, [r4, #0x2a]
_080841E0:
	strh r5, [r4, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080841E8
sub_080841E8: @ 0x080841E8
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x15
	bls _08084200
	adds r0, r1, #0
	bl sub_080841C0
_08084200:
	pop {r0}
	bx r0

	thumb_func_start sub_08084204
sub_08084204: @ 0x08084204
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0
_08084212:
	movs r0, #0
	mov r8, r0
	lsls r0, r1, #4
	adds r2, r1, #1
	mov sl, r2
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r6, r0, #4
	adds r0, r6, #0
	adds r0, #0xa0
	adds r0, r0, r7
	mov sb, r0
_0808422C:
	movs r0, #0x58
	mov r3, r8
	muls r3, r0, r3
	adds r1, r6, r7
	adds r1, r3, r1
	adds r0, r1, #0
	adds r0, #0xa0
	ldr r4, [r0, #0x1c]
	adds r4, #0xd0
	mov r0, sb
	adds r5, r0, r3
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	movs r0, #0x83
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r2, [r1, #0x1c]
	adds r2, #0xd8
	adds r0, r6, r0
	adds r0, r7, r0
	adds r0, r0, r3
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
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0x15
	ble _0808422C
	mov r1, sl
	cmp r1, #0
	ble _08084212
	movs r4, #0
	movs r5, #0x83
	lsls r5, r5, #4
_08084288:
	movs r0, #0x58
	muls r0, r4, r0
	adds r1, r0, r7
	adds r1, r1, r5
	ldr r2, [r1, #0x1c]
	adds r2, #0xd0
	adds r0, r0, r5
	adds r0, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	ldr r1, _080842BC @ =0x0000FFFF
	bl _call_via_r2
	adds r4, #1
	cmp r4, #0x15
	ble _08084288
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080842BC: .4byte 0x0000FFFF

	thumb_func_start sub_080842C0
sub_080842C0: @ 0x080842C0
	push {lr}
	ldr r0, [r0, #0x30]
	cmp r0, #0
	bne _080842D2
	bl sub_08070754
	bl sub_0807068C
	b _080842DC
_080842D2:
	cmp r0, #1
	bne _080842DC
	movs r0, #1
	bl sub_0807068C
_080842DC:
	pop {r0}
	bx r0

	thumb_func_start sub_080842E0
sub_080842E0: @ 0x080842E0
	push {r4, lr}
	sub sp, #0xa0
	adds r4, r0, #0
	mov r0, sp
	bl sub_0808AFA8
	add r1, sp, #0x9c
	movs r0, #0xd9
	movs r2, #0xc
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sp
	bl sub_0808B074
	movs r0, #2
	str r0, [r4, #0x30]
_08084300:
	movs r0, #1
	bl sub_0807068C
	ldr r0, [r4, #0x30]
	cmp r0, #2
	beq _08084300
	mov r0, sp
	movs r1, #2
	bl sub_0808B060
	add sp, #0xa0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808431C
sub_0808431C: @ 0x0808431C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _08084340
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
	bne _08084344
	b _08084342
_08084340:
	movs r0, #3
_08084342:
	str r0, [r4, #0x30]
_08084344:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808434C
sub_0808434C: @ 0x0808434C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x9c
	mov sb, r0
	bl __4Base
	ldr r0, _080846BC @ =vt_09F83F20
	mov r1, sb
	str r0, [r1, #0x1c]
	adds r1, #0x2c
	movs r0, #0
	mov r2, sb
	str r0, [r2, #0x2c]
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r4, sb
	adds r4, #0x44
	adds r0, r4, #0
	bl sub_0806D64C
	mov r3, sb
	adds r3, #0xb0
	str r3, [sp, #0x4c]
	movs r0, #1
	mov r1, sp
	adds r1, #0x34
	str r1, [sp, #0x5c]
	mov r2, sp
	adds r2, #0x38
	str r2, [sp, #0x64]
	add r3, sp, #0x10
	mov sl, r3
	subs r1, #0x18
	str r1, [sp, #0x90]
	subs r2, #0x10
	str r2, [sp, #0x94]
	mov r3, sp
	adds r3, #0x3c
	str r3, [sp, #0x70]
	adds r1, #0x24
	str r1, [sp, #0x74]
	adds r2, #0x1c
	str r2, [sp, #0x78]
	adds r3, #0xc
	str r3, [sp, #0x7c]
	str r4, [sp, #0x8c]
	mov r1, sb
	adds r1, #0x28
	str r1, [sp, #0x68]
	mov r2, sb
	adds r2, #0x29
	str r2, [sp, #0x6c]
	mov r3, sb
	adds r3, #0x38
	str r3, [sp, #0x84]
	adds r1, #0x18
	str r1, [sp, #0x88]
	subs r2, #5
	str r2, [sp, #0x60]
	movs r3, #1
	rsbs r3, r3, #0
_080843CC:
	ldr r4, [sp, #0x4c]
	movs r6, #0x15
	subs r0, #1
	mov r8, r0
	ldr r5, [sp, #0x5c]
	movs r7, #0xa
_080843D8:
	ldr r0, _080846C0 @ =_vt.1D
	str r0, [sp, #0xc]
	ldr r1, _080846C4 @ =gUnknown_08CE39F8
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r0, sp, #0x34
	strh r7, [r0]
	strh r7, [r5, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r5, #0
	str r3, [sp, #0x98]
	bl sub_0808ADF0
	ldr r2, _080846C0 @ =_vt.1D
	str r2, [sp, #0xc]
	ldr r0, _080846C8 @ =vt_09F83E40
	str r0, [r4, #0x1c]
	adds r4, #0x58
	subs r6, #1
	ldr r3, [sp, #0x98]
	cmp r6, r3
	bne _080843D8
	ldr r0, [sp, #0x4c]
	movs r1, #0xf2
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [sp, #0x4c]
	mov r0, r8
	cmp r0, r3
	bne _080843CC
	movs r0, #0xfd
	lsls r0, r0, #4
	add r0, sb
	bl sub_0808B0D8
	ldr r0, _080846CC @ =0x0000106C
	add r0, sb
	bl sub_08071F8C
	movs r4, #0
	add r0, sp, #0x38
	strb r4, [r0]
	ldr r2, [sp, #0x64]
	strb r4, [r2, #1]
	strb r4, [r2, #2]
	ldr r0, [sp, #0x38]
	mov r3, sb
	str r0, [r3, #0x24]
	ldr r0, [sp, #0x68]
	strb r4, [r0]
	ldr r1, [sp, #0x6c]
	strb r4, [r1]
	ldr r2, [sp, #0x84]
	strb r4, [r2]
	str r4, [r3, #0x3c]
	movs r0, #3
	ldr r3, [sp, #0x88]
	strb r0, [r3]
	ldr r1, _080846D0 @ =0x00000289
	mov r0, sl
	bl sub_080706A0
	ldr r0, [sp, #0x90]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x94]
	bl sub_080706A0
	ldr r1, [sp, #0x94]
	str r1, [sp]
	ldr r0, [sp, #0x8c]
	movs r1, #1
	mov r2, sl
	ldr r3, [sp, #0x90]
	bl sub_0806D744
	ldr r0, _080846C0 @ =_vt.1D
	str r0, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	add r0, sp, #0x3c
	strh r4, [r0]
	ldr r2, [sp, #0x70]
	strh r4, [r2, #2]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x70]
	bl sub_0806D814
	movs r1, #0xf0
	movs r2, #0x20
	add r0, sp, #0x40
	strh r1, [r0]
	ldr r3, [sp, #0x74]
	strh r2, [r3, #2]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x74]
	bl sub_0806D828
	add r0, sp, #0x44
	strh r4, [r0]
	ldr r0, [sp, #0x78]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x78]
	bl sub_0806D83C
	movs r2, #0
	ldr r1, [sp, #0x7c]
	str r1, [sp, #0x54]
_080844C6:
	movs r7, #0
	lsls r0, r2, #4
	lsls r1, r2, #1
	adds r3, r2, #1
	str r3, [sp, #0x80]
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r0, r0, #4
	mov r8, r0
	adds r0, #0xb0
	add r0, sb
	str r0, [sp, #0x50]
	movs r6, #0xc
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #6
	str r1, [sp, #0x58]
_080844EA:
	movs r0, #0x58
	adds r5, r7, #0
	muls r5, r0, r5
	mov r4, r8
	add r4, sb
	adds r4, r5, r4
	adds r4, #0xb0
	ldr r1, [r4, #0x1c]
	adds r1, #0x90
	ldr r0, [sp, #0x50]
	adds r5, r0, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x60]
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	add r0, sp, #0x48
	strh r6, [r0]
	add r0, sp, #0x58
	ldrh r2, [r0]
	ldr r0, [sp, #0x54]
	strh r2, [r0, #2]
	ldr r2, [r1, #4]
	adds r0, r5, #0
	ldr r1, [sp, #0x54]
	bl _call_via_r2
	adds r6, #0xa
	adds r7, #1
	cmp r7, #0x15
	ble _080844EA
	ldr r2, [sp, #0x80]
	cmp r2, #1
	ble _080844C6
	add r0, sp, #0x10
	bl __4Base
	ldr r7, _080846D4 @ =_vt.3Unk
	ldr r0, _080846D8 @ =_vt.12LeftKeyPress
	str r0, [sp, #0x2c]
	ldr r6, _080846CC @ =0x0000106C
	add r6, sb
	ldr r0, _080846DC @ =gUnknown_0810E6B0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _080846E0 @ =_vt.16LeftKeyLongPress
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _080846E4 @ =_vt.13RightKeyPress
	str r0, [sp, #0x2c]
	ldr r0, _080846E8 @ =gUnknown_0810E6B8
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _080846EC @ =_vt.17RightKeyLongPress
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _080846F0 @ =_vt.9BKeyPress
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _080846F4 @ =_vt.13BKeyLongPress
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _080846F8 @ =_vt.9AKeyPress
	str r0, [sp, #0x2c]
	ldr r0, _080846FC @ =gUnknown_0810E6C0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08084700 @ =_vt.13AKeyLongPress
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08084704 @ =_vt.9LKeyPress
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _08084708 @ =_vt.13LKeyLongPress
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r6, #0
	mov r2, sl
	bl listen__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sb
	add sp, #0x9c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080846BC: .4byte vt_09F83F20
_080846C0: .4byte _vt.1D
_080846C4: .4byte gUnknown_08CE39F8
_080846C8: .4byte vt_09F83E40
_080846CC: .4byte 0x0000106C
_080846D0: .4byte 0x00000289
_080846D4: .4byte _vt.3Unk
_080846D8: .4byte _vt.12LeftKeyPress
_080846DC: .4byte gUnknown_0810E6B0
_080846E0: .4byte _vt.16LeftKeyLongPress
_080846E4: .4byte _vt.13RightKeyPress
_080846E8: .4byte gUnknown_0810E6B8
_080846EC: .4byte _vt.17RightKeyLongPress
_080846F0: .4byte _vt.9BKeyPress
_080846F4: .4byte _vt.13BKeyLongPress
_080846F8: .4byte _vt.9AKeyPress
_080846FC: .4byte gUnknown_0810E6C0
_08084700: .4byte _vt.13AKeyLongPress
_08084704: .4byte _vt.9LKeyPress
_08084708: .4byte _vt.13LKeyLongPress

	thumb_func_start sub_0808470C
sub_0808470C: @ 0x0808470C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _08084774 @ =vt_09F83F20
	str r0, [r5, #0x1c]
	ldr r1, _08084778 @ =0x0000106C
	adds r0, r5, r1
	movs r1, #2
	bl _._10KeyFocuser
	movs r2, #0xfd
	lsls r2, r2, #4
	adds r4, r5, r2
	adds r0, r4, #0
	movs r1, #2
	bl sub_0808B194
	adds r0, r5, #0
	adds r0, #0xb0
	cmp r0, #0
	beq _08084752
	cmp r0, r4
	beq _08084752
	adds r6, r0, #0
_0808473C:
	subs r4, #0x58
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _0808473C
_08084752:
	adds r0, r5, #0
	adds r0, #0x44
	movs r1, #2
	bl sub_0806D6E0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _08084766
	bl __builtin_vec_delete
_08084766:
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084774: .4byte vt_09F83F20
_08084778: .4byte 0x0000106C

	thumb_func_start sub_0808477C
sub_0808477C: @ 0x0808477C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r3, r1, #0
	ldr r0, [r3]
	str r0, [r7, #0x24]
	movs r1, #0
_08084790:
	movs r4, #0
	lsls r0, r1, #4
	adds r2, r1, #1
	mov r8, r2
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r5, r0, #4
	adds r0, r5, #0
	adds r0, #0xb0
	adds r0, r0, r7
	mov sb, r0
_080847A8:
	movs r0, #0x58
	muls r0, r4, r0
	adds r1, r5, r7
	adds r1, r0, r1
	adds r1, #0xb0
	ldr r2, [r1, #0x1c]
	adds r2, #0x90
	add r0, sb
	movs r6, #0
	ldrsh r1, [r2, r6]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r3, #0
	str r3, [sp]
	bl _call_via_r2
	adds r4, #1
	ldr r3, [sp]
	cmp r4, #0x15
	ble _080847A8
	mov r1, r8
	cmp r1, #1
	ble _08084790
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080847E4
sub_080847E4: @ 0x080847E4
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _080847FA
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _08084804
_080847FA:
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_08084804:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808480C
sub_0808480C: @ 0x0808480C
	ldr r1, [r1, #0x24]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08084814
sub_08084814: @ 0x08084814
	adds r0, #0x40
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_08084820
sub_08084820: @ 0x08084820
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sl, r1
	movs r1, #1
	movs r2, #0
	bl sub_08084D48
	adds r0, r6, #0
	bl sub_08084E88
	movs r0, #0
	mov sb, r0
	b _08084AB0
_08084844:
	mov r0, sl
	mov r1, sb
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _08084870 @ =0x0000FF32
	cmp r1, r0
	beq _0808491E
	cmp r1, r0
	bgt _08084888
	subs r0, #0x30
	cmp r1, r0
	beq _080848DC
	cmp r1, r0
	bgt _08084874
	cmp r1, #0
	beq _080848B8
	subs r0, #1
	cmp r1, r0
	beq _080848CA
	b _08084A34
	.align 2, 0
_08084870: .4byte 0x0000FF32
_08084874:
	ldr r0, _08084884 @ =0x0000FF30
	cmp r1, r0
	beq _080848FE
	adds r0, #1
	cmp r1, r0
	beq _0808490E
	b _08084A34
	.align 2, 0
_08084884: .4byte 0x0000FF30
_08084888:
	ldr r0, _080848A0 @ =0x0000FF35
	cmp r1, r0
	beq _08084958
	cmp r1, r0
	bgt _080848A4
	subs r0, #2
	cmp r1, r0
	beq _0808492E
	adds r0, #1
	cmp r1, r0
	beq _0808493E
	b _08084A34
	.align 2, 0
_080848A0: .4byte 0x0000FF35
_080848A4:
	ldr r0, _080848B4 @ =0x0000FF36
	cmp r1, r0
	beq _0808496C
	adds r0, #1
	cmp r1, r0
	beq _08084980
	b _08084A34
	.align 2, 0
_080848B4: .4byte 0x0000FF36
_080848B8:
	ldr r1, [r6, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08084950
_080848CA:
	ldr r1, [r6, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08084950
_080848DC:
	ldr r1, [r6, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r6, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08084950
_080848FE:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #5
	b _0808494C
_0808490E:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0xa
	b _0808494C
_0808491E:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	b _0808494C
_0808492E:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x3c
	b _0808494C
_0808493E:
	ldr r1, [r6, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x5a
_0808494C:
	bl _call_via_r2
_08084950:
	movs r0, #1
	add r0, sb
	mov r8, r0
	b _08084AAE
_08084958:
	adds r2, r6, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	movs r1, #1
	add r1, sb
	mov r8, r1
	b _08084AAE
_0808496C:
	adds r2, r6, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r2, #1
	add r2, sb
	mov r8, r2
	b _08084AAE
_08084980:
	adds r0, r6, #0
	adds r0, #0x28
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x58
	adds r3, r1, #0
	muls r3, r0, r3
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r1, r6
	adds r0, r3, r0
	adds r0, #0xb0
	ldr r2, [r0, #0x1c]
	adds r2, #0xb0
	adds r1, #0xb0
	adds r1, r6, r1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	adds r4, r6, #0
	adds r4, #0x2c
	ldr r0, [r4, #4]
	adds r7, r0, #1
	ldr r0, [r6, #0x2c]
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r0, r7
	bge _08084A22
	lsls r0, r7, #1
	movs r1, #4
	cmp r1, r0
	bge _080849DA
	adds r1, r0, #0
_080849DA:
	adds r7, r1, #0
	lsls r0, r7, #2
	bl __builtin_vec_new
	adds r1, r0, #0
	subs r2, r7, #1
	movs r5, #1
	rsbs r5, r5, #0
	cmp r2, r5
	beq _080849FC
	movs r3, #0
_080849F0:
	strh r3, [r1]
	strh r3, [r1, #2]
	adds r1, #4
	subs r2, #1
	cmp r2, r5
	bne _080849F0
_080849FC:
	adds r5, r0, #0
	ldr r3, [r4, #8]
	adds r2, r5, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08084A14
	adds r1, r0, #0
_08084A0A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08084A0A
_08084A14:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08084A1E
	bl __builtin_vec_delete
_08084A1E:
	str r7, [r4]
	str r5, [r4, #8]
_08084A22:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [sp]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	b _08084AAE
_08084A34:
	mov r0, sl
	mov r1, sb
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _08084AE0 @ =0x0000FEFF
	movs r2, #1
	add r2, sb
	mov r8, r2
	cmp r1, r0
	bhi _08084AAE
	adds r0, r6, #0
	adds r0, #0x28
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x58
	muls r1, r0, r1
	lsls r4, r2, #4
	subs r4, r4, r2
	lsls r4, r4, #3
	adds r4, r4, r2
	lsls r4, r4, #4
	adds r0, r4, r6
	adds r0, r1, r0
	adds r0, #0xb0
	ldr r5, [r0, #0x1c]
	adds r5, #0xd0
	adds r4, #0xb0
	adds r4, r6, r4
	adds r4, r4, r1
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r4, r4, r0
	mov r0, sl
	mov r1, sb
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08084AAE:
	mov sb, r8
_08084AB0:
	mov r0, sl
	bl sub_0806E414
	cmp sb, r0
	bge _08084ABC
	b _08084844
_08084ABC:
	ldr r1, [r6, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08084AE0: .4byte 0x0000FEFF

	thumb_func_start sub_08084AE4
sub_08084AE4: @ 0x08084AE4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x28
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _08084B10
	ldr r1, [r4, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
	str r0, [r4, #0x3c]
	strb r0, [r5]
_08084B10:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08084B20
sub_08084B20: @ 0x08084B20
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x29
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x15
	ble _08084B46
	ldr r1, [r2, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08084B46:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08084B4C
sub_08084B4C: @ 0x08084B4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0
_08084B5A:
	movs r0, #0
	mov r8, r0
	lsls r0, r1, #4
	adds r2, r1, #1
	mov sl, r2
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r6, r0, #4
	adds r0, r6, #0
	adds r0, #0xb0
	adds r0, r0, r7
	mov sb, r0
_08084B74:
	movs r0, #0x58
	mov r3, r8
	muls r3, r0, r3
	adds r1, r6, r7
	adds r1, r3, r1
	adds r0, r1, #0
	adds r0, #0xb0
	ldr r4, [r0, #0x1c]
	adds r4, #0xd0
	mov r0, sb
	adds r5, r0, r3
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	movs r0, #0x84
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r2, [r1, #0x1c]
	adds r2, #0xd8
	adds r0, r6, r0
	adds r0, r7, r0
	adds r0, r0, r3
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
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0x15
	ble _08084B74
	mov r1, sl
	cmp r1, #0
	ble _08084B5A
	movs r4, #0
	movs r5, #0x84
	lsls r5, r5, #4
_08084BD0:
	movs r0, #0x58
	muls r0, r4, r0
	adds r1, r0, r7
	adds r1, r1, r5
	ldr r2, [r1, #0x1c]
	adds r2, #0xd0
	adds r0, r0, r5
	adds r0, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	ldr r1, _08084C04 @ =0x0000FFFF
	bl _call_via_r2
	adds r4, #1
	cmp r4, #0x15
	ble _08084BD0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084C04: .4byte 0x0000FFFF

	thumb_func_start sub_08084C08
sub_08084C08: @ 0x08084C08
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x3c]
	cmp r0, #1
	bne _08084C2C
	ldr r4, [r2, #0x1c]
	adds r4, #0x88
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r2, r5
	bl sub_08070754
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	b _08084C42
_08084C2C:
	cmp r0, #2
	bne _08084C42
	ldr r1, [r2, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_08084C42:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08084C48
sub_08084C48: @ 0x08084C48
	push {lr}
	adds r2, r1, #0
	adds r0, #0x40
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08084C5E
	adds r0, r2, #0
	bl sub_0807068C
_08084C5E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08084C64
sub_08084C64: @ 0x08084C64
	push {r4, lr}
	sub sp, #0xa0
	adds r4, r0, #0
	mov r0, sp
	bl sub_0808AFA8
	add r1, sp, #0x9c
	movs r0, #0xd9
	movs r2, #0xc
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sp
	bl sub_0808B074
	movs r0, #3
	str r0, [r4, #0x3c]
_08084C84:
	movs r0, #1
	bl sub_0807068C
	ldr r0, [r4, #0x3c]
	cmp r0, #3
	beq _08084C84
	mov r0, sp
	movs r1, #2
	bl sub_0808B060
	add sp, #0xa0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08084CA0
sub_08084CA0: @ 0x08084CA0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #4
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08084E88
	b _08084CB6
_08084CB0:
	movs r0, #1
	bl sub_0807068C
_08084CB6:
	ldr r0, [r4, #0x3c]
	cmp r0, #4
	beq _08084CB0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08084CC4
sub_08084CC4: @ 0x08084CC4
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bgt _08084CD2
	movs r2, #1
_08084CD2:
	cmp r2, #0
	bne _08084CEC
	adds r1, #0x38
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r0, #1
	cmp r0, #0
	blt _08084CEC
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r0, #1
	b _08084CEE
_08084CEC:
	movs r0, #0
_08084CEE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08084CF4
sub_08084CF4: @ 0x08084CF4
	push {lr}
	movs r1, #0
	ldr r2, [r0, #0x30]
	cmp r2, #0
	bgt _08084D00
	movs r1, #1
_08084D00:
	cmp r1, #0
	bne _08084D1C
	adds r1, r0, #0
	adds r1, #0x38
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #1
	cmp r0, r2
	bge _08084D1C
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #1
	b _08084D1E
_08084D1C:
	movs r0, #0
_08084D1E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08084D24
sub_08084D24: @ 0x08084D24
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bgt _08084D32
	movs r2, #1
_08084D32:
	cmp r2, #0
	beq _08084D3A
	movs r0, #0
	b _08084D44
_08084D3A:
	adds r0, r1, #0
	movs r1, #5
	movs r2, #0
	bl sub_08084D48
_08084D44:
	pop {r1}
	bx r1

	thumb_func_start sub_08084D48
sub_08084D48: @ 0x08084D48
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x3c]
	cmp r0, r1
	bne _08084D5A
	cmp r2, #1
	bne _08084D60
_08084D5A:
	str r1, [r3, #0x3c]
	movs r0, #1
	b _08084D62
_08084D60:
	movs r0, #0
_08084D62:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08084D68
sub_08084D68: @ 0x08084D68
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, #0
	blt _08084D86
	adds r1, r0, #0
	ldr r0, [r2, #0x30]
	cmp r1, r0
	bge _08084D86
	adds r3, r1, #0
_08084D86:
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08084D8C
sub_08084D8C: @ 0x08084D8C
	push {r4, lr}
	adds r4, r0, #0
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
	bne _08084DB4
	adds r0, r4, #0
	bl sub_08084E88
	movs r0, #0xd1
	bl playSound
_08084DB4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08084DBC
sub_08084DBC: @ 0x08084DBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08084DE4
	adds r0, r4, #0
	bl sub_08084E88
	movs r0, #0xd1
	bl playSound
_08084DE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08084DEC
sub_08084DEC: @ 0x08084DEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #3
	beq _08084E24
	cmp r0, #3
	bgt _08084E00
	cmp r0, #1
	beq _08084E06
	b _08084E82
_08084E00:
	cmp r0, #4
	beq _08084E3E
	b _08084E82
_08084E06:
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
	bne _08084E82
	adds r0, r4, #0
	movs r1, #2
	b _08084E28
_08084E24:
	adds r0, r4, #0
	movs r1, #1
_08084E28:
	movs r2, #0
	bl sub_08084D48
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08084E82
	adds r0, r4, #0
	bl sub_08084E88
	b _08084E82
_08084E3E:
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08084E82
	adds r0, r4, #0
	bl sub_08084E88
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x30]
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	movs r2, #0xd3
	cmp r0, r1
	bge _08084E7C
	movs r2, #0xd2
_08084E7C:
	adds r0, r2, #0
	bl playSound
_08084E82:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08084E88
sub_08084E88: @ 0x08084E88
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #4
	bne _08084EF2
	adds r6, r4, #0
	adds r6, #0x2c
	movs r1, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	bgt _08084EA2
	movs r1, #1
_08084EA2:
	cmp r1, #0
	bne _08084EF2
	movs r0, #0xfd
	lsls r0, r0, #4
	adds r5, r4, r0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806DB38
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	ldr r1, [r6, #8]
	adds r1, r1, r0
	mov r3, sp
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r4, #8
	rsbs r4, r4, #0
	mov r0, sp
	strh r2, [r0]
	strh r4, [r3, #2]
	movs r6, #0
	ldrsh r2, [r1, r6]
	movs r6, #0
	ldrsh r3, [r0, r6]
	movs r6, #2
	ldrsh r0, [r1, r6]
	add r1, sp, #4
	adds r2, r2, r3
	adds r0, r0, r4
	strh r2, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	bl sub_0808B1A8
	b _08084EFE
_08084EF2:
	movs r1, #0xfd
	lsls r1, r1, #4
	adds r0, r4, r1
	movs r1, #0
	bl sub_0806DB38
_08084EFE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08084F08
sub_08084F08: @ 0x08084F08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r7, r0, #0
	bl __4Base
	ldr r0, _080850B4 @ =vt_09F84008
	str r0, [r7, #0x1c]
	movs r0, #0x30
	adds r0, r0, r7
	mov sb, r0
	movs r0, #3
	mov r1, sp
	adds r1, #0x34
	str r1, [sp, #0x40]
	mov r3, sp
	adds r3, #0x38
	str r3, [sp, #0x44]
	subs r1, #0x24
	str r1, [sp, #0x3c]
	movs r3, #1
	rsbs r3, r3, #0
	add r5, sp, #0x30
	movs r1, #0xa
	mov sl, r1
_08084F40:
	mov r4, sb
	movs r6, #0xe
	subs r0, #1
	mov r8, r0
_08084F48:
	ldr r0, _080850B8 @ =_vt.1D
	str r0, [sp, #0xc]
	ldr r1, _080850BC @ =gUnknown_08CE39F8
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r0, sp, #0x30
	mov r1, sl
	strh r1, [r0]
	strh r1, [r5, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r5, #0
	str r3, [sp, #0x48]
	bl sub_0808ADF0
	ldr r0, _080850B8 @ =_vt.1D
	str r0, [sp, #0xc]
	ldr r0, _080850C0 @ =vt_09F83E40
	str r0, [r4, #0x1c]
	adds r4, #0x58
	subs r6, #1
	ldr r3, [sp, #0x48]
	cmp r6, r3
	bne _08084F48
	movs r1, #0xa5
	lsls r1, r1, #3
	add sb, r1
	mov r0, r8
	cmp r0, r3
	bne _08084F40
	ldr r3, _080850C4 @ =0x000014D0
	adds r0, r7, r3
	bl sub_08071F8C
	movs r1, #0
	add r0, sp, #0x34
	strb r1, [r0]
	ldr r0, [sp, #0x40]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	ldr r0, [sp, #0x34]
	str r0, [r7, #0x24]
	strh r1, [r7, #0x28]
	strh r1, [r7, #0x2a]
	str r1, [r7, #0x2c]
	movs r3, #0
	ldr r1, [sp, #0x44]
	mov sb, r1
_08084FA8:
	movs r6, #0
	lsls r1, r3, #2
	lsls r2, r3, #1
	adds r0, r3, #1
	mov sl, r0
	adds r1, r1, r3
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r5, r1, #3
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r7
	mov r8, r0
	movs r4, #0x2d
	adds r2, r2, r3
	lsls r2, r2, #2
	adds r2, #0x30
	str r2, [sp, #0x4c]
_08084FCC:
	movs r0, #0x58
	muls r0, r6, r0
	adds r1, r5, r7
	adds r1, r0, r1
	ldr r2, [r1, #0x4c]
	adds r2, #0x88
	add r0, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r1, sp, #0x38
	strh r4, [r1]
	add r1, sp, #0x4c
	ldrh r3, [r1]
	mov r1, sb
	strh r3, [r1, #2]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r4, #0xa
	adds r6, #1
	cmp r6, #0xe
	ble _08084FCC
	mov r3, sl
	cmp r3, #3
	ble _08084FA8
	add r0, sp, #0x10
	bl __4Base
	ldr r3, _080850C8 @ =_vt.3Unk
	mov sb, r3
	ldr r0, _080850CC @ =_vt.9AKeyPress
	str r0, [sp, #0x2c]
	ldr r0, _080850C4 @ =0x000014D0
	adds r0, r0, r7
	mov r8, r0
	ldr r0, _080850D0 @ =gUnknown_0810ED48
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	ldr r2, [sp, #0x3c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x3c]
	bl __4Base
	ldr r0, _080850D4 @ =_vt.13AKeyLongPress
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	ldr r2, [sp, #0x3c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x3c]
	bl __4Base
	ldr r0, _080850D8 @ =_vt.9LKeyPress
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	ldr r2, [sp, #0x3c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x3c]
	bl __4Base
	ldr r0, _080850DC @ =_vt.13LKeyLongPress
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	ldr r2, [sp, #0x3c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080850B4: .4byte vt_09F84008
_080850B8: .4byte _vt.1D
_080850BC: .4byte gUnknown_08CE39F8
_080850C0: .4byte vt_09F83E40
_080850C4: .4byte 0x000014D0
_080850C8: .4byte _vt.3Unk
_080850CC: .4byte _vt.9AKeyPress
_080850D0: .4byte gUnknown_0810ED48
_080850D4: .4byte _vt.13AKeyLongPress
_080850D8: .4byte _vt.9LKeyPress
_080850DC: .4byte _vt.13LKeyLongPress

	thumb_func_start sub_080850E0
sub_080850E0: @ 0x080850E0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _08085128 @ =vt_09F84008
	str r0, [r5, #0x1c]
	ldr r0, _0808512C @ =0x000014D0
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl _._10KeyFocuser
	adds r0, r5, #0
	adds r0, #0x30
	cmp r0, #0
	beq _0808511A
	cmp r0, r4
	beq _0808511A
	adds r6, r0, #0
_08085104:
	subs r4, #0x58
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _08085104
_0808511A:
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085128: .4byte vt_09F84008
_0808512C: .4byte 0x000014D0

	thumb_func_start sub_08085130
sub_08085130: @ 0x08085130
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r3, r1, #0
	ldr r0, [r3]
	str r0, [r7, #0x24]
	movs r1, #0
_08085144:
	movs r4, #0
	lsls r0, r1, #2
	adds r2, r1, #1
	mov r8, r2
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r5, r0, #3
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r7
	mov sb, r0
_0808515C:
	movs r0, #0x58
	muls r0, r4, r0
	adds r1, r5, r7
	adds r1, r0, r1
	ldr r2, [r1, #0x4c]
	adds r2, #0x90
	add r0, sb
	movs r6, #0
	ldrsh r1, [r2, r6]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r3, #0
	str r3, [sp]
	bl _call_via_r2
	adds r4, #1
	ldr r3, [sp]
	cmp r4, #0xe
	ble _0808515C
	mov r1, r8
	cmp r1, #3
	ble _08085144
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08085198
sub_08085198: @ 0x08085198
	ldr r1, [r1, #0x24]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080851A0
sub_080851A0: @ 0x080851A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_0806E274
	movs r5, #0
	b _080852CA
_080851C4:
	ldr r0, [sp, #0x20]
	adds r1, r5, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	add r0, sp, #0xc
	bl sub_0806E34C
	ldr r0, [sp, #0x20]
	adds r1, r5, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _080853C0 @ =0x0000FF01
	cmp r1, r0
	beq _080851F8
	ldr r0, [sp, #0x20]
	adds r1, r5, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _080853C4 @ =0x0000FF02
	adds r2, r5, #1
	mov sl, r2
	cmp r1, r0
	bne _080852C8
_080851F8:
	mov r7, sp
	ldr r0, [sp, #4]
	adds r0, #1
	mov r8, r0
	ldr r0, [sp]
	adds r5, #1
	mov sl, r5
	cmp r0, r8
	bge _080852AC
	mov r1, r8
	lsls r0, r1, #1
	movs r1, #4
	cmp r1, r0
	bge _08085216
	adds r1, r0, #0
_08085216:
	mov r8, r1
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #2
	adds r0, #4
	bl __builtin_vec_new
	adds r1, r0, #4
	mov r2, r8
	str r2, [r0]
	adds r6, r1, #0
	adds r5, r6, #0
	mov r4, r8
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0808524E
	adds r1, r0, #0
_0808523C:
	adds r0, r5, #0
	str r1, [sp, #0x28]
	bl sub_0806E274
	adds r5, #0xc
	subs r4, #1
	ldr r1, [sp, #0x28]
	cmp r4, r1
	bne _0808523C
_0808524E:
	mov sb, r6
	ldr r6, [r7, #8]
	mov r5, sb
	ldr r0, [r7, #4]
	cmp r0, #0
	ble _0808526E
	adds r4, r0, #0
_0808525C:
	adds r0, r5, #0
	adds r5, #0xc
	adds r1, r6, #0
	adds r6, #0xc
	bl sub_0806E2E8
	subs r4, #1
	cmp r4, #0
	bne _0808525C
_0808526E:
	ldr r2, [r7, #8]
	cmp r2, #0
	beq _080852A4
	subs r0, r2, #4
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r2, r0
	cmp r2, r4
	beq _0808529C
_08085284:
	subs r4, #0xc
	ldr r1, [r4, #8]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	ldr r0, [r7, #8]
	cmp r0, r4
	bne _08085284
_0808529C:
	ldr r0, [r7, #8]
	subs r0, #4
	bl __builtin_vec_delete
_080852A4:
	mov r0, r8
	str r0, [r7]
	mov r1, sb
	str r1, [r7, #8]
_080852AC:
	ldr r1, [r7, #4]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r0, [r7, #8]
	adds r0, r0, r2
	adds r1, #1
	str r1, [r7, #4]
	add r1, sp, #0xc
	bl sub_0806E2E8
	add r0, sp, #0xc
	bl sub_0806E344
_080852C8:
	mov r5, sl
_080852CA:
	ldr r0, [sp, #0x20]
	bl sub_0806E414
	cmp r5, r0
	bge _080852D6
	b _080851C4
_080852D6:
	add r0, sp, #0xc
	bl sub_0806E414
	cmp r0, #0
	ble _080853A0
	mov r7, sp
	ldr r0, [sp, #4]
	adds r0, #1
	mov r8, r0
	ldr r0, [sp]
	cmp r0, r8
	bge _0808538A
	mov r2, r8
	lsls r1, r2, #1
	movs r0, #4
	cmp r0, r1
	bge _080852FA
	adds r0, r1, #0
_080852FA:
	mov r8, r0
	lsls r0, r0, #1
	add r0, r8
	lsls r0, r0, #2
	adds r0, #4
	bl __builtin_vec_new
	mov r1, r8
	stm r0!, {r1}
	adds r6, r0, #0
	adds r5, r6, #0
	mov r4, r8
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0808532C
	mov sb, r0
_0808531E:
	adds r0, r5, #0
	bl sub_0806E274
	adds r5, #0xc
	subs r4, #1
	cmp r4, sb
	bne _0808531E
_0808532C:
	mov sb, r6
	ldr r6, [r7, #8]
	mov r5, sb
	ldr r0, [r7, #4]
	cmp r0, #0
	ble _0808534C
	adds r4, r0, #0
_0808533A:
	adds r0, r5, #0
	adds r5, #0xc
	adds r1, r6, #0
	adds r6, #0xc
	bl sub_0806E2E8
	subs r4, #1
	cmp r4, #0
	bne _0808533A
_0808534C:
	ldr r2, [r7, #8]
	cmp r2, #0
	beq _08085382
	subs r0, r2, #4
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r2, r0
	cmp r2, r4
	beq _0808537A
_08085362:
	subs r4, #0xc
	ldr r1, [r4, #8]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	ldr r0, [r7, #8]
	cmp r0, r4
	bne _08085362
_0808537A:
	ldr r0, [r7, #8]
	subs r0, #4
	bl __builtin_vec_delete
_08085382:
	mov r0, r8
	str r0, [r7]
	mov r1, sb
	str r1, [r7, #8]
_0808538A:
	ldr r1, [r7, #4]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r0, [r7, #8]
	adds r0, r0, r2
	adds r1, #1
	str r1, [r7, #4]
	add r1, sp, #0xc
	bl sub_0806E2E8
_080853A0:
	movs r5, #0
	ldr r0, [sp, #4]
	cmp r5, r0
	bge _0808544A
	add r2, sp, #0x18
	mov sb, r2
_080853AC:
	movs r7, #0
	movs r6, #0
	lsls r0, r5, #1
	mov r8, r0
	lsls r1, r5, #2
	mov sl, r1
	adds r2, r5, #1
	str r2, [sp, #0x24]
	b _080853E0
	.align 2, 0
_080853C0: .4byte 0x0000FF01
_080853C4: .4byte 0x0000FF02
_080853C8:
	ldr r0, [sp, #8]
	adds r0, r0, r4
	adds r1, r6, #0
	bl sub_0806E334
	ldrh r0, [r0]
	movs r1, #0xff
	lsls r1, r1, #8
	cmp r0, r1
	bhi _080853DE
	adds r7, #1
_080853DE:
	adds r6, #1
_080853E0:
	mov r2, r8
	adds r0, r2, r5
	lsls r4, r0, #2
	ldr r0, [sp, #8]
	adds r0, r0, r4
	bl sub_0806E414
	cmp r6, r0
	blt _080853C8
	movs r0, #0xf
	subs r0, r0, r7
	lsls r2, r0, #2
	adds r2, r2, r0
	movs r6, #0
	mov r7, sl
	adds r0, r7, r5
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #3
	mov r8, r0
	adds r0, #0x30
	ldr r1, [sp, #0x1c]
	adds r3, r1, r0
	adds r5, r2, #0
	adds r5, #0x2d
	adds r4, #0x30
_08085414:
	movs r0, #0x58
	muls r0, r6, r0
	ldr r1, [sp, #0x1c]
	add r1, r8
	adds r1, r0, r1
	ldr r2, [r1, #0x4c]
	adds r2, #0x88
	adds r0, r3, r0
	movs r7, #0
	ldrsh r1, [r2, r7]
	adds r0, r0, r1
	mov r1, sb
	strh r5, [r1]
	strh r4, [r1, #2]
	ldr r2, [r2, #4]
	str r3, [sp, #0x2c]
	bl _call_via_r2
	adds r5, #0xa
	adds r6, #1
	ldr r3, [sp, #0x2c]
	cmp r6, #0xe
	ble _08085414
	ldr r5, [sp, #0x24]
	ldr r0, [sp, #4]
	cmp r5, r0
	blt _080853AC
_0808544A:
	movs r0, #0
	ldr r2, [sp, #0x1c]
	str r0, [r2, #0x2c]
	strh r0, [r2, #0x28]
	strh r0, [r2, #0x2a]
	movs r6, #0
	b _08085530
_08085458:
	ldr r0, [sp, #0x20]
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _0808547C @ =0x0000FF30
	cmp r1, r0
	beq _080854C0
	cmp r1, r0
	bgt _0808548C
	subs r0, #0x2f
	cmp r1, r0
	beq _080854B8
	cmp r1, r0
	bgt _08085480
	cmp r1, #0
	beq _080854A8
	b _080854E8
	.align 2, 0
_0808547C: .4byte 0x0000FF30
_08085480:
	ldr r0, _08085488 @ =0x0000FF02
	cmp r1, r0
	beq _080854B0
	b _080854E8
	.align 2, 0
_08085488: .4byte 0x0000FF02
_0808548C:
	ldr r0, _080854A4 @ =0x0000FF32
	cmp r1, r0
	beq _080854D0
	cmp r1, r0
	blt _080854C8
	adds r0, #1
	cmp r1, r0
	beq _080854D8
	adds r0, #1
	cmp r1, r0
	beq _080854E0
	b _080854E8
	.align 2, 0
_080854A4: .4byte 0x0000FF32
_080854A8:
	ldr r0, [sp, #0x1c]
	bl sub_080855B4
	b _0808552E
_080854B0:
	ldr r0, [sp, #0x1c]
	movs r1, #0
	bl sub_08085694
_080854B8:
	ldr r0, [sp, #0x1c]
	bl sub_0808558C
	b _0808552E
_080854C0:
	movs r0, #5
	bl sub_0807068C
	b _0808552E
_080854C8:
	movs r0, #0xa
	bl sub_0807068C
	b _0808552E
_080854D0:
	movs r0, #0x1e
	bl sub_0807068C
	b _0808552E
_080854D8:
	movs r0, #0x3c
	bl sub_0807068C
	b _0808552E
_080854E0:
	movs r0, #0x5a
	bl sub_0807068C
	b _0808552E
_080854E8:
	ldr r7, [sp, #0x1c]
	ldrh r2, [r7, #0x28]
	ldrh r1, [r7, #0x2a]
	movs r0, #0x58
	muls r1, r0, r1
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r0, r4, #5
	adds r4, r4, r0
	lsls r4, r4, #3
	adds r0, r4, r7
	adds r0, r1, r0
	ldr r5, [r0, #0x4c]
	adds r5, #0xd0
	adds r4, #0x30
	adds r4, r7, r4
	adds r4, r4, r1
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r4, r4, r0
	ldr r0, [sp, #0x20]
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [sp, #0x1c]
	bl sub_080855B4
	ldr r0, [sp, #0x1c]
	bl sub_08085688
_0808552E:
	adds r6, #1
_08085530:
	ldr r0, [sp, #0x20]
	bl sub_0806E414
	cmp r6, r0
	blt _08085458
	add r0, sp, #0xc
	movs r1, #2
	bl Message_dtor
	mov r5, sp
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _0808557A
	subs r0, r2, #4
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r2, r0
	cmp r2, r4
	beq _08085572
_0808555A:
	subs r4, #0xc
	ldr r1, [r4, #8]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	ldr r0, [r5, #8]
	cmp r0, r4
	bne _0808555A
_08085572:
	ldr r0, [r5, #8]
	subs r0, #4
	bl __builtin_vec_delete
_0808557A:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808558C
sub_0808558C: @ 0x0808558C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x28]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _080855AC
	adds r0, r4, #0
	bl sub_080855D0
	str r5, [r4, #0x2c]
	movs r0, #1
	strh r0, [r4, #0x28]
_080855AC:
	strh r5, [r4, #0x2a]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080855B4
sub_080855B4: @ 0x080855B4
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2a]
	adds r0, #1
	strh r0, [r1, #0x2a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bls _080855CC
	adds r0, r1, #0
	bl sub_0808558C
_080855CC:
	pop {r0}
	bx r0

	thumb_func_start sub_080855D0
sub_080855D0: @ 0x080855D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0
_080855DE:
	movs r0, #0
	mov r8, r0
	lsls r0, r1, #2
	adds r2, r1, #1
	mov sl, r2
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r6, r0, #3
	adds r0, r6, #0
	adds r0, #0x30
	adds r0, r0, r7
	mov sb, r0
_080855F8:
	movs r0, #0x58
	mov r3, r8
	muls r3, r0, r3
	adds r1, r6, r7
	adds r1, r3, r1
	ldr r4, [r1, #0x4c]
	adds r4, #0xd0
	mov r0, sb
	adds r5, r0, r3
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	movs r0, #0xab
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r2, [r1, #0x1c]
	adds r2, #0xd8
	adds r0, r6, r0
	adds r0, r7, r0
	adds r0, r0, r3
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
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0xe
	ble _080855F8
	mov r1, sl
	cmp r1, #2
	ble _080855DE
	movs r4, #0
	ldr r5, _08085680 @ =0x00000FA8
_0808564E:
	movs r0, #0x58
	muls r0, r4, r0
	adds r1, r0, r7
	adds r1, r1, r5
	ldr r2, [r1, #0x1c]
	adds r2, #0xd0
	adds r0, r0, r5
	adds r0, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	ldr r1, _08085684 @ =0x0000FFFF
	bl _call_via_r2
	adds r4, #1
	cmp r4, #0xe
	ble _0808564E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085680: .4byte 0x00000FA8
_08085684: .4byte 0x0000FFFF

	thumb_func_start sub_08085688
sub_08085688: @ 0x08085688
	push {lr}
	movs r0, #0xa
	bl sub_0807068C
	pop {r0}
	bx r0

	thumb_func_start sub_08085694
sub_08085694: @ 0x08085694
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #1
	str r0, [r5, #0x2c]
	cmp r4, #0
	ble _080856BE
_080856A2:
	movs r0, #1
	bl sub_0807068C
	subs r4, #1
	ldr r0, [r5, #0x2c]
	cmp r0, #1
	bne _080856B4
	cmp r4, #0
	bgt _080856A2
_080856B4:
	movs r0, #0
	cmp r4, #0
	ble _080856CC
	movs r0, #1
	b _080856CC
_080856BE:
	movs r0, #1
	bl sub_0807068C
	ldr r0, [r5, #0x2c]
	cmp r0, #1
	beq _080856BE
	movs r0, #1
_080856CC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080856D4
sub_080856D4: @ 0x080856D4
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x2c]
	cmp r0, #1
	bne _080856E2
	movs r0, #2
	str r0, [r1, #0x2c]
_080856E2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080856E8
sub_080856E8: @ 0x080856E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	mov sl, r0
	bl __4Base
	ldr r0, _0808595C @ =vt_09F84088
	mov r1, sl
	str r0, [r1, #0x1c]
	mov r4, sl
	adds r4, #0x30
	adds r0, r4, #0
	bl sub_0806D64C
	mov r3, sl
	adds r3, #0x9c
	movs r0, #2
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x78]
	mov r6, sp
	adds r6, #0x1c
	str r6, [sp, #0x7c]
	mov r1, sp
	adds r1, #0x28
	str r1, [sp, #0x58]
	adds r2, #0x28
	str r2, [sp, #0x5c]
	adds r6, #0x20
	str r6, [sp, #0x60]
	adds r1, #0x18
	str r1, [sp, #0x64]
	adds r2, #0xc
	str r2, [sp, #0x6c]
	adds r6, #0xc
	str r6, [sp, #0x70]
	str r4, [sp, #0x68]
	movs r7, #1
	rsbs r7, r7, #0
	add r6, sp, #0x34
	movs r1, #0xa
	mov sb, r1
_08085742:
	adds r4, r3, #0
	movs r5, #0x15
	subs r0, #1
	mov r8, r0
_0808574A:
	ldr r2, _08085960 @ =_vt.1D
	str r2, [sp, #0xc]
	ldr r0, _08085964 @ =gUnknown_08CE39F8
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, sp, #0x34
	mov r1, sb
	strh r1, [r0]
	strh r1, [r6, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r6, #0
	str r3, [sp, #0x80]
	bl sub_0808ADF0
	ldr r2, _08085960 @ =_vt.1D
	str r2, [sp, #0xc]
	ldr r0, _08085968 @ =vt_09F83E40
	str r0, [r4, #0x1c]
	adds r4, #0x58
	subs r5, #1
	ldr r3, [sp, #0x80]
	cmp r5, r7
	bne _0808574A
	movs r0, #0xf2
	lsls r0, r0, #3
	adds r3, r3, r0
	mov r0, r8
	cmp r0, r7
	bne _08085742
	ldr r0, _0808596C @ =0x0000174C
	add r0, sl
	bl sub_08071F8C
	movs r4, #0
	movs r0, #0xe1
	mov r1, sl
	strh r0, [r1, #0x24]
	strh r4, [r1, #0x26]
	strh r4, [r1, #0x28]
	strh r4, [r1, #0x2a]
	str r4, [r1, #0x2c]
	movs r1, #0xa3
	lsls r1, r1, #2
	ldr r0, [sp, #0x78]
	bl sub_080706A0
	ldr r0, [sp, #0x7c]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x58]
	bl sub_080706A0
	ldr r3, [sp, #0x58]
	str r3, [sp]
	ldr r0, [sp, #0x68]
	movs r1, #1
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_0806D744
	ldr r0, _08085960 @ =_vt.1D
	str r0, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	add r0, sp, #0x38
	strh r4, [r0]
	ldr r6, [sp, #0x5c]
	strh r4, [r6, #2]
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x5c]
	bl sub_0806D814
	movs r1, #0xf0
	movs r2, #0x38
	add r0, sp, #0x3c
	strh r1, [r0]
	ldr r0, [sp, #0x60]
	strh r2, [r0, #2]
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x60]
	bl sub_0806D828
	add r0, sp, #0x40
	strh r4, [r0]
	ldr r1, [sp, #0x64]
	strh r4, [r1, #2]
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x64]
	bl sub_0806D83C
	movs r2, #0
	ldr r3, [sp, #0x6c]
	str r3, [sp, #0x84]
	ldr r6, [sp, #0x70]
	str r6, [sp, #0x50]
	mov sb, r2
_0808581E:
	movs r7, #0
	lsls r0, r2, #4
	lsls r1, r2, #1
	adds r3, r2, #1
	str r3, [sp, #0x74]
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r0, r0, #4
	mov r8, r0
	adds r0, #0x9c
	add r0, sl
	str r0, [sp, #0x4c]
	movs r3, #0xc
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #6
	str r1, [sp, #0x54]
_08085842:
	movs r0, #0x58
	adds r5, r7, #0
	muls r5, r0, r5
	mov r4, r8
	add r4, sl
	adds r4, r5, r4
	adds r4, #0x9c
	ldr r2, [r4, #0x1c]
	adds r2, #0x90
	ldr r6, [sp, #0x4c]
	adds r5, r6, r5
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	add r1, sp, #0x44
	mov r6, sb
	strb r6, [r1]
	ldr r1, [sp, #0x84]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	ldr r2, [r2, #4]
	ldr r1, [sp, #0x84]
	str r3, [sp, #0x80]
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	add r0, sp, #0x48
	ldr r3, [sp, #0x80]
	strh r3, [r0]
	add r6, sp, #0x54
	ldrh r0, [r6]
	ldr r6, [sp, #0x50]
	strh r0, [r6, #2]
	ldr r2, [r1, #4]
	adds r0, r5, #0
	ldr r1, [sp, #0x50]
	str r3, [sp, #0x80]
	bl _call_via_r2
	ldr r3, [sp, #0x80]
	adds r3, #0xa
	adds r7, #1
	cmp r7, #0x15
	ble _08085842
	ldr r2, [sp, #0x74]
	cmp r2, #2
	ble _0808581E
	add r0, sp, #0x10
	bl __4Base
	ldr r0, _08085970 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _08085974 @ =_vt.9AKeyPress
	str r0, [sp, #0x2c]
	ldr r1, _0808596C @ =0x0000174C
	add r1, sl
	mov r8, r1
	ldr r0, _08085978 @ =gUnknown_0810F3D0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	ldr r2, [sp, #0x78]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x2c]
	ldr r0, [sp, #0x78]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x78]
	bl __4Base
	ldr r0, _0808597C @ =_vt.13AKeyLongPress
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x78]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x2c]
	ldr r0, [sp, #0x78]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x78]
	bl __4Base
	ldr r0, _08085980 @ =_vt.9LKeyPress
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x78]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x78]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x78]
	bl __4Base
	ldr r0, _08085984 @ =_vt.13LKeyLongPress
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x78]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x78]
	movs r1, #2
	bl _._4Base
	mov r0, sl
	add sp, #0x88
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808595C: .4byte vt_09F84088
_08085960: .4byte _vt.1D
_08085964: .4byte gUnknown_08CE39F8
_08085968: .4byte vt_09F83E40
_0808596C: .4byte 0x0000174C
_08085970: .4byte _vt.3Unk
_08085974: .4byte _vt.9AKeyPress
_08085978: .4byte gUnknown_0810F3D0
_0808597C: .4byte _vt.13AKeyLongPress
_08085980: .4byte _vt.9LKeyPress
_08085984: .4byte _vt.13LKeyLongPress

	thumb_func_start sub_08085988
sub_08085988: @ 0x08085988
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _080859DC @ =vt_09F84088
	str r0, [r5, #0x1c]
	ldr r0, _080859E0 @ =0x0000174C
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl _._10KeyFocuser
	adds r0, r5, #0
	adds r0, #0x9c
	cmp r0, #0
	beq _080859C2
	cmp r0, r4
	beq _080859C2
	adds r6, r0, #0
_080859AC:
	subs r4, #0x58
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _080859AC
_080859C2:
	adds r0, r5, #0
	adds r0, #0x30
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080859DC: .4byte vt_09F84088
_080859E0: .4byte 0x0000174C

	thumb_func_start sub_080859E4
sub_080859E4: @ 0x080859E4
	strh r1, [r0, #0x24]
	bx lr

	thumb_func_start sub_080859E8
sub_080859E8: @ 0x080859E8
	ldrh r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_080859EC
sub_080859EC: @ 0x080859EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	movs r0, #0
	str r0, [r6, #0x2c]
	strh r0, [r6, #0x28]
	strh r0, [r6, #0x2a]
	movs r7, #0
	b _08085ADA
_08085A02:
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _08085A28 @ =0x0000FF30
	cmp r1, r0
	beq _08085A6A
	cmp r1, r0
	bgt _08085A38
	subs r0, #0x2f
	cmp r1, r0
	beq _08085A62
	cmp r1, r0
	bgt _08085A2C
	cmp r1, #0
	beq _08085A54
	b _08085A92
	.align 2, 0
_08085A28: .4byte 0x0000FF30
_08085A2C:
	ldr r0, _08085A34 @ =0x0000FF02
	cmp r1, r0
	beq _08085A5C
	b _08085A92
	.align 2, 0
_08085A34: .4byte 0x0000FF02
_08085A38:
	ldr r0, _08085A50 @ =0x0000FF32
	cmp r1, r0
	beq _08085A7A
	cmp r1, r0
	blt _08085A72
	adds r0, #1
	cmp r1, r0
	beq _08085A82
	adds r0, #1
	cmp r1, r0
	beq _08085A8A
	b _08085A92
	.align 2, 0
_08085A50: .4byte 0x0000FF32
_08085A54:
	adds r0, r6, #0
	bl sub_08085B1C
	b _08085AD8
_08085A5C:
	adds r0, r6, #0
	bl sub_08085C48
_08085A62:
	adds r0, r6, #0
	bl sub_08085AF4
	b _08085AD8
_08085A6A:
	movs r0, #5
	bl sub_0807068C
	b _08085AD8
_08085A72:
	movs r0, #0xa
	bl sub_0807068C
	b _08085AD8
_08085A7A:
	movs r0, #0x1e
	bl sub_0807068C
	b _08085AD8
_08085A82:
	movs r0, #0x3c
	bl sub_0807068C
	b _08085AD8
_08085A8A:
	movs r0, #0x5a
	bl sub_0807068C
	b _08085AD8
_08085A92:
	ldrh r2, [r6, #0x28]
	ldrh r1, [r6, #0x2a]
	movs r0, #0x58
	muls r1, r0, r1
	lsls r4, r2, #4
	subs r4, r4, r2
	lsls r4, r4, #3
	adds r4, r4, r2
	lsls r4, r4, #4
	adds r0, r4, r6
	adds r0, r1, r0
	adds r0, #0x9c
	ldr r5, [r0, #0x1c]
	adds r5, #0xd0
	adds r4, #0x9c
	adds r4, r6, r4
	adds r4, r4, r1
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r4, r4, r0
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r0, r6, #0
	bl sub_08085B1C
	adds r0, r6, #0
	bl sub_08085BF8
_08085AD8:
	adds r7, #1
_08085ADA:
	mov r0, r8
	bl sub_0806E414
	cmp r7, r0
	blt _08085A02
	adds r0, r6, #0
	bl sub_08085C48
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08085AF4
sub_08085AF4: @ 0x08085AF4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x28]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08085B14
	adds r0, r4, #0
	bl sub_08085B38
	str r5, [r4, #0x2c]
	movs r0, #2
	strh r0, [r4, #0x28]
_08085B14:
	strh r5, [r4, #0x2a]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08085B1C
sub_08085B1C: @ 0x08085B1C
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2a]
	adds r0, #1
	strh r0, [r1, #0x2a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x15
	bls _08085B34
	adds r0, r1, #0
	bl sub_08085AF4
_08085B34:
	pop {r0}
	bx r0

	thumb_func_start sub_08085B38
sub_08085B38: @ 0x08085B38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0
_08085B46:
	movs r0, #0
	mov r8, r0
	lsls r0, r1, #4
	adds r2, r1, #1
	mov sl, r2
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r6, r0, #4
	adds r0, r6, #0
	adds r0, #0x9c
	adds r0, r0, r7
	mov sb, r0
_08085B60:
	movs r0, #0x58
	mov r3, r8
	muls r3, r0, r3
	adds r1, r6, r7
	adds r1, r3, r1
	adds r0, r1, #0
	adds r0, #0x9c
	ldr r4, [r0, #0x1c]
	adds r4, #0xd0
	mov r0, sb
	adds r5, r0, r3
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	ldr r0, _08085BEC @ =0x0000082C
	adds r1, r1, r0
	ldr r2, [r1, #0x1c]
	adds r2, #0xd8
	adds r0, r6, r0
	adds r0, r7, r0
	adds r0, r0, r3
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
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0x15
	ble _08085B60
	mov r1, sl
	cmp r1, #1
	ble _08085B46
	movs r4, #0
	ldr r5, _08085BF0 @ =0x00000FBC
_08085BB8:
	movs r0, #0x58
	muls r0, r4, r0
	adds r1, r0, r7
	adds r1, r1, r5
	ldr r2, [r1, #0x1c]
	adds r2, #0xd0
	adds r0, r0, r5
	adds r0, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	ldr r1, _08085BF4 @ =0x0000FFFF
	bl _call_via_r2
	adds r4, #1
	cmp r4, #0x15
	ble _08085BB8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085BEC: .4byte 0x0000082C
_08085BF0: .4byte 0x00000FBC
_08085BF4: .4byte 0x0000FFFF

	thumb_func_start sub_08085BF8
sub_08085BF8: @ 0x08085BF8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	b _08085C3A
_08085C00:
	ldrh r4, [r5, #0x26]
	adds r0, r4, #1
	strh r0, [r5, #0x26]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08070770
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0807067C
	cmp r0, #0
	bne _08085C32
	ldr r1, [r5, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl playSound
_08085C32:
	movs r0, #1
	bl sub_0807068C
	adds r6, #1
_08085C3A:
	bl sub_08070754
	cmp r6, r0
	blt _08085C00
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08085C48
sub_08085C48: @ 0x08085C48
	push {r4, lr}
	sub sp, #0xa0
	adds r4, r0, #0
	mov r0, sp
	bl sub_0808AFA8
	add r1, sp, #0x9c
	movs r0, #0xd9
	movs r2, #0x18
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sp
	bl sub_0808B074
	movs r0, #1
	str r0, [r4, #0x2c]
_08085C68:
	movs r0, #1
	bl sub_0807068C
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	beq _08085C68
	mov r0, sp
	movs r1, #2
	bl sub_0808B060
	add sp, #0xa0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08085C84
sub_08085C84: @ 0x08085C84
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x2c]
	cmp r0, #1
	bne _08085C92
	movs r0, #2
	str r0, [r1, #0x2c]
_08085C92:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08085C98
sub_08085C98: @ 0x08085C98
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x30
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	bl sub_08072878
	adds r1, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807084C
	ldr r0, _08085D4C @ =vt_09F84108
	str r0, [r5, #0x1c]
	adds r4, r5, #0
	adds r4, #0x44
	adds r0, r4, #0
	bl sub_08071268
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	movs r0, #0
	ldrsh r2, [r6, r0]
	movs r1, #2
	ldrsh r0, [r6, r1]
	add r1, sp, #0x2c
	subs r0, #0x28
	strh r2, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	bl sub_08070B28
	adds r0, r4, #0
	mov r1, r8
	bl sub_0807138C
	adds r0, r4, #0
	movs r1, #3
	bl sub_080714B0
	adds r0, r4, #0
	movs r1, #1
	bl sub_080714A0
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _08085D50 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08085D54 @ =_vt.12PostAppClock
	str r0, [sp, #0x24]
	ldr r0, _08085D58 @ =gUnknown_0810FA58
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
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08085D4C: .4byte vt_09F84108
_08085D50: .4byte _vt.3Unk
_08085D54: .4byte _vt.12PostAppClock
_08085D58: .4byte gUnknown_0810FA58

	thumb_func_start sub_08085D5C
sub_08085D5C: @ 0x08085D5C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08085D80 @ =vt_09F84108
	str r0, [r4, #0x1c]
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
_08085D80: .4byte vt_09F84108

	thumb_func_start sub_08085D84
sub_08085D84: @ 0x08085D84
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #1
	cmp r0, #0x1f
	bgt _08085DEA
	ldr r2, [r5, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r4, sp
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldrh r0, [r5, #0x3c]
	ldrh r2, [r5, #0x3e]
	adds r1, r0, r2
	strh r1, [r5, #0x3e]
	subs r0, #8
	strh r0, [r5, #0x3c]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	asrs r1, r1, #8
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r5, #0x3e]
	ldr r1, [r5, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	adds r0, r5, #0
	adds r0, #0x44
	mov r1, sp
	bl sub_080714A4
_08085DEA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08085DF4
sub_08085DF4: @ 0x08085DF4
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _08085E1E
	cmp r2, #0
	beq _08085E1E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08085E1E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08085E24
sub_08085E24: @ 0x08085E24
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x30
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	bl sub_08072878
	adds r1, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807084C
	ldr r0, _08085ED8 @ =vt_09F84278
	str r0, [r5, #0x1c]
	adds r4, r5, #0
	adds r4, #0x44
	adds r0, r4, #0
	bl sub_08071268
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	movs r0, #0
	ldrsh r2, [r6, r0]
	movs r1, #2
	ldrsh r0, [r6, r1]
	add r1, sp, #0x2c
	subs r0, #0x28
	strh r2, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	bl sub_08070B28
	adds r0, r4, #0
	mov r1, r8
	bl sub_0807138C
	adds r0, r4, #0
	movs r1, #2
	bl sub_080714B0
	adds r0, r4, #0
	movs r1, #1
	bl sub_080714A0
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _08085EDC @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08085EE0 @ =_vt.12PostAppClock
	str r0, [sp, #0x24]
	ldr r0, _08085EE4 @ =gUnknown_081100E0
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
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08085ED8: .4byte vt_09F84278
_08085EDC: .4byte _vt.3Unk
_08085EE0: .4byte _vt.12PostAppClock
_08085EE4: .4byte gUnknown_081100E0

	thumb_func_start sub_08085EE8
sub_08085EE8: @ 0x08085EE8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08085F0C @ =vt_09F84278
	str r0, [r4, #0x1c]
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
_08085F0C: .4byte vt_09F84278

	thumb_func_start sub_08085F10
sub_08085F10: @ 0x08085F10
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #1
	cmp r0, #0x1f
	bgt _08085F76
	ldr r2, [r5, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r4, sp
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldrh r0, [r5, #0x3c]
	ldrh r2, [r5, #0x3e]
	adds r1, r0, r2
	strh r1, [r5, #0x3e]
	subs r0, #8
	strh r0, [r5, #0x3c]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	asrs r1, r1, #8
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r5, #0x3e]
	ldr r1, [r5, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	adds r0, r5, #0
	adds r0, #0x44
	mov r1, sp
	bl sub_080714A4
_08085F76:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08085F80
sub_08085F80: @ 0x08085F80
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _08085FAA
	cmp r2, #0
	beq _08085FAA
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08085FAA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08085FB0
sub_08085FB0: @ 0x08085FB0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x2c
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	bl sub_08072878
	adds r1, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807084C
	ldr r0, _0808604C @ =vt_09F843E8
	str r0, [r5, #0x1c]
	adds r4, r5, #0
	adds r4, #0x44
	adds r0, r4, #0
	bl sub_08071268
	movs r1, #0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08070B28
	adds r0, r4, #0
	mov r1, r8
	bl sub_0807138C
	adds r0, r4, #0
	movs r1, #1
	bl sub_080714A0
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _08086050 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08086054 @ =_vt.12PostAppClock
	str r0, [sp, #0x24]
	ldr r0, _08086058 @ =gUnknown_08110768
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #8
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x24]
	add r0, sp, #8
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808604C: .4byte vt_09F843E8
_08086050: .4byte _vt.3Unk
_08086054: .4byte _vt.12PostAppClock
_08086058: .4byte gUnknown_08110768

	thumb_func_start sub_0808605C
sub_0808605C: @ 0x0808605C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08086080 @ =vt_09F843E8
	str r0, [r4, #0x1c]
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
_08086080: .4byte vt_09F843E8

	thumb_func_start sub_08086084
sub_08086084: @ 0x08086084
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #1
	cmp r0, #0x1f
	bgt _080860EA
	ldr r2, [r5, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r4, sp
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldrh r0, [r5, #0x3c]
	ldrh r2, [r5, #0x3e]
	adds r1, r0, r2
	strh r1, [r5, #0x3e]
	adds r0, #8
	strh r0, [r5, #0x3c]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	asrs r1, r1, #8
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r5, #0x3e]
	ldr r1, [r5, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	adds r0, r5, #0
	adds r0, #0x44
	mov r1, sp
	bl sub_080714A4
_080860EA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080860F4
sub_080860F4: @ 0x080860F4
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _0808611E
	cmp r2, #0
	beq _0808611E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808611E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086124
sub_08086124: @ 0x08086124
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x30
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08072878
	adds r1, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807084C
	ldr r0, _080861F8 @ =vt_09F84558
	str r0, [r5, #0x1c]
	movs r0, #0x44
	adds r0, r0, r5
	mov r8, r0
	bl sub_0806D8EC
	movs r1, #0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #2
	ldrsh r2, [r4, r1]
	add r1, sp, #0x2c
	subs r0, #0x10
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r5, #0
	bl sub_08070B28
	movs r1, #0xa4
	lsls r1, r1, #2
	add r0, sp, #8
	bl sub_080706A0
	add r6, sp, #0x14
	adds r0, r6, #0
	movs r1, #0
	bl sub_080706A0
	ldr r1, _080861FC @ =0x0000027B
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, r8
	add r1, sp, #8
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08086200 @ =_vt.1D
	str r0, [sp, #0x28]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x10]
	mov r0, r8
	movs r1, #0x7b
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r0, _08086204 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08086208 @ =_vt.12PostAppClock
	str r0, [sp, #0x24]
	ldr r0, _0808620C @ =gUnknown_08110DF0
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
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080861F8: .4byte vt_09F84558
_080861FC: .4byte 0x0000027B
_08086200: .4byte _vt.1D
_08086204: .4byte _vt.3Unk
_08086208: .4byte _vt.12PostAppClock
_0808620C: .4byte gUnknown_08110DF0

	thumb_func_start sub_08086210
sub_08086210: @ 0x08086210
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08086234 @ =vt_09F84558
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #2
	bl sub_0806D9A4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080708A8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086234: .4byte vt_09F84558

	thumb_func_start sub_08086238
sub_08086238: @ 0x08086238
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #1
	cmp r0, #0x1f
	bgt _0808629E
	ldr r2, [r5, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r4, sp
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldrh r0, [r5, #0x3c]
	ldrh r2, [r5, #0x3e]
	adds r1, r0, r2
	strh r1, [r5, #0x3e]
	adds r0, #8
	strh r0, [r5, #0x3c]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	asrs r1, r1, #8
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r5, #0x3e]
	ldr r1, [r5, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	adds r0, r5, #0
	adds r0, #0x44
	mov r1, sp
	bl sub_0806DB74
_0808629E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080862A8
sub_080862A8: @ 0x080862A8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x27
	bls _080862D2
	cmp r2, #0
	beq _080862D2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080862D2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080862D8
sub_080862D8: @ 0x080862D8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x2c
	adds r6, r0, #0
	mov sl, r1
	adds r4, r2, #0
	bl sub_08072878
	adds r1, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807084C
	ldr r0, _080863C4 @ =vt_09F846C8
	str r0, [r6, #0x1c]
	movs r0, #0x50
	adds r0, r0, r6
	mov sb, r0
	bl sub_08071268
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	str r0, [r6, #0x3c]
	movs r3, #2
	ldrsh r0, [r4, r3]
	lsls r0, r0, #0x10
	str r0, [r6, #0x40]
	adds r1, r6, #0
	adds r1, #0x4c
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xd6
	lsls r0, r0, #2
	movs r1, #0xea
	lsls r1, r1, #2
	bl randS32
	ldr r2, _080863C8 @ =gUnknown_080EF880
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r0, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r4, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r4, r0
	mov r8, r1
	subs r4, r4, r0
	ldr r0, _080863CC @ =0xFFFE0C00
	ldr r1, _080863D0 @ =0xFFFE7000
	bl randS32
	adds r5, r0, #0
	mov r0, r8
	adds r1, r5, #0
	bl sub_080695D4
	str r0, [r6, #0x44]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080695D4
	str r0, [r6, #0x48]
	mov r0, sb
	mov r1, sl
	bl sub_0807138C
	mov r0, sb
	movs r1, #1
	bl sub_080714A0
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #8
	bl __4Base
	ldr r3, _080863D4 @ =_vt.3Unk
	mov r8, r3
	ldr r0, _080863D8 @ =_vt.12PostAppClock
	str r0, [sp, #0x24]
	ldr r0, _080863DC @ =gUnknown_08111478
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	add r2, sp, #8
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x24]
	add r0, sp, #8
	movs r1, #2
	bl _._4Base
	adds r0, r6, #0
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080863C4: .4byte vt_09F846C8
_080863C8: .4byte gUnknown_080EF880
_080863CC: .4byte 0xFFFE0C00
_080863D0: .4byte 0xFFFE7000
_080863D4: .4byte _vt.3Unk
_080863D8: .4byte _vt.12PostAppClock
_080863DC: .4byte gUnknown_08111478

	thumb_func_start sub_080863E0
sub_080863E0: @ 0x080863E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08086404 @ =vt_09F846C8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #2
	bl sub_08071334
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080708A8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086404: .4byte vt_09F846C8

	thumb_func_start sub_08086408
sub_08086408: @ 0x08086408
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r5, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r5, r5, r0
	str r5, [r4, #0x3c]
	ldr r3, [r4, #0x40]
	ldr r0, [r4, #0x48]
	adds r3, r3, r0
	str r3, [r4, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r2, [r4, #0x1c]
	adds r2, #0xc8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	asrs r5, r5, #0x10
	asrs r3, r3, #0x10
	mov r6, sp
	mov r1, sp
	strh r5, [r1]
	strh r3, [r6, #2]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x3e
	ldrsh r3, [r4, r1]
	ldr r2, [r4, #0x40]
	asrs r2, r2, #0x10
	add r1, sp, #4
	strh r3, [r1]
	strh r2, [r1, #2]
	bl sub_080714A4
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08086460
sub_08086460: @ 0x08086460
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bls _0808648C
	cmp r2, #0
	beq _080864A8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _080864A8
_0808648C:
	ldr r0, [r2, #0x40]
	asrs r0, r0, #0x10
	cmp r0, #0xaa
	ble _080864A8
	cmp r2, #0
	beq _080864A8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080864A8:
	pop {r0}
	bx r0

	thumb_func_start sub_080864AC
sub_080864AC: @ 0x080864AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r6, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_08089684
	ldr r0, _080865F4 @ =vt_09F84838
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08089780
	bl sub_080728B8
	mov r8, r0
	movs r7, #0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x24]
	ldr r0, _080865F8 @ =_vt.10UnitEscape
	mov sb, r0
	str r0, [sp, #0x20]
	ldr r0, _080865FC @ =gUnknown_08111B00
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _08086600 @ =_vt.3Unk
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x24]
	mov r0, sb
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _08086600 @ =_vt.3Unk
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x24]
	mov r0, sb
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _08086600 @ =_vt.3Unk
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x24]
	ldr r0, _08086604 @ =_vt.7UnitDie
	mov sb, r0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _08086600 @ =_vt.3Unk
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x24]
	mov r0, sb
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _08086600 @ =_vt.3Unk
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
	mov r8, r0
	add r0, sp, #4
	bl __4Base
	str r7, [sp, #0x24]
	mov r0, sb
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r0, _08086600 @ =_vt.3Unk
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r6, #0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080865F4: .4byte vt_09F84838
_080865F8: .4byte _vt.10UnitEscape
_080865FC: .4byte gUnknown_08111B00
_08086600: .4byte _vt.3Unk
_08086604: .4byte _vt.7UnitDie

	thumb_func_start sub_08086608
sub_08086608: @ 0x08086608
	push {lr}
	ldr r2, _08086618 @ =vt_09F84838
	str r2, [r0, #0x1c]
	bl sub_08089714
	pop {r0}
	bx r0
	.align 2, 0
_08086618: .4byte vt_09F84838

	thumb_func_start sub_0808661C
sub_0808661C: @ 0x0808661C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0806B070
	mov r2, sp
	movs r4, #0
	mov r1, sp
	strh r4, [r1]
	strh r4, [r2, #2]
	bl sub_0806BA6C
	bl sub_0806BE14
	add r1, sp, #4
	strh r4, [r1]
	strh r4, [r1, #2]
	bl sub_0806C028
	bl sub_0806A9A4
	add r1, sp, #8
	strh r4, [r1]
	strh r4, [r1, #2]
	bl sub_0806ABB8
	ldr r1, [r5, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08086676
_08086662:
	ldr r1, [r5, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r4, #1
_08086676:
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08086662
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086694
sub_08086694: @ 0x08086694
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _080866BA
	adds r0, #0x20
	cmp r0, r1
	beq _08086722
	b _080866BE
_080866BA:
	cmp r1, #0
	beq _08086722
_080866BE:
	movs r7, #0
	b _08086736
_080866C2:
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _080866E4
	adds r0, #0x20
	cmp r0, r1
	beq _080866E8
	b _08086734
_080866E4:
	cmp r1, #0
	bne _08086734
_080866E8:
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xd0
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xe0
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
	ldr r1, [r6, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0808674A
_08086722:
	ldr r1, [r6, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0808674A
_08086734:
	adds r7, #1
_08086736:
	ldr r1, [r6, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	blt _080866C2
_0808674A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08086750
sub_08086750: @ 0x08086750
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _080867B0 @ =vt_09F84948
	str r0, [r5, #0x1c]
	movs r0, #0
	strh r0, [r5, #0x24]
	strh r0, [r5, #0x26]
	str r0, [r5, #0x28]
	movs r0, #1
	strh r0, [r5, #0x2c]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080867B4 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080867B8 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _080867BC @ =gUnknown_08112188
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080867B0: .4byte vt_09F84948
_080867B4: .4byte _vt.3Unk
_080867B8: .4byte _vt.8AppClock
_080867BC: .4byte gUnknown_08112188

	thumb_func_start sub_080867C0
sub_080867C0: @ 0x080867C0
	push {lr}
	ldr r2, _080867D0 @ =vt_09F84948
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080867D0: .4byte vt_09F84948

	thumb_func_start sub_080867D4
sub_080867D4: @ 0x080867D4
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _080867E8
	ldrh r1, [r2, #0x2c]
	movs r0, #1
	orrs r0, r1
	b _080867EE
_080867E8:
	ldrh r1, [r2, #0x2c]
	ldr r0, _080867F4 @ =0x0000FFFE
	ands r0, r1
_080867EE:
	strh r0, [r2, #0x2c]
	pop {r0}
	bx r0
	.align 2, 0
_080867F4: .4byte 0x0000FFFE

	thumb_func_start sub_080867F8
sub_080867F8: @ 0x080867F8
	strh r1, [r0, #0x20]
	bx lr

	thumb_func_start sub_080867FC
sub_080867FC: @ 0x080867FC
	ldr r1, [r1]
	str r1, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_08086804
sub_08086804: @ 0x08086804
	str r1, [r0, #0x28]
	bx lr

	thumb_func_start sub_08086808
sub_08086808: @ 0x08086808
	ldrh r1, [r0, #0x2c]
	movs r0, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08086810
sub_08086810: @ 0x08086810
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_08086814
sub_08086814: @ 0x08086814
	ldr r1, [r1, #0x24]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808681C
sub_0808681C: @ 0x0808681C
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_08086820
sub_08086820: @ 0x08086820
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x2c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08086834
	adds r0, r2, #0
	bl sub_08086838
_08086834:
	pop {r0}
	bx r0

	thumb_func_start sub_08086838
sub_08086838: @ 0x08086838
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0806BE14
	adds r4, r0, #0
	ldr r5, [r6, #0x28]
	adds r1, r5, #0
	movs r2, #1
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806C010
	adds r4, r0, #0
	movs r0, #0x24
	ldrsh r1, [r6, r0]
	lsls r1, r1, #0x10
	ldr r0, _0808689C @ =0x01FF0000
	ands r1, r0
	str r1, [r4]
	ldrh r2, [r6, #0x26]
	movs r0, #0xff
	ands r0, r2
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r4]
	ldr r0, [r6, #0x28]
	asrs r0, r0, #1
	lsls r0, r0, #0xa
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl sub_080868A0
	ldrh r1, [r4, #4]
	orrs r0, r1
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl sub_08086988
	lsls r0, r0, #0xc
	ldrh r1, [r4, #4]
	orrs r0, r1
	strh r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808689C: .4byte 0x01FF0000

	thumb_func_start sub_080868A0
sub_080868A0: @ 0x080868A0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_0806BE14
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, #0x90
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036E70
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	bl sub_0806C0B4
	adds r6, r0, #0
	adds r2, r7, #0
	adds r2, #0x20
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r2, r7, #0
	adds r2, #0x40
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	ldr r4, _08086984 @ =gUnknown_020040C0
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r2, r7, #0
	adds r2, #0x60
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r2, r7, #0
	adds r2, #0x80
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r2, r7, #0
	adds r2, #0xa0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r2, r7, #0
	adds r2, #0xc0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r2, r7, #0
	adds r2, #0xe0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r7, r0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08086984: .4byte gUnknown_020040C0

	thumb_func_start sub_08086988
sub_08086988: @ 0x08086988
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806BE14
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, #0x90
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036E90
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C174
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080869BC
sub_080869BC: @ 0x080869BC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0806D8EC
	ldr r0, _08086A80 @ =vt_09F849F0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x94
	str r4, [r0]
	adds r0, r5, #0
	bl sub_08086C3C
	movs r1, #0x98
	adds r1, r1, r5
	mov r8, r1
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0x9c
	movs r0, #0
	str r0, [r1]
	ldr r1, _08086A84 @ =0x00000291
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #2
	bl sub_080706A0
	ldr r1, _08086A88 @ =0x00000283
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08086A8C @ =_vt.1D
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r0, r8
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08086C40
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08086C68
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r1, _08086A90 @ =_vt.3Unk
	mov r8, r1
	ldr r0, _08086A94 @ =_vt.11PreAppClock
	str r0, [sp, #0x20]
	ldr r0, _08086A98 @ =gUnknown_08112810
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08086A80: .4byte vt_09F849F0
_08086A84: .4byte 0x00000291
_08086A88: .4byte 0x00000283
_08086A8C: .4byte _vt.1D
_08086A90: .4byte _vt.3Unk
_08086A94: .4byte _vt.11PreAppClock
_08086A98: .4byte gUnknown_08112810

	thumb_func_start sub_08086A9C
sub_08086A9C: @ 0x08086A9C
	push {lr}
	ldr r2, _08086AAC @ =vt_09F849F0
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_08086AAC: .4byte vt_09F849F0

	thumb_func_start sub_08086AB0
sub_08086AB0: @ 0x08086AB0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x98
	bl sub_08086C3C
	ldr r1, [r4]
	cmp r1, r0
	bge _08086B02
	adds r0, r6, #0
	adds r0, #0x94
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	adds r0, r6, #0
	bl sub_08086C40
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08086B02
	adds r0, r6, #0
	bl sub_08086B4C
	adds r1, r6, #0
	adds r1, #0x9c
	movs r0, #0
	str r0, [r1]
	b _08086B1A
_08086B02:
	adds r4, r6, #0
	adds r4, #0x9c
	ldr r0, [r4]
	cmp r0, #0x59
	ble _08086B16
	adds r0, r6, #0
	bl sub_08086B4C
	movs r0, #0
	b _08086B18
_08086B16:
	adds r0, #1
_08086B18:
	str r0, [r4]
_08086B1A:
	ldr r0, [r6, #0x1c]
	adds r4, r0, #0
	adds r4, #0x78
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r6, r0
	adds r0, r6, #0
	bl sub_08086C3C
	movs r3, #0
	adds r1, r6, #0
	adds r1, #0x98
	ldr r1, [r1]
	cmp r1, r0
	bge _08086B3A
	movs r3, #1
_08086B3A:
	ldr r2, [r4, #4]
	adds r0, r5, #0
	adds r1, r3, #0
	bl _call_via_r2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086B4C
sub_08086B4C: @ 0x08086B4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r0, #0x98
	ldr r0, [r0]
	adds r7, r0, #1
	b _08086BA0
_08086B5C:
	adds r0, r6, #0
	adds r0, #0x94
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08086C40
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08086B9E
	adds r0, r6, #0
	adds r0, #0x98
	str r7, [r0]
	ldr r4, [r6, #0x1c]
	adds r4, #0x80
	movs r0, #0
	ldrsh r5, [r4, r0]
	b _08086BF6
_08086B9E:
	adds r7, #1
_08086BA0:
	adds r0, r6, #0
	bl sub_08086C3C
	cmp r7, r0
	blt _08086B5C
	movs r7, #0
	adds r0, r6, #0
	adds r0, #0x98
	ldr r1, [r0]
	mov r8, r0
	cmp r7, r1
	bgt _08086C26
_08086BB8:
	adds r0, r6, #0
	adds r0, #0x94
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r4, r4, r1
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08086C40
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08086C1C
	mov r0, r8
	str r7, [r0]
	ldr r4, [r6, #0x1c]
	adds r4, #0x80
	movs r1, #0
	ldrsh r5, [r4, r1]
_08086BF6:
	adds r5, r6, r5
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08086C40
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_08086C68
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	b _08086C30
_08086C1C:
	adds r7, #1
	mov r1, r8
	ldr r0, [r1]
	cmp r7, r0
	ble _08086BB8
_08086C26:
	adds r0, r6, #0
	bl sub_08086C3C
	mov r1, r8
	str r0, [r1]
_08086C30:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086C3C
sub_08086C3C: @ 0x08086C3C
	movs r0, #8
	bx lr

	thumb_func_start sub_08086C40
sub_08086C40: @ 0x08086C40
	push {r4, lr}
	adds r4, r1, #0
	cmp r4, #0
	blt _08086C60
	bl sub_08086C3C
	cmp r4, r0
	bge _08086C60
	ldr r1, _08086C5C @ =gUnknown_08112818
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08086C62
	.align 2, 0
_08086C5C: .4byte gUnknown_08112818
_08086C60:
	movs r0, #0
_08086C62:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08086C68
sub_08086C68: @ 0x08086C68
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_08086C74
sub_08086C74: @ 0x08086C74
	push {lr}
_08086C76:
	b _08086C76

	thumb_func_start sub_08086C78
sub_08086C78: @ 0x08086C78
	push {lr}
	bl sub_08065D98
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08086C94
sub_08086C94: @ 0x08086C94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r6, r1, #0
	movs r0, #0
	bl sub_080707C4
	ldr r2, _08086CF0 @ =gSoundPlayerTable
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r4, [r1, #4]
	cmp r0, r4
	bgt _08086CC0
	movs r0, #1
	bl sub_080707C4
	cmp r0, r4
	ble _08086CFC
_08086CC0:
	ldr r0, _08086CF4 @ =gUnknown_09C8F390
	movs r1, #1
	rsbs r1, r1, #0
	ldr r5, _08086CF8 @ =_vt.1D
	str r5, [sp, #8]
	str r0, [sp]
	str r1, [sp, #4]
	add r4, sp, #0xc
	adds r0, r4, #0
	mov r1, sp
	bl __9BXTHandleRC6BXTRef
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl __7MessageP9BXTHandleUi
	adds r0, r4, #0
	movs r1, #2
	bl _._9BXTHandle
	str r5, [sp, #8]
	b _08086D06
	.align 2, 0
_08086CF0: .4byte gSoundPlayerTable
_08086CF4: .4byte gUnknown_09C8F390
_08086CF8: .4byte _vt.1D
_08086CFC:
	ldr r1, _08086D10 @ =0x000003A7
	adds r0, r7, #0
	movs r2, #2
	bl sub_080706D0
_08086D06:
	adds r0, r7, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08086D10: .4byte 0x000003A7

	thumb_func_start sub_08086D14
sub_08086D14: @ 0x08086D14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FF38
	ldr r0, _08086D30 @ =vt_09F84AE8
	str r0, [r4, #0x1c]
	movs r0, #0
	strh r0, [r4, #0x3c]
	ldr r0, _08086D34 @ =gSoundPlayerTable
	str r0, [r4, #0x40]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08086D30: .4byte vt_09F84AE8
_08086D34: .4byte gSoundPlayerTable

	thumb_func_start sub_08086D38
sub_08086D38: @ 0x08086D38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08086D64 @ =gSoundPlayerTable
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r4, r4, r0
	ldrh r1, [r4, #2]
	adds r0, r6, #0
	bl sub_0806FF6C
	ldr r0, _08086D68 @ =vt_09F84AE8
	str r0, [r6, #0x1c]
	strh r5, [r6, #0x3c]
	str r4, [r6, #0x40]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08086D64: .4byte gSoundPlayerTable
_08086D68: .4byte vt_09F84AE8

	thumb_func_start sub_08086D6C
sub_08086D6C: @ 0x08086D6C
	push {lr}
	ldr r2, _08086D7C @ =vt_09F84AE8
	str r2, [r0, #0x1c]
	bl sub_0806FFA8
	pop {r0}
	bx r0
	.align 2, 0
_08086D7C: .4byte vt_09F84AE8

	thumb_func_start sub_08086D80
sub_08086D80: @ 0x08086D80
	ldrh r0, [r0, #0x3c]
	bx lr

	thumb_func_start sub_08086D84
sub_08086D84: @ 0x08086D84
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08086C94
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08086DB0
sub_08086DB0: @ 0x08086DB0
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_08086DB8
sub_08086DB8: @ 0x08086DB8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r6, r1, #0x10
	lsrs r6, r6, #0x10
	bl __4Base
	ldr r0, _08086E64 @ =vt_09F84BE8
	str r0, [r5, #0x20]
	ldr r0, _08086E68 @ =vt_09F84C40
	str r0, [r5, #0x1c]
	movs r0, #0x2c
	adds r0, r0, r5
	mov sb, r0
	bl sub_0806D8EC
	movs r1, #0
	strh r6, [r5, #0x28]
	strh r1, [r5, #0x2a]
	adds r0, r5, #0
	adds r0, #0xbc
	strh r1, [r0]
	ldr r1, _08086E6C @ =0x000003A5
	add r0, sp, #4
	bl sub_080706A0
	add r0, sp, #0x10
	mov r8, r0
	movs r1, #7
	bl sub_080706A0
	ldr r1, _08086E70 @ =0x00000287
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, sb
	add r1, sp, #4
	mov r2, r8
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08086E74 @ =_vt.1D
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r0, sb
	adds r1, r6, #0
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08086E78 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08086E7C @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _08086E80 @ =gUnknown_08114304
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08086E64: .4byte vt_09F84BE8
_08086E68: .4byte vt_09F84C40
_08086E6C: .4byte 0x000003A5
_08086E70: .4byte 0x00000287
_08086E74: .4byte _vt.1D
_08086E78: .4byte _vt.3Unk
_08086E7C: .4byte _vt.8AppClock
_08086E80: .4byte gUnknown_08114304

	thumb_func_start sub_08086E84
sub_08086E84: @ 0x08086E84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08086EB0 @ =vt_09F84BE8
	str r0, [r4, #0x20]
	ldr r0, _08086EB4 @ =vt_09F84C40
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #2
	bl sub_0806D9A4
	ldr r0, _08086EB8 @ =vt_09F84CA8
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086EB0: .4byte vt_09F84BE8
_08086EB4: .4byte vt_09F84C40
_08086EB8: .4byte vt_09F84CA8

	thumb_func_start sub_08086EBC
sub_08086EBC: @ 0x08086EBC
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, #0x2c
	bl sub_0806DB38
	pop {r0}
	bx r0

	thumb_func_start sub_08086ECC
sub_08086ECC: @ 0x08086ECC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _08086EEE
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	ldrh r1, [r4, #0x2a]
	movs r0, #1
	orrs r0, r1
	b _08086EFE
_08086EEE:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	bl sub_0806DB60
	ldrh r1, [r4, #0x2a]
	ldr r0, _08086F08 @ =0x0000FFFE
	ands r0, r1
_08086EFE:
	strh r0, [r4, #0x2a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086F08: .4byte 0x0000FFFE

	thumb_func_start sub_08086F0C
sub_08086F0C: @ 0x08086F0C
	push {lr}
	adds r0, #0x2c
	bl sub_0806DB74
	pop {r0}
	bx r0

	thumb_func_start sub_08086F18
sub_08086F18: @ 0x08086F18
	push {lr}
	adds r0, #0x2c
	bl sub_0806DB7C
	pop {r0}
	bx r0

	thumb_func_start sub_08086F24
sub_08086F24: @ 0x08086F24
	push {lr}
	adds r0, #0x2c
	bl sub_0806DB90
	pop {r1}
	bx r1

	thumb_func_start sub_08086F30
sub_08086F30: @ 0x08086F30
	ldrh r1, [r0, #0x2a]
	movs r0, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08086F38
sub_08086F38: @ 0x08086F38
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x2c
	bl sub_0806DBAC
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08086F4C
sub_08086F4C: @ 0x08086F4C
	push {lr}
	adds r0, #0x2c
	bl sub_0806DBB4
	pop {r1}
	bx r1

	thumb_func_start sub_08086F58
sub_08086F58: @ 0x08086F58
	push {lr}
	adds r3, r0, #0
	ldrh r1, [r3, #0x2a]
	movs r0, #2
	movs r2, #0
	orrs r0, r1
	strh r0, [r3, #0x2a]
	adds r0, r3, #0
	adds r0, #0xbc
	strh r2, [r0]
	subs r0, #0x90
	ldrh r1, [r3, #0x28]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086F80
sub_08086F80: @ 0x08086F80
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2a]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08086FCE
	adds r0, r4, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #4
	bls _08086FCE
	ldrh r1, [r4, #0x2a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08086FBC
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	b _08086FC6
_08086FBC:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	bl sub_0806DB60
_08086FC6:
	ldrh r1, [r4, #0x2a]
	ldr r0, _08086FD4 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x2a]
_08086FCE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086FD4: .4byte 0x0000FFFD

	thumb_func_start sub_08086FD8
sub_08086FD8: @ 0x08086FD8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x24
	adds r4, r0, #0
	lsls r6, r1, #0x10
	lsrs r6, r6, #0x10
	bl __4Base
	ldr r0, _0808704C @ =vt_09F84D00
	str r0, [r4, #0x20]
	ldr r0, _08087050 @ =vt_09F84D58
	str r0, [r4, #0x1c]
	movs r0, #0x2c
	adds r0, r0, r4
	mov r8, r0
	bl sub_0806D8EC
	movs r0, #0
	strh r6, [r4, #0x28]
	strh r0, [r4, #0x2a]
	ldr r1, _08087054 @ =0x000003A5
	mov r0, sp
	bl sub_080706A0
	add r0, sp, #0xc
	mov sb, r0
	movs r1, #7
	bl sub_080706A0
	ldr r1, _08087058 @ =0x00000287
	add r5, sp, #0x18
	adds r0, r5, #0
	bl sub_080706A0
	mov r0, r8
	mov r1, sp
	mov r2, sb
	adds r3, r5, #0
	bl sub_0806D9F4
	ldr r0, _0808705C @ =_vt.1D
	str r0, [sp, #0x20]
	str r0, [sp, #0x14]
	str r0, [sp, #8]
	mov r0, r8
	adds r1, r6, #0
	bl sub_0806DB60
	adds r0, r4, #0
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808704C: .4byte vt_09F84D00
_08087050: .4byte vt_09F84D58
_08087054: .4byte 0x000003A5
_08087058: .4byte 0x00000287
_0808705C: .4byte _vt.1D

	thumb_func_start sub_08087060
sub_08087060: @ 0x08087060
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0808708C @ =vt_09F84D00
	str r0, [r4, #0x20]
	ldr r0, _08087090 @ =vt_09F84D58
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #2
	bl sub_0806D9A4
	ldr r0, _08087094 @ =vt_09F84CA8
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808708C: .4byte vt_09F84D00
_08087090: .4byte vt_09F84D58
_08087094: .4byte vt_09F84CA8

	thumb_func_start sub_08087098
sub_08087098: @ 0x08087098
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, #0x2c
	bl sub_0806DB38
	pop {r0}
	bx r0

	thumb_func_start sub_080870A8
sub_080870A8: @ 0x080870A8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _080870E8
	ldrh r1, [r4, #0x2a]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080870D0
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	b _080870E0
_080870D0:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
_080870E0:
	ldrh r1, [r4, #0x2a]
	movs r0, #1
	orrs r0, r1
	b _08087114
_080870E8:
	ldrh r1, [r4, #0x2a]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08087104
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	b _0808710E
_08087104:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	bl sub_0806DB60
_0808710E:
	ldrh r1, [r4, #0x2a]
	ldr r0, _0808711C @ =0x0000FFFE
	ands r0, r1
_08087114:
	strh r0, [r4, #0x2a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808711C: .4byte 0x0000FFFE

	thumb_func_start sub_08087120
sub_08087120: @ 0x08087120
	push {lr}
	adds r0, #0x2c
	bl sub_0806DB74
	pop {r0}
	bx r0

	thumb_func_start sub_0808712C
sub_0808712C: @ 0x0808712C
	push {lr}
	adds r0, #0x2c
	bl sub_0806DB7C
	pop {r0}
	bx r0

	thumb_func_start sub_08087138
sub_08087138: @ 0x08087138
	push {lr}
	adds r0, #0x2c
	bl sub_0806DB90
	pop {r1}
	bx r1

	thumb_func_start sub_08087144
sub_08087144: @ 0x08087144
	ldrh r1, [r0, #0x2a]
	movs r0, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_0808714C
sub_0808714C: @ 0x0808714C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x2c
	bl sub_0806DBAC
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08087160
sub_08087160: @ 0x08087160
	push {lr}
	adds r0, #0x2c
	bl sub_0806DBB4
	pop {r1}
	bx r1

	thumb_func_start sub_0808716C
sub_0808716C: @ 0x0808716C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2a]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080871AC
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08087194
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	b _080871A4
_08087194:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
_080871A4:
	ldrh r1, [r4, #0x2a]
	movs r0, #2
	orrs r0, r1
	b _080871D6
_080871AC:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080871C6
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	b _080871D0
_080871C6:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	bl sub_0806DB60
_080871D0:
	ldrh r1, [r4, #0x2a]
	ldr r0, _080871E0 @ =0x0000FFFD
	ands r0, r1
_080871D6:
	strh r0, [r4, #0x2a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080871E0: .4byte 0x0000FFFD

	thumb_func_start sub_080871E4
sub_080871E4: @ 0x080871E4
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r5, r0, #0
	bl sub_0806DC78
	ldr r0, _0808723C @ =vt_09F84DC0
	str r0, [r5, #0x1c]
	ldr r1, _08087240 @ =0x000003A5
	mov r0, sp
	bl sub_080706A0
	add r6, sp, #0xc
	adds r0, r6, #0
	movs r1, #7
	bl sub_080706A0
	ldr r1, _08087244 @ =0x00000287
	add r4, sp, #0x18
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	mov r1, sp
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806DDA0
	ldr r0, _08087248 @ =_vt.1D
	str r0, [sp, #0x20]
	str r0, [sp, #0x14]
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806DEEC
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806DF04
	adds r0, r5, #0
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808723C: .4byte vt_09F84DC0
_08087240: .4byte 0x000003A5
_08087244: .4byte 0x00000287
_08087248: .4byte _vt.1D

	thumb_func_start sub_0808724C
sub_0808724C: @ 0x0808724C
	push {lr}
	ldr r2, _0808725C @ =vt_09F84DC0
	str r2, [r0, #0x1c]
	bl sub_0806DD48
	pop {r0}
	bx r0
	.align 2, 0
_0808725C: .4byte vt_09F84DC0

	thumb_func_start sub_08087260
sub_08087260: @ 0x08087260
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	beq _0808728E
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_0808728E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08087294
sub_08087294: @ 0x08087294
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _080872C2
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #2
	bl _call_via_r2
_080872C2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080872C8
sub_080872C8: @ 0x080872C8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _08087338 @ =vt_09F84F00
	str r0, [r5, #0x1c]
	movs r1, #0
	str r1, [r5, #0x24]
	movs r2, #0x85
	lsls r2, r2, #3
	adds r0, r5, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	str r1, [r0]
	adds r2, #8
	adds r0, r5, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	strh r1, [r0]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808733C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08087340 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _08087344 @ =gUnknown_08114F84
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08087338: .4byte vt_09F84F00
_0808733C: .4byte _vt.3Unk
_08087340: .4byte _vt.8AppClock
_08087344: .4byte gUnknown_08114F84

	thumb_func_start sub_08087348
sub_08087348: @ 0x08087348
	push {lr}
	ldr r2, _08087358 @ =vt_09F84F00
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_08087358: .4byte vt_09F84F00

	thumb_func_start sub_0808735C
sub_0808735C: @ 0x0808735C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08087370
	str r5, [r1]
_08087370:
	movs r1, #0x87
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080873C0
	ldr r1, [r4, #0x24]
	movs r0, #0
	bl randS32
	adds r3, r0, #0
	ldr r1, [r4, #0x24]
	adds r2, r1, #1
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bgt _080873DC
	cmp r3, r1
	bgt _080873DC
	str r2, [r4, #0x24]
	adds r2, r1, #0
	adds r4, #0x28
	lsls r6, r3, #2
	cmp r2, r3
	ble _080873B8
	lsls r0, r2, #2
	subs r0, #4
	adds r1, r0, r4
_080873AC:
	ldr r0, [r1]
	str r0, [r1, #4]
	subs r1, #4
	subs r2, #1
	cmp r2, r3
	bgt _080873AC
_080873B8:
	adds r0, r4, r6
	str r5, [r0]
	movs r0, #1
	b _080873DE
_080873C0:
	ldr r1, [r4, #0x24]
	adds r2, r1, #1
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bgt _080873DC
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r0, #0x28
	adds r0, r0, r1
	str r5, [r0]
	str r2, [r4, #0x24]
	movs r0, #1
	b _080873DE
_080873DC:
	movs r0, #0
_080873DE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080873E4
sub_080873E4: @ 0x080873E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r6, r2, #0
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _080873FA
	str r6, [r1]
_080873FA:
	movs r1, #0x87
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08087444
	ldr r1, [r4, #0x24]
	movs r0, #0
	bl randS32
	adds r3, r0, #0
	ldr r1, [r4, #0x24]
	adds r2, r1, #1
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bgt _0808747A
	cmp r3, r1
	bgt _0808747A
	str r2, [r4, #0x24]
	adds r2, r1, #0
	adds r4, #0x28
	lsls r5, r3, #2
	cmp r2, r3
	ble _08087472
	lsls r0, r2, #2
	subs r0, #4
	adds r1, r0, r4
_08087436:
	ldr r0, [r1]
	str r0, [r1, #4]
	subs r1, #4
	subs r2, #1
	cmp r2, r3
	bgt _08087436
	b _08087472
_08087444:
	ldr r1, [r4, #0x24]
	adds r2, r1, #1
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bgt _0808747A
	cmp r3, r1
	bgt _0808747A
	str r2, [r4, #0x24]
	adds r2, r1, #0
	adds r4, #0x28
	lsls r5, r3, #2
	cmp r2, r3
	ble _08087472
	lsls r0, r2, #2
	subs r0, #4
	adds r1, r0, r4
_08087466:
	ldr r0, [r1]
	str r0, [r1, #4]
	subs r1, #4
	subs r2, #1
	cmp r2, r3
	bgt _08087466
_08087472:
	adds r0, r4, r5
	str r6, [r0]
	movs r0, #1
	b _0808747C
_0808747A:
	movs r0, #0
_0808747C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08087484
sub_08087484: @ 0x08087484
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r1, _08087520 @ =0x0000042C
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r7, r0
	bne _080874A4
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080874A4:
	movs r0, #0x85
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r7, r0
	bne _080874E4
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
	beq _080874E4
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
	beq _080874E4
	movs r0, #0
	str r0, [r5]
_080874E4:
	adds r5, r4, #0
	adds r5, #0x24
	movs r2, #0
	ldr r0, [r4, #0x24]
	cmp r2, r0
	bge _0808752E
	adds r1, r4, #0
	adds r1, #0x28
	adds r6, r1, #0
_080874F6:
	ldr r0, [r1]
	cmp r0, r7
	bne _08087524
	adds r0, r2, #1
	ldr r3, [r5]
	adds r4, r3, #0
	cmp r0, r4
	bge _08087516
	adds r1, r0, #0
	lsls r0, r2, #2
	adds r2, r0, r6
_0808750C:
	ldr r0, [r2, #4]
	stm r2!, {r0}
	adds r1, #1
	cmp r1, r3
	blt _0808750C
_08087516:
	subs r0, r4, #1
	str r0, [r5]
	movs r0, #1
	b _08087530
	.align 2, 0
_08087520: .4byte 0x0000042C
_08087524:
	adds r1, #4
	adds r2, #1
	ldr r0, [r5]
	cmp r2, r0
	blt _080874F6
_0808752E:
	movs r0, #0
_08087530:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08087538
sub_08087538: @ 0x08087538
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r0, r6, #2
	adds r0, r0, r4
	adds r5, r0, #0
	adds r5, #0x28
	ldr r1, _080875DC @ =0x0000042C
	adds r0, r4, r1
	ldr r1, [r5]
	ldr r0, [r0]
	cmp r1, r0
	bne _08087562
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08087562:
	movs r0, #0x85
	lsls r0, r0, #3
	adds r7, r4, r0
	ldr r1, [r5]
	ldr r0, [r7]
	cmp r1, r0
	bne _080875A4
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
	beq _080875A4
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
	beq _080875A4
	movs r0, #0
	str r0, [r7]
_080875A4:
	adds r7, r4, #0
	adds r7, #0x24
	ldr r0, [r4, #0x24]
	cmp r6, r0
	bge _080875E0
	adds r1, r6, #0
	adds r2, r1, #1
	adds r5, r0, #0
	cmp r2, r5
	bge _080875D2
	adds r3, r4, #0
	adds r3, #0x28
	adds r4, r5, #0
_080875BE:
	lsls r0, r1, #2
	adds r0, r3, r0
	lsls r1, r2, #2
	adds r1, r3, r1
	ldr r1, [r1]
	str r1, [r0]
	adds r1, r2, #0
	adds r2, #1
	cmp r2, r4
	blt _080875BE
_080875D2:
	subs r0, r5, #1
	str r0, [r7]
	movs r0, #1
	b _080875E2
	.align 2, 0
_080875DC: .4byte 0x0000042C
_080875E0:
	movs r0, #0
_080875E2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080875E8
sub_080875E8: @ 0x080875E8
	lsls r1, r1, #2
	adds r0, #0x28
	adds r1, r0, r1
	ldr r3, [r1]
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r2, [r0]
	str r2, [r1]
	str r3, [r0]
	bx lr

	thumb_func_start sub_080875FC
sub_080875FC: @ 0x080875FC
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_08087600
sub_08087600: @ 0x08087600
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0x28]
	bx lr

	thumb_func_start sub_08087608
sub_08087608: @ 0x08087608
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	movs r1, #0
	ldr r0, [r3, #0x24]
	cmp r1, r0
	bge _0808764E
	adds r4, r3, #0
	adds r4, #0x24
	movs r0, #0x87
	lsls r0, r0, #3
	adds r5, r3, r0
	adds r2, r4, #0
_08087622:
	ldr r0, [r2, #4]
	cmp r0, r6
	bne _08087644
	cmp r1, #0
	ble _08087630
	ldr r0, [r2]
	b _08087650
_08087630:
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808764E
	ldr r0, [r3, #0x24]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0]
	b _08087650
_08087644:
	adds r2, #4
	adds r1, #1
	ldr r0, [r3, #0x24]
	cmp r1, r0
	blt _08087622
_0808764E:
	movs r0, #0
_08087650:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08087658
sub_08087658: @ 0x08087658
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	movs r1, #0
	ldr r0, [r3, #0x24]
	cmp r1, r0
	bge _0808769A
	movs r0, #0x87
	lsls r0, r0, #3
	adds r4, r3, r0
	adds r2, r3, #0
	adds r2, #0x28
_08087670:
	ldr r0, [r2]
	cmp r0, r5
	bne _08087690
	adds r1, #1
	ldr r0, [r3, #0x24]
	cmp r1, r0
	bge _08087682
	ldr r0, [r2, #4]
	b _0808769C
_08087682:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808769A
	ldr r0, [r3, #0x28]
	b _0808769C
_08087690:
	adds r2, #4
	adds r1, #1
	ldr r0, [r3, #0x24]
	cmp r1, r0
	blt _08087670
_0808769A:
	movs r0, #0
_0808769C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080876A4
sub_080876A4: @ 0x080876A4
	push {r4, lr}
	adds r4, r1, #0
	movs r3, #0
	ldr r2, [r0, #0x24]
	cmp r3, r2
	bge _080876C8
	adds r1, r2, #0
	adds r2, r0, #0
	adds r2, #0x28
_080876B6:
	ldr r0, [r2]
	cmp r0, r4
	bne _080876C0
	movs r0, #1
	b _080876CA
_080876C0:
	adds r2, #4
	adds r3, #1
	cmp r3, r1
	blt _080876B6
_080876C8:
	movs r0, #0
_080876CA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080876D0
sub_080876D0: @ 0x080876D0
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r5, #0x24
	movs r3, #0
	ldr r2, [r0, #0x24]
	cmp r3, r2
	bge _080876F8
	adds r1, r2, #0
	adds r2, r0, #0
	adds r2, #0x28
_080876E6:
	ldr r0, [r2]
	cmp r0, r4
	bne _080876F0
	adds r0, r3, #0
	b _080876FA
_080876F0:
	adds r2, #4
	adds r3, #1
	cmp r3, r1
	blt _080876E6
_080876F8:
	ldr r0, [r5]
_080876FA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08087700
sub_08087700: @ 0x08087700
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _08087732
	ldr r1, [r4, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r4, r2
	b _0808773A
_08087732:
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #0
_0808773A:
	str r0, [r1]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08087744
sub_08087744: @ 0x08087744
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xa0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	movs r1, #0x85
	lsls r1, r1, #3
	adds r5, r4, r1
	ldr r1, [r5]
	ldr r2, [r2, #4]
	bl _call_via_r2
	cmp r0, #0
	beq _080877B0
	ldr r1, _08087778 @ =0x00000434
	adds r2, r4, r1
	ldr r1, [r2]
	cmp r1, #1
	beq _0808778E
	cmp r1, #1
	bgt _0808777C
	cmp r1, #0
	beq _08087782
	b _080877AC
	.align 2, 0
_08087778: .4byte 0x00000434
_0808777C:
	cmp r1, #2
	beq _080877A0
	b _080877AC
_08087782:
	str r0, [r5]
	movs r2, #0x86
	lsls r2, r2, #3
	adds r0, r4, r2
	strh r1, [r0]
	b _080877AC
_0808778E:
	str r0, [r5]
	movs r1, #0x86
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r1, #0
	strh r1, [r0]
	movs r0, #2
	str r0, [r2]
	b _080877AC
_080877A0:
	str r0, [r5]
	movs r2, #0x86
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #0
	strh r0, [r1]
_080877AC:
	movs r0, #1
	b _080877B2
_080877B0:
	movs r0, #0
_080877B2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080877B8
sub_080877B8: @ 0x080877B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xa8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	movs r1, #0x85
	lsls r1, r1, #3
	adds r5, r4, r1
	ldr r1, [r5]
	ldr r2, [r2, #4]
	bl _call_via_r2
	cmp r0, #0
	beq _08087824
	ldr r1, _080877EC @ =0x00000434
	adds r2, r4, r1
	ldr r1, [r2]
	cmp r1, #1
	beq _08087802
	cmp r1, #1
	bgt _080877F0
	cmp r1, #0
	beq _080877F6
	b _08087820
	.align 2, 0
_080877EC: .4byte 0x00000434
_080877F0:
	cmp r1, #2
	beq _08087814
	b _08087820
_080877F6:
	str r0, [r5]
	movs r2, #0x86
	lsls r2, r2, #3
	adds r0, r4, r2
	strh r1, [r0]
	b _08087820
_08087802:
	str r0, [r5]
	movs r1, #0x86
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r1, #0
	strh r1, [r0]
	movs r0, #2
	str r0, [r2]
	b _08087820
_08087814:
	str r0, [r5]
	movs r2, #0x86
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #0
	strh r0, [r1]
_08087820:
	movs r0, #1
	b _08087826
_08087824:
	movs r0, #0
_08087826:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0808782C
sub_0808782C: @ 0x0808782C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _08087844 @ =0x00000434
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08087848
	movs r0, #0
	b _0808788A
	.align 2, 0
_08087844: .4byte 0x00000434
_08087848:
	ldr r3, _08087894 @ =0x0000042C
	adds r6, r5, r3
	ldr r2, [r6]
	cmp r2, #0
	beq _08087880
	ldr r1, [r2, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	cmp r4, #0
	ble _0808787C
	mov r0, sp
	bl sub_08071F8C
	adds r0, r4, #0
	bl sub_0807068C
	mov r0, sp
	movs r1, #2
	bl _._10KeyFocuser
_0808787C:
	movs r0, #0
	str r0, [r6]
_08087880:
	ldr r0, _08087898 @ =0x00000434
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #1
_0808788A:
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08087894: .4byte 0x0000042C
_08087898: .4byte 0x00000434

	thumb_func_start sub_0808789C
sub_0808789C: @ 0x0808789C
	push {r4, r5, lr}
	adds r1, r0, #0
	ldr r0, _080878B0 @ =0x00000434
	adds r5, r1, r0
	ldr r0, [r5]
	cmp r0, #0
	bne _080878B4
	movs r0, #0
	b _080878DA
	.align 2, 0
_080878B0: .4byte 0x00000434
_080878B4:
	ldr r3, _080878E0 @ =0x0000042C
	adds r4, r1, r3
	ldr r2, [r4]
	cmp r2, #0
	beq _080878D4
	ldr r1, [r2, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #0
	str r0, [r4]
_080878D4:
	movs r0, #0
	str r0, [r5]
	movs r0, #1
_080878DA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080878E0: .4byte 0x0000042C

	thumb_func_start sub_080878E4
sub_080878E4: @ 0x080878E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x85
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r2, _08087900 @ =0x0000042C
	adds r6, r4, r2
	ldr r1, [r5]
	ldr r0, [r6]
	cmp r1, r0
	bne _08087904
	movs r0, #0
	b _08087938
	.align 2, 0
_08087900: .4byte 0x0000042C
_08087904:
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r5]
	cmp r2, #0
	beq _08087936
	str r2, [r6]
	ldr r1, [r2, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r0, _08087940 @ =0x00000434
	adds r1, r4, r0
	movs r0, #1
	str r0, [r1]
_08087936:
	movs r0, #1
_08087938:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08087940: .4byte 0x00000434

	thumb_func_start sub_08087944
sub_08087944: @ 0x08087944
	push {lr}
	movs r1, #0x87
	lsls r1, r1, #3
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0808795C
	movs r0, #2
	orrs r0, r1
	b _08087960
_0808795C:
	ldr r0, _08087968 @ =0x0000FFFD
	ands r0, r1
_08087960:
	strh r0, [r2]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08087968: .4byte 0x0000FFFD

	thumb_func_start sub_0808796C
sub_0808796C: @ 0x0808796C
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #3
	adds r4, r2, r0
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0808798E
	adds r0, r2, #0
	bl sub_08087A48
	ldrh r1, [r4]
	movs r0, #1
	orrs r0, r1
	b _0808799A
_0808798E:
	adds r0, r2, #0
	bl sub_080879A8
	ldrh r1, [r4]
	ldr r0, _080879A4 @ =0x0000FFFE
	ands r0, r1
_0808799A:
	strh r0, [r4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080879A4: .4byte 0x0000FFFE

	thumb_func_start sub_080879A8
sub_080879A8: @ 0x080879A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r2, #0
	ldr r0, [r0, #0x24]
	cmp r2, r0
	bge _08087A38
_080879BC:
	mov r1, sl
	ldr r0, [r1, #0x24]
	subs r0, #1
	lsls r5, r0, #0x10
	lsls r0, r2, #0x10
	mov r8, r0
	cmp r5, r8
	ble _08087A26
	movs r3, #0x24
	add r3, sl
	mov sb, r3
_080879D2:
	asrs r5, r5, #0x10
	lsls r7, r5, #2
	adds r0, r7, #4
	add r0, sb
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	subs r6, r5, #1
	lsls r5, r6, #2
	adds r0, r5, #4
	add r0, sb
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	bhs _08087A20
	mov r0, sl
	adds r0, #0x28
	adds r2, r0, r7
	ldr r3, [r2]
	adds r0, r0, r5
	ldr r1, [r0]
	str r1, [r2]
	str r3, [r0]
_08087A20:
	lsls r5, r6, #0x10
	cmp r5, r8
	bgt _080879D2
_08087A26:
	movs r1, #0x80
	lsls r1, r1, #9
	add r1, r8
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, sl
	ldr r0, [r3, #0x24]
	cmp r1, r0
	blt _080879BC
_08087A38:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08087A48
sub_08087A48: @ 0x08087A48
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r7, #0x24]
	cmp r0, #0
	ble _08087A92
	asrs r0, r0, #2
	movs r1, #8
	cmp r1, r0
	bge _08087A5C
	adds r1, r0, #0
_08087A5C:
	cmp r1, #0
	ble _08087A92
	adds r6, r7, #0
	adds r6, #0x28
	adds r5, r1, #0
_08087A66:
	ldr r1, [r7, #0x24]
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r4, r0, #0
	ldr r1, [r7, #0x24]
	subs r1, #1
	movs r0, #0
	bl randS32
	lsls r4, r4, #2
	adds r4, r6, r4
	ldr r2, [r4]
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, [r0]
	str r1, [r4]
	str r2, [r0]
	subs r5, #1
	cmp r5, #0
	bne _08087A66
_08087A92:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08087A98
sub_08087A98: @ 0x08087A98
	push {lr}
	mov ip, r4
	ldr r4, _08087AC4 @ =0xFFFFFD74
	add sp, r4
	mov r4, ip
	mov r0, sp
	bl sub_0808E350
	mov r0, sp
	bl sub_0808E64C
	mov r0, sp
	movs r1, #2
	bl sub_0808E5FC
	movs r0, #1
	movs r3, #0xa3
	lsls r3, r3, #2
	add sp, r3
	pop {r1}
	bx r1
	.align 2, 0
_08087AC4: .4byte 0xFFFFFD74

	thumb_func_start sub_08087AC8
sub_08087AC8: @ 0x08087AC8
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08087AD4
sub_08087AD4: @ 0x08087AD4
	ldr r1, _08087ADC @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08087ADC: .4byte 0x0000042C

	thumb_func_start sub_08087AE0
sub_08087AE0: @ 0x08087AE0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _08087AF8 @ =0x00000434
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08087AFC
	cmp r0, #1
	ble _08087BCE
	cmp r0, #2
	beq _08087B9A
	b _08087BCE
	.align 2, 0
_08087AF8: .4byte 0x00000434
_08087AFC:
	ldr r2, _08087B40 @ =0x0000042C
	adds r6, r5, r2
	ldr r0, [r6]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [r6]
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _08087B44
	ldr r0, [r6]
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xb4
	bl _call_via_r2
	b _08087BCE
	.align 2, 0
_08087B40: .4byte 0x0000042C
_08087B44:
	ldr r0, [r6]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [r6]
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, #0xb4
	cmp r4, r0
	bne _08087BCE
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08087BCE
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08087BCE
_08087B9A:
	movs r1, #0x86
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1f
	bls _08087BCE
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08087BCE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08087BD4
sub_08087BD4: @ 0x08087BD4
	bx lr
	.align 2, 0

	thumb_func_start sub_08087BD8
sub_08087BD8: @ 0x08087BD8
	bx lr
	.align 2, 0

	thumb_func_start sub_08087BDC
sub_08087BDC: @ 0x08087BDC
	bx lr
	.align 2, 0

	thumb_func_start sub_08087BE0
sub_08087BE0: @ 0x08087BE0
	bx lr
	.align 2, 0

	thumb_func_start sub_08087BE4
sub_08087BE4: @ 0x08087BE4
	bx lr
	.align 2, 0

	thumb_func_start sub_08087BE8
sub_08087BE8: @ 0x08087BE8
	movs r0, #0
	bx lr

	thumb_func_start sub_08087BEC
sub_08087BEC: @ 0x08087BEC
	movs r0, #0
	bx lr

	thumb_func_start sub_08087BF0
sub_08087BF0: @ 0x08087BF0
	ldr r0, _08087BF4 @ =gUnknown_09F447B4
	bx lr
	.align 2, 0
_08087BF4: .4byte gUnknown_09F447B4

	thumb_func_start sub_08087BF8
sub_08087BF8: @ 0x08087BF8
	ldr r0, _08087BFC @ =gUnknown_09F447B4 + 1
	bx lr
	.align 2, 0
_08087BFC: .4byte gUnknown_09F447B4 + 1

	thumb_func_start sub_08087C00
sub_08087C00: @ 0x08087C00
	bx lr
	.align 2, 0

	thumb_func_start sub_08087C04
sub_08087C04: @ 0x08087C04
	bx lr
	.align 2, 0

	thumb_func_start sub_08087C08
sub_08087C08: @ 0x08087C08
	bx lr
	.align 2, 0

	thumb_func_start nullsub_30
nullsub_30: @ 0x08087C0C
	bx lr
	.align 2, 0

	thumb_func_start sub_08087C10
sub_08087C10: @ 0x08087C10
	push {lr}
	sub sp, #4
	mov r0, sp
	bl nullsub_30
	ldr r0, [sp]
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08087C24
sub_08087C24: @ 0x08087C24
	ldr r0, [r0]
	bx lr

	thumb_func_start sub_08087C28
sub_08087C28: @ 0x08087C28
	ldr r0, [r0]
	bx lr

	thumb_func_start sub_08087C2C
sub_08087C2C: @ 0x08087C2C
	movs r0, #0
	bx lr

	thumb_func_start sub_08087C30
sub_08087C30: @ 0x08087C30
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08087C38
sub_08087C38: @ 0x08087C38
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08087C40
sub_08087C40: @ 0x08087C40
	bx lr
	.align 2, 0

	thumb_func_start sub_08087C44
sub_08087C44: @ 0x08087C44
	bx lr
	.align 2, 0

	thumb_func_start debugStub__9SingletonPCc
debugStub__9SingletonPCc: @ 0x08087C48
	movs r0, #0
	bx lr

	thumb_func_start sub_08087C4C
sub_08087C4C: @ 0x08087C4C
	movs r0, #0
	bx lr

	thumb_func_start sub_08087C50
sub_08087C50: @ 0x08087C50
	movs r0, #0
	bx lr

	thumb_func_start sub_08087C54
sub_08087C54: @ 0x08087C54
	movs r0, #0
	bx lr

	thumb_func_start sub_08087C58
sub_08087C58: @ 0x08087C58
	ldr r1, _08087C60 @ =gUnknown_02001A50
	str r0, [r1]
	bx lr
	.align 2, 0
_08087C60: .4byte gUnknown_02001A50

	thumb_func_start sub_08087C64
sub_08087C64: @ 0x08087C64
	ldr r0, _08087C6C @ =gUnknown_02001A50
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08087C6C: .4byte gUnknown_02001A50

	thumb_func_start sub_08087C70
sub_08087C70: @ 0x08087C70
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r4, _08087CA0 @ =gUnknown_02001A50
	ldr r0, [r4]
	cmp r0, #0
	bne _08087C86
	bl sub_0808E7C0
	bl sub_08087C58
_08087C86:
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	adds r1, r5, #0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08087CA0: .4byte gUnknown_02001A50

	thumb_func_start sub_08087CA4
sub_08087CA4: @ 0x08087CA4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08087CD0 @ =gUnknown_02001A50
	ldr r0, [r4]
	cmp r0, #0
	bne _08087CB8
	bl sub_0808E7C0
	bl sub_08087C58
_08087CB8:
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r5, #0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08087CD0: .4byte gUnknown_02001A50

	thumb_func_start sub_08087CD4
sub_08087CD4: @ 0x08087CD4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08087D00 @ =gUnknown_02001A50
	ldr r0, [r4]
	cmp r0, #0
	bne _08087CE8
	bl sub_0808E7C0
	bl sub_08087C58
_08087CE8:
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x20
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x24]
	adds r1, r5, #0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08087D00: .4byte gUnknown_02001A50

	thumb_func_start sub_08087D04
sub_08087D04: @ 0x08087D04
	push {r0, r1, r2, r3}
	push {r4, r5, lr}
	ldr r5, _08087D40 @ =gUnknown_02001A50
	ldr r0, [r5]
	cmp r0, #0
	bne _08087D18
	bl sub_0808E7C0
	bl sub_08087C58
_08087D18:
	add r2, sp, #0x10
	ldr r4, _08087D44 @ =gUnknown_02001A58
	adds r0, r4, #0
	ldr r1, [sp, #0xc]
	bl vsprintf
	ldr r0, [r5]
	ldr r2, [r0]
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_08087D40: .4byte gUnknown_02001A50
_08087D44: .4byte gUnknown_02001A58

	thumb_func_start sub_08087D48
sub_08087D48: @ 0x08087D48
	push {r4, lr}
	ldr r4, _08087D74 @ =gUnknown_02001A50
	ldr r0, [r4]
	cmp r0, #0
	bne _08087D5A
	bl sub_0808E7C0
	bl sub_08087C58
_08087D5A:
	ldr r0, [r4]
	ldr r1, [r0]
	adds r1, #0x48
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08087D74: .4byte gUnknown_02001A50

	thumb_func_start sub_08087D78
sub_08087D78: @ 0x08087D78
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r4, _08087DC8 @ =gUnknown_02001A50
	ldr r0, [r4]
	cmp r0, #0
	bne _08087D8E
	bl sub_0808E7C0
	bl sub_08087C58
_08087D8E:
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2c]
	bl _call_via_r1
	ldr r0, [r4]
	ldr r1, [r0]
	adds r1, #0x48
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08087DC8: .4byte gUnknown_02001A50

	thumb_func_start sub_08087DCC
sub_08087DCC: @ 0x08087DCC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08087E1C @ =gUnknown_02001A50
	ldr r0, [r4]
	cmp r0, #0
	bne _08087DE0
	bl sub_0808E7C0
	bl sub_08087C58
_08087DE0:
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2c]
	bl _call_via_r1
	ldr r0, [r4]
	ldr r1, [r0]
	adds r1, #0x48
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08087E1C: .4byte gUnknown_02001A50

	thumb_func_start sub_08087E20
sub_08087E20: @ 0x08087E20
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08087E70 @ =gUnknown_02001A50
	ldr r0, [r4]
	cmp r0, #0
	bne _08087E34
	bl sub_0808E7C0
	bl sub_08087C58
_08087E34:
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x20
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x24]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2c]
	bl _call_via_r1
	ldr r0, [r4]
	ldr r1, [r0]
	adds r1, #0x48
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08087E70: .4byte gUnknown_02001A50

	thumb_func_start sub_08087E74
sub_08087E74: @ 0x08087E74
	push {r0, r1, r2, r3}
	push {r4, r5, lr}
	ldr r5, _08087ED0 @ =gUnknown_02001A50
	ldr r0, [r5]
	cmp r0, #0
	bne _08087E88
	bl sub_0808E7C0
	bl sub_08087C58
_08087E88:
	add r2, sp, #0x10
	ldr r4, _08087ED4 @ =gUnknown_02001B58
	adds r0, r4, #0
	ldr r1, [sp, #0xc]
	bl vsprintf
	ldr r0, [r5]
	ldr r2, [r0]
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r4, #0
	bl _call_via_r2
	ldr r0, [r5]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2c]
	bl _call_via_r1
	ldr r0, [r5]
	ldr r1, [r0]
	adds r1, #0x48
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_08087ED0: .4byte gUnknown_02001A50
_08087ED4: .4byte gUnknown_02001B58

	thumb_func_start sub_08087ED8
sub_08087ED8: @ 0x08087ED8
	ldr r1, _08087EE8 @ =vt_09F85018
	str r1, [r0, #0x10]
	movs r1, #0
	strh r1, [r0]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08087EE8: .4byte vt_09F85018

	thumb_func_start sub_08087EEC
sub_08087EEC: @ 0x08087EEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08087F0C @ =vt_09F85018
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4]
	str r0, [r4, #4]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08087F3C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08087F0C: .4byte vt_09F85018

	thumb_func_start sub_08087F10
sub_08087F10: @ 0x08087F10
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08087F38 @ =vt_09F85018
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08087F24
	bl __builtin_vec_delete
_08087F24:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08087F32
	adds r0, r4, #0
	bl __builtin_delete
_08087F32:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08087F38: .4byte vt_09F85018

	thumb_func_start sub_08087F3C
sub_08087F3C: @ 0x08087F3C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08087F4C
	bl __builtin_vec_delete
_08087F4C:
	movs r0, #0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08087F80
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #1
	beq _08087F66
	cmp r0, #2
	beq _08087F70
	b _08087F78
_08087F66:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08087F9C
	b _08087F78
_08087F70:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08087FA8
_08087F78:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08087F80
sub_08087F80: @ 0x08087F80
	push {lr}
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, _08087F90 @ =0x20206762
	cmp r1, r0
	bne _08087F94
	ldrh r0, [r2, #4]
	b _08087F96
	.align 2, 0
_08087F90: .4byte 0x20206762
_08087F94:
	movs r0, #1
_08087F96:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08087F9C
sub_08087F9C: @ 0x08087F9C
	ldr r2, [r1, #4]
	lsrs r2, r2, #1
	strh r2, [r0, #8]
	ldr r1, [r1]
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start sub_08087FA8
sub_08087FA8: @ 0x08087FA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r1]
	ldrh r0, [r4, #8]
	strh r0, [r5, #8]
	ldr r0, [r4, #0xc]
	lsrs r0, r0, #8
	adds r0, #0x20
	bl __builtin_vec_new
	adds r1, r0, #0
	str r1, [r5, #4]
	adds r4, #0xc
	adds r0, r4, #0
	bl sub_08090F8C
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08087FD4
sub_08087FD4: @ 0x08087FD4
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08087FE0
sub_08087FE0: @ 0x08087FE0
	ldrh r0, [r0, #8]
	bx lr

	thumb_func_start sub_08087FE4
sub_08087FE4: @ 0x08087FE4
	ldr r0, [r0, #0xc]
	bx lr

	thumb_func_start sub_08087FE8
sub_08087FE8: @ 0x08087FE8
	push {lr}
	adds r3, r0, #0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08087FF6
	adds r0, #7
_08087FF6:
	lsls r0, r0, #0xd
	lsrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r1, r0]
	cmp r1, #0
	bge _08088004
	adds r1, #7
_08088004:
	asrs r1, r1, #3
	lsls r1, r1, #6
	ldr r0, [r3, #0xc]
	adds r0, r0, r1
	lsls r1, r2, #0x10
	asrs r1, r1, #0xf
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08088018
sub_08088018: @ 0x08088018
	ldr r1, _08088020 @ =vt_09F85028
	str r1, [r0]
	bx lr
	.align 2, 0
_08088020: .4byte vt_09F85028

	thumb_func_start sub_08088024
sub_08088024: @ 0x08088024
	push {lr}
	adds r2, r0, #0
	ldr r0, _08088040 @ =vt_09F85028
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808803A
	adds r0, r2, #0
	bl __builtin_delete
_0808803A:
	pop {r0}
	bx r0
	.align 2, 0
_08088040: .4byte vt_09F85028

	thumb_func_start sub_08088044
sub_08088044: @ 0x08088044
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	mov sb, r3
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	add r5, sp, #0xc
	movs r0, #0
	strh r0, [r5]
	strh r0, [r5, #2]
	add r6, sp, #0x10
	strh r0, [r6]
	strh r0, [r6, #2]
	add r1, sp, #0x14
	mov sl, r1
	strh r0, [r1]
	strh r0, [r1, #2]
	add r0, sp, #0x18
	mov r1, r8
	bl sub_080884B4
	ldr r0, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0
	ldrsh r4, [r5, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	movs r2, #2
	ldrsh r3, [r5, r2]
	add r2, sp, #0x1c
	adds r1, r1, r4
	adds r0, r0, r3
	strh r1, [r2]
	strh r0, [r2, #2]
	add r4, sp, #0x20
	adds r0, r4, #0
	mov r1, r8
	bl sub_080884F4
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	movs r3, #2
	ldrsh r1, [r4, r3]
	movs r3, #2
	ldrsh r0, [r5, r3]
	subs r1, r1, r0
	add r0, sp, #0x24
	strh r2, [r0]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x14]
	mov r0, sl
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0808855C
	bl sub_0806B070
	adds r6, r0, #0
	adds r1, r7, #0
	bl sub_0806B814
	adds r2, r0, #0
	subs r2, #1
	ldr r0, _080881A4 @ =gUnknown_02001E38
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #1
	bl sub_0806B758
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0806B744
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0806B95C
	lsls r0, r0, #0xc
	mov r1, r8
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0806B410
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0806B680
	adds r4, r0, #0
	add r0, sp, #0x28
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0806BB34
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808813E
	adds r0, #7
_0808813E:
	asrs r0, r0, #3
	mov sb, r0
	movs r3, #0
	mov r2, sl
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r3, r0
	bge _0808818C
	ldr r2, _080881A8 @ =0x040000D4
_08088150:
	mov r1, sl
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _0808815C
	adds r0, #7
_0808815C:
	asrs r0, r0, #3
	lsls r1, r0, #1
	cmp r1, #0
	ble _0808817A
	add r0, sp, #4
	mov r5, r8
	strh r5, [r0]
	str r0, [r2]
	str r4, [r2, #4]
	asrs r0, r1, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0808817A:
	mov r1, sb
	lsls r0, r1, #1
	adds r4, r4, r0
	adds r3, #8
	mov r5, sl
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r3, r0
	blt _08088150
_0808818C:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0806B3F4
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080881A4: .4byte gUnknown_02001E38
_080881A8: .4byte 0x040000D4

	thumb_func_start sub_080881AC
sub_080881AC: @ 0x080881AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r5, r0, #0
	str r2, [sp, #0x2c]
	mov sb, r3
	ldr r2, [sp, #0x64]
	ldr r4, [sp, #0x68]
	ldr r0, [sp, #0x6c]
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	add r3, sp, #4
	movs r1, #0
	adds r0, r3, #0
	strh r1, [r0]
	strh r1, [r3, #2]
	add r7, sp, #8
	strh r1, [r7]
	strh r1, [r7, #2]
	add r6, sp, #0xc
	strh r1, [r6]
	strh r1, [r6, #2]
	add r0, sp, #0x10
	adds r1, r5, #0
	bl sub_080884B4
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	add r0, sp, #0x14
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080884B4
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0
	ldrsh r4, [r7, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	movs r2, #2
	ldrsh r3, [r7, r2]
	add r2, sp, #0x18
	adds r1, r1, r4
	adds r0, r0, r3
	strh r1, [r2]
	strh r0, [r2, #2]
	add r4, sp, #0x1c
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080884F4
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r1, #0
	ldrsh r0, [r7, r1]
	subs r2, r2, r0
	movs r3, #2
	ldrsh r1, [r4, r3]
	movs r3, #2
	ldrsh r0, [r7, r3]
	subs r1, r1, r0
	add r0, sp, #0x20
	strh r2, [r0]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0xc]
	str r6, [sp]
	adds r0, r5, #0
	mov r1, sl
	add r2, sp, #4
	adds r3, r7, #0
	bl sub_0808855C
	bl sub_0806B070
	mov r8, r0
	mov r0, sb
	bl sub_0806D644
	adds r4, r0, #0
	mov r0, sb
	bl sub_0806D648
	str r0, [sp]
	mov r0, r8
	mov r1, sl
	movs r2, #0
	adds r3, r4, #0
	bl sub_0806B7B8
	ldr r0, [sp, #0x60]
	bl sub_0806D538
	adds r4, r0, #0
	ldr r0, [sp, #0x60]
	bl sub_0806D53C
	str r0, [sp]
	mov r0, r8
	mov r1, sl
	movs r2, #0
	adds r3, r4, #0
	bl sub_0806B9C0
	ldr r0, [sp, #0x2c]
	add r1, sp, #4
	bl sub_08087FE8
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	ldr r1, [sp, #0x2c]
	bl sub_08087FD4
	ldr r0, [sp, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080882AA
	adds r0, #7
_080882AA:
	asrs r5, r0, #3
	mov r0, r8
	mov r1, sl
	bl sub_0806B744
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, r8
	mov r1, sl
	bl sub_0806B95C
	lsls r0, r0, #0xc
	orrs r6, r0
	lsls r0, r6, #0x10
	lsrs r6, r0, #0x10
	mov r0, r8
	mov r1, sl
	adds r2, r7, #0
	bl sub_0806B410
	adds r2, r0, #0
	mov r0, r8
	mov r1, sl
	bl sub_0806B680
	str r0, [sp, #0x38]
	add r0, sp, #0x28
	mov r1, r8
	mov r2, sl
	bl sub_0806BB34
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080882F4
	adds r0, #7
_080882F4:
	asrs r1, r0, #3
	movs r4, #0
	mov r7, sp
	movs r2, #0xe
	ldrsh r0, [r7, r2]
	cmp r4, r0
	bge _08088352
	add r3, sp, #0xc
	mov sb, r3
	lsls r5, r5, #1
	str r5, [sp, #0x34]
	lsls r1, r1, #1
	mov ip, r1
_0808830E:
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x38]
	movs r3, #0
	mov r5, sb
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r4, #8
	str r4, [sp, #0x3c]
	cmp r3, r0
	bge _08088338
	add r4, sp, #0xc
_08088324:
	ldrh r0, [r2]
	adds r0, r6, r0
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	adds r3, #8
	movs r5, #0
	ldrsh r0, [r4, r5]
	cmp r3, r0
	blt _08088324
_08088338:
	ldr r7, [sp, #0x30]
	ldr r0, [sp, #0x34]
	adds r7, r7, r0
	str r7, [sp, #0x30]
	ldr r1, [sp, #0x38]
	add r1, ip
	str r1, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	mov r2, sb
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r4, r0
	blt _0808830E
_08088352:
	mov r0, r8
	mov r1, sl
	bl sub_0806B3F4
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808836C
sub_0808836C: @ 0x0808836C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r4, r0, #0
	mov r8, r2
	adds r2, r3, #0
	ldr r6, [sp, #0x54]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	add r3, sp, #4
	movs r1, #0
	adds r0, r3, #0
	strh r1, [r0]
	strh r1, [r3, #2]
	add r7, sp, #8
	strh r1, [r7]
	strh r1, [r7, #2]
	add r5, sp, #0xc
	strh r1, [r5]
	strh r1, [r5, #2]
	add r0, sp, #0x10
	adds r1, r4, #0
	bl sub_080884B4
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	add r0, sp, #0x14
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_080884B4
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
	add r0, sp, #0x18
	adds r1, r4, #0
	ldr r2, [sp, #0x58]
	bl sub_080884F4
	ldr r0, [sp, #0x18]
	str r0, [sp, #0xc]
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	add r2, sp, #4
	adds r3, r7, #0
	bl sub_0808855C
	bl sub_0806B070
	str r0, [sp, #0x24]
	mov r0, r8
	add r1, sp, #4
	bl sub_08087FE8
	mov sl, r0
	add r0, sp, #0x1c
	mov r1, r8
	bl sub_08087FD4
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080883F6
	adds r0, #7
_080883F6:
	asrs r6, r0, #3
	ldr r0, [sp, #0x24]
	mov r1, sb
	bl sub_0806B744
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp, #0x24]
	mov r1, sb
	bl sub_0806B95C
	lsls r0, r0, #0xc
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp, #0x24]
	mov r1, sb
	adds r2, r7, #0
	bl sub_0806B410
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	mov r1, sb
	bl sub_0806B680
	str r0, [sp, #0x2c]
	add r0, sp, #0x20
	ldr r1, [sp, #0x24]
	mov r2, sb
	bl sub_0806BB34
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08088440
	adds r0, #7
_08088440:
	asrs r1, r0, #3
	movs r4, #0
	mov r2, sp
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r4, r0
	bge _0808849A
	add r7, sp, #0xc
	mov r8, r7
	lsls r6, r6, #1
	str r6, [sp, #0x28]
	lsls r1, r1, #1
	mov ip, r1
_0808845A:
	mov r2, sl
	ldr r1, [sp, #0x2c]
	movs r3, #0
	mov r6, r8
	movs r7, #0
	ldrsh r0, [r6, r7]
	adds r4, #8
	str r4, [sp, #0x30]
	cmp r3, r0
	bge _08088484
	add r4, sp, #0xc
_08088470:
	ldrh r0, [r2]
	adds r0, r5, r0
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	adds r3, #8
	movs r6, #0
	ldrsh r0, [r4, r6]
	cmp r3, r0
	blt _08088470
_08088484:
	ldr r7, [sp, #0x28]
	add sl, r7
	ldr r0, [sp, #0x2c]
	add r0, ip
	str r0, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r4, r0
	blt _0808845A
_0808849A:
	ldr r0, [sp, #0x24]
	mov r1, sb
	bl sub_0806B3F4
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080884B4
sub_080884B4: @ 0x080884B4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r2, #0
	mov r5, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r5, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #8
	bl __divsi3
	lsls r0, r0, #3
	mov r1, sp
	strh r0, [r1]
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r1, #8
	bl __divsi3
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	strh r0, [r5, #2]
	ldr r0, [sp]
	str r0, [r6]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080884F4
sub_080884F4: @ 0x080884F4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r2, #0
	mov r2, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #2]
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r0, r4, #0
	movs r1, #8
	bl __modsi3
	cmp r0, #0
	bne _0808851A
	adds r0, r4, #0
	b _0808851E
_0808851A:
	adds r0, r4, #0
	adds r0, #8
_0808851E:
	movs r1, #8
	bl __divsi3
	lsls r1, r0, #3
	mov r0, sp
	strh r1, [r0]
	movs r0, #2
	ldrsh r4, [r5, r0]
	adds r0, r4, #0
	movs r1, #8
	bl __modsi3
	cmp r0, #0
	bne _0808853E
	adds r0, r4, #0
	b _08088542
_0808853E:
	adds r0, r4, #0
	adds r0, #8
_08088542:
	movs r1, #8
	bl __divsi3
	lsls r1, r0, #3
	mov r0, sp
	strh r1, [r0, #2]
	ldr r0, [sp]
	str r0, [r6]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0808855C
sub_0808855C: @ 0x0808855C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r1, #0
	mov r8, r2
	adds r7, r3, #0
	ldr r6, [sp, #0x34]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, sp
	str r0, [sp, #0x10]
	movs r1, #0
	mov sb, r1
	mov r2, sb
	strh r2, [r0]
	ldr r3, [sp, #0x10]
	strh r2, [r3, #2]
	ldrh r4, [r7, #2]
	ldrh r0, [r6, #2]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrh r0, [r7]
	mov sl, r0
	ldrh r0, [r6]
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	bl sub_0806B070
	adds r1, r0, #0
	add r0, sp, #4
	adds r2, r5, #0
	bl sub_0806BB34
	ldr r0, [sp, #4]
	str r0, [sp]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	bge _080885CA
	mov r0, sb
	strh r0, [r7, #2]
	mov r1, r8
	ldrh r0, [r1, #2]
	subs r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r6, #2]
	adds r0, r0, r4
	strh r0, [r6, #2]
_080885CA:
	ldr r3, [sp, #0x10]
	ldrh r2, [r3, #2]
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	lsls r1, r2, #0x10
	asrs r3, r0, #0x10
	cmp r0, r1
	ble _080885E2
	subs r1, r3, r2
	ldrh r0, [r6, #2]
	subs r0, r0, r1
	strh r0, [r6, #2]
_080885E2:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _080885FE
	mov r3, sb
	strh r3, [r7]
	mov r2, r8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r6]
	adds r0, r0, r1
	strh r0, [r6]
_080885FE:
	mov r0, sp
	ldr r3, [sp, #0xc]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	ble _08088618
	subs r1, r1, r2
	ldrh r0, [r6]
	subs r0, r0, r1
	strh r0, [r6]
_08088618:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08088628
sub_08088628: @ 0x08088628
	ldr r1, _08088634 @ =vt_09F85038
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_08088634: .4byte vt_09F85038

	thumb_func_start sub_08088638
sub_08088638: @ 0x08088638
	push {lr}
	adds r2, r0, #0
	ldr r0, _08088654 @ =vt_09F85038
	str r0, [r2, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808864E
	adds r0, r2, #0
	bl __builtin_delete
_0808864E:
	pop {r0}
	bx r0
	.align 2, 0
_08088654: .4byte vt_09F85038

	thumb_func_start sub_08088658
sub_08088658: @ 0x08088658
	str r1, [r0]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08088660
sub_08088660: @ 0x08088660
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08088668
sub_08088668: @ 0x08088668
	ldr r0, [r0]
	ldrh r2, [r0]
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_08088678
sub_08088678: @ 0x08088678
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08088668
	mov r3, sp
	movs r2, #0
	mov r1, sp
	strh r2, [r1]
	strh r2, [r3, #2]
	ldrh r1, [r0, #2]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x17
	mov r2, sp
	strh r1, [r2]
	ldrb r0, [r0]
	strh r0, [r3, #2]
	mov r0, sp
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xff
	ble _080886B2
	ldr r0, _080886D0 @ =0xFFFFFE00
	adds r1, r1, r0
	mov r0, sp
	strh r1, [r0]
_080886B2:
	ldrh r1, [r3, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x7f
	ble _080886C2
	ldr r2, _080886D4 @ =0xFFFFFF00
	adds r0, r1, r2
	strh r0, [r3, #2]
_080886C2:
	ldr r0, [sp]
	str r0, [r4]
	adds r0, r4, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080886D0: .4byte 0xFFFFFE00
_080886D4: .4byte 0xFFFFFF00

	thumb_func_start sub_080886D8
sub_080886D8: @ 0x080886D8
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	bx lr

	thumb_func_start sub_080886E0
sub_080886E0: @ 0x080886E0
	ldr r1, _080886EC @ =vt_09F85048
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_080886EC: .4byte vt_09F85048

	thumb_func_start sub_080886F0
sub_080886F0: @ 0x080886F0
	push {lr}
	adds r2, r0, #0
	ldr r0, _0808870C @ =vt_09F85048
	str r0, [r2, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08088706
	adds r0, r2, #0
	bl __builtin_delete
_08088706:
	pop {r0}
	bx r0
	.align 2, 0
_0808870C: .4byte vt_09F85048

	thumb_func_start sub_08088710
sub_08088710: @ 0x08088710
	str r1, [r0]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08088718
sub_08088718: @ 0x08088718
	push {lr}
	ldr r0, [r0]
	cmp r0, #0
	beq _08088724
	ldrh r0, [r0]
	b _08088726
_08088724:
	movs r0, #0
_08088726:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808872C
sub_0808872C: @ 0x0808872C
	push {lr}
	ldr r0, [r0]
	cmp r0, #0
	beq _08088738
	ldrh r0, [r0, #2]
	b _0808873A
_08088738:
	movs r0, #0
_0808873A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08088740
sub_08088740: @ 0x08088740
	push {lr}
	ldr r2, [r0]
	cmp r2, #0
	beq _0808874E
	ldrh r0, [r2, #2]
	cmp r1, r0
	blt _08088752
_0808874E:
	movs r0, #0
	b _08088758
_08088752:
	lsls r0, r1, #2
	adds r0, #4
	adds r0, r2, r0
_08088758:
	pop {r1}
	bx r1

	thumb_func_start sub_0808875C
sub_0808875C: @ 0x0808875C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0808876E
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _08088772
_0808876E:
	movs r0, #0
	b _080887A8
_08088772:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08088740
	adds r5, r0, #0
	movs r3, #0
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	subs r2, r0, #1
_08088784:
	cmp r3, r2
	bge _080887A4
	adds r0, r3, r2
	asrs r1, r0, #1
	lsls r0, r1, #2
	adds r0, r0, r5
	ldrh r4, [r0]
	cmp r6, r4
	bge _0808879A
	subs r2, r1, #1
	b _08088784
_0808879A:
	adds r3, r1, #1
	ldrh r0, [r0, #4]
	cmp r6, r0
	bge _08088784
	adds r3, r1, #0
_080887A4:
	lsls r0, r3, #2
	adds r0, r5, r0
_080887A8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080887B0
sub_080887B0: @ 0x080887B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080887C8 @ =vt_09F85058
	str r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0808881C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080887C8: .4byte vt_09F85058

	thumb_func_start sub_080887CC
sub_080887CC: @ 0x080887CC
	push {lr}
	adds r2, r0, #0
	ldr r0, _080887E8 @ =vt_09F85058
	str r0, [r2, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080887E2
	adds r0, r2, #0
	bl __builtin_delete
_080887E2:
	pop {r0}
	bx r0
	.align 2, 0
_080887E8: .4byte vt_09F85058

	thumb_func_start sub_080887EC
sub_080887EC: @ 0x080887EC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0808881C
	ldr r2, [r5]
	ldrh r0, [r2, #4]
	strh r0, [r4]
	adds r1, r2, #0
	adds r1, #8
	str r1, [r4, #8]
	str r2, [r4, #4]
	ldrh r0, [r2, #6]
	strh r0, [r4, #0xc]
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [r4, #0x14]
	str r2, [r4, #0x10]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808881C
sub_0808881C: @ 0x0808881C
	movs r1, #0
	strh r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_0808882C
sub_0808882C: @ 0x0808882C
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_08088830
sub_08088830: @ 0x08088830
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r0, sp
	bl sub_08088628
	ldr r0, [r6, #8]
	lsls r4, r4, #1
	adds r4, r4, r0
	ldrh r0, [r4]
	ldr r1, [r6, #4]
	adds r1, r1, r0
	mov r0, sp
	bl sub_08088658
	ldr r0, _0808886C @ =vt_09F85038
	str r0, [r5, #4]
	ldr r0, [sp]
	str r0, [r5]
	mov r0, sp
	movs r1, #2
	bl sub_08088638
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808886C: .4byte vt_09F85038

	thumb_func_start sub_08088870
sub_08088870: @ 0x08088870
	ldrh r0, [r0, #0xc]
	bx lr

	thumb_func_start sub_08088874
sub_08088874: @ 0x08088874
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r0, sp
	bl sub_080886E0
	ldr r0, [r6, #0x14]
	lsls r4, r4, #1
	adds r4, r4, r0
	ldrh r0, [r4]
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	mov r0, sp
	bl sub_08088710
	ldr r0, _080888B0 @ =vt_09F85048
	str r0, [r5, #4]
	ldr r0, [sp]
	str r0, [r5]
	mov r0, sp
	movs r1, #2
	bl sub_080886F0
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080888B0: .4byte vt_09F85048

	thumb_func_start sub_080888B4
sub_080888B4: @ 0x080888B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080888D0 @ =vt_09F85068
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08088628
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080888D0: .4byte vt_09F85068

	thumb_func_start sub_080888D4
sub_080888D4: @ 0x080888D4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080888FC @ =vt_09F85068
	str r0, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08088638
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080888F4
	adds r0, r5, #0
	bl __builtin_delete
_080888F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080888FC: .4byte vt_09F85068

	thumb_func_start sub_08088900
sub_08088900: @ 0x08088900
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, r2, #0
	adds r5, r3, #0
	ldr r3, [r4, #4]
	str r3, [sp]
	adds r2, r4, #0
	ldm r1!, {r6, r7}
	stm r2!, {r6, r7}
	str r3, [r4, #4]
	bl sub_0806D648
	str r0, [r4, #8]
	adds r0, r5, #0
	bl sub_0806D53C
	str r0, [r4, #0xc]
	movs r0, #1
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08088930
sub_08088930: @ 0x08088930
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_0806BE14
	adds r5, r0, #0
	mov r0, sb
	bl sub_08088660
	mov r8, r0
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806C010
	adds r7, r0, #0
	mov r0, sb
	movs r1, #0
	bl sub_08088668
	adds r5, r0, #0
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x10
	str r4, [sp]
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	ldrsh r2, [r6, r0]
	mov sl, r2
	mov r1, r8
	cmp r1, #0
	ble _080889D4
	mov r6, r8
_0808898C:
	ldr r1, [r5]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r0, _080889E4 @ =0xFE00FFFF
	ands r1, r0
	ldr r0, _080889E8 @ =0x01FF0000
	ands r2, r0
	orrs r1, r2
	mov r0, sl
	adds r2, r1, r0
	ldr r0, _080889EC @ =0xFFFFFF00
	ands r1, r0
	movs r0, #0xff
	ands r2, r0
	orrs r1, r2
	str r1, [r7]
	mov r0, sb
	adds r1, r5, #0
	bl sub_08088BA8
	adds r4, r0, #0
	mov r0, sb
	adds r1, r5, #0
	bl sub_08088C08
	ldr r2, [sp]
	lsls r1, r2, #0xa
	orrs r1, r4
	lsls r0, r0, #0xc
	orrs r0, r1
	strh r0, [r7, #4]
	adds r5, #8
	adds r7, #8
	subs r6, #1
	cmp r6, #0
	bne _0808898C
_080889D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080889E4: .4byte 0xFE00FFFF
_080889E8: .4byte 0x01FF0000
_080889EC: .4byte 0xFFFFFF00

	thumb_func_start sub_080889F0
sub_080889F0: @ 0x080889F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	str r3, [sp]
	bl sub_0806BE14
	adds r5, r0, #0
	mov r0, sb
	bl sub_08088660
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #4]
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806C010
	adds r7, r0, #0
	asrs r4, r4, #1
	str r4, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #4]
	cmp r0, r1
	blt _08088A38
	b _08088B7E
_08088A38:
	mov r0, sb
	ldr r1, [sp, #0xc]
	bl sub_08088668
	adds r4, r0, #0
	ldr r0, [r4]
	str r0, [r7]
	ldr r0, [r4, #4]
	strh r0, [r7, #4]
	ldrb r1, [r7, #1]
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r7, #1]
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x17
	mov r3, sl
	movs r5, #0
	ldrsh r0, [r3, r5]
	adds r1, r1, r0
	ldr r0, _08088B90 @ =0x000001FF
	ands r1, r0
	ldrh r2, [r7, #2]
	ldr r0, _08088B94 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #2]
	ldrb r0, [r3, #2]
	ldrb r1, [r4]
	adds r0, r0, r1
	strb r0, [r7]
	movs r0, #3
	ldr r2, [sp, #8]
	ands r2, r0
	lsls r2, r2, #2
	ldrb r0, [r7, #5]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #5]
	mov r0, sb
	adds r1, r4, #0
	bl sub_08088BA8
	ldr r5, _08088B98 @ =0x000003FF
	adds r1, r5, #0
	ands r0, r1
	ldrh r1, [r7, #4]
	ldr r3, _08088B9C @ =0xFFFFFC00
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r7, #4]
	mov r0, sb
	adds r1, r4, #0
	bl sub_08088C08
	lsls r0, r0, #4
	ldrb r2, [r7, #5]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #5]
	mov r0, sb
	ldr r1, [sp]
	ldr r2, [sp, #0x30]
	bl sub_08088C54
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #1
	ldrb r2, [r7, #3]
	movs r5, #0x3f
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r7, #3]
	ldrh r6, [r4, #2]
	lsls r6, r6, #0x17
	ldrb r4, [r4]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	lsrs r2, r2, #6
	lsls r2, r2, #2
	ldrb r0, [r7, #1]
	lsrs r0, r0, #6
	lsls r0, r0, #4
	adds r2, r2, r0
	ldr r1, _08088BA0 @ =gUnknown_0811568C
	adds r0, r2, r1
	movs r5, #0
	ldrsh r3, [r0, r5]
	lsrs r0, r3, #0x1f
	adds r3, r3, r0
	asrs r3, r3, #1
	asrs r6, r6, #0x17
	adds r3, r6, r3
	ldr r0, _08088BA4 @ =gUnknown_0811568E
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r2, r4, #0x10
	mov ip, r2
	adds r4, r4, r0
	lsls r4, r4, #0x10
	ldr r5, [sp, #0x30]
	ldrh r0, [r5]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r1, r3, #0
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x10
	ldrh r1, [r5, #2]
	lsrs r2, r4, #0x10
	mov r8, r2
	asrs r4, r4, #0x10
	adds r2, r4, #0
	muls r2, r1, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r4, sl
	movs r5, #0
	ldrsh r1, [r4, r5]
	adds r1, r1, r6
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r1, r1, r0
	ldr r0, _08088B90 @ =0x000001FF
	ands r1, r0
	ldrh r3, [r7, #2]
	ldr r0, _08088B94 @ =0xFFFFFE00
	ands r0, r3
	orrs r0, r1
	strh r0, [r7, #2]
	mov r1, ip
	lsrs r5, r1, #0x10
	ldrb r3, [r4, #2]
	adds r5, r5, r3
	mov r4, r8
	subs r2, r2, r4
	adds r5, r5, r2
	strb r5, [r7]
	adds r7, #8
	ldr r5, [sp, #0xc]
	adds r5, #1
	str r5, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r5, r0
	bge _08088B7E
	b _08088A38
_08088B7E:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088B90: .4byte 0x000001FF
_08088B94: .4byte 0xFFFFFE00
_08088B98: .4byte 0x000003FF
_08088B9C: .4byte 0xFFFFFC00
_08088BA0: .4byte gUnknown_0811568C
_08088BA4: .4byte gUnknown_0811568E

	thumb_func_start sub_08088BA8
sub_08088BA8: @ 0x08088BA8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806C458
	adds r7, r0, #0
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x11
	ldr r1, [r4, #8]
	adds r6, r1, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806C680
	adds r4, r0, #0
	ldr r0, _08088C00 @ =0x0000FFFF
	cmp r4, r0
	bne _08088BF6
	bl sub_0806BE14
	ldr r3, _08088C04 @ =gUnknown_081156CC
	ldrb r2, [r5, #3]
	lsrs r2, r2, #6
	ldrb r1, [r5, #1]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r3
	ldrb r1, [r2]
	adds r2, r6, #0
	bl sub_0806C0B4
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0806C55C
_08088BF6:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08088C00: .4byte 0x0000FFFF
_08088C04: .4byte gUnknown_081156CC

	thumb_func_start sub_08088C08
sub_08088C08: @ 0x08088C08
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0806C7AC
	adds r6, r0, #0
	ldrb r0, [r4, #5]
	lsrs r0, r0, #4
	lsls r0, r0, #5
	ldr r1, [r5, #0xc]
	adds r5, r1, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806C9A0
	adds r4, r0, #0
	ldr r0, _08088C50 @ =0x0000FFFF
	cmp r4, r0
	bne _08088C46
	bl sub_0806BE14
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806C174
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806C898
_08088C46:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08088C50: .4byte 0x0000FFFF

	thumb_func_start sub_08088C54
sub_08088C54: @ 0x08088C54
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	adds r5, r1, #0
	mov r8, r2
	ldr r6, _08088D34 @ =gUnknown_080EF880
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r4, _08088D38 @ =0x000003FF
	ands r0, r4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	bl sub_080695A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08088D3C @ =0xFFFF0000
	mov sb, r3
	ldr r1, [sp]
	ands r1, r3
	orrs r1, r0
	str r1, [sp]
	movs r1, #0
	ldrsh r0, [r5, r1]
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	bl sub_080695A4
	lsls r0, r0, #0x10
	ldr r1, _08088D40 @ =0x0000FFFF
	mov sl, r1
	ldr r1, [sp]
	mov r2, sl
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r3, #0
	ldrsh r0, [r5, r3]
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, r8
	movs r3, #2
	ldrsh r1, [r2, r3]
	bl sub_080695A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #4]
	mov r2, sb
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	movs r3, #0
	ldrsh r0, [r5, r3]
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, r8
	movs r3, #2
	ldrsh r1, [r2, r3]
	bl sub_080695A4
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	mov r2, sl
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	bl sub_0806BE14
	movs r1, #1
	mov r2, sp
	bl sub_0806C054
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08088D34: .4byte gUnknown_080EF880
_08088D38: .4byte 0x000003FF
_08088D3C: .4byte 0xFFFF0000
_08088D40: .4byte 0x0000FFFF

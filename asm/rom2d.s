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
	ldr r2, _08083140 @ =gItemData
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
_08083140: .4byte gItemData

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

	thumb_func_start sub_08083CBC
sub_08083CBC: @ 0x08083CBC
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl sub_08071FBC
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl sub_08071FBC
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
	bl sub_08070824
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
	bl sub_08070824
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
	bl sub_08070824
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl sub_08071FBC
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
	bl sub_0806E308
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl sub_08071FBC
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
	bl sub_08070824
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl sub_08070660
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
	bl sub_08070660
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	ldr r0, _080865F8 @ =vt_09F817D0
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	ldr r0, _08086604 @ =vt_09F81750
	mov sb, r0
	str r0, [sp, #0x20]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
_080865F8: .4byte vt_09F817D0
_080865FC: .4byte gUnknown_08111B00
_08086600: .4byte _vt.3Unk
_08086604: .4byte vt_09F81750

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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	ldr r2, _08086CF0 @ =gUnknown_080ECD40
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
	bl sub_08088D58
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08088DF0
	adds r0, r4, #0
	movs r1, #2
	bl sub_08088D7C
	str r5, [sp, #8]
	b _08086D06
	.align 2, 0
_08086CF0: .4byte gUnknown_080ECD40
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
	ldr r0, _08086D34 @ =gUnknown_080ECD40
	str r0, [r4, #0x40]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08086D30: .4byte vt_09F84AE8
_08086D34: .4byte gUnknown_080ECD40

	thumb_func_start sub_08086D38
sub_08086D38: @ 0x08086D38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08086D64 @ =gUnknown_080ECD40
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
_08086D64: .4byte gUnknown_080ECD40
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl registerClock__4BasePvRC4BaseG9ClockData
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
	bl sub_08070660
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
	bl sub_08070660
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
	bl sub_08071FBC
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
	bl sub_08070660
	adds r4, r0, #0
	ldr r1, [r7, #0x24]
	subs r1, #1
	movs r0, #0
	bl sub_08070660
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

	thumb_func_start sub_08088D44
sub_08088D44: @ 0x08088D44
	ldr r1, _08088D54 @ =vt_09F85078
	str r1, [r0, #0xc]
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_08088D54: .4byte vt_09F85078

	thumb_func_start sub_08088D58
sub_08088D58: @ 0x08088D58
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08088D78 @ =vt_09F85078
	str r0, [r4, #0xc]
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	str r0, [r4, #4]
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08088D9C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08088D78: .4byte vt_09F85078

	thumb_func_start sub_08088D7C
sub_08088D7C: @ 0x08088D7C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08088D98 @ =vt_09F85078
	str r0, [r2, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08088D92
	adds r0, r2, #0
	bl __builtin_delete
_08088D92:
	pop {r0}
	bx r0
	.align 2, 0
_08088D98: .4byte vt_09F85078

	thumb_func_start sub_08088D9C
sub_08088D9C: @ 0x08088D9C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08088DC0
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #1
	bne _08088DB6
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08088DDC
_08088DB6:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08088DC0
sub_08088DC0: @ 0x08088DC0
	push {lr}
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, _08088DD0 @ =0x20747862
	cmp r1, r0
	bne _08088DD4
	ldrh r0, [r2, #4]
	b _08088DD6
	.align 2, 0
_08088DD0: .4byte 0x20747862
_08088DD4:
	movs r0, #0
_08088DD6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08088DDC
sub_08088DDC: @ 0x08088DDC
	ldr r1, [r1]
	ldrh r2, [r1, #8]
	strh r2, [r0, #2]
	str r1, [r0, #4]
	adds r1, #0xc
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_08088DEC
sub_08088DEC: @ 0x08088DEC
	ldrh r0, [r0, #2]
	bx lr

	thumb_func_start sub_08088DF0
sub_08088DF0: @ 0x08088DF0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #8]
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	ldr r1, [r1, #4]
	adds r1, r1, r0
	ldrh r2, [r2, #2]
	subs r2, r2, r0
	lsrs r2, r2, #1
	subs r2, #1
	adds r0, r4, #0
	bl sub_0806E288
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08088E18
sub_08088E18: @ 0x08088E18
	ldr r1, _08088E28 @ =vt_09F85088
	str r1, [r0, #8]
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_08088E28: .4byte vt_09F85088

	thumb_func_start sub_08088E2C
sub_08088E2C: @ 0x08088E2C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08088E48 @ =vt_09F85088
	str r0, [r2, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08088E42
	adds r0, r2, #0
	bl __builtin_delete
_08088E42:
	pop {r0}
	bx r0
	.align 2, 0
_08088E48: .4byte vt_09F85088

	thumb_func_start sub_08088E4C
sub_08088E4C: @ 0x08088E4C
	ldr r2, [r2]
	str r2, [r0]
	ldr r1, [r1]
	str r1, [r0, #4]
	movs r0, #1
	bx lr

	thumb_func_start sub_08088E58
sub_08088E58: @ 0x08088E58
	ldr r1, [r1]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08088E60
sub_08088E60: @ 0x08088E60
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08088E98
	cmp r0, #0
	bne _08088E90
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r0, #0
	ldrsh r1, [r4, r0]
	subs r0, r1, #1
	cmp r0, #0
	bge _08088E7E
	adds r0, r1, #6
_08088E7E:
	asrs r0, r0, #3
	adds r0, #1
	muls r0, r2, r0
	adds r0, #2
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
_08088E90:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08088E98
sub_08088E98: @ 0x08088E98
	push {lr}
	sub sp, #4
	adds r2, r0, #0
	ldr r0, _08088EC0 @ =0x0000FF22
	cmp r1, r0
	bne _08088ECC
	mov r0, sp
	adds r1, r2, #0
	bl sub_08088E58
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08088EC4 @ =gUnknown_081158DA
	cmp r0, #8
	bgt _08088EBA
	ldr r1, _08088EC8 @ =gUnknown_081158D2
_08088EBA:
	adds r0, r1, #0
	b _08088ECE
	.align 2, 0
_08088EC0: .4byte 0x0000FF22
_08088EC4: .4byte gUnknown_081158DA
_08088EC8: .4byte gUnknown_081158D2
_08088ECC:
	movs r0, #0
_08088ECE:
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_08088ED4
sub_08088ED4: @ 0x08088ED4
	ldr r1, _08088EDC @ =vt_09F85098
	str r1, [r0]
	bx lr
	.align 2, 0
_08088EDC: .4byte vt_09F85098

	thumb_func_start sub_08088EE0
sub_08088EE0: @ 0x08088EE0
	push {lr}
	adds r2, r0, #0
	ldr r0, _08088EFC @ =vt_09F85098
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08088EF6
	adds r0, r2, #0
	bl __builtin_delete
_08088EF6:
	pop {r0}
	bx r0
	.align 2, 0
_08088EFC: .4byte vt_09F85098

	thumb_func_start sub_08088F00
sub_08088F00: @ 0x08088F00
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r0, sp
	bl sub_08088E58
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _08088F38
	cmp r0, #8
	bgt _08088F2A
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08088F40
	b _08088F38
_08088F2A:
	cmp r0, #0x10
	bgt _08088F38
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0808904C
_08088F38:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08088F40
sub_08088F40: @ 0x08088F40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r1, [sp, #8]
	mov sb, r2
	bl sub_0806B070
	adds r4, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806BB34
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08088F6C
	adds r0, #7
_08088F6C:
	asrs r0, r0, #3
	str r0, [sp, #0xc]
	mov r1, sb
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08088F7C
	adds r0, #7
_08088F7C:
	asrs r0, r0, #3
	ldr r3, [sp, #0xc]
	muls r0, r3, r0
	mov r1, sb
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0
	bge _08088F8E
	adds r2, #7
_08088F8E:
	asrs r2, r2, #3
	adds r2, r0, r2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806B828
	adds r5, r0, #0
	mov r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _08088FAA
	adds r0, r1, #7
_08088FAA:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x1a
	lsrs r4, r0, #0x18
	movs r0, #0x20
	subs r0, r0, r4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r0, sb
	movs r1, #2
	ldrsh r2, [r0, r1]
	adds r0, r2, #0
	cmp r2, #0
	bge _08088FCA
	adds r0, r2, #7
_08088FCA:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	lsrs r1, r3
	mvns r1, r1
	str r1, [sp, #0x10]
	mov r1, sl
	lsls r1, r4
	mvns r1, r1
	mov sl, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	adds r5, r5, r0
	adds r6, r2, #0
	add r2, sp, #4
	mov r8, r2
	b _0808901C
_08088FF2:
	ldr r0, [r5]
	mov r3, sl
	ands r0, r3
	str r0, [r5]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x10]
	ands r0, r1
	str r0, [r5, #0x20]
	adds r1, r6, #1
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08089018
	ldr r0, [sp, #0xc]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, #4
	adds r5, r5, r0
	b _0808901A
_08089018:
	adds r5, #4
_0808901A:
	adds r6, r1, #0
_0808901C:
	movs r7, #0
	mov r2, sb
	movs r3, #2
	ldrsh r4, [r2, r3]
	mov r0, r8
	ldr r1, [sp, #8]
	bl sub_08088E58
	ldr r0, [sp, #4]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	cmp r6, r4
	bge _08089038
	movs r7, #1
_08089038:
	cmp r7, #0
	bne _08088FF2
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808904C
sub_0808904C: @ 0x0808904C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r1, [sp, #8]
	mov sl, r2
	bl sub_0806B070
	adds r4, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806BB34
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08089078
	adds r0, #7
_08089078:
	asrs r0, r0, #3
	str r0, [sp, #0xc]
	mov r1, sl
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08089088
	adds r0, #7
_08089088:
	asrs r0, r0, #3
	ldr r3, [sp, #0xc]
	muls r0, r3, r0
	mov r1, sl
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0
	bge _0808909A
	adds r2, #7
_0808909A:
	asrs r2, r2, #3
	adds r2, r0, r2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806B828
	adds r5, r0, #0
	mov r4, sl
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _080890B6
	adds r0, r1, #7
_080890B6:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x1a
	lsrs r3, r0, #0x18
	movs r0, #0x20
	subs r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, sl
	movs r0, #2
	ldrsh r2, [r1, r0]
	adds r1, r2, #0
	cmp r2, #0
	bge _080890D6
	adds r1, r2, #7
_080890D6:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r2, r1
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x10]
	movs r0, #0xff
	mov r8, r0
	lsrs r0, r4
	mvns r0, r0
	str r0, [sp, #0x14]
	mov r0, r8
	lsls r0, r3
	mov r8, r0
	ldr r0, [sp, #0x10]
	lsrs r0, r4
	mov r4, r8
	orrs r0, r4
	mvns r0, r0
	mov r8, r0
	ldr r0, [sp, #0x10]
	lsls r0, r3
	mvns r0, r0
	str r0, [sp, #0x10]
	lsls r1, r1, #0x10
	asrs r1, r1, #0xe
	adds r5, r5, r1
	adds r6, r2, #0
	add r0, sp, #4
	mov sb, r0
	b _08089146
_08089114:
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	ands r0, r1
	str r0, [r5]
	ldr r0, [r5, #0x20]
	mov r2, r8
	ands r0, r2
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x40]
	ldr r3, [sp, #0x14]
	ands r0, r3
	str r0, [r5, #0x40]
	adds r1, r6, #1
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08089142
	ldr r0, [sp, #0xc]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, #4
	adds r5, r5, r0
	b _08089144
_08089142:
	adds r5, #4
_08089144:
	adds r6, r1, #0
_08089146:
	movs r7, #0
	mov r0, sl
	movs r1, #2
	ldrsh r4, [r0, r1]
	mov r0, sb
	ldr r1, [sp, #8]
	bl sub_08088E58
	ldr r0, [sp, #4]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	cmp r6, r4
	bge _08089162
	movs r7, #1
_08089162:
	cmp r7, #0
	bne _08089114
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08089178
sub_08089178: @ 0x08089178
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	mov sb, r2
	ldr r0, [sp, #0x28]
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov sl, r6
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r7, r4, #0
	ldr r0, _080891C8 @ =0x0000FF01
	cmp r4, r0
	beq _080891DE
	adds r0, #0xfe
	cmp r4, r0
	beq _080891DE
	add r0, sp, #4
	bl sub_08088E58
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _080891DE
	cmp r0, #8
	bgt _080891CC
	str r4, [sp]
	mov r0, r8
	adds r1, r5, #0
	mov r2, sb
	adds r3, r6, #0
	bl sub_080891F0
	b _080891DE
	.align 2, 0
_080891C8: .4byte 0x0000FF01
_080891CC:
	cmp r0, #0x10
	bgt _080891DE
	str r7, [sp]
	mov r0, r8
	adds r1, r5, #0
	mov r2, sb
	mov r3, sl
	bl sub_0808933C
_080891DE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080891F0
sub_080891F0: @ 0x080891F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #8]
	bl sub_08088E60
	mov sl, r0
	bl sub_0806B070
	adds r4, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806BB34
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808922E
	adds r0, #7
_0808922E:
	asrs r0, r0, #3
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0808923E
	adds r0, #7
_0808923E:
	asrs r0, r0, #3
	ldr r3, [sp, #0x10]
	muls r0, r3, r0
	ldr r1, [sp, #0xc]
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0
	bge _08089250
	adds r2, #7
_08089250:
	asrs r2, r2, #3
	adds r2, r0, r2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806B828
	adds r3, r0, #0
	ldr r0, [sp, #0xc]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _0808926C
	adds r0, r1, #7
_0808926C:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	movs r0, #0x20
	ldr r1, [sp, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	movs r1, #2
	ldrsh r2, [r0, r1]
	adds r0, r2, #0
	cmp r2, #0
	bge _08089292
	adds r0, r2, #7
_08089292:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r6, r5, #4
	orrs r6, r5
	lsls r1, r6, #8
	orrs r6, r1
	lsls r1, r6, #0x10
	orrs r6, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	adds r5, r3, r0
	mov r8, r2
	add r2, sp, #4
	mov sb, r2
	b _0808930C
_080892B2:
	ldr r3, _08089304 @ =gUnknown_08115A3C
	mov r0, sl
	ldrb r2, [r0]
	movs r0, #0xf
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #0x10
	lsrs r2, r2, #4
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r0, [r2]
	orrs r1, r0
	adds r2, r1, #0
	ldr r3, [sp, #0x18]
	lsrs r2, r3
	ldr r0, [sp, #0x14]
	lsls r1, r0
	ands r1, r6
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	ands r2, r6
	ldr r0, [r5, #0x20]
	orrs r0, r2
	str r0, [r5, #0x20]
	movs r1, #1
	add sl, r1
	mov r1, r8
	adds r1, #1
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08089308
	ldr r0, [sp, #0x10]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, #4
	adds r5, r5, r0
	b _0808930A
	.align 2, 0
_08089304: .4byte gUnknown_08115A3C
_08089308:
	adds r5, #4
_0808930A:
	mov r8, r1
_0808930C:
	movs r7, #0
	ldr r2, [sp, #0xc]
	movs r3, #2
	ldrsh r4, [r2, r3]
	mov r0, sb
	ldr r1, [sp, #8]
	bl sub_08088E58
	ldr r0, [sp, #4]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	cmp r8, r4
	bge _08089328
	movs r7, #1
_08089328:
	cmp r7, #0
	bne _080892B2
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808933C
sub_0808933C: @ 0x0808933C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #8]
	bl sub_08088E60
	str r0, [sp, #0x10]
	bl sub_0806B070
	adds r4, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806BB34
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808937A
	adds r0, #7
_0808937A:
	asrs r0, r0, #3
	str r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0808938A
	adds r0, #7
_0808938A:
	asrs r0, r0, #3
	ldr r3, [sp, #0x14]
	muls r0, r3, r0
	ldr r1, [sp, #0xc]
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0
	bge _0808939C
	adds r2, #7
_0808939C:
	asrs r2, r2, #3
	adds r2, r0, r2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806B828
	adds r3, r0, #0
	ldr r4, [sp, #0xc]
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _080893B8
	adds r0, r1, #7
_080893B8:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r0, #0x20
	mov r1, sb
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r4, [sp, #0xc]
	movs r0, #2
	ldrsh r2, [r4, r0]
	adds r0, r2, #0
	cmp r2, #0
	bge _080893DE
	adds r0, r2, #7
_080893DE:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r6, r5, #4
	orrs r6, r5
	lsls r1, r6, #8
	orrs r6, r1
	lsls r1, r6, #0x10
	orrs r6, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	adds r5, r3, r0
	mov r8, r2
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0x18]
	b _0808948C
_08089400:
	ldr r2, [sp, #0x10]
	ldrh r1, [r2]
	ldr r3, _08089484 @ =gUnknown_08115A7C
	movs r0, #0xf
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r2, [r0]
	lsls r2, r2, #0x10
	movs r0, #0xf0
	ands r0, r1
	lsrs r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	orrs r2, r0
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	lsrs r0, r0, #6
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r4, r0, #0x10
	lsrs r1, r1, #0xc
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	orrs r4, r0
	adds r3, r4, #0
	mov r0, sl
	lsrs r3, r0
	adds r1, r4, #0
	mov r0, sb
	lsls r1, r0
	adds r0, r2, #0
	mov r4, sl
	lsrs r0, r4
	orrs r1, r0
	mov r0, sb
	lsls r2, r0
	ands r2, r6
	ldr r0, [r5]
	orrs r0, r2
	str r0, [r5]
	ands r1, r6
	ldr r0, [r5, #0x20]
	orrs r0, r1
	str r0, [r5, #0x20]
	ands r3, r6
	ldr r0, [r5, #0x40]
	orrs r0, r3
	str r0, [r5, #0x40]
	ldr r1, [sp, #0x10]
	adds r1, #2
	str r1, [sp, #0x10]
	mov r1, r8
	adds r1, #1
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08089488
	ldr r0, [sp, #0x14]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, #4
	adds r5, r5, r0
	b _0808948A
	.align 2, 0
_08089484: .4byte gUnknown_08115A7C
_08089488:
	adds r5, #4
_0808948A:
	mov r8, r1
_0808948C:
	movs r7, #0
	ldr r2, [sp, #0xc]
	movs r3, #2
	ldrsh r4, [r2, r3]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #8]
	bl sub_08088E58
	ldr r0, [sp, #4]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	cmp r8, r4
	bge _080894A8
	movs r7, #1
_080894A8:
	cmp r7, #0
	bne _08089400
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080894BC
sub_080894BC: @ 0x080894BC
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080894D8 @ =vt_09F850A8
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080894D8: .4byte vt_09F850A8

	thumb_func_start sub_080894DC
sub_080894DC: @ 0x080894DC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0808951C @ =vt_09F850A8
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _080894FE
	ldr r1, [r2, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_080894FE:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0808950E
	movs r1, #0
_08089506:
	str r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _08089506
_0808950E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808951C: .4byte vt_09F850A8

	thumb_func_start sub_08089520
sub_08089520: @ 0x08089520
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x28]
	cmp r0, #0
	bne _0808952E
	str r1, [r3, #0x28]
	b _0808953C
_0808952E:
	adds r2, r0, #0
	b _08089534
_08089532:
	ldr r2, [r2, #0x24]
_08089534:
	ldr r0, [r2, #0x24]
	cmp r0, #0
	bne _08089532
	str r1, [r2, #0x24]
_0808953C:
	str r3, [r1, #0x20]
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08089544
sub_08089544: @ 0x08089544
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x28]
	cmp r0, r1
	bne _08089566
	ldr r0, [r1, #0x24]
	str r0, [r2, #0x28]
	movs r0, #0
	str r0, [r1, #0x20]
	adds r0, r1, #0
	b _0808957A
_0808955A:
	ldr r0, [r2, #0x24]
	str r0, [r3, #0x24]
	movs r0, #0
	str r0, [r2, #0x20]
	adds r0, r2, #0
	b _0808957A
_08089566:
	adds r3, r0, #0
	b _08089572
_0808956A:
	ldr r2, [r3, #0x24]
	cmp r2, r1
	beq _0808955A
	adds r3, r2, #0
_08089572:
	ldr r0, [r3, #0x24]
	cmp r0, #0
	bne _0808956A
	movs r0, #0
_0808957A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08089580
sub_08089580: @ 0x08089580
	push {lr}
	adds r1, r0, #0
	b _08089588
_08089586:
	ldr r1, [r1, #0x20]
_08089588:
	ldr r0, [r1, #0x20]
	cmp r0, #0
	bne _08089586
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08089594
sub_08089594: @ 0x08089594
	ldr r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_08089598
sub_08089598: @ 0x08089598
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_0808959C
sub_0808959C: @ 0x0808959C
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_080895A0
sub_080895A0: @ 0x080895A0
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080895BC @ =vt_09F85140
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080895BC: .4byte vt_09F85140

	thumb_func_start sub_080895C0
sub_080895C0: @ 0x080895C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08089600 @ =vt_09F85140
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _080895E2
	ldr r1, [r2, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_080895E2:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _080895F2
	movs r1, #0
_080895EA:
	str r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _080895EA
_080895F2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08089600: .4byte vt_09F85140

	thumb_func_start sub_08089604
sub_08089604: @ 0x08089604
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x28]
	cmp r0, #0
	bne _08089612
	str r1, [r3, #0x28]
	b _08089620
_08089612:
	adds r2, r0, #0
	b _08089618
_08089616:
	ldr r2, [r2, #0x24]
_08089618:
	ldr r0, [r2, #0x24]
	cmp r0, #0
	bne _08089616
	str r1, [r2, #0x24]
_08089620:
	str r3, [r1, #0x20]
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08089628
sub_08089628: @ 0x08089628
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x28]
	cmp r0, r1
	bne _0808964A
	ldr r0, [r1, #0x24]
	str r0, [r2, #0x28]
	movs r0, #0
	str r0, [r1, #0x20]
	adds r0, r1, #0
	b _0808965E
_0808963E:
	ldr r0, [r2, #0x24]
	str r0, [r3, #0x24]
	movs r0, #0
	str r0, [r2, #0x20]
	adds r0, r2, #0
	b _0808965E
_0808964A:
	adds r3, r0, #0
	b _08089656
_0808964E:
	ldr r2, [r3, #0x24]
	cmp r2, r1
	beq _0808963E
	adds r3, r2, #0
_08089656:
	ldr r0, [r3, #0x24]
	cmp r0, #0
	bne _0808964E
	movs r0, #0
_0808965E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08089664
sub_08089664: @ 0x08089664
	push {lr}
	adds r1, r0, #0
	b _0808966C
_0808966A:
	ldr r1, [r1, #0x20]
_0808966C:
	ldr r0, [r1, #0x20]
	cmp r0, #0
	bne _0808966A
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08089678
sub_08089678: @ 0x08089678
	ldr r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0808967C
sub_0808967C: @ 0x0808967C
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_08089680
sub_08089680: @ 0x08089680
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_08089684
sub_08089684: @ 0x08089684
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_080895A0
	ldr r0, _08089704 @ =vt_09F851D8
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x34
	movs r0, #0
	str r0, [r5, #0x34]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	strh r0, [r1]
	strh r0, [r1, #2]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x44]
	adds r1, #0xc
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	bl sub_0806B070
	movs r1, #1
	bl sub_0806BB20
	str r0, [r5, #0x48]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08089708 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0808970C @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _08089710 @ =gUnknown_08115EAC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
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
_08089704: .4byte vt_09F851D8
_08089708: .4byte _vt.3Unk
_0808970C: .4byte _vt.8AppClock
_08089710: .4byte gUnknown_08115EAC

	thumb_func_start sub_08089714
sub_08089714: @ 0x08089714
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0808977C @ =vt_09F851D8
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_08089680
	adds r4, r0, #0
	cmp r4, #0
	beq _08089756
_0808972A:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r4, #0
	beq _08089750
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08089750:
	adds r4, r5, #0
	cmp r4, #0
	bne _0808972A
_08089756:
	bl sub_0806B070
	ldr r2, [r6, #0x48]
	movs r1, #1
	bl sub_0806BACC
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _0808976C
	bl __builtin_vec_delete
_0808976C:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080895C0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808977C: .4byte vt_09F851D8

	thumb_func_start sub_08089780
sub_08089780: @ 0x08089780
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_0806FBA8
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	str r0, [r5, #0x2c]
	cmp r0, #0
	beq _080897A8
	movs r0, #1
	b _080897AA
_080897A8:
	movs r0, #0
_080897AA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080897B0
sub_080897B0: @ 0x080897B0
	push {lr}
	movs r1, #1
	bl sub_08089D7C
	pop {r1}
	bx r1

	thumb_func_start sub_080897BC
sub_080897BC: @ 0x080897BC
	push {lr}
	movs r1, #4
	bl sub_08089D7C
	pop {r1}
	bx r1

	thumb_func_start sub_080897C8
sub_080897C8: @ 0x080897C8
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x50]
	subs r0, #1
	cmp r0, #2
	bhi _080897D6
	movs r1, #1
_080897D6:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080897DC
sub_080897DC: @ 0x080897DC
	push {lr}
	str r1, [r0, #0x30]
	bl sub_080898CC
	pop {r0}
	bx r0

	thumb_func_start sub_080897E8
sub_080897E8: @ 0x080897E8
	ldr r0, [r0, #0x30]
	bx lr

	thumb_func_start sub_080897EC
sub_080897EC: @ 0x080897EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	adds r4, r6, #0
	adds r4, #0x34
	mov r8, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r6, #0x34]
	cmp r0, r5
	bge _08089840
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08089812
	adds r0, r1, #0
_08089812:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r4, #8]
	adds r2, r7, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08089832
	adds r1, r0, #0
_08089828:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08089828
_08089832:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0808983C
	bl __builtin_vec_delete
_0808983C:
	str r5, [r4]
	str r7, [r4, #8]
_08089840:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	adds r0, r6, #0
	bl sub_080898CC
	ldr r0, [sp]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08089868
sub_08089868: @ 0x08089868
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov ip, r0
	str r1, [sp]
	mov r6, ip
	adds r6, #0x34
	mov r7, sp
	movs r5, #0
	ldr r3, [r6, #4]
	cmp r5, r3
	bge _080898BA
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08089884:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _080898AE
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _080898A6
	adds r2, r0, #0
_0808989C:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0808989C
_080898A6:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r4, #1
	b _080898BC
_080898AE:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08089884
_080898BA:
	movs r4, #0
_080898BC:
	mov r0, ip
	bl sub_080898CC
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080898CC
sub_080898CC: @ 0x080898CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r0, [r5, #0x2c]
	ldr r0, [r0]
	cmp r0, #1
	beq _08089904
	cmp r0, #1
	bgt _080898EC
	cmp r0, #0
	beq _080898F2
	b _08089A14
_080898EC:
	cmp r0, #2
	beq _08089930
	b _08089A14
_080898F2:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x50
	strh r0, [r1]
	movs r0, #2
	b _08089A12
_08089904:
	ldr r3, [r5, #0x30]
	ldr r2, [r3]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [sp]
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x30]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08089A12
_08089930:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r0, [sp, #4]
	str r0, [r5, #0x40]
	movs r7, #0
	str r7, [sp, #0x14]
	movs r0, #0
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x34
	ldr r1, [r0, #4]
	adds r2, r5, #0
	adds r2, #0x40
	str r2, [sp, #0x1c]
	str r0, [sp, #0x18]
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x20]
	cmp r7, r1
	bge _080899CE
	str r0, [sp, #0x24]
	add r6, sp, #8
	add r7, sp, #0xc
	mov sl, r7
	mov sb, r2
_08089966:
	mov r0, r8
	lsls r4, r0, #2
	ldr r1, [sp, #0x24]
	ldr r0, [r1, #8]
	adds r0, r0, r4
	ldr r3, [r0]
	ldr r2, [r3]
	adds r2, #0x40
	movs r7, #0
	ldrsh r1, [r2, r7]
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	mov r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r7, #0
	ldrsh r3, [r6, r7]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r7, #2
	ldrsh r2, [r6, r7]
	adds r1, r1, r3
	adds r0, r0, r2
	mov r2, sl
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x40]
	ldr r3, [sp, #0x24]
	ldr r0, [r3, #8]
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r2, [r0]
	adds r2, #0x50
	movs r7, #0
	ldrsh r1, [r2, r7]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r1, [sp, #0x14]
	adds r1, r1, r0
	str r1, [sp, #0x14]
	movs r2, #1
	add r8, r2
	ldr r3, [sp, #0x24]
	ldr r0, [r3, #4]
	cmp r8, r0
	blt _08089966
_080899CE:
	ldr r6, [sp, #0x1c]
	ldr r7, [sp, #0x18]
	ldr r4, [r7, #4]
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r4, #0
	beq _080899E2
	adds r1, r4, #0
	bl sub_08090F7C
_080899E2:
	adds r7, r0, #0
	movs r2, #2
	ldrsh r0, [r6, r2]
	cmp r4, #0
	beq _080899F2
	adds r1, r4, #0
	bl sub_08090F7C
_080899F2:
	adds r1, r0, #0
	add r0, sp, #0x10
	strh r7, [r0]
	ldr r3, [sp, #0x20]
	strh r1, [r3, #2]
	ldr r0, [sp, #0x10]
	str r0, [r5, #0x40]
	ldr r7, [sp, #0x18]
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _08089A10
	ldr r0, [sp, #0x14]
	bl sub_08090F7C
	b _08089A12
_08089A10:
	ldr r0, [sp, #0x14]
_08089A12:
	str r0, [r5, #0x44]
_08089A14:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08089A24
sub_08089A24: @ 0x08089A24
	ldr r0, [r0, #0x38]
	bx lr

	thumb_func_start sub_08089A28
sub_08089A28: @ 0x08089A28
	lsls r1, r1, #2
	ldr r0, [r0, #0x3c]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08089A34
sub_08089A34: @ 0x08089A34
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x2c]
	ldr r0, [r0]
	cmp r0, #1
	beq _08089A50
	cmp r0, #1
	bgt _08089A4A
	cmp r0, #0
	beq _08089A54
	b _08089A58
_08089A4A:
	cmp r0, #2
	beq _08089A54
	b _08089A58
_08089A50:
	movs r0, #1
	b _08089A5A
_08089A54:
	ldr r0, [r1, #0x38]
	b _08089A5A
_08089A58:
	movs r0, #0
_08089A5A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08089A60
sub_08089A60: @ 0x08089A60
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	ldr r0, [r0]
	cmp r0, #1
	beq _08089A7C
	cmp r0, #1
	bgt _08089A76
	cmp r0, #0
	beq _08089A80
	b _08089A8A
_08089A76:
	cmp r0, #2
	beq _08089A80
	b _08089A8A
_08089A7C:
	ldr r0, [r2, #0x30]
	b _08089A8C
_08089A80:
	lsls r0, r1, #2
	ldr r1, [r2, #0x3c]
	adds r1, r1, r0
	ldr r0, [r1]
	b _08089A8C
_08089A8A:
	movs r0, #0
_08089A8C:
	pop {r1}
	bx r1

	thumb_func_start sub_08089A90
sub_08089A90: @ 0x08089A90
	ldr r1, [r1, #0x40]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08089A98
sub_08089A98: @ 0x08089A98
	ldr r0, [r0, #0x44]
	bx lr

	thumb_func_start sub_08089A9C
sub_08089A9C: @ 0x08089A9C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	cmp r0, #4
	bhi _08089ADE
	lsls r0, r0, #2
	ldr r1, _08089AB0 @ =_08089AB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08089AB0: .4byte _08089AB4
_08089AB4: @ jump table
	.4byte _08089ADE @ case 0
	.4byte _08089AC8 @ case 1
	.4byte _08089AD0 @ case 2
	.4byte _08089AD8 @ case 3
	.4byte _08089ADE @ case 4
_08089AC8:
	adds r0, r2, #0
	bl sub_08089AE4
	b _08089ADE
_08089AD0:
	adds r0, r2, #0
	bl sub_08089B4C
	b _08089ADE
_08089AD8:
	adds r0, r2, #0
	bl sub_08089D14
_08089ADE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08089AE4
sub_08089AE4: @ 0x08089AE4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08089AFE
	adds r6, r2, #0
	adds r6, #0x4e
	ldrh r0, [r6]
	cmp r0, #8
	bls _08089B08
_08089AFE:
	adds r0, r2, #0
	movs r1, #2
	bl sub_08089D7C
	b _08089B44
_08089B08:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r6]
	movs r1, #0x80
	movs r3, #8
	bl sub_08069558
	adds r5, r0, #0
	bl sub_0806B070
	movs r1, #3
	bl sub_0806BA4C
	adds r4, r0, #0
	cmp r4, #0
	beq _08089B3E
	adds r1, r5, #0
	bl setB__15struct_0806A57CUi
	adds r0, r4, #0
	adds r1, r5, #0
	bl setB2__15struct_0806A57CUi
	adds r0, r4, #0
	adds r1, r5, #0
	bl setB4__15struct_0806A57CUi
_08089B3E:
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
_08089B44:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08089B4C
sub_08089B4C: @ 0x08089B4C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r0, #0x4c
	ldr r1, [r6, #0x2c]
	ldrh r0, [r0]
	ldrh r1, [r1, #0xa]
	cmp r0, r1
	blo _08089B80
	ldr r1, [r6, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _08089B80
	adds r0, r6, #0
	movs r1, #3
	bl sub_08089D7C
	b _08089D06
_08089B80:
	ldr r0, [r6, #0x2c]
	adds r4, r0, #0
	adds r4, #0x10
	movs r5, #0
	adds r1, r0, #0
	movs r0, #0x4e
	adds r0, r0, r6
	mov sb, r0
	b _08089C4E
_08089B92:
	ldrh r0, [r4, #4]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _08089C44
	ldrh r0, [r4, #2]
	cmp r0, #6
	bhi _08089C44
	lsls r0, r0, #2
	ldr r1, _08089BAC @ =_08089BB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08089BAC: .4byte _08089BB0
_08089BB0: @ jump table
	.4byte _08089BCC @ case 0
	.4byte _08089BDC @ case 1
	.4byte _08089BEC @ case 2
	.4byte _08089BFC @ case 3
	.4byte _08089C0C @ case 4
	.4byte _08089C1C @ case 5
	.4byte _08089C2C @ case 6
_08089BCC:
	movs r0, #0xa4
	bl __builtin_new
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08089D9C
	b _08089C3A
_08089BDC:
	movs r0, #0xd4
	bl __builtin_new
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0808A03C
	b _08089C3A
_08089BEC:
	movs r0, #0x40
	bl __builtin_new
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0808A268
	b _08089C3A
_08089BFC:
	movs r0, #0x34
	bl __builtin_new
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0808A52C
	b _08089C3A
_08089C0C:
	movs r0, #0x3c
	bl __builtin_new
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0808A794
	b _08089C3A
_08089C1C:
	movs r0, #0x3c
	bl __builtin_new
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0808AAA8
	b _08089C3A
_08089C2C:
	movs r0, #0x30
	bl __builtin_new
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0808AD24
_08089C3A:
	adds r1, r6, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08089C44:
	ldrh r0, [r4]
	adds r4, r4, r0
	adds r5, #1
	ldr r0, [r6, #0x2c]
	adds r1, r0, #0
_08089C4E:
	ldrh r2, [r1, #0xa]
	cmp r5, r2
	blt _08089B92
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08089CFE
	mov r2, sb
	ldrh r0, [r2]
	ldrh r1, [r1, #6]
	cmp r0, r1
	bne _08089CFE
	movs r0, #0x54
	bl __builtin_new
	bl sub_08089684
	adds r7, r0, #0
	ldr r2, [r7, #0x1c]
	adds r2, #0x98
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	ldr r1, [r6, #0x2c]
	ldrh r1, [r1, #4]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r4, [r7, #0x1c]
	adds r4, #0xb8
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r0, #0
	mov r8, r0
	b _08089CD8
_08089CAE:
	ldr r4, [r7, #0x1c]
	adds r4, #0xc8
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r7, r5
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r0, #1
	add r8, r0
_08089CD8:
	ldr r1, [r6, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r8, r0
	blt _08089CAE
	ldr r1, [r6, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
_08089CFE:
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08089D06:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08089D14
sub_08089D14: @ 0x08089D14
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08089D2E
	adds r6, r2, #0
	adds r6, #0x4e
	ldrh r0, [r6]
	cmp r0, #8
	bls _08089D38
_08089D2E:
	adds r0, r2, #0
	movs r1, #4
	bl sub_08089D7C
	b _08089D74
_08089D38:
	movs r1, #0x80
	lsls r1, r1, #1
	ldrh r2, [r6]
	movs r0, #0x80
	movs r3, #8
	bl sub_08069558
	adds r5, r0, #0
	bl sub_0806B070
	movs r1, #3
	bl sub_0806BA4C
	adds r4, r0, #0
	cmp r4, #0
	beq _08089D6E
	adds r1, r5, #0
	bl setB__15struct_0806A57CUi
	adds r0, r4, #0
	adds r1, r5, #0
	bl setB2__15struct_0806A57CUi
	adds r0, r4, #0
	adds r1, r5, #0
	bl setB4__15struct_0806A57CUi
_08089D6E:
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
_08089D74:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08089D7C
sub_08089D7C: @ 0x08089D7C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	cmp r0, r1
	bne _08089D8A
	movs r0, #0
	b _08089D96
_08089D8A:
	str r1, [r2, #0x50]
	adds r1, r2, #0
	adds r1, #0x4e
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
_08089D96:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08089D9C
sub_08089D9C: @ 0x08089D9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_080895A0
	ldr r0, _08089F4C @ =vt_09F85378
	str r0, [r7, #0x1c]
	ldr r1, [r6, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r0, _08089F50 @ =vt_09F852E0
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x34
	bl sub_0806D64C
	bl sub_0806FBA8
	mov sb, r0
	str r4, [r7, #0x2c]
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r0, [r2, r3]
	add r0, sb
	ldrh r1, [r4, #8]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r0, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	add r0, sp, #0x28
	mov r8, r0
	ldrh r0, [r4, #0xc]
	subs r0, #0x80
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r4, #0xe]
	subs r0, #0x80
	strh r0, [r1, #2]
	movs r3, #0x10
	ldrsh r2, [r4, r3]
	mov sl, r2
	ldr r2, [r6, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x2c
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl _call_via_r2
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0
	ldrsh r5, [r4, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	movs r2, #2
	ldrsh r3, [r4, r2]
	add r2, sp, #0x30
	adds r1, r1, r5
	adds r0, r0, r3
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x28]
	ldr r0, [r6, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r6, r6, r1
	ldr r1, [r0, #4]
	adds r0, r6, #0
	bl _call_via_r1
	add r0, sl
	movs r3, #0
	mov sl, r3
	cmp r0, #0
	blt _08089E72
	mov sl, r0
	cmp r0, #7
	ble _08089E72
	movs r0, #7
	mov sl, r0
_08089E72:
	mov r1, sb
	ldr r3, [r1, #0x1c]
	adds r3, #0x78
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x30]
	ldrh r2, [r0, #8]
	add r0, sp, #4
	ldr r3, [r3, #4]
	add r1, sb
	bl _call_via_r3
	mov r0, sb
	ldr r3, [r0, #0x1c]
	adds r3, #0x78
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x30]
	ldrh r2, [r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r3, [r3, #4]
	add r1, sb
	bl _call_via_r3
	mov r0, sb
	ldr r3, [r0, #0x1c]
	adds r3, #0x78
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x30]
	ldrh r2, [r0, #2]
	add r4, sp, #0x1c
	adds r0, r4, #0
	ldr r3, [r3, #4]
	add r1, sb
	bl _call_via_r3
	adds r5, r7, #0
	adds r5, #0x34
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #1
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_0806D744
	ldr r0, _08089F54 @ =_vt.1D
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	mov r1, r8
	bl sub_0806D814
	add r1, sp, #0x34
	movs r0, #0x80
	lsls r0, r0, #1
	movs r4, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	bl sub_0806D828
	add r1, sp, #0x38
	strh r4, [r1]
	strh r4, [r1, #2]
	adds r0, r5, #0
	bl sub_0806D83C
	bl sub_0806B070
	movs r1, #1
	mov r2, sl
	bl sub_0806BACC
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _08089F58 @ =_vt.3Unk
	ldr r0, _08089F5C @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _08089F60 @ =gUnknown_0811600C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08089F4C: .4byte vt_09F85378
_08089F50: .4byte vt_09F852E0
_08089F54: .4byte _vt.1D
_08089F58: .4byte _vt.3Unk
_08089F5C: .4byte _vt.8AppClock
_08089F60: .4byte gUnknown_0811600C

	thumb_func_start sub_08089F64
sub_08089F64: @ 0x08089F64
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08089F8C @ =vt_09F852E0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #2
	bl sub_0806D6E0
	ldr r0, _08089F90 @ =vt_09F85378
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080895C0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08089F8C: .4byte vt_09F852E0
_08089F90: .4byte vt_09F85378

	thumb_func_start sub_08089F94
sub_08089F94: @ 0x08089F94
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_0806FBA8
	adds r5, r0, #0
	ldr r2, [r5, #0x1c]
	adds r2, #0x88
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	ldr r1, [r4, #0x2c]
	ldrh r1, [r1, #8]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r6, r0, #0
	adds r7, r4, #0
	adds r7, #0xa2
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	ldr r2, _0808A018 @ =0x0000FFFF
	mov ip, r2
	adds r2, r4, #0
	adds r2, #0xa0
	ldrh r3, [r2]
	lsls r1, r3, #2
	adds r1, r1, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #0xa]
	cmp r0, r1
	bls _0808A034
	adds r0, r3, #1
	strh r0, [r2]
	mov r1, ip
	ands r0, r1
	ldrh r1, [r6, #4]
	cmp r0, r1
	bhs _0808A020
	adds r4, #0x34
	ldr r3, [r5, #0x1c]
	adds r3, #0x78
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, #8
	adds r0, r6, r0
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	adds r0, r4, #0
	movs r1, #1
	mov r2, sp
	bl sub_0806D79C
	ldr r0, _0808A01C @ =_vt.1D
	str r0, [sp, #8]
	movs r0, #0
	strh r0, [r7]
	b _0808A034
	.align 2, 0
_0808A018: .4byte 0x0000FFFF
_0808A01C: .4byte _vt.1D
_0808A020:
	cmp r4, #0
	beq _0808A034
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808A034:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808A03C
sub_0808A03C: @ 0x0808A03C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x34]
	mov sb, r1
	mov r8, r2
	bl sub_080895A0
	ldr r0, _0808A1E8 @ =vt_09F85378
	ldr r1, [sp, #0x34]
	str r0, [r1, #0x1c]
	mov r2, sb
	ldr r1, [r2, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x34]
	bl _call_via_r2
	ldr r0, _0808A1EC @ =vt_09F85410
	ldr r1, [sp, #0x34]
	str r0, [r1, #0x1c]
	adds r1, #0x30
	mov sl, r1
	mov r0, sl
	bl sub_0806DC78
	mov r2, r8
	ldr r3, [sp, #0x34]
	str r2, [r3, #0x2c]
	bl sub_0806FBA8
	adds r4, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0x98
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, r8
	ldrh r1, [r3, #8]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r5, r0, #0
	ldr r3, [r4, #0x1c]
	adds r3, #0x78
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldrh r2, [r5]
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	ldr r3, [r4, #0x1c]
	adds r3, #0x78
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r2, [r5, #2]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	ldr r3, [r4, #0x1c]
	adds r3, #0x78
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldrh r2, [r5, #4]
	add r5, sp, #0x1c
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	mov r0, sl
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0806DDA0
	ldr r0, _0808A1F0 @ =_vt.1D
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r1, r8
	ldrh r0, [r1, #0xa]
	ldrh r1, [r1, #0xc]
	bl sub_0805D234
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	bl sub_0806DEEC
	add r6, sp, #0x28
	movs r0, #0
	strh r0, [r6]
	strh r0, [r6, #2]
	mov r2, r8
	ldrh r1, [r2, #0x16]
	rsbs r0, r1, #0
	bl sub_0805D234
	mov r3, r8
	ldrh r1, [r3, #0x10]
	adds r1, r1, r0
	strh r1, [r6]
	ldrh r1, [r3, #0x16]
	rsbs r0, r1, #0
	bl sub_0805D234
	mov r2, r8
	ldrh r1, [r2, #0x12]
	adds r1, r1, r0
	strh r1, [r6, #2]
	movs r3, #0x14
	ldrsh r7, [r2, r3]
	mov r0, sb
	ldr r2, [r0, #0x1c]
	adds r2, #0xf8
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r4, sp, #0x2c
	adds r0, r4, #0
	ldr r2, [r2, #4]
	add r1, sb
	bl _call_via_r2
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0
	ldrsh r5, [r4, r2]
	movs r3, #2
	ldrsh r0, [r6, r3]
	movs r2, #2
	ldrsh r3, [r4, r2]
	add r2, sp, #0x30
	adds r1, r1, r5
	adds r0, r0, r3
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x28]
	mov r3, sb
	ldr r0, [r3, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	add sb, r1
	ldr r1, [r0, #4]
	mov r0, sb
	bl _call_via_r1
	adds r0, r7, r0
	movs r7, #0
	adds r1, r6, #0
	cmp r0, #0
	blt _0808A194
	adds r7, r0, #0
	cmp r7, #7
	ble _0808A194
	movs r7, #7
_0808A194:
	ldr r4, [sp, #0x34]
	adds r4, #0x30
	adds r0, r4, #0
	bl sub_0806DF48
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0806DF50
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0808A1F4 @ =_vt.3Unk
	ldr r0, _0808A1F8 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0808A1FC @ =gUnknown_0811616C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r0, [sp, #0x34]
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x34]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808A1E8: .4byte vt_09F85378
_0808A1EC: .4byte vt_09F85410
_0808A1F0: .4byte _vt.1D
_0808A1F4: .4byte _vt.3Unk
_0808A1F8: .4byte _vt.8AppClock
_0808A1FC: .4byte gUnknown_0811616C

	thumb_func_start sub_0808A200
sub_0808A200: @ 0x0808A200
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0808A228 @ =vt_09F85410
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x30
	movs r1, #2
	bl sub_0806DD48
	ldr r0, _0808A22C @ =vt_09F85378
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080895C0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A228: .4byte vt_09F85410
_0808A22C: .4byte vt_09F85378

	thumb_func_start sub_0808A230
sub_0808A230: @ 0x0808A230
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x30
	adds r0, r5, #0
	bl sub_0806DF94
	adds r4, r0, #0
	adds r4, #1
	adds r0, r5, #0
	bl sub_0806DF98
	cmp r4, r0
	blt _0808A260
	cmp r6, #0
	beq _0808A260
	ldr r1, [r6, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808A260:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808A268
sub_0808A268: @ 0x0808A268
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080895A0
	ldr r0, _0808A2FC @ =vt_09F85378
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, _0808A300 @ =vt_09F854A8
	str r0, [r5, #0x1c]
	movs r4, #0
	strh r4, [r5, #0x30]
	strh r4, [r5, #0x32]
	adds r0, r5, #0
	adds r0, #0x34
	strh r4, [r5, #0x34]
	strh r4, [r0, #2]
	adds r0, #4
	strh r4, [r5, #0x38]
	strh r4, [r0, #2]
	str r6, [r5, #0x2c]
	ldr r2, [r6, #8]
	add r0, sp, #0x28
	adds r1, r5, #0
	bl sub_0808A310
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x30]
	strh r4, [r5, #0x3c]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808A304 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0808A308 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0808A30C @ =gUnknown_081162CC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
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
_0808A2FC: .4byte vt_09F85378
_0808A300: .4byte vt_09F854A8
_0808A304: .4byte _vt.3Unk
_0808A308: .4byte _vt.8AppClock
_0808A30C: .4byte gUnknown_081162CC

	thumb_func_start sub_0808A310
sub_0808A310: @ 0x0808A310
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r2, #8
	bhi _0808A3A6
	lsls r0, r2, #2
	ldr r1, _0808A324 @ =_0808A328
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808A324: .4byte _0808A328
_0808A328: @ jump table
	.4byte _0808A34C @ case 0
	.4byte _0808A358 @ case 1
	.4byte _0808A364 @ case 2
	.4byte _0808A36A @ case 3
	.4byte _0808A36E @ case 4
	.4byte _0808A376 @ case 5
	.4byte _0808A37E @ case 6
	.4byte _0808A38C @ case 7
	.4byte _0808A392 @ case 8
_0808A34C:
	movs r0, #0
	ldr r1, _0808A354 @ =0xFFFFFF00
	b _0808A382
	.align 2, 0
_0808A354: .4byte 0xFFFFFF00
_0808A358:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, _0808A360 @ =0xFFFFFF00
	b _0808A382
	.align 2, 0
_0808A360: .4byte 0xFFFFFF00
_0808A364:
	movs r0, #0x80
	lsls r0, r0, #1
	b _0808A380
_0808A36A:
	movs r0, #0xb6
	b _0808A3A8
_0808A36E:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	b _0808A382
_0808A376:
	movs r0, #0xb6
	rsbs r0, r0, #0
	movs r1, #0xb6
	b _0808A382
_0808A37E:
	ldr r0, _0808A388 @ =0xFFFFFF00
_0808A380:
	movs r1, #0
_0808A382:
	strh r0, [r4]
	strh r1, [r4, #2]
	b _0808A3AC
	.align 2, 0
_0808A388: .4byte 0xFFFFFF00
_0808A38C:
	movs r0, #0xb6
	rsbs r0, r0, #0
	b _0808A3A8
_0808A392:
	movs r0, #0
	movs r1, #7
	bl sub_08069454
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0808A310
	b _0808A3AC
_0808A3A6:
	movs r0, #0
_0808A3A8:
	strh r0, [r4]
	strh r0, [r4, #2]
_0808A3AC:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0808A3B4
sub_0808A3B4: @ 0x0808A3B4
	push {lr}
	ldr r2, _0808A3C4 @ =vt_09F85378
	str r2, [r0, #0x1c]
	bl sub_080895C0
	pop {r0}
	bx r0
	.align 2, 0
_0808A3C4: .4byte vt_09F85378

	thumb_func_start sub_0808A3C8
sub_0808A3C8: @ 0x0808A3C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	ldrh r3, [r6, #0x3c]
	ldr r2, [r6, #0x2c]
	ldrh r0, [r2, #0x14]
	ldrh r1, [r2, #0x12]
	muls r0, r1, r0
	cmp r3, r0
	ble _0808A3FC
	cmp r6, #0
	bne _0808A3EA
	b _0808A51C
_0808A3EA:
	ldr r1, [r6, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _0808A51C
_0808A3FC:
	movs r4, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq _0808A40A
	cmp r0, #1
	beq _0808A416
	b _0808A438
_0808A40A:
	ldrh r2, [r2, #0x10]
	adds r0, r3, #0
	bl sub_080694C8
	adds r4, r0, #0
	b _0808A438
_0808A416:
	lsls r0, r3, #8
	cmp r1, #0
	beq _0808A420
	bl sub_08090F7C
_0808A420:
	ldr r1, _0808A480 @ =gUnknown_080EF880
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x14
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r6, #0x2c]
	ldrh r0, [r0, #0x10]
	muls r0, r4, r0
	cmp r0, #0
	bge _0808A436
	adds r0, #0xff
_0808A436:
	asrs r4, r0, #8
_0808A438:
	ldr r0, [r6, #0x38]
	str r0, [r6, #0x34]
	movs r3, #0x30
	ldrsh r0, [r6, r3]
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r6, #0x38]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r6, #0x3a]
	ldr r1, [r6, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	movs r3, #0
	mov sl, r3
	mov r4, sp
	str r4, [sp, #0xc]
	adds r0, r6, #0
	adds r0, #0x38
	str r0, [sp, #0x10]
	add r7, sp, #4
	add r1, sp, #8
	mov sb, r1
	adds r2, r6, #0
	adds r2, #0x34
	str r2, [sp, #0x14]
	b _0808A502
	.align 2, 0
_0808A480: .4byte gUnknown_080EF880
_0808A484:
	ldr r1, [r5, #0x1c]
	adds r1, #0xf0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1]
	movs r4, #0x18
	adds r4, r4, r2
	mov r8, r4
	movs r0, #0x18
	ldrsh r4, [r2, r0]
	adds r4, r1, r4
	str r4, [sp, #0x18]
	adds r2, #0x40
	movs r4, #0
	ldrsh r3, [r2, r4]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldr r0, [sp, #0xc]
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r4, #0x38
	ldrsh r3, [r6, r4]
	mov ip, r3
	movs r2, #2
	ldrsh r0, [r0, r2]
	ldr r3, [sp, #0x10]
	movs r4, #2
	ldrsh r2, [r3, r4]
	add r1, ip
	adds r0, r0, r2
	strh r1, [r7]
	strh r0, [r7, #2]
	movs r0, #0
	ldrsh r2, [r7, r0]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	subs r2, r2, r0
	movs r3, #2
	ldrsh r1, [r7, r3]
	ldr r4, [sp, #0x14]
	movs r3, #2
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	mov r4, sb
	strh r2, [r4]
	strh r1, [r4, #2]
	mov r0, r8
	ldr r2, [r0, #4]
	ldr r0, [sp, #0x18]
	mov r1, sb
	bl _call_via_r2
	movs r1, #1
	add sl, r1
_0808A502:
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sl, r0
	blt _0808A484
	ldrh r0, [r6, #0x3c]
	adds r0, #1
	strh r0, [r6, #0x3c]
_0808A51C:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808A52C
sub_0808A52C: @ 0x0808A52C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080895A0
	ldr r0, _0808A5A4 @ =vt_09F85378
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, _0808A5A8 @ =vt_09F85540
	str r0, [r5, #0x1c]
	str r6, [r5, #0x2c]
	movs r0, #0
	strh r0, [r5, #0x30]
	strh r0, [r5, #0x32]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808A5AC @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0808A5B0 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0808A5B4 @ =gUnknown_0811642C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
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
_0808A5A4: .4byte vt_09F85378
_0808A5A8: .4byte vt_09F85540
_0808A5AC: .4byte _vt.3Unk
_0808A5B0: .4byte _vt.8AppClock
_0808A5B4: .4byte gUnknown_0811642C

	thumb_func_start sub_0808A5B8
sub_0808A5B8: @ 0x0808A5B8
	push {lr}
	ldr r2, _0808A5C8 @ =vt_09F85378
	str r2, [r0, #0x1c]
	bl sub_080895C0
	pop {r0}
	bx r0
	.align 2, 0
_0808A5C8: .4byte vt_09F85378

	thumb_func_start sub_0808A5CC
sub_0808A5CC: @ 0x0808A5CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	ldr r2, [r0, #0x2c]
	ldrh r3, [r2, #0xe]
	ldrh r0, [r2, #0x10]
	adds r4, r3, r0
	ldrh r0, [r2, #0x12]
	adds r0, r4, r0
	mov r5, r8
	ldrh r1, [r5, #0x30]
	cmp r1, r0
	ble _0808A61C
	ldrh r0, [r5, #0x32]
	adds r0, #1
	strh r0, [r5, #0x32]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r2, #0x14]
	cmp r0, r2
	blo _0808A616
	cmp r5, #0
	bne _0808A604
	b _0808A784
_0808A604:
	ldr r1, [r5, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _0808A784
_0808A616:
	movs r0, #0
	mov r5, r8
	strh r0, [r5, #0x30]
_0808A61C:
	mov r0, r8
	ldrh r2, [r0, #0x30]
	cmp r2, r3
	bge _0808A656
	ldr r0, [r0, #0x2c]
	movs r3, #8
	ldrsh r1, [r0, r3]
	ldrh r3, [r0, #0xe]
	movs r0, #0
	bl sub_08069558
	str r0, [sp, #4]
	mov r5, r8
	ldr r0, [r5, #0x2c]
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	ldrh r2, [r5, #0x30]
	ldrh r3, [r0, #0xe]
	movs r0, #0
	bl sub_08069558
	str r0, [sp, #8]
	ldr r0, [r5, #0x2c]
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	ldrh r2, [r5, #0x30]
	ldrh r3, [r0, #0xe]
	movs r0, #0
	b _0808A6AE
_0808A656:
	cmp r2, r4
	bge _0808A672
	mov r5, r8
	ldr r0, [r5, #0x2c]
	movs r2, #8
	ldrsh r1, [r0, r2]
	str r1, [sp, #4]
	movs r5, #0xa
	ldrsh r3, [r0, r5]
	str r3, [sp, #8]
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	mov sl, r1
	b _0808A6B4
_0808A672:
	mov r3, r8
	ldr r1, [r3, #0x2c]
	movs r5, #8
	ldrsh r0, [r1, r5]
	subs r2, r2, r4
	ldrh r3, [r1, #0x12]
	movs r1, #0
	bl sub_08069558
	str r0, [sp, #4]
	mov r0, r8
	ldr r1, [r0, #0x2c]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	mov r3, r8
	ldrh r2, [r3, #0x30]
	subs r2, r2, r4
	ldrh r3, [r1, #0x12]
	movs r1, #0
	bl sub_08069558
	str r0, [sp, #8]
	mov r5, r8
	ldr r1, [r5, #0x2c]
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldrh r2, [r5, #0x30]
	subs r2, r2, r4
	ldrh r3, [r1, #0x12]
	movs r1, #0
_0808A6AE:
	bl sub_08069558
	mov sl, r0
_0808A6B4:
	mov r3, r8
	ldr r1, [r3, #0x1c]
	adds r1, #0x78
	movs r5, #0
	ldrsh r0, [r1, r5]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	movs r6, #0
	mov r5, sp
	b _0808A766
_0808A6CE:
	mov r0, sb
	ldr r1, [r0, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r4, r0, #0
	movs r7, #0
	adds r6, #1
	b _0808A752
_0808A6EA:
	ldr r2, [r4]
	adds r2, #0x68
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	adds r2, r7, #0
	bl _call_via_r3
	ldrb r0, [r5]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	movs r1, #0
	cmp r0, #0
	blt _0808A712
	adds r1, r0, #0
	cmp r1, #0xff
	ble _0808A712
	movs r1, #0xff
_0808A712:
	strb r1, [r5]
	ldrb r0, [r5, #1]
	ldr r2, [sp, #8]
	adds r0, r0, r2
	movs r1, #0
	cmp r0, #0
	blt _0808A728
	adds r1, r0, #0
	cmp r1, #0xff
	ble _0808A728
	movs r1, #0xff
_0808A728:
	strb r1, [r5, #1]
	ldrb r0, [r5, #2]
	add r0, sl
	movs r1, #0
	cmp r0, #0
	blt _0808A73C
	adds r1, r0, #0
	cmp r1, #0xff
	ble _0808A73C
	movs r1, #0xff
_0808A73C:
	strb r1, [r5, #2]
	ldr r1, [r4]
	movs r3, #0x30
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [sp]
	ldr r3, [r1, #0x34]
	adds r1, r7, #0
	bl _call_via_r3
	adds r7, #1
_0808A752:
	ldr r1, [r4]
	adds r1, #0x60
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	blt _0808A6EA
_0808A766:
	mov r3, sb
	ldr r1, [r3, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0808A6CE
	mov r3, r8
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
_0808A784:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808A794
sub_0808A794: @ 0x0808A794
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080895A0
	ldr r0, _0808A824 @ =vt_09F85378
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, _0808A828 @ =vt_09F855D8
	str r0, [r5, #0x1c]
	movs r4, #0
	strh r4, [r5, #0x30]
	strh r4, [r5, #0x32]
	adds r0, r5, #0
	adds r0, #0x34
	strh r4, [r5, #0x34]
	strh r4, [r0, #2]
	str r6, [r5, #0x2c]
	ldr r2, [r6, #8]
	add r0, sp, #0x28
	adds r1, r5, #0
	bl sub_0808A838
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x30]
	strh r4, [r5, #0x38]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808A82C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0808A830 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0808A834 @ =gUnknown_0811658C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
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
_0808A824: .4byte vt_09F85378
_0808A828: .4byte vt_09F855D8
_0808A82C: .4byte _vt.3Unk
_0808A830: .4byte _vt.8AppClock
_0808A834: .4byte gUnknown_0811658C

	thumb_func_start sub_0808A838
sub_0808A838: @ 0x0808A838
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r2, #8
	bhi _0808A8CE
	lsls r0, r2, #2
	ldr r1, _0808A84C @ =_0808A850
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808A84C: .4byte _0808A850
_0808A850: @ jump table
	.4byte _0808A874 @ case 0
	.4byte _0808A880 @ case 1
	.4byte _0808A88C @ case 2
	.4byte _0808A892 @ case 3
	.4byte _0808A896 @ case 4
	.4byte _0808A89E @ case 5
	.4byte _0808A8A6 @ case 6
	.4byte _0808A8B4 @ case 7
	.4byte _0808A8BA @ case 8
_0808A874:
	movs r0, #0
	ldr r1, _0808A87C @ =0xFFFFFF00
	b _0808A8AA
	.align 2, 0
_0808A87C: .4byte 0xFFFFFF00
_0808A880:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, _0808A888 @ =0xFFFFFF00
	b _0808A8AA
	.align 2, 0
_0808A888: .4byte 0xFFFFFF00
_0808A88C:
	movs r0, #0x80
	lsls r0, r0, #1
	b _0808A8A8
_0808A892:
	movs r0, #0xb6
	b _0808A8D0
_0808A896:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	b _0808A8AA
_0808A89E:
	movs r0, #0xb6
	rsbs r0, r0, #0
	movs r1, #0xb6
	b _0808A8AA
_0808A8A6:
	ldr r0, _0808A8B0 @ =0xFFFFFF00
_0808A8A8:
	movs r1, #0
_0808A8AA:
	strh r0, [r4]
	strh r1, [r4, #2]
	b _0808A8D4
	.align 2, 0
_0808A8B0: .4byte 0xFFFFFF00
_0808A8B4:
	movs r0, #0xb6
	rsbs r0, r0, #0
	b _0808A8D0
_0808A8BA:
	movs r0, #0
	movs r1, #7
	bl sub_08069454
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0808A838
	b _0808A8D4
_0808A8CE:
	movs r0, #0
_0808A8D0:
	strh r0, [r4]
	strh r0, [r4, #2]
_0808A8D4:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0808A8DC
sub_0808A8DC: @ 0x0808A8DC
	push {lr}
	ldr r2, _0808A8EC @ =vt_09F85378
	str r2, [r0, #0x1c]
	bl sub_080895C0
	pop {r0}
	bx r0
	.align 2, 0
_0808A8EC: .4byte vt_09F85378

	thumb_func_start sub_0808A8F0
sub_0808A8F0: @ 0x0808A8F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	adds r7, r0, #0
	ldrh r3, [r7, #0x38]
	ldr r2, [r7, #0x2c]
	ldrh r0, [r2, #0x14]
	ldrh r1, [r2, #0x12]
	muls r0, r1, r0
	cmp r3, r0
	ble _0808A920
	cmp r7, #0
	bne _0808A90E
	b _0808AA98
_0808A90E:
	ldr r1, [r7, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _0808AA98
_0808A920:
	movs r4, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq _0808A92E
	cmp r0, #1
	beq _0808A93A
	b _0808A95C
_0808A92E:
	ldrh r2, [r2, #0x10]
	adds r0, r3, #0
	bl sub_080694C8
	adds r4, r0, #0
	b _0808A95C
_0808A93A:
	lsls r0, r3, #8
	cmp r1, #0
	beq _0808A944
	bl sub_08090F7C
_0808A944:
	ldr r1, _0808AAA4 @ =gUnknown_080EF880
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x14
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r7, #0x2c]
	ldrh r0, [r0, #0x10]
	muls r0, r4, r0
	cmp r0, #0
	bge _0808A95A
	adds r0, #0xff
_0808A95A:
	asrs r4, r0, #8
_0808A95C:
	mov r6, sp
	movs r2, #0
	mov r0, sp
	strh r2, [r0]
	strh r2, [r6, #2]
	movs r3, #0x30
	ldrsh r0, [r7, r3]
	muls r0, r4, r0
	asrs r0, r0, #8
	mov r1, sp
	strh r0, [r1]
	movs r1, #0x32
	ldrsh r0, [r7, r1]
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r6, #2]
	add r5, sp, #4
	strh r2, [r5]
	strh r2, [r5, #2]
	bl sub_0806B070
	adds r1, r0, #0
	add r0, sp, #8
	bl sub_0806BAEC
	ldr r0, [sp, #8]
	str r0, [sp, #4]
	movs r2, #0x34
	adds r2, r2, r7
	mov r8, r2
	mov r0, sp
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r4, #0x34
	ldrsh r0, [r7, r4]
	subs r2, r2, r0
	movs r0, #2
	ldrsh r1, [r6, r0]
	mov r3, r8
	movs r4, #2
	ldrsh r0, [r3, r4]
	subs r1, r1, r0
	add r0, sp, #0xc
	strh r2, [r0]
	strh r1, [r0, #2]
	movs r1, #0
	ldrsh r2, [r5, r1]
	movs r4, #0
	ldrsh r3, [r0, r4]
	mov ip, r3
	movs r3, #2
	ldrsh r1, [r5, r3]
	movs r4, #2
	ldrsh r3, [r0, r4]
	add r0, sp, #0x10
	add r2, ip
	adds r1, r1, r3
	strh r2, [r0]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	bl sub_0806B070
	adds r1, r5, #0
	bl sub_0806BA6C
	bl sub_0806BE14
	adds r1, r0, #0
	add r0, sp, #0x14
	bl sub_0806C034
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r3, #0x34
	ldrsh r0, [r7, r3]
	subs r2, r2, r0
	movs r4, #2
	ldrsh r1, [r6, r4]
	mov r3, r8
	movs r4, #2
	ldrsh r0, [r3, r4]
	subs r1, r1, r0
	add r0, sp, #0x18
	strh r2, [r0]
	strh r1, [r0, #2]
	movs r1, #0
	ldrsh r2, [r5, r1]
	movs r4, #0
	ldrsh r3, [r0, r4]
	mov ip, r3
	movs r3, #2
	ldrsh r1, [r5, r3]
	movs r4, #2
	ldrsh r3, [r0, r4]
	add r0, sp, #0x1c
	add r2, ip
	adds r1, r1, r3
	strh r2, [r0]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #4]
	bl sub_0806BE14
	adds r1, r5, #0
	bl sub_0806C028
	bl sub_0806A9A4
	adds r1, r0, #0
	add r0, sp, #0x20
	bl sub_0806AC10
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r3, #0x34
	ldrsh r0, [r7, r3]
	subs r2, r2, r0
	movs r4, #2
	ldrsh r1, [r6, r4]
	mov r6, r8
	movs r3, #2
	ldrsh r0, [r6, r3]
	subs r1, r1, r0
	add r0, sp, #0x24
	strh r2, [r0]
	strh r1, [r0, #2]
	movs r4, #0
	ldrsh r2, [r5, r4]
	movs r6, #0
	ldrsh r4, [r0, r6]
	movs r3, #2
	ldrsh r1, [r5, r3]
	movs r6, #2
	ldrsh r3, [r0, r6]
	add r0, sp, #0x28
	adds r2, r2, r4
	adds r1, r1, r3
	strh r2, [r0]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	bl sub_0806A9A4
	adds r1, r5, #0
	bl sub_0806ABB8
	ldr r0, [sp]
	str r0, [r7, #0x34]
	ldrh r0, [r7, #0x38]
	adds r0, #1
	strh r0, [r7, #0x38]
_0808AA98:
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808AAA4: .4byte gUnknown_080EF880

	thumb_func_start sub_0808AAA8
sub_0808AAA8: @ 0x0808AAA8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080895A0
	ldr r0, _0808AB24 @ =vt_09F85378
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, _0808AB28 @ =vt_09F85670
	str r0, [r5, #0x1c]
	str r6, [r5, #0x2c]
	movs r0, #0
	strh r0, [r5, #0x30]
	strh r0, [r5, #0x32]
	strh r0, [r5, #0x34]
	strh r0, [r5, #0x36]
	strh r0, [r5, #0x38]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808AB2C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0808AB30 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0808AB34 @ =gUnknown_081166EC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
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
_0808AB24: .4byte vt_09F85378
_0808AB28: .4byte vt_09F85670
_0808AB2C: .4byte _vt.3Unk
_0808AB30: .4byte _vt.8AppClock
_0808AB34: .4byte gUnknown_081166EC

	thumb_func_start sub_0808AB38
sub_0808AB38: @ 0x0808AB38
	push {lr}
	ldr r2, _0808AB48 @ =vt_09F85378
	str r2, [r0, #0x1c]
	bl sub_080895C0
	pop {r0}
	bx r0
	.align 2, 0
_0808AB48: .4byte vt_09F85378

	thumb_func_start sub_0808AB4C
sub_0808AB4C: @ 0x0808AB4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r2, [r5, #0x2c]
	ldrh r3, [r2, #0xe]
	ldrh r0, [r2, #0x10]
	adds r4, r3, r0
	ldrh r0, [r2, #0x12]
	adds r0, r4, r0
	ldrh r1, [r5, #0x30]
	cmp r1, r0
	ble _0808AB92
	ldrh r0, [r5, #0x32]
	adds r0, #1
	strh r0, [r5, #0x32]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r2, #0x14]
	cmp r0, r2
	blo _0808AB8E
	cmp r5, #0
	bne _0808AB7C
	b _0808AD1A
_0808AB7C:
	ldr r1, [r5, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _0808AD1A
_0808AB8E:
	movs r0, #0
	strh r0, [r5, #0x30]
_0808AB92:
	ldrh r2, [r5, #0x30]
	cmp r2, r3
	bge _0808ABC8
	ldr r0, [r5, #0x2c]
	movs r3, #8
	ldrsh r1, [r0, r3]
	ldrh r3, [r0, #0xe]
	movs r0, #0
	bl sub_08069558
	mov r8, r0
	ldr r0, [r5, #0x2c]
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	ldrh r2, [r5, #0x30]
	ldrh r3, [r0, #0xe]
	movs r0, #0
	bl sub_08069558
	adds r7, r0, #0
	ldr r0, [r5, #0x2c]
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	ldrh r2, [r5, #0x30]
	ldrh r3, [r0, #0xe]
	movs r0, #0
	b _0808AC12
_0808ABC8:
	cmp r2, r4
	bge _0808ABDE
	ldr r0, [r5, #0x2c]
	movs r2, #8
	ldrsh r1, [r0, r2]
	mov r8, r1
	movs r3, #0xa
	ldrsh r7, [r0, r3]
	movs r1, #0xc
	ldrsh r6, [r0, r1]
	b _0808AC18
_0808ABDE:
	ldr r1, [r5, #0x2c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	subs r2, r2, r4
	ldrh r3, [r1, #0x12]
	movs r1, #0
	bl sub_08069558
	mov r8, r0
	ldr r1, [r5, #0x2c]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldrh r2, [r5, #0x30]
	subs r2, r2, r4
	ldrh r3, [r1, #0x12]
	movs r1, #0
	bl sub_08069558
	adds r7, r0, #0
	ldr r1, [r5, #0x2c]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	ldrh r2, [r5, #0x30]
	subs r2, r2, r4
	ldrh r3, [r1, #0x12]
	movs r1, #0
_0808AC12:
	bl sub_08069558
	adds r6, r0, #0
_0808AC18:
	bl sub_0806B070
	movs r1, #1
	bl sub_0806BA4C
	adds r4, r0, #0
	cmp r4, #0
	beq _0808AC6A
	bl getB__15struct_0806A57C
	adds r1, r0, #0
	movs r2, #0x34
	ldrsh r0, [r5, r2]
	mov r3, r8
	subs r0, r3, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB__15struct_0806A57CUi
	adds r0, r4, #0
	bl getB2__15struct_0806A57C
	adds r1, r0, #0
	movs r2, #0x36
	ldrsh r0, [r5, r2]
	subs r0, r7, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB2__15struct_0806A57CUi
	adds r0, r4, #0
	bl getB4__15struct_0806A57C
	adds r1, r0, #0
	movs r3, #0x38
	ldrsh r0, [r5, r3]
	subs r0, r6, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB4__15struct_0806A57CUi
_0808AC6A:
	bl sub_0806B070
	movs r1, #3
	bl sub_0806BA4C
	adds r4, r0, #0
	cmp r4, #0
	beq _0808ACBC
	bl getB__15struct_0806A57C
	adds r1, r0, #0
	movs r2, #0x34
	ldrsh r0, [r5, r2]
	mov r3, r8
	subs r0, r3, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB__15struct_0806A57CUi
	adds r0, r4, #0
	bl getB2__15struct_0806A57C
	adds r1, r0, #0
	movs r2, #0x36
	ldrsh r0, [r5, r2]
	subs r0, r7, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB2__15struct_0806A57CUi
	adds r0, r4, #0
	bl getB4__15struct_0806A57C
	adds r1, r0, #0
	movs r3, #0x38
	ldrsh r0, [r5, r3]
	subs r0, r6, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB4__15struct_0806A57CUi
_0808ACBC:
	bl sub_0806BE14
	bl sub_0806C1CC

	thumb_func_start sub_0808ACC4
sub_0808ACC4: @ 0x0808ACC4
	adds r4, r0, #0
	cmp r4, #0
	beq _0808AD0C
	bl getB__15struct_0806A57C
	adds r1, r0, #0
	movs r2, #0x34
	ldrsh r0, [r5, r2]
	mov r3, r8
	subs r0, r3, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB__15struct_0806A57CUi
	adds r0, r4, #0
	bl getB2__15struct_0806A57C
	adds r1, r0, #0
	movs r2, #0x36
	ldrsh r0, [r5, r2]
	subs r0, r7, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB2__15struct_0806A57CUi
	adds r0, r4, #0
	bl getB4__15struct_0806A57C
	adds r1, r0, #0
	movs r3, #0x38
	ldrsh r0, [r5, r3]
	subs r0, r6, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB4__15struct_0806A57CUi
_0808AD0C:
	mov r0, r8
	strh r0, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r6, [r5, #0x38]
	ldrh r0, [r5, #0x30]
	adds r0, #1
	strh r0, [r5, #0x30]
_0808AD1A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808AD24
sub_0808AD24: @ 0x0808AD24
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x3c
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080895A0
	ldr r0, _0808ADAC @ =vt_09F85378
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, _0808ADB0 @ =vt_09F85708
	str r0, [r5, #0x1c]
	str r6, [r5, #0x2c]
	ldrh r1, [r6, #8]
	add r0, sp, #4
	bl sub_0806FF6C
	add r0, sp, #4
	movs r1, #0
	bl sub_08070048
	add r0, sp, #4
	movs r1, #2
	bl sub_0806FFA8
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808ADB4 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0808ADB8 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0808ADBC @ =gUnknown_0811684C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x3c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808ADAC: .4byte vt_09F85378
_0808ADB0: .4byte vt_09F85708
_0808ADB4: .4byte _vt.3Unk
_0808ADB8: .4byte _vt.8AppClock
_0808ADBC: .4byte gUnknown_0811684C

	thumb_func_start sub_0808ADC0
sub_0808ADC0: @ 0x0808ADC0
	push {lr}
	ldr r2, _0808ADD0 @ =vt_09F85378
	str r2, [r0, #0x1c]
	bl sub_080895C0
	pop {r0}
	bx r0
	.align 2, 0
_0808ADD0: .4byte vt_09F85378

	thumb_func_start sub_0808ADD4
sub_0808ADD4: @ 0x0808ADD4
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	beq _0808ADEC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808ADEC:
	pop {r0}
	bx r0

	thumb_func_start sub_0808ADF0
sub_0808ADF0: @ 0x0808ADF0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_0806E820
	ldr r0, _0808AE1C @ =vt_09F857A0
	str r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x54
	ldr r0, _0808AE20 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0806E90C
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808AE1C: .4byte vt_09F857A0
_0808AE20: .4byte 0x0000FFFF

	thumb_func_start sub_0808AE24
sub_0808AE24: @ 0x0808AE24
	push {lr}
	ldr r2, _0808AE34 @ =vt_09F857A0
	str r2, [r0, #0x1c]
	bl sub_0806E8BC
	pop {r0}
	bx r0
	.align 2, 0
_0808AE34: .4byte vt_09F857A0

	thumb_func_start sub_0808AE38
sub_0808AE38: @ 0x0808AE38
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r0, #0x54
	strh r4, [r0]
	mov r0, sp
	bl sub_0806E274
	mov r0, sp
	adds r1, r4, #0
	bl sub_0806E34C
	ldr r0, [r5, #0x1c]
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r5, r5, r1
	ldr r2, [r0, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0808AE78
sub_0808AE78: @ 0x0808AE78
	adds r0, #0x54
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808AE80
sub_0808AE80: @ 0x0808AE80
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _0808AEE4 @ =vt_09F85880
	str r0, [r5, #0x1c]
	movs r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808AEE8 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0808AEEC @ =_vt.12PostAppClock
	str r0, [sp, #0x20]
	ldr r0, _0808AEF0 @ =gUnknown_08117084
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
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
_0808AEE4: .4byte vt_09F85880
_0808AEE8: .4byte _vt.3Unk
_0808AEEC: .4byte _vt.12PostAppClock
_0808AEF0: .4byte gUnknown_08117084

	thumb_func_start sub_0808AEF4
sub_0808AEF4: @ 0x0808AEF4
	push {lr}
	ldr r2, _0808AF04 @ =vt_09F85880
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_0808AF04: .4byte vt_09F85880

	thumb_func_start sub_0808AF08
sub_0808AF08: @ 0x0808AF08
	lsls r1, r1, #0x10
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808AF10
sub_0808AF10: @ 0x0808AF10
	ldr r2, [r0, #0x20]
	str r2, [r0, #0x24]
	lsls r1, r1, #0x10
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808AF1C
sub_0808AF1C: @ 0x0808AF1C
	str r1, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0808AF20
sub_0808AF20: @ 0x0808AF20
	str r1, [r0, #0x30]
	bx lr

	thumb_func_start sub_0808AF24
sub_0808AF24: @ 0x0808AF24
	movs r1, #0x22
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808AF2C
sub_0808AF2C: @ 0x0808AF2C
	ldr r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0808AF30
sub_0808AF30: @ 0x0808AF30
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808AF38
sub_0808AF38: @ 0x0808AF38
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_0808AF3C
sub_0808AF3C: @ 0x0808AF3C
	ldr r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0808AF40
sub_0808AF40: @ 0x0808AF40
	ldr r0, [r0, #0x30]
	bx lr

	thumb_func_start sub_0808AF44
sub_0808AF44: @ 0x0808AF44
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x20]
	ldr r3, [r2, #0x28]
	cmp r1, r3
	bge _0808AF74
	ldr r0, [r2, #0x24]
	adds r0, #1
	cmp r1, r0
	bge _0808AF62
	ldr r0, [r2, #0x2c]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	b _0808AF66
_0808AF62:
	subs r0, r3, #1
	ldr r1, [r2, #0x2c]
_0808AF66:
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
	str r0, [r2, #0x20]
	ldr r1, [r2, #0x28]
	cmp r1, r0
	ble _0808AFA0
	b _0808AF9E
_0808AF74:
	cmp r1, r3
	ble _0808AFA2
	ldr r0, [r2, #0x24]
	subs r0, #1
	cmp r1, r0
	bgt _0808AF86
	adds r0, r3, #1
	cmp r1, r0
	bge _0808AF90
_0808AF86:
	ldr r0, [r2, #0x30]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	b _0808AF92
_0808AF90:
	ldr r1, [r2, #0x30]
_0808AF92:
	ldr r0, [r2, #0x20]
	subs r0, r0, r1
	str r0, [r2, #0x20]
	ldr r1, [r2, #0x28]
	cmp r1, r0
	bge _0808AFA0
_0808AF9E:
	adds r1, r0, #0
_0808AFA0:
	str r1, [r2, #0x20]
_0808AFA2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808AFA8
sub_0808AFA8: @ 0x0808AFA8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _0808B044 @ =vt_09F85938
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x94
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x98
	strb r2, [r0]
	ldr r1, _0808B048 @ =0x00000291
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #2
	bl sub_080706A0
	ldr r1, _0808B04C @ =0x00000283
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _0808B050 @ =_vt.1D
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808B054 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0808B058 @ =_vt.11PreAppClock
	str r0, [sp, #0x20]
	ldr r0, _0808B05C @ =gUnknown_081174A4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
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
_0808B044: .4byte vt_09F85938
_0808B048: .4byte 0x00000291
_0808B04C: .4byte 0x00000283
_0808B050: .4byte _vt.1D
_0808B054: .4byte _vt.3Unk
_0808B058: .4byte _vt.11PreAppClock
_0808B05C: .4byte gUnknown_081174A4

	thumb_func_start sub_0808B060
sub_0808B060: @ 0x0808B060
	push {lr}
	ldr r2, _0808B070 @ =vt_09F85938
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_0808B070: .4byte vt_09F85938

	thumb_func_start sub_0808B074
sub_0808B074: @ 0x0808B074
	adds r0, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_0808B07C
sub_0808B07C: @ 0x0808B07C
	adds r1, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_0808B084
sub_0808B084: @ 0x0808B084
	push {r4, lr}
	sub sp, #4
	mov ip, r0
	adds r0, #0x94
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, #2
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _0808B0D4 @ =gUnknown_080C6984
	mov r4, ip
	adds r4, #0x98
	ldrb r0, [r4]
	lsrs r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, sp
	adds r1, r1, r0
	mov r0, sp
	strh r3, [r0]
	strh r1, [r2, #2]
	mov r0, ip
	mov r1, sp
	bl sub_0806DB74
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _0808B0CC
	movs r0, #0
	strb r0, [r4]
_0808B0CC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808B0D4: .4byte gUnknown_080C6984

	thumb_func_start sub_0808B0D8
sub_0808B0D8: @ 0x0808B0D8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _0808B178 @ =vt_09F85A30
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x94
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	movs r1, #0x3f
	bl sub_08070660
	adds r1, r5, #0
	adds r1, #0x98
	strb r0, [r1]
	ldr r1, _0808B17C @ =0x00000291
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #2
	bl sub_080706A0
	ldr r1, _0808B180 @ =0x00000283
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _0808B184 @ =_vt.1D
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0xf
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808B188 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0808B18C @ =_vt.11PreAppClock
	str r0, [sp, #0x20]
	ldr r0, _0808B190 @ =gUnknown_081178C4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
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
_0808B178: .4byte vt_09F85A30
_0808B17C: .4byte 0x00000291
_0808B180: .4byte 0x00000283
_0808B184: .4byte _vt.1D
_0808B188: .4byte _vt.3Unk
_0808B18C: .4byte _vt.11PreAppClock
_0808B190: .4byte gUnknown_081178C4

	thumb_func_start sub_0808B194
sub_0808B194: @ 0x0808B194
	push {lr}
	ldr r2, _0808B1A4 @ =vt_09F85A30
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_0808B1A4: .4byte vt_09F85A30

	thumb_func_start sub_0808B1A8
sub_0808B1A8: @ 0x0808B1A8
	adds r0, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_0808B1B0
sub_0808B1B0: @ 0x0808B1B0
	adds r1, #0x94
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_0808B1B8
sub_0808B1B8: @ 0x0808B1B8
	push {r4, r5, r6, lr}
	sub sp, #4
	mov ip, r0
	adds r0, #0x94
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldr r0, _0808B210 @ =gUnknown_080C696C
	mov r5, ip
	adds r5, #0x98
	ldrb r1, [r5]
	lsrs r1, r1, #3
	adds r0, r1, r0
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, ip
	adds r0, #0x96
	movs r6, #0
	ldrsh r2, [r0, r6]
	ldr r0, _0808B214 @ =gUnknown_080C6974
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r1, sp
	adds r3, r3, r4
	adds r2, r2, r0
	mov r0, sp
	strh r3, [r0]
	strh r2, [r1, #2]
	mov r0, ip
	bl sub_0806DB74
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _0808B208
	movs r0, #0
	strb r0, [r5]
_0808B208:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808B210: .4byte gUnknown_080C696C
_0808B214: .4byte gUnknown_080C6974

	thumb_func_start sub_0808B218
sub_0808B218: @ 0x0808B218
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _0808B268 @ =vt_09F82898
	str r0, [r5, #0x1c]
	ldr r1, _0808B26C @ =0x00000291
	mov r0, sp
	bl sub_080706A0
	add r6, sp, #0xc
	adds r0, r6, #0
	movs r1, #2
	bl sub_080706A0
	ldr r1, _0808B270 @ =0x00000283
	add r4, sp, #0x18
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	mov r1, sp
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _0808B274 @ =_vt.1D
	str r0, [sp, #0x20]
	str r0, [sp, #0x14]
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0806DB60
	adds r0, r5, #0
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808B268: .4byte vt_09F82898
_0808B26C: .4byte 0x00000291
_0808B270: .4byte 0x00000283
_0808B274: .4byte _vt.1D

	thumb_func_start sub_0808B278
sub_0808B278: @ 0x0808B278
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x160
	adds r7, r0, #0
	str r1, [sp, #0xb8]
	bl __4Base
	ldr r0, _0808B664 @ =vt_09F85B28
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x28
	movs r3, #2
	add r6, sp, #0x58
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0xc8]
	adds r1, #0x4c
	str r1, [sp, #0xdc]
	subs r1, #0x40
	str r1, [sp, #0xcc]
	adds r1, #0x44
	str r1, [sp, #0xe4]
	subs r1, #0x38
	str r1, [sp, #0xd0]
	adds r1, #0x3c
	str r1, [sp, #0xf0]
	add r1, sp, #0x34
	mov sl, r1
	mov r1, sp
	adds r1, #0x40
	str r1, [sp, #0xd4]
	adds r1, #0xc
	str r1, [sp, #0xd8]
	adds r1, #0x1c
	str r1, [sp, #0xf8]
	adds r1, #4
	str r1, [sp, #0xfc]
	adds r1, #4
	str r1, [sp, #0x104]
	adds r1, #4
	str r1, [sp, #0x10c]
	adds r1, #4
	str r1, [sp, #0x110]
	adds r1, #4
	str r1, [sp, #0x114]
	adds r1, #4
	str r1, [sp, #0x118]
	adds r1, #4
	str r1, [sp, #0x11c]
	adds r1, #4
	str r1, [sp, #0x120]
	adds r1, #4
	str r1, [sp, #0x124]
	adds r1, #4
	str r1, [sp, #0x128]
	adds r1, #4
	str r1, [sp, #0x12c]
	adds r1, #4
	str r1, [sp, #0x130]
	adds r1, #4
	str r1, [sp, #0x134]
	adds r1, #4
	str r1, [sp, #0x138]
	adds r1, #4
	str r1, [sp, #0x13c]
	adds r1, #4
	str r1, [sp, #0x140]
	adds r1, #4
	str r1, [sp, #0x144]
	adds r1, #4
	str r1, [sp, #0x148]
	adds r1, #4
	str r1, [sp, #0x14c]
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
_0808B316:
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, #0xc
	subs r3, #1
	cmp r3, r2
	bne _0808B316
	adds r4, r7, #0
	adds r4, #0x60
	adds r0, r4, #0
	bl sub_0806D64C
	adds r5, r7, #0
	adds r5, #0xcc
	movs r3, #2
	mov sb, r3
	str r4, [sp, #0x108]
	adds r0, r7, #0
	adds r0, #0x4c
	str r0, [sp, #0xe0]
	adds r1, r7, #0
	adds r1, #0x4d
	str r1, [sp, #0xe8]
	adds r3, r7, #0
	adds r3, #0x4e
	str r3, [sp, #0xec]
	adds r0, #8
	str r0, [sp, #0xf4]
	adds r1, #0xf
	str r1, [sp, #0x100]
	movs r3, #1
	rsbs r3, r3, #0
	mov r8, r3
	ldr r3, _0808B668 @ =_vt.1D
	adds r4, r6, #0
	movs r6, #0xa
_0808B35E:
	str r3, [sp, #0xc]
	ldr r0, _0808B66C @ =gUnknown_08CE39F8
	str r0, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	add r0, sp, #0x58
	strh r6, [r0]
	strh r6, [r4, #2]
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r4, #0
	str r3, [sp, #0x15c]
	bl sub_08071108
	ldr r3, [sp, #0x15c]
	str r3, [sp, #0xc]
	ldr r0, _0808B670 @ =vt_09F7E458
	str r0, [r5, #0x1c]
	adds r5, #0x5c
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	cmp sb, r8
	bne _0808B35E
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_0808B0D8
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r4, r7, r3
	movs r0, #2
	mov r8, r0
	ldr r6, [sp, #0xc8]
	ldr r5, [sp, #0xdc]
	movs r1, #0xa
	mov sb, r1
_0808B3AA:
	ldr r3, _0808B668 @ =_vt.1D
	str r3, [sp, #0x18]
	ldr r0, _0808B66C @ =gUnknown_08CE39F8
	str r0, [sp, #0x10]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r6, #4]
	add r0, sp, #0x5c
	mov r3, sb
	strh r3, [r0]
	strh r3, [r5, #2]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08071108
	ldr r0, _0808B668 @ =_vt.1D
	str r0, [sp, #0x18]
	ldr r1, _0808B670 @ =vt_09F7E458
	str r1, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x5c
	bl sub_0808E834
	adds r4, #0xc4
	movs r3, #1
	rsbs r3, r3, #0
	add r8, r3
	cmp r8, r3
	bne _0808B3AA
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r7, r1
	bl sub_0808B0D8
	ldr r3, _0808B674 @ =0x00000564
	adds r0, r7, r3
	bl sub_08071D2C
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r7, r1
	bl sub_08071E5C
	ldr r3, _0808B678 @ =0x0000069C
	adds r0, r7, r3
	bl sub_0806D64C
	movs r0, #0xe1
	lsls r0, r0, #3
	adds r0, r0, r7
	mov r8, r0
	ldr r5, _0808B668 @ =_vt.1D
	str r5, [sp, #0x24]
	ldr r1, _0808B66C @ =gUnknown_08CE39F8
	str r1, [sp, #0x1c]
	movs r3, #1
	rsbs r3, r3, #0
	ldr r0, [sp, #0xcc]
	str r3, [r0, #4]
	movs r4, #0xa
	movs r6, #0
	movs r1, #0
	mov sb, r1
	add r0, sp, #0x60
	strh r4, [r0]
	ldr r3, [sp, #0xe4]
	strh r4, [r3, #2]
	mov r0, r8
	ldr r1, [sp, #0xcc]
	ldr r2, [sp, #0xe4]
	bl sub_08071108
	str r5, [sp, #0x24]
	ldr r0, _0808B670 @ =vt_09F7E458
	mov r1, r8
	str r0, [r1, #0x1c]
	ldr r3, _0808B67C @ =0x00000764
	adds r3, r3, r7
	mov r8, r3
	str r5, [sp, #0x30]
	ldr r0, _0808B66C @ =gUnknown_08CE39F8
	str r0, [sp, #0x28]
	movs r1, #1
	rsbs r1, r1, #0
	ldr r3, [sp, #0xd0]
	str r1, [r3, #4]
	add r0, sp, #0x64
	strh r4, [r0]
	ldr r0, [sp, #0xf0]
	strh r4, [r0, #2]
	mov r0, r8
	ldr r1, [sp, #0xd0]
	ldr r2, [sp, #0xf0]
	bl sub_08071108
	str r5, [sp, #0x30]
	ldr r1, _0808B670 @ =vt_09F7E458
	mov r3, r8
	str r1, [r3, #0x1c]
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r7, r1
	bl sub_0808B218
	ldr r3, _0808B680 @ =0x00000854
	adds r0, r7, r3
	bl sub_08071F8C
	ldr r0, [sp, #0xb8]
	str r0, [r7, #0x24]
	ldr r1, [sp, #0xe0]
	strb r6, [r1]
	ldr r3, [sp, #0xe8]
	strb r6, [r3]
	ldr r0, [sp, #0xec]
	strb r6, [r0]
	mov r1, sb
	str r1, [r7, #0x50]
	ldr r3, [sp, #0xf4]
	strb r6, [r3]
	str r1, [r7, #0x58]
	movs r0, #1
	ldr r1, [sp, #0x100]
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0808BA84
	ldr r1, _0808B684 @ =0x0000028B
	mov r0, sl
	bl sub_080706A0
	ldr r0, [sp, #0xd4]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0xd8]
	bl sub_080706A0
	ldr r0, [sp, #0xd8]
	str r0, [sp]
	ldr r0, [sp, #0x108]
	movs r1, #1
	mov r2, sl
	ldr r3, [sp, #0xd4]
	bl sub_0806D744
	str r5, [sp, #0x54]
	str r5, [sp, #0x48]
	str r5, [sp, #0x3c]
	add r0, sp, #0x68
	mov r1, sb
	strh r1, [r0]
	ldr r3, [sp, #0xf8]
	strh r1, [r3, #2]
	ldr r0, [sp, #0x108]
	ldr r1, [sp, #0xf8]
	bl sub_0806D814
	movs r1, #0xf0
	movs r2, #0x30
	add r0, sp, #0x6c
	strh r1, [r0]
	ldr r0, [sp, #0xfc]
	strh r2, [r0, #2]
	ldr r0, [sp, #0x108]
	ldr r1, [sp, #0xfc]
	bl sub_0806D828
	add r0, sp, #0x70
	mov r1, sb
	strh r1, [r0]
	ldr r3, [sp, #0x104]
	strh r1, [r3, #2]
	ldr r0, [sp, #0x108]
	ldr r1, [sp, #0x104]
	bl sub_0806D83C
	movs r0, #0
	mov sb, r0
	mov r1, sl
	str r1, [sp, #0xbc]
	ldr r3, [sp, #0x10c]
	str r3, [sp, #0xc0]
	ldr r0, [sp, #0x110]
	str r0, [sp, #0xc4]
	movs r1, #6
	str r1, [sp, #0x158]
_0808B532:
	movs r0, #0x5c
	mov r6, sb
	muls r6, r0, r6
	adds r3, r6, r7
	mov r8, r3
	movs r0, #0xcc
	add r8, r0
	mov r1, r8
	ldr r5, [r1, #0x1c]
	adds r5, #0x80
	adds r6, #0xcc
	adds r6, r7, r6
	movs r3, #0
	ldrsh r4, [r5, r3]
	adds r4, r6, r4
	ldr r0, [sp, #0xbc]
	mov r1, sb
	bl sub_08082B1C
	ldr r2, [r5, #4]
	adds r0, r4, #0
	ldr r1, [sp, #0xbc]
	bl _call_via_r2
	ldr r0, [sp, #0xbc]
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	ldr r2, [r0, #0x1c]
	adds r2, #0x90
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	add r1, sp, #0x74
	movs r3, #0
	strb r3, [r1]
	ldr r1, [sp, #0xc0]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	ldr r2, [r2, #4]
	ldr r1, [sp, #0xc0]
	bl _call_via_r2
	mov r3, r8
	ldr r2, [r3, #0x1c]
	adds r2, #0x88
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r6, r6, r0
	movs r1, #0x14
	add r0, sp, #0x78
	strh r1, [r0]
	add r3, sp, #0x158
	ldrh r0, [r3]
	ldr r3, [sp, #0xc4]
	strh r0, [r3, #2]
	ldr r2, [r2, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0xc4]
	bl _call_via_r2
	ldr r0, [sp, #0x158]
	adds r0, #0xc
	str r0, [sp, #0x158]
	movs r1, #1
	add sb, r1
	mov r3, sb
	cmp r3, #2
	ble _0808B532
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #3
	movs r3, #3
	rsbs r3, r3, #0
	add r1, sp, #0x7c
	strh r2, [r1]
	ldr r1, [sp, #0x114]
	strh r3, [r1, #2]
	ldr r1, [sp, #0x114]
	bl sub_0808B1A8
	movs r6, #0
	ldr r5, [sp, #0x118]
	ldr r3, [sp, #0x11c]
	mov sb, r3
	ldr r0, [sp, #0x120]
	mov r8, r0
	movs r1, #7
	str r1, [sp, #0x150]
	movs r3, #6
	str r3, [sp, #0x154]
_0808B5EC:
	movs r0, #0xc4
	adds r4, r6, #0
	muls r4, r0, r4
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r4, r7, r4
	add r0, sp, #0x80
	movs r1, #0
	strb r1, [r0]
	strb r1, [r5, #1]
	strb r1, [r5, #2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806E9C4
	add r0, sp, #0x84
	movs r3, #0x5a
	strh r3, [r0]
	add r0, sp, #0x154
	ldrh r1, [r0]
	mov r0, sb
	strh r1, [r0, #2]
	adds r0, r4, #0
	mov r1, sb
	bl sub_08071194
	adds r4, #0x5c
	add r0, sp, #0x88
	movs r1, #0xd4
	strh r1, [r0]
	add r3, sp, #0x150
	ldrh r0, [r3]
	mov r3, r8
	strh r0, [r3, #2]
	adds r0, r4, #0
	mov r1, r8
	bl sub_0808EA70
	adds r0, r4, #0
	movs r1, #2
	bl sub_0808EA6C
	ldr r0, [sp, #0x150]
	adds r0, #0xc
	str r0, [sp, #0x150]
	ldr r1, [sp, #0x154]
	adds r1, #0xc
	str r1, [sp, #0x154]
	adds r6, #1
	cmp r6, #2
	ble _0808B5EC
	movs r3, #0x99
	lsls r3, r3, #3
	adds r0, r7, r3
	movs r2, #0x49
	movs r3, #3
	rsbs r3, r3, #0
	b _0808B688
	.align 2, 0
_0808B664: .4byte vt_09F85B28
_0808B668: .4byte _vt.1D
_0808B66C: .4byte gUnknown_08CE39F8
_0808B670: .4byte vt_09F7E458
_0808B674: .4byte 0x00000564
_0808B678: .4byte 0x0000069C
_0808B67C: .4byte 0x00000764
_0808B680: .4byte 0x00000854
_0808B684: .4byte 0x0000028B
_0808B688:
	movs r6, #0
	add r1, sp, #0x8c
	strh r2, [r1]
	ldr r1, [sp, #0x124]
	strh r3, [r1, #2]
	ldr r1, [sp, #0x124]
	bl sub_0808B1A8
	ldr r3, _0808BA10 @ =0x00000564
	adds r0, r7, r3
	movs r4, #0xdc
	movs r2, #7
	add r1, sp, #0x90
	strh r4, [r1]
	ldr r1, [sp, #0x128]
	strh r2, [r1, #2]
	ldr r1, [sp, #0x128]
	bl sub_08071DF8
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r7, r3
	movs r2, #0x1e
	add r1, sp, #0x94
	strh r4, [r1]
	ldr r1, [sp, #0x12c]
	strh r2, [r1, #2]
	ldr r1, [sp, #0x12c]
	bl sub_08071F28
	ldr r1, _0808BA14 @ =0x0000028A
	mov r0, sl
	bl sub_080706A0
	ldr r0, [sp, #0xd4]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0xd8]
	bl sub_080706A0
	ldr r0, _0808BA18 @ =0x0000069C
	adds r4, r7, r0
	ldr r1, [sp, #0xd8]
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #1
	mov r2, sl
	ldr r3, [sp, #0xd4]
	bl sub_0806D744
	ldr r0, _0808BA1C @ =_vt.1D
	str r0, [sp, #0x54]
	str r0, [sp, #0x48]
	str r0, [sp, #0x3c]
	movs r5, #0x80
	add r0, sp, #0x98
	strh r6, [r0]
	ldr r3, [sp, #0x130]
	strh r5, [r3, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x130]
	bl sub_0806D814
	movs r1, #0xf0
	movs r2, #0x20
	add r0, sp, #0x9c
	strh r1, [r0]
	ldr r0, [sp, #0x134]
	strh r2, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x134]
	bl sub_0806D828
	add r0, sp, #0xa0
	strh r6, [r0]
	ldr r1, [sp, #0x138]
	strh r5, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x138]
	bl sub_0806D83C
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r4, r7, r3
	add r0, sp, #0xa4
	strb r6, [r0]
	ldr r0, [sp, #0x13c]
	strb r6, [r0, #1]
	strb r6, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x13c]
	bl sub_0806E9C4
	movs r5, #0xc
	movs r1, #0x86
	add r0, sp, #0xa8
	strh r5, [r0]
	ldr r3, [sp, #0x140]
	strh r1, [r3, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x140]
	bl sub_08071194
	ldr r0, _0808BA20 @ =0x00000764
	adds r4, r7, r0
	add r0, sp, #0xac
	strb r6, [r0]
	ldr r1, [sp, #0x144]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x144]
	bl sub_0806E9C4
	movs r1, #0x92
	add r0, sp, #0xb0
	strh r5, [r0]
	ldr r3, [sp, #0x148]
	strh r1, [r3, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x148]
	bl sub_08071194
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r2, #0xc9
	movs r3, #0x7a
	add r1, sp, #0xb4
	strh r2, [r1]
	ldr r1, [sp, #0x14c]
	strh r3, [r1, #2]
	ldr r1, [sp, #0x14c]
	bl sub_0806DB74
	adds r0, r7, #0
	bl sub_0808BB8C
	mov r0, sl
	bl __4Base
	ldr r3, _0808BA24 @ =_vt.3Unk
	mov sb, r3
	ldr r0, _0808BA28 @ =_vt.10UpKeyPress
	str r0, [sp, #0x50]
	ldr r0, _0808BA2C @ =0x00000854
	adds r0, r0, r7
	mov r8, r0
	ldr r0, _0808BA30 @ =gUnknown_08118364
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA34 @ =_vt.14UpKeyLongPress
	str r0, [sp, #0x50]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA38 @ =_vt.12DownKeyPress
	str r0, [sp, #0x50]
	ldr r0, _0808BA3C @ =gUnknown_0811836C
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA40 @ =_vt.16DownKeyLongPress
	str r0, [sp, #0x50]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA44 @ =_vt.14SelectKeyPress
	str r0, [sp, #0x50]
	ldr r0, _0808BA48 @ =gUnknown_08118374
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA4C @ =_vt.9AKeyPress
	str r0, [sp, #0x50]
	ldr r0, _0808BA50 @ =gUnknown_0811837C
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA54 @ =_vt.13AKeyLongPress
	str r0, [sp, #0x50]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA58 @ =_vt.9LKeyPress
	str r0, [sp, #0x50]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA5C @ =_vt.13LKeyLongPress
	str r0, [sp, #0x50]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA60 @ =_vt.9BKeyPress
	str r0, [sp, #0x50]
	ldr r0, _0808BA64 @ =gUnknown_08118384
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	mov r1, r8
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r5, r0, #0
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA68 @ =vt_09F819D0
	str r0, [sp, #0x50]
	ldr r0, _0808BA6C @ =gUnknown_0811838C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r6, r0, #0
	mov r0, sl
	bl __4Base
	movs r0, #0
	str r0, [sp, #0x54]
	ldr r0, _0808BA70 @ =vt_09F817D0
	str r0, [sp, #0x50]
	ldr r0, _0808BA74 @ =gUnknown_08118394
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r6, r0, #0
	mov r0, sl
	bl __4Base
	movs r3, #0
	str r3, [sp, #0x54]
	ldr r0, _0808BA78 @ =vt_09F81750
	str r0, [sp, #0x50]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r5, r0, #0
	mov r0, sl
	bl __4Base
	ldr r0, _0808BA7C @ =vt_09F81950
	str r0, [sp, #0x50]
	ldr r0, _0808BA80 @ =gUnknown_0811839C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x50]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x160
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808BA10: .4byte 0x00000564
_0808BA14: .4byte 0x0000028A
_0808BA18: .4byte 0x0000069C
_0808BA1C: .4byte _vt.1D
_0808BA20: .4byte 0x00000764
_0808BA24: .4byte _vt.3Unk
_0808BA28: .4byte _vt.10UpKeyPress
_0808BA2C: .4byte 0x00000854
_0808BA30: .4byte gUnknown_08118364
_0808BA34: .4byte _vt.14UpKeyLongPress
_0808BA38: .4byte _vt.12DownKeyPress
_0808BA3C: .4byte gUnknown_0811836C
_0808BA40: .4byte _vt.16DownKeyLongPress
_0808BA44: .4byte _vt.14SelectKeyPress
_0808BA48: .4byte gUnknown_08118374
_0808BA4C: .4byte _vt.9AKeyPress
_0808BA50: .4byte gUnknown_0811837C
_0808BA54: .4byte _vt.13AKeyLongPress
_0808BA58: .4byte _vt.9LKeyPress
_0808BA5C: .4byte _vt.13LKeyLongPress
_0808BA60: .4byte _vt.9BKeyPress
_0808BA64: .4byte gUnknown_08118384
_0808BA68: .4byte vt_09F819D0
_0808BA6C: .4byte gUnknown_0811838C
_0808BA70: .4byte vt_09F817D0
_0808BA74: .4byte gUnknown_08118394
_0808BA78: .4byte vt_09F81750
_0808BA7C: .4byte vt_09F81950
_0808BA80: .4byte gUnknown_0811839C

	thumb_func_start sub_0808BA84
sub_0808BA84: @ 0x0808BA84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x50
	adds r7, r0, #0
	movs r6, #0
	b _0808BB54
_0808BA94:
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0xfc
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08082B78
	mov r0, sp
	bl sub_0808306C
	add r2, sp, #0x4c
	strb r6, [r2]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r4, r1, r7
	adds r4, #0x28
	mov sb, r2
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	adds r6, #1
	mov r8, r6
	cmp r0, r5
	bge _0808BB3A
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _0808BB08
	adds r1, r0, #0
_0808BB08:
	adds r5, r1, #0
	adds r0, r5, #0
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0808BB2C
	adds r1, r0, #0
_0808BB1E:
	ldrb r0, [r3]
	strb r0, [r2]
	adds r3, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0808BB1E
_0808BB2C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0808BB36
	bl __builtin_vec_delete
_0808BB36:
	str r5, [r4]
	str r6, [r4, #8]
_0808BB3A:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	mov r3, sb
	ldrb r2, [r3]
	strb r2, [r1]
	adds r0, #1
	str r0, [r4, #4]
	mov r0, sp
	movs r1, #2
	bl  sub_08082BA8
	mov r6, r8
_0808BB54:
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0808BA94
	add sp, #0x50
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808BB8C
sub_0808BB8C: @ 0x0808BB8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #2
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808BBCC
	bl sub_08072858
	ldrh r0, [r0, #2]
	mov sb, r0
	bl sub_08072858
	ldrh r1, [r0, #4]
	adds r0, r6, #0
	adds r0, #0x4d
	b _0808BC08
_0808BBCC:
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #4
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808BBFE
	bl sub_08072858
	ldrh r0, [r0, #6]
	mov sb, r0
	bl sub_08072858
	ldrh r1, [r0, #8]
	adds r0, r6, #0
	adds r0, #0x4d
	b _0808BC08
_0808BBFE:
	movs r0, #0
	mov sb, r0
	adds r0, r6, #0
	adds r0, #0x4d
	mov r1, sb
_0808BC08:
	strb r1, [r0]
	mov r8, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	mov r1, sb
	bl _call_via_r2
	adds r5, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	bge _0808BCF2
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	mov r1, sb
	bl sub_08082B78
	mov r0, sp
	bl sub_0808306C
	adds r4, r6, #0
	adds r4, #0x4c
	strb r0, [r4]
	mov r0, sp
	movs r1, #2
	bl  sub_08082BA8
	movs r1, #0
	ldrsb r1, [r4, r1]
	add r0, sp, #0x4c
	strb r5, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r6
	adds r2, #0x28
	movs r1, #0
	ldr r3, [r2, #4]
	mov sl, r4
	adds r7, r6, #0
	adds r7, #0x4e
	cmp r1, r3
	bge _0808BCBE
	ldr r4, [r2, #8]
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_0808BCB0:
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, r5
	beq _0808BCC0
	adds r1, #1
	cmp r1, r3
	blt _0808BCB0
_0808BCBE:
	ldr r1, [r2, #4]
_0808BCC0:
	mov r3, r8
	ldrb r0, [r3]
	subs r0, r1, r0
	movs r5, #0
	strb r0, [r7]
	mov r0, sl
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #0
	ldrsb r2, [r3, r2]
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0808CB18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	beq _0808BD02
	mov r1, sl
	strb r5, [r1]
	mov r2, r8
	strb r5, [r2]
	strb r5, [r7]
	b _0808BD02
_0808BCF2:
	adds r1, r6, #0
	adds r1, #0x4c
	movs r0, #0
	strb r0, [r1]
	mov r3, r8
	strb r0, [r3]
	adds r1, #2
	strb r0, [r1]
_0808BD02:
	ldr r4, [r6, #0x1c]
	adds r4, #0xc8
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	bl sub_08072858
	ldrb r1, [r0, #0xe]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808BD2C
sub_0808BD2C: @ 0x0808BD2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r1
	ldr r0, _0808BE30 @ =vt_09F85B28
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_0808BE60
	ldr r1, _0808BE34 @ =0x00000854
	adds r0, r5, r1
	movs r1, #2
	bl sub_08071FBC
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r1, _0808BE38 @ =vt_09F82898
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0806D9A4
	ldr r1, _0808BE3C @ =0x00000764
	adds r0, r5, r1
	ldr r6, _0808BE40 @ =vt_09F7E458
	str r6, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r5, r2
	str r6, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	ldr r1, _0808BE44 @ =0x0000069C
	adds r0, r5, r1
	movs r1, #2
	bl sub_0806D6E0
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r5, r2
	movs r1, #2
	bl sub_08071F14
	ldr r1, _0808BE48 @ =0x00000564
	adds r0, r5, r1
	movs r1, #2
	bl sub_08071DE4
	movs r2, #0x99
	lsls r2, r2, #3
	adds r4, r5, r2
	adds r0, r4, #0
	movs r1, #2
	bl sub_0808B194
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r5, r1
	cmp r0, #0
	beq _0808BDD4
	cmp r0, r4
	beq _0808BDD4
_0808BDB4:
	subs r4, #0xc4
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #2
	bl sub_0808E900
	str r6, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807113C
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r5, r2
	cmp r0, r4
	bne _0808BDB4
_0808BDD4:
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0808B194
	adds r6, r5, #0
	adds r6, #0xcc
	movs r1, #0x60
	adds r1, r1, r5
	mov r8, r1
	adds r7, r5, #0
	adds r7, #0x28
	cmp r6, #0
	beq _0808BE0E
	cmp r6, r4
	beq _0808BE0E
_0808BDF8:
	subs r4, #0x5c
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _0808BDF8
_0808BE0E:
	mov r0, r8
	movs r1, #2
	bl sub_0806D6E0
	cmp r7, #0
	beq _0808BE4C
	adds r4, r5, #0
	adds r4, #0x4c
_0808BE1E:
	cmp r7, r4
	beq _0808BE4C
	subs r4, #0xc
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0808BE1E
	bl __builtin_vec_delete
	b _0808BE1E
	.align 2, 0
_0808BE30: .4byte vt_09F85B28
_0808BE34: .4byte 0x00000854
_0808BE38: .4byte vt_09F82898
_0808BE3C: .4byte 0x00000764
_0808BE40: .4byte vt_09F7E458
_0808BE44: .4byte 0x0000069C
_0808BE48: .4byte 0x00000564
_0808BE4C:
	adds r0, r5, #0
	mov r1, sb
	bl _._4Base
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808BE60
sub_0808BE60: @ 0x0808BE60
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #2
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808BEB2
	bl sub_08072858
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r5, #0
	adds r6, #0x4d
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r0, #2
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	bl sub_0808CB18
	strh r0, [r4, #2]
	bl sub_08072858
	movs r1, #0
	ldrsb r1, [r6, r1]
	strh r1, [r0, #4]
	b _0808BEFE
_0808BEB2:
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #4
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808BEFE
	bl sub_08072858
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r5, #0
	adds r6, #0x4d
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r0, #2
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	bl sub_0808CB18
	strh r0, [r4, #6]
	bl sub_08072858
	movs r1, #0
	ldrsb r1, [r6, r1]
	strh r1, [r0, #8]
_0808BEFE:
	bl sub_08072858
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	strb r0, [r4, #0xe]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0808BF1C
sub_0808BF1C: @ 0x0808BF1C
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0808BF32
	adds r2, r0, #0
	adds r2, #0x5c
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _0808BF3C
_0808BF32:
	adds r2, r0, #0
	adds r2, #0x5c
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_0808BF3C:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808BF44
sub_0808BF44: @ 0x0808BF44
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_0808BF48
sub_0808BF48: @ 0x0808BF48
	adds r0, #0x5c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_0808BF54
sub_0808BF54: @ 0x0808BF54
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_0808C578
_0808BF60:
	ldr r0, [r4, #0x58]
	subs r0, #1
	cmp r0, #5
	bhi _0808BF60
	lsls r0, r0, #2
	ldr r1, _0808BF74 @ =_0808BF78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808BF74: .4byte _0808BF78
_0808BF78: @ jump table
	.4byte _0808BF90 @ case 0
	.4byte _0808BF96 @ case 1
	.4byte _0808BFA0 @ case 2
	.4byte _0808BFB2 @ case 3
	.4byte _0808BFB6 @ case 4
	.4byte _0808BFD4 @ case 5
_0808BF90:
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	b _0808BFA4
_0808BF96:
	ldr r1, [r4, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r0, [r1, r3]
	b _0808BFA8
_0808BFA0:
	ldr r1, [r4, #0x1c]
	adds r1, #0xc0
_0808BFA4:
	movs r2, #0
	ldrsh r0, [r1, r2]
_0808BFA8:
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0808BF60
_0808BFB2:
	movs r0, #0
	b _0808BFF0
_0808BFB6:
	ldr r2, [r4, #0x50]
	cmp r2, #0
	beq _0808BFCC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808BFCC:
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #1
	b _0808BFF0
_0808BFD4:
	ldr r2, [r4, #0x50]
	cmp r2, #0
	beq _0808BFEA
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808BFEA:
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #2
_0808BFF0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808BFF8
sub_0808BFF8: @ 0x0808BFF8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808C7CC
	b _0808C018
_0808C002:
	movs r0, #1
	bl sub_0807068C
	movs r0, #1
	movs r1, #0
	bl sub_08073018
	bl sub_08072B70
	bl sub_08072D0C
_0808C018:
	ldr r0, [r4, #0x58]
	cmp r0, #1
	beq _0808C002
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808C024
sub_0808C024: @ 0x0808C024
	push {lr}
	adds r1, r0, #0
	adds r1, #0x4c
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r0, #1
	cmp r0, #0
	bge _0808C038
	movs r0, #0
	b _0808C040
_0808C038:
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r0, #1
_0808C040:
	pop {r1}
	bx r1

	thumb_func_start sub_0808C044
sub_0808C044: @ 0x0808C044
	push {lr}
	adds r1, r0, #0
	adds r1, #0x4c
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #1
	cmp r0, #2
	ble _0808C058
	movs r0, #0
	b _0808C060
_0808C058:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #1
_0808C060:
	pop {r1}
	bx r1

	thumb_func_start sub_0808C064
sub_0808C064: @ 0x0808C064
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r4, #0
	bl sub_0808CB18
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808C08A
	movs r0, #0
	b _0808C096
_0808C08A:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_0808C578
	movs r0, #1
_0808C096:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0808C09C
sub_0808C09C: @ 0x0808C09C
	push {lr}
	movs r1, #5
	movs r2, #0
	bl sub_0808C578
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808C0AC
sub_0808C0AC: @ 0x0808C0AC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808C7CC
	b _0808C0CC
_0808C0B6:
	movs r0, #1
	bl sub_0807068C
	movs r0, #1
	movs r1, #0
	bl sub_08073018
	bl sub_08072B70
	bl sub_08072D0C
_0808C0CC:
	ldr r0, [r4, #0x58]
	cmp r0, #2
	beq _0808C0B6
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808C0D8
sub_0808C0D8: @ 0x0808C0D8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x4c
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r6, r4, #0
	adds r6, #0x4d
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r5, r4, #0
	adds r5, #0x4e
	movs r3, #0
	ldrsb r3, [r5, r3]
	subs r3, #1
	bl sub_0808CB18
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808C108
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	b _0808C12C
_0808C108:
	movs r1, #0
	ldrsb r1, [r7, r1]
	movs r2, #0
	ldrsb r2, [r6, r2]
	subs r2, #1
	movs r3, #0
	ldrsb r3, [r5, r3]
	adds r0, r4, #0
	bl sub_0808CB18
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808C126
	movs r0, #0
	b _0808C12E
_0808C126:
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
_0808C12C:
	movs r0, #1
_0808C12E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0808C134
sub_0808C134: @ 0x0808C134
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x4c
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r6, r4, #0
	adds r6, #0x4d
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r5, r4, #0
	adds r5, #0x4e
	movs r3, #0
	ldrsb r3, [r5, r3]
	adds r3, #1
	bl sub_0808CB18
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808C164
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _0808C188
_0808C164:
	movs r1, #0
	ldrsb r1, [r7, r1]
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r2, #1
	movs r3, #0
	ldrsb r3, [r5, r3]
	adds r0, r4, #0
	bl sub_0808CB18
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808C182
	movs r0, #0
	b _0808C18A
_0808C182:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_0808C188:
	movs r0, #1
_0808C18A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0808C190
sub_0808C190: @ 0x0808C190
	push {r4, r5, lr}
	ldr r2, [r0, #0x1c]
	adds r5, r2, #0
	adds r5, #0xc8
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r0, r4
	adds r2, #0xd8
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

	thumb_func_start sub_0808C1CC
sub_0808C1CC: @ 0x0808C1CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x4c
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xd8
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	adds r5, r6, #0
	adds r5, #0x4c
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r0, #0x4d
	adds r0, r0, r6
	mov r8, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r7, r6, #0
	adds r7, #0x4e
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0808CB18
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08082B78
	mov r0, sp
	bl sub_08083074
	movs r4, #0
	cmp sb, r0
	blt _0808C24C
	movs r4, #1
_0808C24C:
	mov r0, sp
	movs r1, #2
	bl  sub_08082BA8
	cmp r4, #0
	bne _0808C266
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl sub_0808C578
	movs r0, #0
	b _0808C2A6
_0808C266:
	movs r1, #0
	ldrsb r1, [r5, r1]
	mov r3, r8
	movs r2, #0
	ldrsb r2, [r3, r2]
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0808CB18
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08064950
	str r0, [r6, #0x50]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	bl sub_0808C578
	movs r0, #1
_0808C2A6:
	add sp, #0x4c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0808C2B4
sub_0808C2B4: @ 0x0808C2B4
	push {lr}
	movs r1, #1
	movs r2, #0
	bl sub_0808C578
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808C2C4
sub_0808C2C4: @ 0x0808C2C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x180
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r0, [r7, #0x50]
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
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_080766F8
	mov r0, sp
	bl sub_08076B30
	cmp r0, #1
	beq _0808C362
	cmp r0, #1
	bgt _0808C324
	cmp r0, #0
	beq _0808C32A
	b _0808C392
_0808C324:
	cmp r0, #2
	beq _0808C388
	b _0808C392
_0808C32A:
	movs r6, #0
	b _0808C352
_0808C32E:
	ldr r5, [r7, #0x50]
	ldr r4, [r5, #0x1c]
	movs r3, #0xb4
	lsls r3, r3, #1
	adds r4, r4, r3
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r0, sp
	adds r1, r6, #0
	bl attackdata_118__10AttackDataUi
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r6, #1
_0808C352:
	mov r0, sp
	bl attackdata_110__10AttackData
	cmp r6, r0
	blt _0808C32E
	adds r0, r7, #0
	movs r1, #4
	b _0808C380
_0808C362:
	ldr r2, [r7, #0x50]
	cmp r2, #0
	beq _0808C378
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808C378:
	movs r0, #0
	str r0, [r7, #0x50]
	adds r0, r7, #0
	movs r1, #2
_0808C380:
	movs r2, #0
	bl sub_0808C578
	b _0808C392
_0808C388:
	adds r0, r7, #0
	movs r1, #6
	movs r2, #0
	bl sub_0808C578
_0808C392:
	ldr r1, [r7, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sp
	movs r1, #2
	bl sub_08076A68
	add sp, #0x180
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808C3B4
sub_0808C3B4: @ 0x0808C3B4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x54
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0808C476
	adds r0, #0xc
	movs r1, #0
	bl sub_0806D7DC
	movs r4, #0
_0808C3D0:
	movs r0, #0x5c
	muls r0, r4, r0
	adds r1, r0, r6
	adds r1, #0xcc
	ldr r2, [r1, #0x1c]
	adds r2, #0x78
	adds r0, #0xcc
	adds r0, r6, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
	cmp r4, #2
	ble _0808C3D0
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806DB38
	movs r5, #0
_0808C402:
	movs r0, #0xc4
	adds r4, r5, #0
	muls r4, r0, r4
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r4, r4, r3
	adds r4, r6, r4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806E948
	adds r4, #0x5c
	adds r0, r4, #0
	movs r1, #0
	bl sub_0808E930
	adds r5, #1
	cmp r5, #2
	ble _0808C402
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806DB38
	ldr r3, _0808C47C @ =0x00000564
	adds r0, r6, r3
	movs r1, #0
	bl sub_0806DB38
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806DB38
	ldr r3, _0808C480 @ =0x0000069C
	adds r0, r6, r3
	movs r1, #0
	bl sub_0806D7DC
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806E948
	ldr r3, _0808C484 @ =0x00000764
	adds r0, r6, r3
	movs r1, #0
	bl sub_0806E948
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806DB38
_0808C476:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808C47C: .4byte 0x00000564
_0808C480: .4byte 0x0000069C
_0808C484: .4byte 0x00000764

	thumb_func_start sub_0808C488
sub_0808C488: @ 0x0808C488
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x54
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808C554
	adds r0, r6, #0
	adds r0, #0x60
	movs r1, #1
	bl sub_0806D7DC
	movs r4, #0
_0808C4A8:
	movs r0, #0x5c
	muls r0, r4, r0
	adds r1, r0, r6
	adds r1, #0xcc
	ldr r2, [r1, #0x1c]
	adds r2, #0x78
	adds r0, #0xcc
	adds r0, r6, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #1
	bl _call_via_r2
	adds r4, #1
	cmp r4, #2
	ble _0808C4A8
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806DB38
	movs r5, #0
_0808C4DA:
	movs r0, #0xc4
	adds r4, r5, #0
	muls r4, r0, r4
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r4, r4, r3
	adds r4, r6, r4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806E948
	adds r4, #0x5c
	adds r0, r4, #0
	movs r1, #1
	bl sub_0808E930
	adds r5, #1
	cmp r5, #2
	ble _0808C4DA
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806DB38
	ldr r3, _0808C55C @ =0x00000564
	adds r0, r6, r3
	movs r1, #1
	bl sub_0806DB38
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806DB38
	ldr r3, _0808C560 @ =0x0000069C
	adds r0, r6, r3
	movs r1, #1
	bl sub_0806D7DC
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806E948
	ldr r3, _0808C564 @ =0x00000764
	adds r0, r6, r3
	movs r1, #1
	bl sub_0806E948
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806DB38
	adds r0, r6, #0
	bl sub_0808C7CC
_0808C554:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808C55C: .4byte 0x00000564
_0808C560: .4byte 0x0000069C
_0808C564: .4byte 0x00000764

	thumb_func_start sub_0808C568
sub_0808C568: @ 0x0808C568
	push {lr}
	movs r1, #6
	movs r2, #0
	bl sub_0808C578
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808C578
sub_0808C578: @ 0x0808C578
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x58]
	cmp r0, r1
	bne _0808C58A
	cmp r2, #1
	bne _0808C590
_0808C58A:
	str r1, [r3, #0x58]
	movs r0, #1
	b _0808C592
_0808C590:
	movs r0, #0
_0808C592:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808C598
sub_0808C598: @ 0x0808C598
	ldr r0, [r0, #0x50]
	bx lr

	thumb_func_start sub_0808C59C
sub_0808C59C: @ 0x0808C59C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x54
	ldrb r5, [r0]
	cmp r5, #0
	bne _0808C612
	ldr r1, [r4, #0x58]
	cmp r1, #6
	beq _0808C612
	subs r0, r1, #1
	cmp r0, #1
	bhi _0808C612
	cmp r1, #1
	beq _0808C5BE
	cmp r1, #2
	beq _0808C5EE
	b _0808C612
_0808C5BE:
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
	bne _0808C612
	adds r0, r4, #0
	adds r0, #0x4d
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd0
	bl sub_08070824
	b _0808C612
_0808C5EE:
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
	bne _0808C612
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd0
	bl sub_08070824
_0808C612:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0808C618
sub_0808C618: @ 0x0808C618
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x54
	ldrb r5, [r0]
	cmp r5, #0
	bne _0808C68E
	ldr r1, [r4, #0x58]
	cmp r1, #6
	beq _0808C68E
	subs r0, r1, #1
	cmp r0, #1
	bhi _0808C68E
	cmp r1, #1
	beq _0808C63A
	cmp r1, #2
	beq _0808C66A
	b _0808C68E
_0808C63A:
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
	bne _0808C68E
	adds r0, r4, #0
	adds r0, #0x4d
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd0
	bl sub_08070824
	b _0808C68E
_0808C66A:
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
	bne _0808C68E
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd0
	bl sub_08070824
_0808C68E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0808C694
sub_0808C694: @ 0x0808C694
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808C6D0
	ldr r0, [r4, #0x58]
	cmp r0, #6
	beq _0808C6D0
	subs r0, #1
	cmp r0, #1
	bhi _0808C6D0
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
	bne _0808C6D0
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xda
	bl sub_08070824
_0808C6D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808C6D8
sub_0808C6D8: @ 0x0808C6D8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808C752
	ldr r1, [r4, #0x58]
	cmp r1, #6
	beq _0808C752
	subs r0, r1, #1
	cmp r0, #1
	bhi _0808C752
	cmp r1, #1
	beq _0808C6FA
	cmp r1, #2
	beq _0808C720
	b _0808C752
_0808C6FA:
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
	beq _0808C738
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd3
	bl sub_08070824
	b _0808C752
_0808C720:
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
	bne _0808C746
_0808C738:
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd2
	bl sub_08070824
	b _0808C752
_0808C746:
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd3
	bl sub_08070824
_0808C752:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808C758
sub_0808C758: @ 0x0808C758
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808C7C4
	ldr r1, [r4, #0x58]
	cmp r1, #6
	beq _0808C7C4
	subs r0, r1, #1
	cmp r0, #1
	bhi _0808C7C4
	cmp r1, #1
	beq _0808C77A
	cmp r1, #2
	beq _0808C7A0
	b _0808C7C4
_0808C77A:
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
	bne _0808C7C4
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd3
	bl sub_08070824
	b _0808C7C4
_0808C7A0:
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808C7C4
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd3
	bl sub_08070824
_0808C7C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808C7CC
sub_0808C7CC: @ 0x0808C7CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	adds r5, r0, #0
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r6, r5, r0
	movs r1, #0
	ldr r0, [r5, #0x58]
	cmp r0, #1
	bne _0808C7EA
	movs r1, #1
_0808C7EA:
	adds r0, r6, #0
	bl sub_0806DB38
	adds r4, r5, #0
	adds r4, #0x4c
	movs r2, #0
	ldrsb r2, [r4, r2]
	add r1, sp, #0x58
	movs r3, #3
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	subs r0, #3
	strh r3, [r1]
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_0808B1A8
	movs r1, #0
	mov sl, r1
	str r4, [sp, #0x68]
	adds r2, r5, #0
	adds r2, #0x4d
	str r2, [sp, #0x6c]
	adds r3, r5, #0
	adds r3, #0x4e
	str r3, [sp, #0x70]
	mov r0, sp
	adds r0, #0x64
	str r0, [sp, #0x74]
	add r1, sp, #0x5c
	mov sb, r1
	add r2, sp, #0x60
	mov r8, r2
_0808C82E:
	ldr r3, [sp, #0x68]
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x6c]
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	mov r3, sl
	bl sub_0808CB18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0808C916
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08082B78
	movs r0, #0xc4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r7, r5, r0
	add r4, sp, #0x4c
	adds r0, r4, #0
	mov r1, sp
	bl sub_08082DEC
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08071150
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r6, r7, #0
	adds r6, #0x5c
	adds r0, r6, #0
	movs r1, #1
	bl sub_0808E930
	mov r0, sp
	bl sub_08083074
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_0808E958
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0xd8
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	mov r0, sp
	bl sub_08083074
	cmp r4, r0
	blt _0808C8F2
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r0, r7, #0
	bl sub_0806E9C4
	adds r0, r6, #0
	movs r1, #0
	bl sub_0808EA7C
	b _0808C90C
_0808C8F2:
	movs r0, #0xa0
	mov r2, r8
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	adds r0, r7, #0
	mov r1, r8
	bl sub_0806E9C4
	adds r0, r6, #0
	movs r1, #1
	bl sub_0808EA7C
_0808C90C:
	mov r0, sp
	movs r1, #2
	bl  sub_08082BA8
	b _0808C944
_0808C916:
	movs r0, #0xc4
	mov r4, sl
	muls r4, r0, r4
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r4, r4, r3
	adds r4, r5, r4
	mov r0, sp
	bl sub_0806E274
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	adds r4, #0x5c
	adds r0, r4, #0
	movs r1, #0
	bl sub_0808E930
_0808C944:
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #2
	bgt _0808C950
	b _0808C82E
_0808C950:
	movs r2, #0x99
	lsls r2, r2, #3
	adds r4, r5, r2
	movs r1, #0
	ldr r0, [r5, #0x58]
	cmp r0, #2
	bne _0808C960
	movs r1, #1
_0808C960:
	adds r0, r4, #0
	bl sub_0806DB38
	ldr r3, [sp, #0x70]
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r2, #0x49
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, #3
	add r1, sp, #0x64
	strh r2, [r1]
	ldr r1, [sp, #0x74]
	strh r0, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x74]
	bl sub_0808B1A8
	ldr r2, _0808CAB0 @ =0x00000564
	adds r4, r5, r2
	ldr r3, [sp, #0x68]
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x6c]
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r2, #1
	adds r0, r5, #0
	movs r3, #0
	bl sub_0808CB18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	bl sub_0806DB38
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r4, r5, r1
	ldr r2, [sp, #0x68]
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldr r3, [sp, #0x6c]
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r2, #3
	adds r0, r5, #0
	movs r3, #0
	bl sub_0808CB18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	bl sub_0806DB38
	ldr r0, _0808CAB4 @ =0x0000069C
	adds r4, r5, r0
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806D7DC
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r6, r5, r3
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_0806E948
	ldr r3, _0808CAB8 @ =0x00000764
	adds r7, r5, r3
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_0806E948
	ldr r0, [r5, #0x58]
	cmp r0, #2
	bne _0808CABC
	ldr r3, [sp, #0x68]
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x6c]
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, [sp, #0x70]
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	bl sub_0808CB18
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08082B78
	add r4, sp, #0x4c
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0
	bl sub_0807A1F4
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08071150
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_0807A1F4
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08071150
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	mov r0, sp
	movs r1, #2
	bl  sub_08082BA8
	b _0808CAE8
	.align 2, 0
_0808CAB0: .4byte 0x00000564
_0808CAB4: .4byte 0x0000069C
_0808CAB8: .4byte 0x00000764
_0808CABC:
	mov r0, sp
	bl sub_0806E274
	adds r0, r6, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	mov r0, sp
	bl sub_0806E274
	adds r0, r7, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_0808CAE8:
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r4, r5, r3
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806DB38
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808CB18
sub_0808CB18: @ 0x0808CB18
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r1, #2
	bhi _0808CB3C
	cmp r2, #0
	blt _0808CB3C
	cmp r3, #0
	blt _0808CB3C
	cmp r3, #2
	bgt _0808CB3C
	adds r6, r2, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r5, r0, #2
	adds r0, r5, r4
	ldr r0, [r0, #0x2c]
	cmp r6, r0
	blt _0808CB40
_0808CB3C:
	movs r0, #0
	b _0808CB70
_0808CB40:
	ldr r1, [r4, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0xfc
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r1, r5, r4
	ldr r1, [r1, #0x30]
	adds r1, r1, r6
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0808CB70:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808CB78
sub_0808CB78: @ 0x0808CB78
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808CB90
sub_0808CB90: @ 0x0808CB90
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r1, #0x20]
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _0808CBBA
	ldr r1, [r5, #0x1c]
	adds r1, #0xf8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_0808CBBA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0808CBC0
sub_0808CBC0: @ 0x0808CBC0
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xf0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808CBD8
sub_0808CBD8: @ 0x0808CBD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x110
	mov sb, r0
	str r1, [sp, #0x90]
	bl __4Base
	ldr r0, _0808CFC4 @ =vt_09F85C30
	mov r1, sb
	str r0, [r1, #0x1c]
	mov r4, sb
	adds r4, #0x3c
	adds r0, r4, #0
	bl sub_0806D64C
	mov r0, sb
	adds r0, #0xa8
	movs r1, #2
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0xa4]
	adds r2, #0x40
	str r2, [sp, #0xcc]
	subs r2, #0x34
	str r2, [sp, #0xac]
	adds r2, #0x38
	str r2, [sp, #0xd0]
	add r2, sp, #0x28
	mov sl, r2
	mov r2, sp
	adds r2, #0x34
	str r2, [sp, #0xb0]
	adds r2, #0xc
	str r2, [sp, #0xbc]
	adds r2, #0x18
	str r2, [sp, #0xd4]
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
	str r4, [sp, #0xc8]
	subs r4, #0x14
	str r4, [sp, #0xb4]
	mov r2, sb
	adds r2, #0x29
	str r2, [sp, #0xb8]
	adds r4, #8
	str r4, [sp, #0xc0]
	adds r2, #0xf
	str r2, [sp, #0xc4]
	movs r3, #1
	rsbs r3, r3, #0
	add r7, sp, #0x4c
_0808CC74:
	adds r4, r0, #0
	movs r5, #1
	movs r0, #0xb8
	adds r0, r0, r4
	mov r8, r0
	subs r1, #1
	str r1, [sp, #0xa8]
	movs r6, #0xa
_0808CC84:
	ldr r1, _0808CFC8 @ =_vt.1D
	str r1, [sp, #0xc]
	ldr r2, _0808CFCC @ =gUnknown_08CE39F8
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r0, sp, #0x4c
	strh r6, [r0]
	strh r6, [r7, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r7, #0
	str r3, [sp, #0x10c]
	bl sub_08071108
	ldr r0, _0808CFC8 @ =_vt.1D
	str r0, [sp, #0xc]
	ldr r1, _0808CFD0 @ =vt_09F7E458
	str r1, [r4, #0x1c]
	adds r4, #0x5c
	subs r5, #1
	ldr r3, [sp, #0x10c]
	cmp r5, r3
	bne _0808CC84
	mov r0, r8
	ldr r1, [sp, #0xa8]
	cmp r1, r3
	bne _0808CC74
	movs r0, #0xb4
	lsls r0, r0, #2
	add r0, sb
	bl sub_0808B0D8
	movs r0, #0xdb
	lsls r0, r0, #2
	add r0, sb
	bl sub_0806D64C
	movs r0, #0xf6
	lsls r0, r0, #2
	add r0, sb
	bl sub_08086750
	movs r6, #0x81
	lsls r6, r6, #3
	add r6, sb
	ldr r5, _0808CFC8 @ =_vt.1D
	str r5, [sp, #0x18]
	ldr r2, _0808CFCC @ =gUnknown_08CE39F8
	str r2, [sp, #0x10]
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, [sp, #0xa4]
	str r4, [r0, #4]
	movs r4, #0xa
	movs r1, #0
	mov r8, r1
	movs r7, #0
	add r0, sp, #0x50
	strh r4, [r0]
	ldr r2, [sp, #0xcc]
	strh r4, [r2, #2]
	adds r0, r6, #0
	ldr r1, [sp, #0xa4]
	ldr r2, [sp, #0xcc]
	bl sub_08071108
	str r5, [sp, #0x18]
	ldr r0, _0808CFD0 @ =vt_09F7E458
	str r0, [r6, #0x1c]
	ldr r6, _0808CFD4 @ =0x00000464
	add r6, sb
	str r5, [sp, #0x24]
	ldr r1, _0808CFCC @ =gUnknown_08CE39F8
	str r1, [sp, #0x1c]
	movs r2, #1
	rsbs r2, r2, #0
	ldr r0, [sp, #0xac]
	str r2, [r0, #4]
	add r0, sp, #0x54
	strh r4, [r0]
	ldr r1, [sp, #0xd0]
	strh r4, [r1, #2]
	adds r0, r6, #0
	ldr r1, [sp, #0xac]
	ldr r2, [sp, #0xd0]
	bl sub_08071108
	str r5, [sp, #0x24]
	ldr r2, _0808CFD0 @ =vt_09F7E458
	str r2, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #3
	add r0, sb
	bl sub_0808B218
	ldr r0, _0808CFD8 @ =0x00000554
	add r0, sb
	bl sub_08071F8C
	ldr r4, [sp, #0x90]
	mov r0, sb
	str r4, [r0, #0x24]
	mov r2, r8
	ldr r1, [sp, #0xb4]
	strb r2, [r1]
	ldr r4, [sp, #0xb8]
	strb r2, [r4]
	str r7, [r0, #0x2c]
	ldr r0, [sp, #0xc0]
	strb r2, [r0]
	mov r1, sb
	str r7, [r1, #0x34]
	movs r0, #1
	ldr r2, [sp, #0xc4]
	strb r0, [r2]
	ldr r1, _0808CFDC @ =0x0000028A
	mov r0, sl
	bl sub_080706A0
	ldr r0, [sp, #0xb0]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r4, #0x9f
	lsls r4, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0xbc]
	bl sub_080706A0
	ldr r0, [sp, #0xbc]
	str r0, [sp]
	ldr r0, [sp, #0xc8]
	movs r1, #1
	mov r2, sl
	ldr r3, [sp, #0xb0]
	bl sub_0806D744
	str r5, [sp, #0x48]
	str r5, [sp, #0x3c]
	str r5, [sp, #0x30]
	add r0, sp, #0x58
	strh r7, [r0]
	ldr r1, [sp, #0xd4]
	strh r7, [r1, #2]
	ldr r0, [sp, #0xc8]
	ldr r1, [sp, #0xd4]
	bl sub_0806D814
	movs r1, #0xf0
	movs r2, #0x30
	add r0, sp, #0x5c
	strh r1, [r0]
	ldr r4, [sp, #0xd8]
	strh r2, [r4, #2]
	ldr r0, [sp, #0xc8]
	ldr r1, [sp, #0xd8]
	bl sub_0806D828
	add r0, sp, #0x60
	strh r7, [r0]
	ldr r0, [sp, #0xdc]
	strh r7, [r0, #2]
	ldr r0, [sp, #0xc8]
	ldr r1, [sp, #0xdc]
	bl sub_0806D83C
	movs r2, #0
	ldr r7, [sp, #0xe0]
	ldr r1, [sp, #0xe4]
	str r1, [sp, #0x98]
	movs r3, #0
_0808CDE4:
	movs r6, #0
	lsls r1, r2, #1
	adds r4, r2, #1
	str r4, [sp, #0xa0]
	movs r4, #0xb8
	adds r0, r2, #0
	muls r0, r4, r0
	mov r8, r0
	adds r0, #0xa8
	add r0, sb
	str r0, [sp, #0x94]
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #6
	str r1, [sp, #0x9c]
_0808CE02:
	movs r0, #0x5c
	adds r5, r6, #0
	muls r5, r0, r5
	mov r4, r8
	add r4, sb
	adds r4, r5, r4
	adds r4, #0xa8
	ldr r2, [r4, #0x1c]
	adds r2, #0x90
	ldr r0, [sp, #0x94]
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
	str r3, [sp, #0x10c]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	adds r2, #0x88
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r5, r5, r0
	movs r0, #0x6c
	muls r0, r6, r0
	adds r0, #0x14
	add r1, sp, #0x68
	strh r0, [r1]
	add r0, sp, #0x9c
	ldrh r1, [r0]
	ldr r0, [sp, #0x98]
	strh r1, [r0, #2]
	ldr r2, [r2, #4]
	adds r0, r5, #0
	ldr r1, [sp, #0x98]
	bl _call_via_r2
	adds r6, #1
	ldr r3, [sp, #0x10c]
	cmp r6, #1
	ble _0808CE02
	ldr r2, [sp, #0xa0]
	cmp r2, #2
	ble _0808CDE4
	ldr r1, _0808CFDC @ =0x0000028A
	mov r0, sl
	bl sub_080706A0
	ldr r0, [sp, #0xb0]
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0xbc]
	bl sub_080706A0
	movs r4, #0xdb
	lsls r4, r4, #2
	add r4, sb
	ldr r0, [sp, #0xbc]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #1
	mov r2, sl
	ldr r3, [sp, #0xb0]
	bl sub_0806D744
	ldr r0, _0808CFC8 @ =_vt.1D
	str r0, [sp, #0x48]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x30]
	movs r6, #0x80
	movs r5, #0
	add r0, sp, #0x6c
	strh r5, [r0]
	ldr r1, [sp, #0xe8]
	strh r6, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xe8]
	bl sub_0806D814
	movs r1, #0xf0
	movs r2, #0x20
	add r0, sp, #0x70
	strh r1, [r0]
	ldr r0, [sp, #0xec]
	strh r2, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xec]
	bl sub_0806D828
	add r0, sp, #0x74
	strh r5, [r0]
	ldr r1, [sp, #0xf0]
	strh r6, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xf0]
	bl sub_0806D83C
	movs r0, #0xf6
	lsls r0, r0, #2
	add r0, sb
	movs r2, #0xa
	movs r3, #0x85
	add r1, sp, #0x78
	strh r2, [r1]
	ldr r2, [sp, #0xf4]
	strh r3, [r2, #2]
	ldr r1, [sp, #0xf4]
	bl sub_080867FC
	movs r4, #0x81
	lsls r4, r4, #3
	add r4, sb
	add r0, sp, #0x7c
	strb r5, [r0]
	ldr r0, [sp, #0xf8]
	strb r5, [r0, #1]
	strb r5, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xf8]
	bl sub_0806E9C4
	movs r6, #0x24
	movs r1, #0x86
	add r0, sp, #0x80
	strh r6, [r0]
	ldr r2, [sp, #0xfc]
	strh r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0xfc]
	bl sub_08071194
	ldr r4, _0808CFD4 @ =0x00000464
	add r4, sb
	add r0, sp, #0x84
	strb r5, [r0]
	ldr r0, [sp, #0x100]
	strb r5, [r0, #1]
	strb r5, [r0, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x100]
	bl sub_0806E9C4
	movs r1, #0x92
	add r0, sp, #0x88
	strh r6, [r0]
	ldr r2, [sp, #0x104]
	strh r1, [r2, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x104]
	bl sub_08071194
	movs r0, #0x98
	lsls r0, r0, #3
	add r0, sb
	movs r2, #0xc9
	movs r3, #0x7a
	add r1, sp, #0x8c
	strh r2, [r1]
	ldr r4, [sp, #0x108]
	strh r3, [r4, #2]
	ldr r1, [sp, #0x108]
	bl sub_0806DB74
	mov r0, sb
	bl sub_0808D280
	mov r0, sl
	bl __4Base
	ldr r6, _0808CFE0 @ =_vt.3Unk
	ldr r0, _0808CFE4 @ =_vt.10UpKeyPress
	str r0, [sp, #0x44]
	ldr r7, _0808CFD8 @ =0x00000554
	add r7, sb
	ldr r0, _0808CFE8 @ =gUnknown_08118A24
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808CFEC @ =_vt.14UpKeyLongPress
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	b _0808CFF0
	.align 2, 0
_0808CFC4: .4byte vt_09F85C30
_0808CFC8: .4byte _vt.1D
_0808CFCC: .4byte gUnknown_08CE39F8
_0808CFD0: .4byte vt_09F7E458
_0808CFD4: .4byte 0x00000464
_0808CFD8: .4byte 0x00000554
_0808CFDC: .4byte 0x0000028A
_0808CFE0: .4byte _vt.3Unk
_0808CFE4: .4byte _vt.10UpKeyPress
_0808CFE8: .4byte gUnknown_08118A24
_0808CFEC: .4byte _vt.14UpKeyLongPress
_0808CFF0:
	ldr r0, _0808D224 @ =_vt.12DownKeyPress
	str r0, [sp, #0x44]
	ldr r0, _0808D228 @ =gUnknown_08118A2C
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D22C @ =_vt.16DownKeyLongPress
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D230 @ =_vt.12LeftKeyPress
	str r0, [sp, #0x44]
	ldr r0, _0808D234 @ =gUnknown_08118A34
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D238 @ =_vt.13RightKeyPress
	str r0, [sp, #0x44]
	ldr r0, _0808D23C @ =gUnknown_08118A3C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D240 @ =_vt.14SelectKeyPress
	str r0, [sp, #0x44]
	ldr r0, _0808D244 @ =gUnknown_08118A44
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D248 @ =_vt.9AKeyPress
	str r0, [sp, #0x44]
	ldr r0, _0808D24C @ =gUnknown_08118A4C
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D250 @ =_vt.13AKeyLongPress
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D254 @ =_vt.9LKeyPress
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D258 @ =_vt.13LKeyLongPress
	str r0, [sp, #0x44]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sl
	bl __4Base
	ldr r0, _0808D25C @ =_vt.9BKeyPress
	str r0, [sp, #0x44]
	ldr r0, _0808D260 @ =gUnknown_08118A54
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sb
	adds r1, r7, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r5, r0, #0
	mov r0, sl
	bl __4Base
	ldr r0, _0808D264 @ =vt_09F819D0
	str r0, [sp, #0x44]
	ldr r0, _0808D268 @ =gUnknown_08118A5C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sb
	adds r1, r5, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov r8, r0
	mov r0, sl
	bl __4Base
	movs r0, #0
	str r0, [sp, #0x48]
	ldr r0, _0808D26C @ =vt_09F817D0
	str r0, [sp, #0x44]
	ldr r0, _0808D270 @ =gUnknown_08118A64
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sb
	mov r1, r8
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov r8, r0
	mov r0, sl
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x48]
	ldr r0, _0808D274 @ =vt_09F81750
	str r0, [sp, #0x44]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, sb
	mov r1, r8
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r5, r0, #0
	mov r0, sl
	bl __4Base
	ldr r0, _0808D278 @ =vt_09F81950
	str r0, [sp, #0x44]
	ldr r0, _0808D27C @ =gUnknown_08118A6C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, sb
	adds r1, r5, #0
	mov r2, sl
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x44]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sb
	add sp, #0x110
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808D224: .4byte _vt.12DownKeyPress
_0808D228: .4byte gUnknown_08118A2C
_0808D22C: .4byte _vt.16DownKeyLongPress
_0808D230: .4byte _vt.12LeftKeyPress
_0808D234: .4byte gUnknown_08118A34
_0808D238: .4byte _vt.13RightKeyPress
_0808D23C: .4byte gUnknown_08118A3C
_0808D240: .4byte _vt.14SelectKeyPress
_0808D244: .4byte gUnknown_08118A44
_0808D248: .4byte _vt.9AKeyPress
_0808D24C: .4byte gUnknown_08118A4C
_0808D250: .4byte _vt.13AKeyLongPress
_0808D254: .4byte _vt.9LKeyPress
_0808D258: .4byte _vt.13LKeyLongPress
_0808D25C: .4byte _vt.9BKeyPress
_0808D260: .4byte gUnknown_08118A54
_0808D264: .4byte vt_09F819D0
_0808D268: .4byte gUnknown_08118A5C
_0808D26C: .4byte vt_09F817D0
_0808D270: .4byte gUnknown_08118A64
_0808D274: .4byte vt_09F81750
_0808D278: .4byte vt_09F81950
_0808D27C: .4byte gUnknown_08118A6C

	thumb_func_start sub_0808D280
sub_0808D280: @ 0x0808D280
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #1
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D2AE
	bl sub_08072858
	ldrh r7, [r0]
	b _0808D2FC
_0808D2AE:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #3
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D2D4
	bl sub_08072858
	ldrh r7, [r0, #0xa]
	b _0808D2FC
_0808D2D4:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #6
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D2FA
	bl sub_08072858
	ldrh r7, [r0, #0xc]
	b _0808D2FC
_0808D2FA:
	movs r7, #0
_0808D2FC:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xfe
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bge _0808D386
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807066C
	adds r5, r6, #0
	adds r5, #0x28
	movs r1, #0
	mov r8, r1
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807067C
	adds r4, r6, #0
	adds r4, #0x29
	strb r0, [r4]
	ldrb r1, [r5]
	ldrb r2, [r4]
	adds r0, r6, #0
	bl sub_0808DF14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq _0808D392
	mov r2, r8
	strb r2, [r5]
	strb r2, [r4]
	b _0808D392
_0808D386:
	adds r0, r6, #0
	adds r0, #0x28
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_0808D392:
	ldr r4, [r6, #0x1c]
	adds r4, #0xb0
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r6, r5
	bl sub_08072858
	ldrb r1, [r0, #0xe]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808D3B4
sub_0808D3B4: @ 0x0808D3B4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _0808D45C @ =vt_09F85C30
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_0808D470
	ldr r1, _0808D460 @ =0x00000554
	adds r0, r5, r1
	movs r1, #2
	bl sub_08071FBC
	movs r2, #0x98
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r1, _0808D464 @ =vt_09F82898
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0806D9A4
	ldr r1, _0808D468 @ =0x00000464
	adds r0, r5, r1
	ldr r4, _0808D46C @ =vt_09F7E458
	str r4, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	movs r2, #0x81
	lsls r2, r2, #3
	adds r0, r5, r2
	str r4, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	movs r1, #0xf6
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #2
	bl sub_080867C0
	movs r2, #0xdb
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #2
	bl sub_0806D6E0
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0808B194
	adds r0, r5, #0
	adds r0, #0xa8
	cmp r0, #0
	beq _0808D444
	cmp r0, r4
	beq _0808D444
	adds r6, r0, #0
_0808D42E:
	subs r4, #0x5c
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _0808D42E
_0808D444:
	adds r0, r5, #0
	adds r0, #0x3c
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D45C: .4byte vt_09F85C30
_0808D460: .4byte 0x00000554
_0808D464: .4byte vt_09F82898
_0808D468: .4byte 0x00000464
_0808D46C: .4byte vt_09F7E458

	thumb_func_start sub_0808D470
sub_0808D470: @ 0x0808D470
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r0, #1
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_0808DF14
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #1
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D4AE
	bl sub_08072858
	strh r4, [r0]
	b _0808D4F8
_0808D4AE:
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #3
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D4D4
	bl sub_08072858
	strh r4, [r0, #0xa]
	b _0808D4F8
_0808D4D4:
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #6
	bl sub_08072964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D4F8
	bl sub_08072858
	strh r6, [r0, #0xc]
_0808D4F8:
	bl sub_08072858
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	strb r0, [r4, #0xe]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808D518
sub_0808D518: @ 0x0808D518
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0808D52E
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _0808D538
_0808D52E:
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_0808D538:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808D540
sub_0808D540: @ 0x0808D540
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_0808D544
sub_0808D544: @ 0x0808D544
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_0808D550
sub_0808D550: @ 0x0808D550
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_0808D9E0
_0808D55C:
	ldr r0, [r4, #0x34]
	subs r0, #1
	cmp r0, #4
	bhi _0808D55C
	lsls r0, r0, #2
	ldr r1, _0808D570 @ =_0808D574
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808D570: .4byte _0808D574
_0808D574: @ jump table
	.4byte _0808D588 @ case 0
	.4byte _0808D592 @ case 1
	.4byte _0808D5A4 @ case 2
	.4byte _0808D5A8 @ case 3
	.4byte _0808D5C6 @ case 4
_0808D588:
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	b _0808D59A
_0808D592:
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
_0808D59A:
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0808D55C
_0808D5A4:
	movs r0, #0
	b _0808D5E2
_0808D5A8:
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _0808D5BE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808D5BE:
	movs r0, #0
	str r0, [r4, #0x2c]
	movs r0, #1
	b _0808D5E2
_0808D5C6:
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _0808D5DC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808D5DC:
	movs r0, #0
	str r0, [r4, #0x2c]
	movs r0, #2
_0808D5E2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0808D5E8
sub_0808D5E8: @ 0x0808D5E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808DBD4
	b _0808D608
_0808D5F2:
	movs r0, #1
	bl sub_0807068C
	movs r0, #1
	movs r1, #0
	bl sub_08073018
	bl sub_08072B70
	bl sub_08072D0C
_0808D608:
	ldr r0, [r4, #0x34]
	cmp r0, #1
	beq _0808D5F2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808D614
sub_0808D614: @ 0x0808D614
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x28
	ldrb r1, [r4]
	subs r1, #1
	adds r2, r0, #0
	adds r2, #0x29
	ldrb r2, [r2]
	bl sub_0808DF14
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808D632
	movs r0, #0
	b _0808D63A
_0808D632:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
_0808D63A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0808D640
sub_0808D640: @ 0x0808D640
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x28
	ldrb r1, [r4]
	adds r1, #1
	adds r2, r0, #0
	adds r2, #0x29
	ldrb r2, [r2]
	bl sub_0808DF14
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808D65E
	movs r0, #0
	b _0808D666
_0808D65E:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r0, #1
_0808D666:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0808D66C
sub_0808D66C: @ 0x0808D66C
	push {r4, lr}
	adds r1, r0, #0
	adds r1, #0x28
	ldrb r1, [r1]
	adds r4, r0, #0
	adds r4, #0x29
	ldrb r2, [r4]
	subs r2, #1
	bl sub_0808DF14
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808D68A
	movs r0, #0
	b _0808D692
_0808D68A:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
_0808D692:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0808D698
sub_0808D698: @ 0x0808D698
	push {r4, lr}
	adds r1, r0, #0
	adds r1, #0x28
	ldrb r1, [r1]
	adds r4, r0, #0
	adds r4, #0x29
	ldrb r2, [r4]
	adds r2, #1
	bl sub_0808DF14
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808D6B6
	movs r0, #0
	b _0808D6BE
_0808D6B6:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r0, #1
_0808D6BE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0808D6C4
sub_0808D6C4: @ 0x0808D6C4
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

	thumb_func_start sub_0808D700
sub_0808D700: @ 0x0808D700
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x28
	ldrb r1, [r6]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r2, [r4]
	bl sub_0808DF14
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808D71E
	movs r0, #0
	b _0808D752
_0808D71E:
	ldrb r1, [r6]
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0808DF14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08061A4C
	str r0, [r5, #0x2c]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl sub_0808D9E0
_0808D752:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0808D758
sub_0808D758: @ 0x0808D758
	push {lr}
	movs r1, #4
	movs r2, #0
	bl sub_0808D9E0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808D768
sub_0808D768: @ 0x0808D768
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
	ldr r0, [r7, #0x2c]
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
	bl sub_080766F8
	mov r0, sp
	bl sub_08076B30
	cmp r0, #1
	beq _0808D806
	cmp r0, #1
	bgt _0808D7C8
	cmp r0, #0
	beq _0808D7CE
	b _0808D836
_0808D7C8:
	cmp r0, #2
	beq _0808D82C
	b _0808D836
_0808D7CE:
	movs r6, #0
	b _0808D7F6
_0808D7D2:
	ldr r5, [r7, #0x2c]
	ldr r4, [r5, #0x1c]
	movs r3, #0xb4
	lsls r3, r3, #1
	adds r4, r4, r3
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r0, sp
	adds r1, r6, #0
	bl attackdata_118__10AttackDataUi
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r6, #1
_0808D7F6:
	mov r0, sp
	bl attackdata_110__10AttackData
	cmp r6, r0
	blt _0808D7D2
	adds r0, r7, #0
	movs r1, #3
	b _0808D824
_0808D806:
	ldr r2, [r7, #0x2c]
	cmp r2, #0
	beq _0808D81C
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808D81C:
	movs r0, #0
	str r0, [r7, #0x2c]
	adds r0, r7, #0
	movs r1, #1
_0808D824:
	movs r2, #0
	bl sub_0808D9E0
	b _0808D836
_0808D82C:
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	bl sub_0808D9E0
_0808D836:
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sp
	movs r1, #2
	bl sub_08076A68
	add sp, #0x180
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808D858
sub_0808D858: @ 0x0808D858
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r0, #0x30
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0808D8FE
	adds r0, #0xc
	movs r1, #0
	bl sub_0806D7DC
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806DB38
	movs r0, #0
	movs r3, #0xb8
	mov sb, r3
_0808D88A:
	movs r4, #0
	adds r1, r0, #1
	mov r8, r1
	mov r5, sb
	muls r5, r0, r5
	adds r0, r5, #0
	adds r0, #0xa8
	adds r7, r6, r0
_0808D89A:
	movs r0, #0x5c
	muls r0, r4, r0
	adds r1, r5, r6
	adds r1, r0, r1
	adds r1, #0xa8
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
	ble _0808D89A
	mov r0, r8
	cmp r0, #2
	ble _0808D88A
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806D7DC
	movs r3, #0xf6
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0
	bl sub_080867D4
	movs r1, #0x81
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806E948
	ldr r3, _0808D90C @ =0x00000464
	adds r0, r6, r3
	movs r1, #0
	bl sub_0806E948
	movs r1, #0x98
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806DB38
_0808D8FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D90C: .4byte 0x00000464

	thumb_func_start sub_0808D910
sub_0808D910: @ 0x0808D910
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x30
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808D9C0
	adds r0, r6, #0
	adds r0, #0x3c
	movs r1, #1
	bl sub_0806D7DC
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806DB38
	movs r0, #0
	movs r3, #0xb8
	mov sb, r3
_0808D946:
	movs r4, #0
	adds r1, r0, #1
	mov r8, r1
	mov r5, sb
	muls r5, r0, r5
	adds r0, r5, #0
	adds r0, #0xa8
	adds r7, r6, r0
_0808D956:
	movs r0, #0x5c
	muls r0, r4, r0
	adds r1, r5, r6
	adds r1, r0, r1
	adds r1, #0xa8
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
	ble _0808D956
	mov r0, r8
	cmp r0, #2
	ble _0808D946
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806D7DC
	movs r3, #0xf6
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #1
	bl sub_080867D4
	movs r1, #0x81
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806E948
	ldr r3, _0808D9CC @ =0x00000464
	adds r0, r6, r3
	movs r1, #1
	bl sub_0806E948
	movs r1, #0x98
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806DB38
	adds r0, r6, #0
	bl sub_0808DBD4
_0808D9C0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D9CC: .4byte 0x00000464

	thumb_func_start sub_0808D9D0
sub_0808D9D0: @ 0x0808D9D0
	push {lr}
	movs r1, #5
	movs r2, #0
	bl sub_0808D9E0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808D9E0
sub_0808D9E0: @ 0x0808D9E0
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x34]
	cmp r0, r1
	bne _0808D9F2
	cmp r2, #1
	bne _0808D9F8
_0808D9F2:
	str r1, [r3, #0x34]
	movs r0, #1
	b _0808D9FA
_0808D9F8:
	movs r0, #0
_0808D9FA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808DA00
sub_0808DA00: @ 0x0808DA00
	ldr r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0808DA04
sub_0808DA04: @ 0x0808DA04
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808DA3E
	ldr r0, [r4, #0x34]
	cmp r0, #5
	beq _0808DA3E
	cmp r0, #1
	bne _0808DA3E
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
	bne _0808DA3E
	adds r0, r4, #0
	bl sub_0808DBD4
	movs r0, #0xd0
	bl sub_08070824
_0808DA3E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808DA44
sub_0808DA44: @ 0x0808DA44
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808DA7E
	ldr r0, [r4, #0x34]
	cmp r0, #5
	beq _0808DA7E
	cmp r0, #1
	bne _0808DA7E
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
	bne _0808DA7E
	adds r0, r4, #0
	bl sub_0808DBD4
	movs r0, #0xd0
	bl sub_08070824
_0808DA7E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808DA84
sub_0808DA84: @ 0x0808DA84
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808DABE
	ldr r0, [r4, #0x34]
	cmp r0, #5
	beq _0808DABE
	cmp r0, #1
	bne _0808DABE
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
	bne _0808DABE
	adds r0, r4, #0
	bl sub_0808DBD4
	movs r0, #0xd1
	bl sub_08070824
_0808DABE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808DAC4
sub_0808DAC4: @ 0x0808DAC4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808DAFE
	ldr r0, [r4, #0x34]
	cmp r0, #5
	beq _0808DAFE
	cmp r0, #1
	bne _0808DAFE
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
	bne _0808DAFE
	adds r0, r4, #0
	bl sub_0808DBD4
	movs r0, #0xd1
	bl sub_08070824
_0808DAFE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808DB04
sub_0808DB04: @ 0x0808DB04
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808DB3E
	ldr r0, [r4, #0x34]
	cmp r0, #5
	beq _0808DB3E
	cmp r0, #1
	bne _0808DB3E
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
	bne _0808DB3E
	adds r0, r4, #0
	bl sub_0808DBD4
	movs r0, #0xda
	bl sub_08070824
_0808DB3E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808DB44
sub_0808DB44: @ 0x0808DB44
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808DB8C
	ldr r0, [r4, #0x34]
	cmp r0, #5
	beq _0808DB8C
	cmp r0, #1
	bne _0808DB8C
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
	bne _0808DB80
	adds r0, r4, #0
	bl sub_0808DBD4
	movs r0, #0xd2
	bl sub_08070824
	b _0808DB8C
_0808DB80:
	adds r0, r4, #0
	bl sub_0808DBD4
	movs r0, #0xd3
	bl sub_08070824
_0808DB8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808DB94
sub_0808DB94: @ 0x0808DB94
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808DBCE
	ldr r0, [r4, #0x34]
	cmp r0, #5
	beq _0808DBCE
	cmp r0, #1
	bne _0808DBCE
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
	bne _0808DBCE
	adds r0, r4, #0
	bl sub_0808DBD4
	movs r0, #0xd3
	bl sub_08070824
_0808DBCE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808DBD4
sub_0808DBD4: @ 0x0808DBD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r7, r0, #0
	movs r0, #0
	mov sl, r0
	mov r1, sp
	adds r1, #0xc
	str r1, [sp, #0x20]
	adds r2, r7, #0
	adds r2, #0x29
	str r2, [sp, #0x2c]
	adds r0, r7, #0
	adds r0, #0x28
	str r0, [sp, #0x28]
_0808DBF8:
	movs r6, #0
	mov r1, sl
	adds r1, #1
	str r1, [sp, #0x24]
	movs r0, #0xb8
	mov r2, sl
	muls r2, r0, r2
	mov r8, r2
	mov r0, r8
	adds r0, #0xa8
	adds r0, r0, r7
	mov sb, r0
_0808DC10:
	adds r0, r7, #0
	mov r1, sl
	adds r2, r6, #0
	bl sub_0808DF14
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0808DC56
	movs r0, #0x5c
	adds r4, r6, #0
	muls r4, r0, r4
	mov r2, r8
	adds r0, r2, r7
	adds r0, r4, r0
	adds r0, #0xa8
	ldr r5, [r0, #0x1c]
	adds r5, #0x80
	add r4, sb
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r4, r4, r0
	mov r0, sp
	bl sub_080803C8
	ldr r2, [r5, #4]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	b _0808DC88
_0808DC56:
	movs r0, #0x5c
	adds r4, r6, #0
	muls r4, r0, r4
	mov r1, r8
	adds r0, r1, r7
	adds r0, r4, r0
	adds r0, #0xa8
	ldr r5, [r0, #0x1c]
	adds r5, #0x80
	add r4, sb
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r4, r4, r0
	mov r0, sp
	bl sub_0806E274
	ldr r2, [r5, #4]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
_0808DC88:
	adds r6, #1
	cmp r6, #1
	ble _0808DC10
	ldr r0, [sp, #0x24]
	mov sl, r0
	cmp r0, #2
	ble _0808DBF8
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [sp, #0x2c]
	ldrb r2, [r1]
	ldr r1, [sp, #0x28]
	ldrb r4, [r1]
	movs r1, #0x6c
	adds r3, r2, #0
	muls r3, r1, r3
	adds r3, #3
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	subs r1, #3
	add r2, sp, #0xc
	strh r3, [r2]
	ldr r2, [sp, #0x20]
	strh r1, [r2, #2]
	ldr r1, [sp, #0x20]
	bl sub_0808B1A8
	movs r0, #0xdb
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806D7DC
	ldr r0, [sp, #0x28]
	ldrb r1, [r0]
	ldr r0, [sp, #0x2c]
	ldrb r2, [r0]
	adds r0, r7, #0
	bl sub_0808DF14
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
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08073F88
	mov r8, r0
	ldr r1, [r0, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808DE18
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080867D4
	mov r0, r8
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080867F8
	movs r0, #0x81
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806E948
	mov r0, r8
	ldr r2, [r0, #0x1c]
	movs r5, #0xec
	lsls r5, r5, #1
	adds r2, r2, r5
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	add r1, r8
	movs r2, #0
	bl _call_via_r3
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add r1, sp, #0x10
	movs r6, #0x24
	movs r0, #0x86
	strh r6, [r1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_08071194
	ldr r1, _0808DE14 @ =0x00000464
	adds r4, r7, r1
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806E948
	mov r0, r8
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	add r1, r8
	movs r2, #1
	bl _call_via_r3
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add r1, sp, #0x14
	movs r0, #0x92
	strh r6, [r1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_08071194
	b _0808DECC
	.align 2, 0
_0808DE14: .4byte 0x00000464
_0808DE18:
	movs r1, #0xf6
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0
	bl sub_080867D4
	movs r2, #0x81
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806E948
	mov r0, r8
	ldr r2, [r0, #0x1c]
	movs r5, #0xec
	lsls r5, r5, #1
	adds r2, r2, r5
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	add r1, r8
	movs r2, #0
	bl _call_via_r3
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add r1, sp, #0x18
	movs r6, #0xc
	movs r0, #0x86
	strh r6, [r1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_08071194
	ldr r1, _0808DF10 @ =0x00000464
	adds r4, r7, r1
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806E948
	mov r0, r8
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	add r1, r8
	movs r2, #1
	bl _call_via_r3
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	add r1, sp, #0x1c
	movs r0, #0x92
	strh r6, [r1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_08071194
_0808DECC:
	movs r1, #0x98
	lsls r1, r1, #3
	adds r4, r7, r1
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806DB38
	mov r0, r8
	cmp r0, #0
	beq _0808DF00
	ldr r1, [r0, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808DF00:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DF10: .4byte 0x00000464

	thumb_func_start sub_0808DF14
sub_0808DF14: @ 0x0808DF14
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #2
	bhi _0808DF50
	cmp r2, #0
	blt _0808DF50
	cmp r2, #1
	bgt _0808DF50
	lsls r0, r1, #1
	adds r5, r0, r2
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _0808DF54
_0808DF50:
	movs r0, #0
	b _0808DF7E
_0808DF54:
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
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
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0808DF7E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0808DF84
sub_0808DF84: @ 0x0808DF84
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

	thumb_func_start sub_0808DF9C
sub_0808DF9C: @ 0x0808DF9C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r1, #0x20]
	ldr r0, [r2, #0x24]
	cmp r1, r0
	bne _0808DFB8
	ldr r1, [r2, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_0808DFB8:
	pop {r0}
	bx r0

	thumb_func_start sub_0808DFBC
sub_0808DFBC: @ 0x0808DFBC
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

	thumb_func_start sub_0808DFD4
sub_0808DFD4: @ 0x0808DFD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov r8, r0
	adds r4, r1, #0
	str r2, [sp, #0x48]
	bl __4Base
	ldr r0, _0808E1C4 @ =vt_09F85D20
	mov r1, r8
	str r0, [r1, #0x1c]
	mov r7, r8
	adds r7, #0x34
	adds r0, r7, #0
	bl sub_0806D64C
	movs r0, #0xa0
	add r0, r8
	mov sl, r0
	ldr r0, _0808E1C8 @ =gUnknown_08CE39F8
	movs r1, #1
	rsbs r1, r1, #0
	ldr r5, _0808E1CC @ =_vt.1D
	str r5, [sp, #0xc]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r2, sp, #0x34
	movs r0, #0xa
	strh r0, [r2]
	strh r0, [r2, #2]
	mov r0, sl
	add r1, sp, #4
	bl sub_08071108
	str r5, [sp, #0xc]
	ldr r0, _0808E1D0 @ =vt_09F7E458
	mov r1, sl
	str r0, [r1, #0x1c]
	mov r0, r8
	adds r0, #0xfc
	str r0, [sp, #0x4c]
	bl sub_08071F8C
	mov r1, r8
	str r4, [r1, #0x24]
	mov r0, r8
	adds r0, #0x28
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	mov r1, r8
	str r0, [r1, #0x2c]
	strh r0, [r1, #0x30]
	ldr r1, _0808E1D4 @ =0x0000028A
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_080706A0
	add r0, sp, #0x1c
	mov sb, r0
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
	adds r0, r7, #0
	movs r1, #1
	adds r2, r6, #0
	mov r3, sb
	bl sub_0806D744
	str r5, [sp, #0x30]
	str r5, [sp, #0x24]
	str r5, [sp, #0x18]
	add r1, sp, #0x38
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl sub_0806D814
	add r1, sp, #0x3c
	movs r0, #0xf0
	movs r2, #0x30
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r7, #0
	bl sub_0806D828
	mov r0, sl
	ldr r1, [sp, #0x48]
	bl sub_08071150
	add r1, sp, #0x40
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sl
	bl sub_0806E9C4
	add r1, sp, #0x44
	movs r0, #0x78
	movs r2, #0x12
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sl
	bl sub_08071194
	mov r0, sl
	movs r1, #1
	bl sub_08071174
	adds r0, r6, #0
	bl __4Base
	ldr r7, _0808E1D8 @ =_vt.3Unk
	ldr r0, _0808E1DC @ =_vt.9BKeyPress
	str r0, [sp, #0x2c]
	ldr r0, _0808E1E0 @ =gUnknown_081190F4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, r8
	ldr r1, [sp, #0x4c]
	adds r2, r6, #0
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r5, r0, #0
	adds r0, r6, #0
	bl __4Base
	ldr r0, _0808E1E4 @ =vt_09F819D0
	str r0, [sp, #0x2c]
	ldr r0, _0808E1E8 @ =gUnknown_081190FC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov sb, r0
	adds r0, r6, #0
	bl __4Base
	movs r1, #0
	str r1, [sp, #0x30]
	ldr r0, _0808E1EC @ =vt_09F817D0
	str r0, [sp, #0x2c]
	ldr r0, _0808E1F0 @ =gUnknown_08119104
	ldr r4, [r0]
	ldr r5, [r0, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	adds r2, r6, #0
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov sb, r0
	adds r0, r6, #0
	bl __4Base
	movs r0, #0
	str r0, [sp, #0x30]
	ldr r0, _0808E1F4 @ =vt_09F81750
	str r0, [sp, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	adds r2, r6, #0
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	adds r5, r0, #0
	adds r0, r6, #0
	bl __4Base
	ldr r0, _0808E1F8 @ =vt_09F81950
	str r0, [sp, #0x2c]
	ldr r0, _0808E1FC @ =gUnknown_0811910C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	bl registerClock__4BasePvRC4BaseG9ClockData
	str r7, [sp, #0x2c]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	mov r0, r8
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808E1C4: .4byte vt_09F85D20
_0808E1C8: .4byte gUnknown_08CE39F8
_0808E1CC: .4byte _vt.1D
_0808E1D0: .4byte vt_09F7E458
_0808E1D4: .4byte 0x0000028A
_0808E1D8: .4byte _vt.3Unk
_0808E1DC: .4byte _vt.9BKeyPress
_0808E1E0: .4byte gUnknown_081190F4
_0808E1E4: .4byte vt_09F819D0
_0808E1E8: .4byte gUnknown_081190FC
_0808E1EC: .4byte vt_09F817D0
_0808E1F0: .4byte gUnknown_08119104
_0808E1F4: .4byte vt_09F81750
_0808E1F8: .4byte vt_09F81950
_0808E1FC: .4byte gUnknown_0811910C

	thumb_func_start sub_0808E200
sub_0808E200: @ 0x0808E200
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0808E23C @ =vt_09F85D20
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0xfc
	movs r1, #2
	bl sub_08071FBC
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r1, _0808E240 @ =vt_09F7E458
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r5, #0
	adds r1, r4, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808E23C: .4byte vt_09F85D20
_0808E240: .4byte vt_09F7E458

	thumb_func_start sub_0808E244
sub_0808E244: @ 0x0808E244
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4, #0x2c]
_0808E24C:
	movs r0, #1
	bl sub_0807068C
	movs r0, #1
	movs r1, #0
	bl sub_08073018
	bl sub_08072B70
	bl sub_08072D0C
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0808E24C
	cmp r0, #1
	beq _0808E270
	movs r0, #2
	b _0808E272
_0808E270:
	movs r0, #1
_0808E272:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0808E278
sub_0808E278: @ 0x0808E278
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0808E29C
	adds r0, #0xc
	movs r1, #0
	bl sub_0806D7DC
	adds r0, r4, #0
	adds r0, #0xa0
	movs r1, #0
	bl sub_0806E948
_0808E29C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808E2A4
sub_0808E2A4: @ 0x0808E2A4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x28
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808E2CC
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #1
	bl sub_0806D7DC
	adds r0, r4, #0
	adds r0, #0xa0
	movs r1, #1
	bl sub_0806E948
_0808E2CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808E2D4
sub_0808E2D4: @ 0x0808E2D4
	movs r1, #2
	str r1, [r0, #0x2c]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808E2DC
sub_0808E2DC: @ 0x0808E2DC
	push {lr}
	adds r1, r0, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808E2FC
	ldr r0, [r1, #0x2c]
	cmp r0, #2
	beq _0808E2FC
	cmp r0, #0
	bne _0808E2FC
	movs r0, #1
	str r0, [r1, #0x2c]
	movs r0, #0xd3
	bl sub_08070824
_0808E2FC:
	pop {r0}
	bx r0

	thumb_func_start sub_0808E300
sub_0808E300: @ 0x0808E300
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

	thumb_func_start sub_0808E318
sub_0808E318: @ 0x0808E318
	push {lr}
	adds r2, r0, #0
	ldr r1, [r1, #0x20]
	ldr r0, [r2, #0x24]
	cmp r1, r0
	bne _0808E334
	ldr r1, [r2, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_0808E334:
	pop {r0}
	bx r0

	thumb_func_start sub_0808E338
sub_0808E338: @ 0x0808E338
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

	thumb_func_start sub_0808E350
sub_0808E350: @ 0x0808E350
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0808E5BC @ =vt_09F85DA8
	str r0, [r7, #0x1c]
	adds r4, r7, #0
	adds r4, #0x2c
	movs r5, #3
	add r0, sp, #0x10
	mov r8, r0
	add r1, sp, #0x1c
	mov sb, r1
	mov r2, sp
	adds r2, #0x28
	str r2, [sp, #0x30]
	movs r6, #1
	rsbs r6, r6, #0
_0808E37E:
	adds r0, r4, #0
	bl sub_0806D8EC
	adds r4, #0x90
	subs r5, #1
	cmp r5, r6
	bne _0808E37E
	movs r4, #0x9b
	lsls r4, r4, #2
	adds r0, r7, r4
	bl sub_08071F8C
	movs r0, #0
	strh r0, [r7, #0x24]
	mov sl, r8
	movs r5, #0x58
	str r5, [sp, #0x34]
	adds r6, r7, #0
	adds r6, #0x2c
	ldr r0, [sp, #0x30]
	mov r8, r0
	movs r1, #3
	str r1, [sp, #0x2c]
_0808E3AC:
	ldr r4, [r6, #0x1c]
	adds r4, #0x68
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	add r0, sp, #4
	ldr r1, _0808E5C0 @ =0x000003A5
	bl sub_080706A0
	mov r0, sl
	movs r1, #7
	bl sub_080706A0
	mov r0, sb
	ldr r1, _0808E5C4 @ =0x00000287
	bl sub_080706A0
	ldr r4, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	mov r2, sl
	mov r3, sb
	bl _call_via_r4
	ldr r4, _0808E5C8 @ =_vt.1D
	str r4, [sp, #0x24]
	str r4, [sp, #0x18]
	str r4, [sp, #0xc]
	ldr r2, [r6, #0x1c]
	adds r2, #0x88
	movs r5, #0
	ldrsh r0, [r2, r5]
	adds r0, r6, r0
	movs r3, #0x90
	add r1, sp, #0x28
	mov r4, sp
	ldrh r4, [r4, #0x34]
	strh r4, [r1]
	mov r5, r8
	strh r3, [r5, #2]
	ldr r2, [r2, #4]
	mov r1, r8
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r4, [sp, #0x34]
	adds r4, #0x10
	str r4, [sp, #0x34]
	adds r6, #0x90
	ldr r5, [sp, #0x2c]
	subs r5, #1
	str r5, [sp, #0x2c]
	cmp r5, #0
	bge _0808E3AC
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5CC @ =_vt.3Unk
	mov sb, r0
	ldr r0, _0808E5D0 @ =_vt.10UpKeyPress
	str r0, [sp, #0x20]
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
	ldr r0, _0808E5D4 @ =gUnknown_0811953C
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5D8 @ =_vt.12DownKeyPress
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5DC @ =_vt.12LeftKeyPress
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5E0 @ =_vt.13RightKeyPress
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5E4 @ =_vt.9AKeyPress
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5E8 @ =_vt.9BKeyPress
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5EC @ =_vt.9LKeyPress
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5F0 @ =_vt.9RKeyPress
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5F4 @ =_vt.13StartKeyPress
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5F8 @ =_vt.14SelectKeyPress
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl sub_0808E73C
	adds r0, r7, #0
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808E5BC: .4byte vt_09F85DA8
_0808E5C0: .4byte 0x000003A5
_0808E5C4: .4byte 0x00000287
_0808E5C8: .4byte _vt.1D
_0808E5CC: .4byte _vt.3Unk
_0808E5D0: .4byte _vt.10UpKeyPress
_0808E5D4: .4byte gUnknown_0811953C
_0808E5D8: .4byte _vt.12DownKeyPress
_0808E5DC: .4byte _vt.12LeftKeyPress
_0808E5E0: .4byte _vt.13RightKeyPress
_0808E5E4: .4byte _vt.9AKeyPress
_0808E5E8: .4byte _vt.9BKeyPress
_0808E5EC: .4byte _vt.9LKeyPress
_0808E5F0: .4byte _vt.9RKeyPress
_0808E5F4: .4byte _vt.13StartKeyPress
_0808E5F8: .4byte _vt.14SelectKeyPress

	thumb_func_start sub_0808E5FC
sub_0808E5FC: @ 0x0808E5FC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _0808E648 @ =vt_09F85DA8
	str r0, [r5, #0x1c]
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_08071FBC
	adds r0, r5, #0
	adds r0, #0x2c
	cmp r0, #0
	beq _0808E638
	cmp r0, r4
	beq _0808E638
	adds r6, r0, #0
_0808E622:
	subs r4, #0x90
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _0808E622
_0808E638:
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E648: .4byte vt_09F85DA8

	thumb_func_start sub_0808E64C
sub_0808E64C: @ 0x0808E64C
	push {r4, lr}
	adds r4, r0, #0
	b _0808E658
_0808E652:
	movs r0, #1
	bl sub_0807068C
_0808E658:
	ldrh r0, [r4, #0x24]
	cmp r0, #3
	bls _0808E652
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808E664
sub_0808E664: @ 0x0808E664
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0806CA48
	cmp r4, r0
	bne _0808E68C
	adds r0, r6, #0
	movs r1, #0x75
	bl sub_0808E708
	b _0808E6FA
_0808E68C:
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0806CA70
	cmp r4, r0
	bne _0808E6AE
	adds r0, r6, #0
	movs r1, #0x64
	bl sub_0808E708
	b _0808E6FA
_0808E6AE:
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0806CA98
	cmp r4, r0
	bne _0808E6D0
	adds r0, r6, #0
	movs r1, #0x6c
	bl sub_0808E708
	b _0808E6FA
_0808E6D0:
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0806CAC0
	cmp r4, r0
	bne _0808E6F2
	adds r0, r6, #0
	movs r1, #0x72
	bl sub_0808E708
	b _0808E6FA
_0808E6F2:
	adds r0, r6, #0
	movs r1, #0x6d
	bl sub_0808E708
_0808E6FA:
	adds r0, r6, #0
	bl sub_0808E73C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808E708
sub_0808E708: @ 0x0808E708
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r0, [r3, #0x24]
	cmp r0, #3
	bhi _0808E738
	ldr r0, _0808E730 @ =gUnknown_08119544
	ldrh r2, [r3, #0x24]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r1, r0
	bne _0808E734
	adds r0, r2, #1
	strh r0, [r3, #0x24]
	adds r0, r3, #0
	adds r0, #0x26
	adds r0, r0, r2
	strb r1, [r0]
	b _0808E738
	.align 2, 0
_0808E730: .4byte gUnknown_08119544
_0808E734:
	movs r0, #0
	strh r0, [r3, #0x24]
_0808E738:
	pop {r0}
	bx r0

	thumb_func_start sub_0808E73C
sub_0808E73C: @ 0x0808E73C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	ldrh r0, [r7, #0x24]
	cmp r5, r0
	bge _0808E772
	movs r6, #0x88
	lsls r6, r6, #0xf
	adds r4, r7, #0
	adds r4, #0x2c
_0808E750:
	ldr r2, [r4, #0x1c]
	adds r2, #0x80
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	lsrs r1, r6, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r6, r6, r0
	adds r4, #0x90
	adds r5, #1
	ldrh r1, [r7, #0x24]
	cmp r5, r1
	blt _0808E750
_0808E772:
	ldrh r5, [r7, #0x24]
	cmp r5, #3
	bgt _0808E7AA
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xf
	adds r6, r0, r1
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, #0x2c
	adds r4, r0, r7
_0808E78A:
	ldr r2, [r4, #0x1c]
	adds r2, #0x80
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	lsrs r1, r6, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r6, r6, r0
	adds r4, #0x90
	adds r5, #1
	cmp r5, #3
	ble _0808E78A
_0808E7AA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808E7B0
sub_0808E7B0: @ 0x0808E7B0
	ldr r1, _0808E7B8 @ =gUnknown_02001A44
	ldr r0, _0808E7BC @ =vt_09F85E70
	str r0, [r1]
	bx lr
	.align 2, 0
_0808E7B8: .4byte gUnknown_02001A44
_0808E7BC: .4byte vt_09F85E70

	thumb_func_start sub_0808E7C0
sub_0808E7C0: @ 0x0808E7C0
	push {lr}
	ldr r2, _0808E7E0 @ =gUnknown_02001A48
	ldr r0, [r2]
	cmp r0, #0
	bne _0808E7DA
	ldr r1, _0808E7E4 @ =gUnknown_02001A44
	ldr r0, _0808E7E8 @ =vt_09F85E18
	str r0, [r1]
	movs r0, #1
	str r0, [r2]
	ldr r0, _0808E7EC @ =sub_0808E7B0
	bl sub_08093698
_0808E7DA:
	ldr r0, _0808E7E4 @ =gUnknown_02001A44
	pop {r1}
	bx r1
	.align 2, 0
_0808E7E0: .4byte gUnknown_02001A48
_0808E7E4: .4byte gUnknown_02001A44
_0808E7E8: .4byte vt_09F85E18
_0808E7EC: .4byte sub_0808E7B0

	thumb_func_start sub_0808E7F0
sub_0808E7F0: @ 0x0808E7F0
	bx lr
	.align 2, 0

	thumb_func_start sub_0808E7F4
sub_0808E7F4: @ 0x0808E7F4
	bx lr
	.align 2, 0

	thumb_func_start sub_0808E7F8
sub_0808E7F8: @ 0x0808E7F8
	bx lr
	.align 2, 0

	thumb_func_start sub_0808E7FC
sub_0808E7FC: @ 0x0808E7FC
	bx lr
	.align 2, 0

	thumb_func_start sub_0808E800
sub_0808E800: @ 0x0808E800
	movs r0, #0
	bx lr

	thumb_func_start sub_0808E804
sub_0808E804: @ 0x0808E804
	bx lr
	.align 2, 0

	thumb_func_start sub_0808E808
sub_0808E808: @ 0x0808E808
	movs r0, #0
	bx lr

	thumb_func_start sub_0808E80C
sub_0808E80C: @ 0x0808E80C
	bx lr
	.align 2, 0

	thumb_func_start sub_0808E810
sub_0808E810: @ 0x0808E810
	bx lr
	.align 2, 0

	thumb_func_start sub_0808E814
sub_0808E814: @ 0x0808E814
	push {lr}
	adds r2, r0, #0
	ldr r0, _0808E830 @ =vt_09F85E70
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808E82A
	adds r0, r2, #0
	bl __builtin_delete
_0808E82A:
	pop {r0}
	bx r0
	.align 2, 0
_0808E830: .4byte vt_09F85E70

	thumb_func_start sub_0808E834
sub_0808E834: @ 0x0808E834
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0808E8E8 @ =vt_09F85EC8
	str r0, [r7, #0x1c]
	movs r5, #0
	movs r4, #0
	strh r4, [r7, #0x38]
	strh r4, [r7, #0x3a]
	adds r6, r7, #0
	adds r6, #0x48
	adds r0, r6, #0
	bl sub_0806D548
	movs r0, #0x5c
	adds r0, r0, r7
	mov r8, r0
	bl sub_0806D478
	str r4, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x28
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	strh r4, [r7, #0x32]
	str r4, [r7, #0x34]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	adds r1, r7, #0
	adds r1, #0x44
	movs r0, #1
	strb r0, [r1]
	add r0, sp, #4
	movs r1, #0
	bl sub_080706A0
	adds r0, r6, #0
	add r1, sp, #4
	bl sub_0806D5AC
	ldr r4, _0808E8EC @ =_vt.1D
	str r4, [sp, #0xc]
	ldr r1, _0808E8F0 @ =0x0000027B
	add r0, sp, #4
	bl sub_080706A0
	mov r0, r8
	add r1, sp, #4
	bl sub_0806D4D0
	str r4, [sp, #0xc]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #0x10
	bl __4Base
	ldr r0, _0808E8F4 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0808E8F8 @ =_vt.8AppClock
	str r0, [sp, #0x2c]
	add r5, sp, #0x10
	ldr r0, _0808E8FC @ =gUnknown_08119964
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl registerClock__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x2c]
	adds r0, r5, #0
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
_0808E8E8: .4byte vt_09F85EC8
_0808E8EC: .4byte _vt.1D
_0808E8F0: .4byte 0x0000027B
_0808E8F4: .4byte _vt.3Unk
_0808E8F8: .4byte _vt.8AppClock
_0808E8FC: .4byte gUnknown_08119964

	thumb_func_start sub_0808E900
sub_0808E900: @ 0x0808E900
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0808E92C @ =vt_09F85EC8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #2
	bl sub_0806D580
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808E92C: .4byte vt_09F85EC8

	thumb_func_start sub_0808E930
sub_0808E930: @ 0x0808E930
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0808E946
	adds r2, r0, #0
	adds r2, #0x44
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _0808E950
_0808E946:
	adds r2, r0, #0
	adds r2, #0x44
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_0808E950:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808E958
sub_0808E958: @ 0x0808E958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, r1, #0
	ldr r2, _0808E9BC @ =0x05F5E0FF
	movs r1, #0
	cmp r0, #0
	blt _0808E976
	adds r1, r0, #0
	cmp r1, r2
	ble _0808E976
	adds r1, r2, #0
_0808E976:
	str r1, [r7, #0x24]
	ldr r0, _0808E9C0 @ =0x000003E7
	cmp r1, r0
	bgt _0808E9C8
	adds r4, r7, #0
	adds r4, #0x2a
	movs r3, #7
	mov sl, r4
	lsls r0, r1, #1
	movs r2, #0x28
	adds r2, r2, r7
	mov r8, r2
	movs r2, #0x29
	adds r2, r2, r7
	mov sb, r2
	ldr r2, _0808E9C4 @ =gUnknown_080F0C80
	subs r1, #5
	adds r0, r0, r1
	adds r0, r0, r2
	adds r2, r0, #7
_0808E99E:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	subs r2, #1
	subs r3, #1
	cmp r3, #5
	bge _0808E99E
	movs r1, #4
	movs r2, #0
_0808E9B0:
	adds r0, r4, r1
	strb r2, [r0]
	subs r1, #1
	cmp r1, #0
	bge _0808E9B0
	b _0808E9FA
	.align 2, 0
_0808E9BC: .4byte 0x05F5E0FF
_0808E9C0: .4byte 0x000003E7
_0808E9C4: .4byte gUnknown_080F0C80
_0808E9C8:
	adds r4, r1, #0
	adds r6, r7, #0
	adds r6, #0x2a
	movs r5, #7
	mov sl, r6
	movs r0, #0x28
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0x29
	adds r1, r1, r7
	mov sb, r1
_0808E9DE:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08090F80
	adds r1, r6, r5
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08090F7C
	adds r4, r0, #0
	subs r5, #1
	cmp r5, #0
	bge _0808E9DE
_0808E9FA:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _0808EA20
	mov r3, sl
_0808EA0A:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r2]
	adds r0, r1, #1
	cmp r0, #7
	bgt _0808EA20
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808EA0A
_0808EA20:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #8
	subs r0, r0, r1
	movs r1, #0
	mov r2, sb
	strb r0, [r2]
	strh r1, [r7, #0x32]
	mov r0, r8
	ldrb r4, [r0]
	ldrb r0, [r2]
	adds r0, r4, r0
	cmp r4, r0
	bge _0808EA5E
_0808EA3C:
	mov r1, sl
	adds r0, r1, r4
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_0808EC28
	ldrh r1, [r7, #0x32]
	adds r1, r1, r0
	strh r1, [r7, #0x32]
	adds r4, #1
	mov r2, r8
	ldrb r0, [r2]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r0, r1
	cmp r4, r0
	blt _0808EA3C
_0808EA5E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808EA6C
sub_0808EA6C: @ 0x0808EA6C
	str r1, [r0, #0x34]
	bx lr

	thumb_func_start sub_0808EA70
sub_0808EA70: @ 0x0808EA70
	ldr r1, [r1]
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808EA78
sub_0808EA78: @ 0x0808EA78
	str r1, [r0, #0x3c]
	bx lr

	thumb_func_start sub_0808EA7C
sub_0808EA7C: @ 0x0808EA7C
	str r1, [r0, #0x40]
	bx lr

	thumb_func_start sub_0808EA80
sub_0808EA80: @ 0x0808EA80
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_0808EA8C
sub_0808EA8C: @ 0x0808EA8C
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_0808EA90
sub_0808EA90: @ 0x0808EA90
	adds r0, #0x29
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808EA98
sub_0808EA98: @ 0x0808EA98
	ldrh r0, [r0, #0x32]
	bx lr

	thumb_func_start sub_0808EA9C
sub_0808EA9C: @ 0x0808EA9C
	ldr r0, [r0, #0x34]
	bx lr

	thumb_func_start sub_0808EAA0
sub_0808EAA0: @ 0x0808EAA0
	ldr r1, [r1, #0x38]
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808EAA8
sub_0808EAA8: @ 0x0808EAA8
	ldr r0, [r0, #0x3c]
	bx lr

	thumb_func_start sub_0808EAAC
sub_0808EAAC: @ 0x0808EAAC
	ldr r0, [r0, #0x40]
	bx lr

	thumb_func_start sub_0808EAB0
sub_0808EAB0: @ 0x0808EAB0
	push {lr}
	adds r2, r0, #0
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808EAC6
	adds r0, r2, #0
	bl sub_0808EACC
_0808EAC6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808EACC
sub_0808EACC: @ 0x0808EACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r2, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #2]
	bl sub_0806BE14
	adds r4, r0, #0
	ldr r5, [r6, #0x3c]
	movs r0, #0x29
	adds r0, r0, r6
	mov sb, r0
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806C010
	adds r4, r0, #0
	add r0, sp, #4
	adds r1, r6, #0
	bl sub_0808EBA8
	ldr r0, [sp, #4]
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0808EC34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	bl sub_0808ECA4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r7, #0
	mov r1, sb
	ldrb r1, [r1]
	cmp r7, r1
	bge _0808EB92
	mov r5, sp
_0808EB38:
	movs r2, #0
	ldrsh r1, [r5, r2]
	lsls r1, r1, #0x10
	ldr r0, _0808EBA4 @ =0x01FF0000
	ands r1, r0
	str r1, [r4]
	ldrh r2, [r5, #2]
	movs r0, #0xff
	ands r0, r2
	orrs r1, r0
	str r1, [r4]
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #1
	lsls r0, r0, #0xa
	mov r1, r8
	orrs r0, r1
	mov r2, sl
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r1, r1, r7
	adds r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	bl sub_0808EC28
	ldrh r1, [r5]
	adds r1, r1, r0
	strh r1, [r5]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r4, #8
	adds r7, #1
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r7, r0
	blt _0808EB38
_0808EB92:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808EBA4: .4byte 0x01FF0000

	thumb_func_start sub_0808EBA8
sub_0808EBA8: @ 0x0808EBA8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, [r5, #0x1c]
	adds r2, #0xc0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r6, sp
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _0808EBEE
	cmp r0, #1
	bgt _0808EBE2
	cmp r0, #0
	beq _0808EBE8
	b _0808EC16
_0808EBE2:
	cmp r0, #2
	beq _0808EC02
	b _0808EC16
_0808EBE8:
	ldr r0, [sp]
	str r0, [r4]
	b _0808EC1C
_0808EBEE:
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrh r0, [r5, #0x32]
	lsrs r0, r0, #1
	subs r1, r1, r0
	movs r2, #2
	ldrsh r0, [r6, r2]
	strh r1, [r4]
	b _0808EC1A
_0808EC02:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r1, [r5, #0x32]
	subs r0, r0, r1
	movs r2, #2
	ldrsh r1, [r6, r2]
	strh r0, [r4]
	strh r1, [r4, #2]
	b _0808EC1C
_0808EC16:
	movs r0, #0
	strh r0, [r4]
_0808EC1A:
	strh r0, [r4, #2]
_0808EC1C:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0808EC28
sub_0808EC28: @ 0x0808EC28
	ldr r0, _0808EC30 @ =gUnknown_0811996C
	adds r1, r1, r0
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_0808EC30: .4byte gUnknown_0811996C

	thumb_func_start sub_0808EC34
sub_0808EC34: @ 0x0808EC34
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0806BE14
	adds r7, r0, #0
	adds r0, r5, #0
	adds r0, #0x48
	bl sub_0806D648
	ldr r2, _0808ECA0 @ =gUnknown_08119976
	ldr r1, [r5, #0x40]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	adds r6, r0, r1
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r4, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r0, r4, r0
	cmp r4, r0
	bge _0808EC8E
_0808EC66:
	adds r0, r5, #0
	adds r0, #0x2a
	adds r0, r0, r4
	ldrb r2, [r0]
	lsls r2, r2, #5
	adds r2, r6, r2
	adds r0, r7, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r2, r0, #0
	adds r4, #1
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r1, r1, r0
	cmp r4, r1
	blt _0808EC66
_0808EC8E:
	adds r0, r2, #1
	adds r1, r5, #0
	adds r1, #0x29
	ldrb r1, [r1]
	subs r0, r0, r1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808ECA0: .4byte gUnknown_08119976

	thumb_func_start sub_0808ECA4
sub_0808ECA4: @ 0x0808ECA4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0806C7AC
	adds r6, r0, #0
	adds r4, #0x5c
	adds r0, r4, #0
	bl sub_0806D53C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806C9A0
	adds r4, r0, #0
	ldr r0, _0808ECE8 @ =0x0000FFFF
	cmp r4, r0
	bne _0808ECE0
	bl sub_0806BE14
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806C174
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806C898
_0808ECE0:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808ECE8: .4byte 0x0000FFFF

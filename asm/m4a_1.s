.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0808ECEC
sub_0808ECEC: @ 0x0808ECEC
	add r2, pc, #0x0 @ =sub_0808ECF0
	bx r2

	arm_func_start sub_0808ECF0
sub_0808ECF0: @ 0x0808ECF0
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start sub_0808ECFC
sub_0808ECFC: @ 0x0808ECFC
	ldr r0, _0808ED68 @ =gUnknown_03007FF0
	ldr r0, [r0]
	ldr r2, _0808ED6C @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _0808ED0A
	bx lr
_0808ED0A:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _0808ED2E
	ldr r2, _0808ED74 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _0808ED2C
	adds r2, #0xe4
_0808ED2C:
	adds r1, r1, r2
_0808ED2E:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _0808ED3E
	ldr r0, [r0, #0x24]
	bl sub_0808F11E
	ldr r0, [sp, #0x18]
_0808ED3E:
	ldr r3, [r0, #0x28]
	bl sub_0808F11E
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _0808ED78 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _0808ED5E
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_0808ED5E:
	str r5, [sp, #8]
	ldr r6, _0808ED7C @ =0x00000630
	ldr r3, _0808ED70 @ =gUnknown_03000001
	bx r3
	.align 2, 0
_0808ED68: .4byte gUnknown_03007FF0
_0808ED6C: .4byte 0x68736D53
_0808ED70: .4byte gUnknown_03000001
_0808ED74: .4byte 0x04000006
_0808ED78: .4byte 0x00000350
_0808ED7C: .4byte 0x00000630

	thumb_func_start sub_0808ED80
sub_0808ED80: @ 0x0808ED80
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_0808EDE0
	add r1, pc, #0x4 @ =sub_0808ED8C
	bx r1
	.align 2, 0

	arm_func_start sub_0808ED8C
sub_0808ED8C: @ 0x0808ED8C
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_0808ED9C:
	ldrsb r0, [r5, r6]
	ldrsb r1, [r5]
	add r0, r0, r1
	ldrsb r1, [r7, r6]
	add r0, r0, r1
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #9
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5, r6]
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _0808ED9C
	add r0, pc, #0x2F @ =sub_0808EE0E
	bx r0

	thumb_func_start sub_0808EDE0
sub_0808EDE0: @ 0x0808EDE0
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _0808EDEE
	stm r5!, {r0}
	stm r6!, {r0}
_0808EDEE:
	lsrs r1, r1, #1
	blo _0808EDFA
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_0808EDFA:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _0808EDFA

	non_word_aligned_thumb_func_start sub_0808EE0E
sub_0808EE0E: @ 0x0808EE0E
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_0808EE18:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0808EE38
	ldr r1, _0808EE34 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _0808EE2C
	adds r1, #0xe4
_0808EE2C:
	cmp r1, r0
	blo _0808EE38
	b _0808F10A
	.align 2, 0
_0808EE34: .4byte 0x04000006
_0808EE38:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _0808EE42
	b sub_0808F100
_0808EE42:
	movs r0, #0x80
	tst r0, r6
	beq _0808EE72
	movs r0, #0x40
	tst r0, r6
	bne _0808EE82
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _0808EECA
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _0808EECA
_0808EE72:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _0808EE88
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _0808EED8
_0808EE82:
	movs r0, #0
	strb r0, [r4]
	b sub_0808F100
_0808EE88:
	movs r0, #0x40
	tst r0, r6
	beq _0808EEA8
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _0808EED8
_0808EE9A:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _0808EE82
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _0808EED8
_0808EEA8:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _0808EEC6
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _0808EED8
	adds r5, r0, #0
	beq _0808EE9A
	subs r6, #1
	strb r6, [r4]
	b _0808EED8
_0808EEC6:
	cmp r2, #3
	bne _0808EED8
_0808EECA:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _0808EED8
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_0808EED8:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xb]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _0808EF0C
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_0808EF0C:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_0808EF18
	bx r0
	.align 2, 0

	arm_func_start sub_0808EF18
sub_0808EF18: @ 0x0808EF18
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _0808F058
_0808EF38:
	cmp r2, #4
	ble _0808EFA8
	subs r2, r2, r8
	movgt lr, #0
	bgt _0808EF64
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_0808EF64:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_0808EF6C:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _0808EF6C
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0808EF64
	adds r8, r8, lr
	beq _0808F0EC
_0808EFA8:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_0808EFB0:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _0808F020
_0808EFD4:
	adds r5, r5, #0x40000000
	blo _0808EFB0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0808EF38
	b _0808F0EC
_0808EFF0:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0808F014
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_0808F004:
	adds r2, r0, r2
	bgt _0808F0BC
	sub sb, sb, r0
	b _0808F004
_0808F014:
	pop {r4, ip}
	mov r2, #0
	b _0808F030
_0808F020:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _0808EFD4
_0808F030:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _0808F0F4
_0808F058:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_0808F074:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_0808F07C:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	mul ip, fp, sb
	bic ip, ip, #0xff0000
	add r7, ip, r7, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _0808F0C8
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _0808EFF0
	subs sb, sb, #1
	addeq r0, r0, r1
_0808F0BC:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_0808F0C8:
	adds r5, r5, #0x40000000
	blo _0808F07C
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0808F074
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_0808F0EC:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_0808F0F4:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_0808F100
	bx r0

	thumb_func_start sub_0808F100
sub_0808F100: @ 0x0808F100
	ldr r0, [sp, #4]
	subs r0, #1
	ble _0808F10A
	adds r4, #0x40
	b _0808EE18
_0808F10A:
	ldr r0, [sp, #0x18]
	ldr r3, _0808F120 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_0808F11E
sub_0808F11E: @ 0x0808F11E
	bx r3
	.align 2, 0
_0808F120: .4byte 0x68736D53

	thumb_func_start sub_0808F124
sub_0808F124: @ 0x0808F124
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start sub_0808F13C
sub_0808F13C: @ 0x0808F13C
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _0808F15A
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _0808F14E
	str r1, [r2, #0x34]
	b _0808F150
_0808F14E:
	str r1, [r3, #0x20]
_0808F150:
	cmp r1, #0
	beq _0808F156
	str r2, [r1, #0x30]
_0808F156:
	movs r1, #0
	str r1, [r0, #0x2c]
_0808F15A:
	bx lr
_0808F15C:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0808F18A
_0808F166:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0808F174
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_0808F174:
	adds r0, r4, #0
	bl sub_0808F13C
	ldr r1, [r4, #0x34]
	cmp r1, r4
	bne _0808F184
	movs r1, #0
	str r1, [r4, #0x34]
_0808F184:
	adds r4, r1, #0
	cmp r4, #0
	bne _0808F166
_0808F18A:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0808F194
sub_0808F194: @ 0x0808F194
	mov ip, lr
	movs r1, #0x24
	ldr r2, _0808F1C4 @ =gUnknown_0811997C
_0808F19A:
	ldr r3, [r2]
	bl _0808F1AE
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _0808F19A
	bx ip
	.align 2, 0

	thumb_func_start sub_0808F1AC
sub_0808F1AC: @ 0x0808F1AC
	ldrb r3, [r2]
_0808F1AE:
	push {r0}
	lsrs r0, r2, #0x19
	bne _0808F1C0
	ldr r0, _0808F1C4 @ =gUnknown_0811997C
	cmp r2, r0
	blo _0808F1BE
	lsrs r0, r2, #0xe
	beq _0808F1C0
_0808F1BE:
	movs r3, #0
_0808F1C0:
	pop {r0}
	bx lr
	.align 2, 0
_0808F1C4: .4byte gUnknown_0811997C

	thumb_func_start sub_0808F1C8
sub_0808F1C8: @ 0x0808F1C8
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_0808F1CA
sub_0808F1CA: @ 0x0808F1CA
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _0808F1AE
	.align 2, 0
_0808F1D4:
	push {lr}
_0808F1D6:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_0808F1AC
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start sub_0808F1F4
sub_0808F1F4: @ 0x0808F1F4
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _0808F20C
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _0808F1D4
_0808F20C:
	b _0808F15C
	.align 2, 0

	thumb_func_start sub_0808F210
sub_0808F210: @ 0x0808F210
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _0808F222
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_0808F222:
	bx lr

	thumb_func_start sub_0808F224
sub_0808F224: @ 0x0808F224
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _0808F234
	adds r2, #1
	str r2, [r1, #0x40]
	b _0808F1D6
_0808F234:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_0808F1C8
	cmp ip, r3
	bhs _0808F246
	b _0808F1D6
_0808F246:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808F254
sub_0808F254: @ 0x0808F254
	mov ip, lr
	bl sub_0808F1C8
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start sub_0808F260
sub_0808F260: @ 0x0808F260
	mov ip, lr
	bl sub_0808F1C8
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start sub_0808F274
sub_0808F274: @ 0x0808F274
	mov ip, lr
	bl sub_0808F1C8
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_0808F288
sub_0808F288: @ 0x0808F288
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _0808F1AE
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _0808F1AE
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _0808F1AE
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start sub_0808F2B8
sub_0808F2B8: @ 0x0808F2B8
	mov ip, lr
	bl sub_0808F1C8
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_0808F2CC
sub_0808F2CC: @ 0x0808F2CC
	mov ip, lr
	bl sub_0808F1C8
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_0808F2E0
sub_0808F2E0: @ 0x0808F2E0
	mov ip, lr
	bl sub_0808F1C8
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_0808F2F4
sub_0808F2F4: @ 0x0808F2F4
	mov ip, lr
	bl sub_0808F1C8
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_0808F308
sub_0808F308: @ 0x0808F308
	mov ip, lr
	bl sub_0808F1C8
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start sub_0808F314
sub_0808F314: @ 0x0808F314
	mov ip, lr
	bl sub_0808F1C8
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _0808F32A
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_0808F32A:
	bx ip

	thumb_func_start sub_0808F32C
sub_0808F32C: @ 0x0808F32C
	mov ip, lr
	bl sub_0808F1C8
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_0808F340
sub_0808F340: @ 0x0808F340
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _0808F354 @ =0x04000060
	adds r0, r0, r3
	bl sub_0808F1CA
	strb r3, [r0]
	bx ip
	.align 2, 0
_0808F354: .4byte 0x04000060

	thumb_func_start sub_0808F358
sub_0808F358: @ 0x0808F358
	ldr r2, _0808F5D0 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _0808F362
	bx lr
_0808F362:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _0808F374
	ldr r0, [r0, #0x3c]
	bl sub_0808F5C4
_0808F374:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0808F38C
	b _0808F5B4
_0808F38C:
	ldr r0, _0808F5CC @ =gUnknown_03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl sub_08090320
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0808F3A0
	b _0808F5B4
_0808F3A0:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _0808F4FA
_0808F3A8:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_0808F3B0:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _0808F3BA
	b _0808F4D6
_0808F3BA:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0808F3F8
_0808F3C6:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0808F3E2
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0808F3E8
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _0808F3E8
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _0808F3E8
_0808F3E2:
	adds r0, r4, #0
	bl sub_0808FD98
_0808F3E8:
	ldr r1, [r4, #0x34]
	cmp r1, r4
	bne _0808F3F2
	movs r1, #0
	str r1, [r4, #0x34]
_0808F3F2:
	adds r4, r1, #0
	cmp r4, #0
	bne _0808F3C6
_0808F3F8:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _0808F476
	adds r0, r5, #0
	bl sub_0808FDAC
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _0808F476
_0808F41E:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _0808F42A
	ldrb r1, [r5, #7]
	b _0808F434
_0808F42A:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _0808F434
	strb r1, [r5, #7]
_0808F434:
	cmp r1, #0xcf
	blo _0808F44A
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0808F5C4
	b _0808F476
_0808F44A:
	cmp r1, #0xb0
	bls _0808F46C
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808F5C4
	ldrb r0, [r5]
	cmp r0, #0
	beq _0808F4D2
	b _0808F476
_0808F46C:
	ldr r0, _0808F5C8 @ =gUnknown_08119BF0
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_0808F476:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _0808F41E
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _0808F4D2
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _0808F4D2
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0808F498
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _0808F4D2
_0808F498:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _0808F4AC
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _0808F4B0
_0808F4AC:
	movs r0, #0x80
	subs r2, r0, r1
_0808F4B0:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _0808F4D2
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _0808F4CC
	movs r1, #0xc
	b _0808F4CE
_0808F4CC:
	movs r1, #3
_0808F4CE:
	orrs r0, r1
	strb r0, [r5]
_0808F4D2:
	mov r3, sl
	mov r4, fp
_0808F4D6:
	subs r6, #1
	ble _0808F4E2
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _0808F3B0
_0808F4E2:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _0808F4F4
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _0808F5B4
_0808F4F4:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_0808F4FA:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _0808F502
	b _0808F3A8
_0808F502:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_0808F506:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _0808F5AA
	movs r1, #0xf
	tst r1, r0
	beq _0808F5AA
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080903E8
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0808F5A0
_0808F524:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _0808F534
	adds r0, r4, #0
	bl sub_0808FD98
	b _0808F590
_0808F534:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _0808F552
	bl sub_0808F620
	cmp r6, #0
	beq _0808F552
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_0808F552:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _0808F590
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _0808F566
	movs r2, #0
_0808F566:
	cmp r6, #0
	beq _0808F584
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_0808F5C4
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _0808F590
_0808F584:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl sub_0808F8EC
	str r0, [r4, #0x20]
_0808F590:
	ldr r1, [r4, #0x34]
	cmp r1, r4
	bne _0808F59A
	movs r1, #0
	str r1, [r4, #0x34]
_0808F59A:
	adds r4, r1, #0
	cmp r4, #0
	bne _0808F524
_0808F5A0:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_0808F5AA:
	subs r2, #1
	ble _0808F5B4
	movs r0, #0x50
	adds r5, r5, r0
	bgt _0808F506
_0808F5B4:
	ldr r0, _0808F5D0 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_0808F5C4
sub_0808F5C4: @ 0x0808F5C4
	bx r3
	.align 2, 0
_0808F5C8: .4byte gUnknown_08119BF0
_0808F5CC: .4byte gUnknown_03007FF0
_0808F5D0: .4byte 0x68736D53

	thumb_func_start sub_0808F5D4
sub_0808F5D4: @ 0x0808F5D4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _0808F616
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0808F614
	movs r6, #0
_0808F5E8:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808F602
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _0808F600
	ldr r3, _0808F61C @ =gUnknown_03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_0808F5C4
_0808F600:
	strb r6, [r4]
_0808F602:
	str r6, [r4, #0x2c]
	ldr r0, [r4, #0x34]
	cmp r0, r4
	bne _0808F60E
	movs r0, #0
	str r0, [r4, #0x34]
_0808F60E:
	adds r4, r0, #0
	cmp r4, #0
	bne _0808F5E8
_0808F614:
	str r4, [r5, #0x20]
_0808F616:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808F61C: .4byte gUnknown_03007FF0

	thumb_func_start sub_0808F620
sub_0808F620: @ 0x0808F620
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0808F638
	movs r0, #0xff
_0808F638:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0808F64C
	movs r0, #0xff
_0808F64C:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start sub_0808F650
sub_0808F650: @ 0x0808F650
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _0808F848 @ =gUnknown_03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _0808F84C @ =gUnknown_08119BF0
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0808F696
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0808F694
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0808F694
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_0808F694:
	str r3, [r5, #0x40]
_0808F696:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _0808F6E8
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _0808F6B6
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _0808F6B8
_0808F6B6:
	adds r0, r3, #0
_0808F6B8:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _0808F6D0
	b _0808F836
_0808F6D0:
	movs r0, #0x80
	tst r0, r2
	beq _0808F6EC
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _0808F6E4
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_0808F6E4:
	ldrb r3, [r6, #1]
	b _0808F6EC
_0808F6E8:
	mov sb, r4
	ldrb r3, [r5, #5]
_0808F6EC:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _0808F6FC
	movs r0, #0xff
_0808F6FC:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _0808F73C
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _0808F714
	b _0808F836
_0808F714:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0808F790
	movs r0, #0x40
	tst r0, r1
	bne _0808F790
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _0808F790
	beq _0808F734
	b _0808F836
_0808F734:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _0808F790
	b _0808F836
_0808F73C:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_0808F74A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0808F790
	movs r0, #0x40
	tst r0, r1
	beq _0808F764
	cmp r2, #0
	bne _0808F768
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _0808F782
_0808F764:
	cmp r2, #0
	bne _0808F784
_0808F768:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _0808F774
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _0808F782
_0808F774:
	bhi _0808F784
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _0808F780
	adds r7, r0, #0
	b _0808F782
_0808F780:
	blo _0808F784
_0808F782:
	mov r8, r4
_0808F784:
	adds r4, #0x40
	subs r3, #1
	bgt _0808F74A
	mov r4, r8
	cmp r4, #0
	beq _0808F836
_0808F790:
	adds r0, r4, #0
	bl sub_0808FD98
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _0808F7A4
	str r4, [r3, #0x30]
_0808F7A4:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _0808F7B6
	adds r1, r5, #0
	bl sub_0808F89C
_0808F7B6:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_080903E8
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl sub_0808F620
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _0808F7F0
	movs r3, #0
_0808F7F0:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _0808F81E
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _0808F80A
	movs r0, #0x70
	tst r0, r1
	bne _0808F80C
_0808F80A:
	movs r1, #8
_0808F80C:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_0808F5C4
	b _0808F828
_0808F81E:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl sub_0808F8EC
_0808F828:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_0808F836:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_0808F848: .4byte gUnknown_03007FF0
_0808F84C: .4byte gUnknown_08119BF0

	thumb_func_start sub_0808F850
sub_0808F850: @ 0x0808F850
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _0808F862
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _0808F864
_0808F862:
	ldrb r3, [r1, #5]
_0808F864:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _0808F896
	movs r4, #0x83
	movs r5, #0x40
_0808F86E:
	ldrb r2, [r1]
	tst r2, r4
	beq _0808F886
	tst r2, r5
	bne _0808F886
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _0808F886
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _0808F896
_0808F886:
	ldr r2, [r1, #0x34]
	cmp r2, r1
	bne _0808F890
	movs r2, #0
	str r2, [r1, #0x34]
_0808F890:
	adds r1, r2, #0
	cmp r1, #0
	bne _0808F86E
_0808F896:
	pop {r4, r5}
	bx lr
	.align 2, 0

	thumb_func_start sub_0808F89C
sub_0808F89C: @ 0x0808F89C
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _0808F8AC
	movs r2, #0xc
	b _0808F8AE
_0808F8AC:
	movs r2, #3
_0808F8AE:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808F8B8
sub_0808F8B8: @ 0x0808F8B8
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808F8C4
sub_0808F8C4: @ 0x0808F8C4
	mov ip, lr
	bl sub_0808F8B8
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _0808F8D4
	bl sub_0808F89C
_0808F8D4:
	bx ip
	.align 2, 0

	thumb_func_start sub_0808F8D8
sub_0808F8D8: @ 0x0808F8D8
	mov ip, lr
	bl sub_0808F8B8
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _0808F8E8
	bl sub_0808F89C
_0808F8E8:
	bx ip
	.align 2, 0

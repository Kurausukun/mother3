	.syntax unified
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	movs r1, #8
	bl sub_08002FD4
	cmp r0, #0
	bne _0805794A
	ldr r2, _080579A4
	ldr r0, _080579A8
	adds r5, r2, r0
	ldrh r3, [r5]
	cmp r3, #0x13
	bhi _0805794A
	subs r0, #4
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #1
	strh r0, [r5]
_0805794A:
	ldr r0, [r4, #0x24]
	cmp r0, #0x78
	bls _080579B4
	cmp r0, #0xf1
	bne _0805797A
	ldr r1, _080579A4
	ldr r0, _080579AC
	adds r3, r1, r0
	ldrb r0, [r3]
	movs r2, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r0, _080579B0
	adds r1, r1, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0x78
	bl sub_080031F0
_0805797A:
	ldr r0, [r4, #0x24]
	cmp r0, #0xf0
	bls _080579C8
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080579C8
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #3
	bl sub_08057FB0
	b _080579C8
	.align 2, 0
_080579A4: .4byte gSomeBlend
_080579A8: .4byte 0x00002CB4
_080579AC: .4byte 0x00002CB1
_080579B0: .4byte 0x00002CFC
_080579B4:
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080579C8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_08057FB0
_080579C8:
	ldr r1, [r4, #0x24]
	ldr r0, _080579E0
	cmp r1, r0
	bls _080579D6
	movs r0, #0x12
	bl sub_08057A14
_080579D6:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080579E0: .4byte 0x00000617
	.syntax divided

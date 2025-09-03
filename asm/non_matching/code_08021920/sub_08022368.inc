	.syntax unified
sub_08022368:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _080223E8
	str r5, [r4, #0x10]
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0x30
	bl sub_08001B54
	ldr r4, [r4, #0xc]
	movs r6, #0
	ldr r0, _08022398
	mov sb, r0
	adds r7, r0, #0
	subs r0, #0xfe
	mov r8, r0
	b _080223DA
	.align 2, 0
_08022398: .4byte 0x0000FFFF
_0802239C:
	ldr r0, _080223C0
	cmp r1, r0
	bls _080223C4
	ldrh r0, [r4]
	adds r1, r4, #2
	adds r2, r5, #0
	bl sub_08021B64
	adds r5, r0, #0
	ldrh r0, [r4]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r4, r4, r0
	b _080223CA
	.align 2, 0
_080223C0: .4byte 0x0000FEFF
_080223C4:
	strh r2, [r5]
	adds r4, #2
	adds r5, #2
_080223CA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x16
	bls _080223DA
	mov r0, sb
	strh r0, [r5]
	b _080223E8
_080223DA:
	ldrh r2, [r4]
	adds r1, r2, #0
	cmp r1, r7
	beq _080223E6
	cmp r1, r8
	bne _0802239C
_080223E6:
	strh r7, [r5]
_080223E8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

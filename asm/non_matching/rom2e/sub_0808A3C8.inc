	.syntax unified
sub_0808A3C8:
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
	bl Div
_0808A420:
	ldr r1, _0808A480
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
	.syntax divided

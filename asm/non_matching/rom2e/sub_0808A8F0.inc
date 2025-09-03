	.syntax unified
sub_0808A8F0:
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
	bl Div
_0808A944:
	ldr r1, _0808AAA4
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
	.syntax divided

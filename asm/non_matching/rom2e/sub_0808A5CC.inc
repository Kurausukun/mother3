	.syntax unified
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
	.syntax divided

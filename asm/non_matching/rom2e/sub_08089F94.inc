	.syntax unified
sub_08089F94:
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
	ldr r2, _0808A018
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
	bl sub_0806D79C__11Unk0806D64C
	ldr r0, _0808A01C
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
	.syntax divided

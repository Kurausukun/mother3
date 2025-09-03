	.syntax unified
sub_0802D9F8:
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x8f
	movs r0, #0
	strb r0, [r1]
	mov r5, sp
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	adds r0, r4, #0
	mov r1, sp
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802DA44
	adds r2, r4, #0
	adds r2, #0x96
	ldrh r1, [r2]
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
	b _0802DA4E
_0802DA44:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802DA4E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

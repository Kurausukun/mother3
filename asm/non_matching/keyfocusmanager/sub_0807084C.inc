	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	bl __4Base
	ldr r0, _080708A4
	str r0, [r7, #0x1c]
	movs r0, #0
	strh r0, [r7, #0x30]
	strh r0, [r7, #0x32]
	adds r1, r7, #0
	adds r1, #0x34
	strh r0, [r7, #0x34]
	strh r0, [r1, #2]
	str r0, [r7, #0x24]
	str r0, [r7, #0x28]
	str r0, [r7, #0x2c]
	strh r4, [r7, #0x30]
	strh r5, [r7, #0x32]
	mov r0, sp
	ldrh r0, [r0, #0x14]
	strh r0, [r7, #0x34]
	mov r1, sp
	ldrh r1, [r1, #0x18]
	strh r1, [r7, #0x36]
	adds r1, r7, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #7
	strb r0, [r1]
	cmp r6, #0
	beq _0807089C
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080708E0
_0807089C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080708A4: .4byte vt_09F807F0
	.syntax divided

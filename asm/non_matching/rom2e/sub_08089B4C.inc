	.syntax unified
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
	ldr r1, _08089BAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08089BAC: .4byte _08089BB0
_08089BB0:
	.4byte _08089BCC
	.4byte _08089BDC
	.4byte _08089BEC
	.4byte _08089BFC
	.4byte _08089C0C
	.4byte _08089C1C
	.4byte _08089C2C
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
	.syntax divided

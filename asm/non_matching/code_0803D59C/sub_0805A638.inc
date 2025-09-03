	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, sp, #0x30
	movs r0, #0
	strh r0, [r4]
	movs r6, #0
	movs r5, #0
	ldr r1, _0805A67C
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _0805A680
	strh r6, [r0]
	ldr r1, _0805A684
	movs r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	add r0, sp, #0x10
	movs r2, #0
	movs r3, #0x1e
	bl sub_080031F0
	ldrh r0, [r4]
	adds r7, r4, #0
	cmp r0, #0
	bne _0805A756
_0805A66E:
	cmp r5, #1
	beq _0805A6AA
	cmp r5, #1
	bgt _0805A688
	cmp r5, #0
	beq _0805A68E
	b _0805A6EE
	.align 2, 0
_0805A67C: .4byte gUnknown_02015DF0
_0805A680: .4byte gUnknown_02015DF4
_0805A684: .4byte gUnknown_02018CDC
_0805A688:
	cmp r5, #2
	beq _0805A6D4
	b _0805A6EE
_0805A68E:
	add r0, sp, #0x10
	movs r1, #0
	movs r2, #0x20
	bl sub_0805A904
	add r0, sp, #0x10
	ldrb r1, [r0, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805A6EE
	movs r5, #1
	movs r6, #0
	b _0805A6EE
_0805A6AA:
	ldr r0, _0805A6CC
	cmp r6, r0
	bls _0805A6EE
	movs r5, #2
	movs r6, #0
	movs r0, #3
	str r0, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	add r0, sp, #0x10
	ldr r1, _0805A6D0
	movs r2, #0
	movs r3, #0x1e
	bl sub_080031F0
	b _0805A6EE
	.align 2, 0
_0805A6CC: .4byte 0x00000E0F
_0805A6D0: .4byte gUnknown_02018CDC
_0805A6D4:
	add r0, sp, #0x10
	movs r1, #0
	movs r2, #0x20
	bl sub_0805A904
	add r0, sp, #0x10
	ldrb r1, [r0, #0x1d]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0805A6EE
	strh r2, [r7]
_0805A6EE:
	ldr r4, _0805A760
	adds r0, r4, #0
	bl sub_08000E5C
	ldr r1, _0805A764
	adds r0, r4, r1
	bl sub_0800164C
	cmp r5, #2
	beq _0805A70A
	cmp r5, #1
	bne _0805A746
	cmp r6, #0x59
	bls _0805A710
_0805A70A:
	adds r0, r5, #0
	bl sub_0805A778
_0805A710:
	cmp r5, #1
	bne _0805A746
	cmp r6, #0x59
	bls _0805A746
	ldr r2, _0805A768
	ldr r3, _0805A76C
	adds r0, r2, r3
	ldrh r1, [r0]
	ldr r3, _0805A770
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0805A746
	movs r5, #2
	movs r6, #0
	movs r0, #3
	str r0, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	add r0, sp, #0x10
	ldr r3, _0805A774
	adds r1, r2, r3
	movs r2, #0
	movs r3, #0x1e
	bl sub_080031F0
_0805A746:
	bl sub_08001960
	bl sub_0805A488
	adds r6, #1
	ldrh r0, [r7]
	cmp r0, #0
	beq _0805A66E
_0805A756:
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A760: .4byte gUnknown_02016078
_0805A764: .4byte 0x00002C50
_0805A768: .4byte gSomeBlend
_0805A76C: .4byte 0x00002CA2
_0805A770: .4byte 0x000003FF
_0805A774: .4byte 0x00002CB4
	.syntax divided

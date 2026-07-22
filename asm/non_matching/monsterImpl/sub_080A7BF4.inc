	.syntax unified
sub_080A7BF4:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080A7C48
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x19
	blt _080A7CEA
	ldr r0, _080A7C44
	cmp r1, #0x3c
	bge _080A7CEA
	movs r0, #0x6d
	b _080A7CEA
	.align 2, 0
_080A7C44: .4byte 0x0000022A
_080A7C48:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080A7CA2
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080A7C7C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x14
	blt _080A7CE8
	movs r1, #0x23
	cmp r0, #0x37
	blt _080A7CE8
	movs r1, #0xc3
	cmp r0, #0x41
	bge _080A7CE8
	movs r1, #0x28
	b _080A7CE8
_080A7C7C:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0xf
	blt _080A7CE8
	movs r1, #0x50
	cmp r0, #0x2d
	blt _080A7CE8
	movs r1, #0x23
	cmp r0, #0x4b
	blt _080A7CE8
	movs r1, #0xc3
	cmp r0, #0x50
	bge _080A7CE8
	movs r1, #0x28
	b _080A7CE8
_080A7CA2:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	ble _080A7CCA
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x1e
	blt _080A7CEA
	movs r0, #0x28
	cmp r1, #0x50
	bge _080A7CEA
	movs r0, #0x23
	b _080A7CEA
_080A7CCA:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x14
	blt _080A7CE8
	movs r1, #0x50
	cmp r0, #0x32
	blt _080A7CE8
	movs r1, #0x28
	cmp r0, #0x5a
	bge _080A7CE8
	movs r1, #0x23
_080A7CE8:
	adds r0, r1, #0
_080A7CEA:
	adds r1, r5, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided

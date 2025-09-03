	.syntax unified
	push {r4, lr}
	sub sp, #8
	ldr r0, _0800FC18
	ldrb r0, [r0]
	cmp r0, #4
	bgt _0800FC1C
	cmp r0, #3
	blt _0800FC1C
	mov r1, sp
	movs r0, #0
	b _0800FC20
	.align 2, 0
_0800FC18: .4byte gUnknown_02005080
_0800FC1C:
	mov r1, sp
	movs r0, #1
_0800FC20:
	strh r0, [r1]
	ldr r4, _0800FCC4
	mov r0, sp
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_0800FDE8
	bl sub_08019F90
	ldr r0, _0800FCC8
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800FC68
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800FC68
	add r4, sp, #4
	ldr r0, _0800FCCC
	ldr r2, _0800FCD0
	adds r1, r0, r2
	ldrh r1, [r1]
	adds r2, #0xa
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	bl sub_08010528
	adds r0, r4, #0
	bl sub_0801059C
	adds r0, r4, #0
	bl sub_0801A218
_0800FC68:
	ldr r4, _0800FCD4
	ldr r1, _0800FCD8
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #1
	bl sub_080106CC
	bl sub_0801084C
	bl sub_080105F4
	bl sub_080120F4
	bl sub_08012354
	bl sub_08012408
	bl sub_080139AC
	ldrb r1, [r4, #1]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0800FCBC
	ldr r2, _0800FCDC
	adds r0, r4, r2
	movs r1, #1
	strb r1, [r0]
	subs r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _0800FCE0
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800FCE4
	movs r1, #0x80
	lsls r1, r1, #3
	bl memclear
_0800FCBC:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FCC4: .4byte gUnknown_02005C0C
_0800FCC8: .4byte 0x00008488
_0800FCCC: .4byte gSave
_0800FCD0: .4byte 0x00000222
_0800FCD4: .4byte gGame
_0800FCD8: .4byte 0x000067AC
_0800FCDC: .4byte 0x0000595C
_0800FCE0: .4byte 0x0000598C
_0800FCE4: .4byte gUnknown_03005314
	.syntax divided

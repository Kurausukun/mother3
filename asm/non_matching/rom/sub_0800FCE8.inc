	.syntax unified
	push {r4, lr}
	sub sp, #4
	ldr r4, _0800FD0C
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800FDE8
	bl sub_08019F90
	ldr r1, _0800FD10
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800FD14
	cmp r0, #1
	beq _0800FD30
	b _0800FD42
	.align 2, 0
_0800FD0C: .4byte gUnknown_02005C0C
_0800FD10: .4byte 0x0000594C
_0800FD14:
	ldr r2, _0800FD2C
	adds r1, r4, r2
	subs r2, #0x2e
	adds r0, r4, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	bl sub_080104BC
	b _0800FD42
	.align 2, 0
_0800FD2C: .4byte 0x0000597C
_0800FD30:
	ldr r1, _0800FD94
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0800FD98
	adds r0, r4, r2
	ldrh r2, [r0]
	mov r0, sp
	bl sub_08010528
_0800FD42:
	mov r0, sp
	bl sub_0801059C
	mov r0, sp
	bl sub_0801A218
	movs r4, #0
_0800FD50:
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0800FD9C
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080012BC
	cmp r4, #2
	bls _0800FD50
	ldr r0, _0800FDA0
	ldr r1, _0800FDA4
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0
	bl sub_080106CC
	bl sub_0801084C
	bl sub_080105F4
	bl sub_0801216C
	bl sub_08012354
	bl sub_08012464
	bl sub_080139FC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FD94: .4byte 0x00005970
_0800FD98: .4byte 0x00005972
_0800FD9C: .4byte gUnknown_02016078
_0800FDA0: .4byte gGame
_0800FDA4: .4byte 0x000067AC
	.syntax divided

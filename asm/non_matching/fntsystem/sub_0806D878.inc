	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x68
	ldrh r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806D8A6
	adds r0, r5, #0
	adds r0, #0x64
	ldrh r1, [r5, #0x20]
	adds r2, r5, #0
	adds r2, #0x24
	adds r3, r5, #0
	adds r3, #0x28
	bl sub_08088044
	ldrh r1, [r6]
	ldr r0, _0806D8E4
	ands r0, r1
	strh r0, [r6]
_0806D8A6:
	ldrh r1, [r6]
	movs r0, #0x12
	ands r0, r1
	cmp r0, #0x12
	bne _0806D8DC
	adds r0, r5, #0
	adds r0, #0x64
	ldrh r1, [r5, #0x20]
	adds r2, r5, #0
	adds r2, #0x30
	adds r3, r5, #0
	adds r3, #0x44
	adds r4, r5, #0
	adds r4, #0x58
	str r4, [sp]
	subs r4, #0x2c
	str r4, [sp, #4]
	subs r4, #8
	str r4, [sp, #8]
	adds r4, #4
	str r4, [sp, #0xc]
	bl sub_080881AC
	ldrh r1, [r6]
	ldr r0, _0806D8E8
	ands r0, r1
	strh r0, [r6]
_0806D8DC:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D8E4: .4byte 0x0000FFF7
_0806D8E8: .4byte 0x0000FFEF
	.syntax divided

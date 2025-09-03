	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r3, [r1, #4]
	cmp r3, #0
	beq _0803A854
	cmp r3, #1
	beq _0803A8F8
	b _0803A96C
_0803A854:
	ldr r1, _0803A874
	ldr r0, _0803A878
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldrh r1, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A87C
	movs r4, #0xa
	b _0803A88A
	.align 2, 0
_0803A874: .4byte gSomeBlend
_0803A878: .4byte 0x00003668
_0803A87C:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	beq _0803A88A
	movs r4, #0x64
_0803A88A:
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0803A8C0
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A8B4
	ldr r1, _0803A8B8
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r0, r4, r0
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _0803A8BC
	cmp r0, r1
	bls _0803A96C
	strh r5, [r2]
	b _0803A96C
	.align 2, 0
_0803A8B4: .4byte gSomeBlend
_0803A8B8: .4byte 0x00003618
_0803A8BC: .4byte 0x07CE0000
_0803A8C0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A96C
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A8EC
	ldr r2, _0803A8F0
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, r4
	blo _0803A8E4
	subs r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803A96C
_0803A8E4:
	ldr r0, _0803A8F4
	strh r0, [r1]
	b _0803A96C
	.align 2, 0
_0803A8EC: .4byte gSomeBlend
_0803A8F0: .4byte 0x00003618
_0803A8F4: .4byte 0x000007CE
_0803A8F8:
	ldr r4, _0803A928
	ldr r1, _0803A92C
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	ldrh r1, [r5, #2]
	ands r3, r1
	cmp r3, #0
	beq _0803A93E
	movs r0, #0xd2
	bl play_sound
	ldr r2, _0803A930
	adds r1, r4, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x14
	bne _0803A938
	ldr r0, _0803A934
	strh r0, [r1]
	b _0803A96C
	.align 2, 0
_0803A928: .4byte gSomeBlend
_0803A92C: .4byte 0x00003668
_0803A930: .4byte 0x0000361A
_0803A934: .4byte 0x0000FFFF
_0803A938:
	adds r0, r2, #1
	strh r0, [r1]
	b _0803A96C
_0803A93E:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A96C
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A964
	adds r2, r4, r0
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803A968
	movs r0, #0x14
	b _0803A96A
	.align 2, 0
_0803A964: .4byte 0x0000361A
_0803A968:
	subs r0, r3, #1
_0803A96A:
	strh r0, [r2]
_0803A96C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

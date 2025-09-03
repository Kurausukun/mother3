	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	cmp r4, #0
	beq _080039E8
	adds r0, r4, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080039E8
	cmp r4, #0xf6
	bne _080039C6
	ldr r0, _080039F0
	bl m4aSongNumStart
_080039C6:
	ldr r3, _080039F4
	lsls r1, r5, #0x10
	asrs r1, r1, #0xf
	adds r3, r1, r3
	ldr r0, _080039F8
	adds r0, r1, r0
	ldrh r2, [r0]
	strh r2, [r3]
	strh r6, [r0]
	ldr r0, _080039FC
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r6, #0
	bl m4aSongNumStart
_080039E8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080039F0: .4byte 0x000003DA
_080039F4: .4byte gUnknown_02015ED8
_080039F8: .4byte gUnknown_02015EC0
_080039FC: .4byte gUnknown_02015EF0
	.syntax divided

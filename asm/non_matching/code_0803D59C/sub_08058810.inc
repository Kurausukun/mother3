	.syntax unified
	push {r4, r5, lr}
	ldr r1, _0805886C
	ldr r4, _08058870
	ldr r2, _08058874
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	strh r0, [r1]
	cmp r0, #0
	beq _08058856
	ldr r2, _08058878
	ldrh r0, [r2]
	ldrh r1, [r4, #0x26]
	strh r0, [r4, #0x26]
	ldr r1, _0805887C
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _08058856
	ldr r0, _08058880
	adds r4, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_08001A14
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080019DC
_08058856:
	ldr r0, _08058870
	ldr r1, _08058874
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805886C: .4byte gUnknown_03004AF0
_08058870: .4byte gSomeBlend
_08058874: .4byte 0x00004814
_08058878: .4byte gUnknown_030040F0
_0805887C: .4byte 0x00002D15
_08058880: .4byte 0x000046D4
	.syntax divided

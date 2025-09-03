	.syntax unified
sub_0800B504:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0
	bl get_obj_direct
	adds r6, r0, #0
	ldr r0, _0800B534
	ldr r1, _0800B538
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0800B53C
	movs r0, #0xdf
	bl play_sound
	bl sub_08037958
	bl sub_08039B5C
	bl sub_08037708
	b _0800B5F6
	.align 2, 0
_0800B534: .4byte gSomeBlend
_0800B538: .4byte 0x0001ED10
_0800B53C:
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _0800B556
	bl sub_08019FE4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B5F6
	bl sub_08037958
	bl sub_08004E64
	b _0800B5F6
_0800B556:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B568
	movs r0, #1
	bl sub_08033FEC
	b _0800B5F6
_0800B568:
	ldrh r1, [r4, #2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0800B59A
	ldrh r0, [r4, #2]
	bl sub_0802706C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0800B5FC
	ldr r2, _0800B600
	adds r3, r0, r2
	ldrh r2, [r3]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1c
	cmp r1, r0
	beq _0800B59A
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, _0800B604
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
_0800B59A:
	ldr r5, _0800B5FC
	ldr r1, _0800B600
	adds r0, r5, r1
	ldrh r4, [r0]
	lsls r4, r4, #0x17
	lsrs r4, r4, #0x1c
	adds r0, r6, #0
	bl sub_08034348
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #3
	bl sub_0800B7AC
	ldr r2, _0800B608
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800B5D8
	ldr r1, _0800B60C
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _0800B5D8
	movs r0, #0
	bl sub_08033DA8
_0800B5D8:
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0800B5EA
	movs r0, #0
	bl sub_08033FEC
_0800B5EA:
	ldr r1, _0800B5FC
	ldr r2, _0800B610
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0800B5F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B5FC: .4byte gGame
_0800B600: .4byte 0x000082B6
_0800B604: .4byte 0xFFFFFE1F
_0800B608: .4byte 0x00009D14
_0800B60C: .4byte 0x0000829B
_0800B610: .4byte 0x000082A0
	.syntax divided

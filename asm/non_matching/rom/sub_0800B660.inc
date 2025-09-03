	.syntax unified
sub_0800B660:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0
	bl get_obj_direct
	adds r5, r0, #0
	ldr r0, _0800B688
	ldr r1, _0800B68C
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0800B690
	movs r0, #0xdf
	bl play_sound
	bl sub_08037708
	b _0800B790
	.align 2, 0
_0800B688: .4byte gSomeBlend
_0800B68C: .4byte 0x0001ED10
_0800B690:
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _0800B6AA
	bl sub_08019FE4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B790
	bl sub_08037958
	bl sub_08004E64
	b _0800B790
_0800B6AA:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B6EE
	ldr r0, _0800B6CC
	ldr r1, _0800B6D0
	adds r2, r0, r1
	ldrh r1, [r2]
	lsls r0, r1, #0x17
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0800B6D8
	ldr r0, _0800B6D4
	ands r0, r1
	strh r0, [r2]
	b _0800B720
	.align 2, 0
_0800B6CC: .4byte gGame
_0800B6D0: .4byte 0x000082B6
_0800B6D4: .4byte 0xFFFFFE1F
_0800B6D8:
	bl sub_0801AB50
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B6E8
	bl sub_080259D4
	b _0800B790
_0800B6E8:
	bl sub_08025CB0
	b _0800B790
_0800B6EE:
	ldrh r1, [r4, #2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0800B720
	ldrh r0, [r4, #2]
	bl sub_0802706C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0800B798
	ldr r2, _0800B79C
	adds r3, r0, r2
	ldrh r2, [r3]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1c
	cmp r1, r0
	beq _0800B720
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, _0800B7A0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
_0800B720:
	ldr r6, _0800B798
	ldr r0, _0800B79C
	adds r4, r6, r0
	ldrh r1, [r4]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1c
	adds r0, r5, #0
	movs r2, #4
	movs r3, #1
	bl sub_0800B7AC
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0
	beq _0800B74C
	ldrh r1, [r4]
	ldr r0, _0800B7A0
	ands r0, r1
	strh r0, [r4]
_0800B74C:
	ldrh r0, [r4]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800B77E
	ldr r1, _0800B7A4
	adds r0, r6, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0800B77E
	subs r0, #2
	cmp r1, r0
	blt _0800B77E
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r0, #0
	movs r1, #0
	bl sub_080332AC
_0800B77E:
	ldr r0, _0800B798
	ldr r1, _0800B7A8
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800B790
	bl sub_08034288
_0800B790:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B798: .4byte gGame
_0800B79C: .4byte 0x000082B6
_0800B7A0: .4byte 0xFFFFFE1F
_0800B7A4: .4byte 0x000082AC
_0800B7A8: .4byte 0x00008494
	.syntax divided

	.syntax unified
sub_08030354:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r6, #0
	ldr r0, _080303E4
	ldr r1, _080303E8
	adds r3, r0, r1
	adds r2, r7, #0
	adds r2, #0x88
	ldrh r1, [r3]
	adds r4, r0, #0
	ldrh r2, [r2]
	cmp r1, r2
	beq _0803041A
	ldr r0, _080303EC
	mov r8, r0
_08030376:
	lsls r0, r6, #1
	adds r2, r0, r3
	ldrh r0, [r2]
	cmp r0, #0
	bne _08030400
	ldr r3, _080303F0
	adds r1, r4, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r5, r7, #0
	adds r5, #0x88
	ldrh r0, [r5]
	strh r0, [r2]
	ldr r1, _080303F4
	adds r0, r1, #0
	ldrh r3, [r5]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036DDC
	adds r2, r0, #0
	lsls r0, r6, #2
	ldr r3, _080303F8
	adds r1, r4, r3
	adds r0, r0, r1
	str r2, [r0]
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0803041A
	adds r0, r6, #0
	adds r0, #0x17
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_08016F4C
	ldr r3, _080303FC
	adds r0, r3, #0
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _0803041A
	adds r0, r4, #0
	movs r1, #1
	bl sub_0803B688
	b _0803041A
	.align 2, 0
_080303E4: .4byte gGame
_080303E8: .4byte 0x00008378
_080303EC: .4byte gUnknown_020281E0
_080303F0: .4byte 0x00008376
_080303F4: .4byte 0x0000FF01
_080303F8: .4byte 0x0000835C
_080303FC: .4byte 0xFFFFFDD9
_08030400:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bhi _0803041A
	lsls r0, r6, #1
	adds r0, r0, r3
	adds r1, r7, #0
	adds r1, #0x88
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08030376
_0803041A:
	adds r1, r6, #7
	adds r0, r7, #0
	adds r0, #0x8a
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

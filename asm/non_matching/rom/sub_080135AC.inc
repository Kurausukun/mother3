	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r1, _08013624
	ldr r2, _08013628
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08013654
	ldr r0, _0801362C
	adds r5, r1, r0
	movs r6, #0
	movs r2, #2
	rsbs r2, r2, #0
	adds r7, r2, #0
_080135CA:
	ldrb r1, [r5, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08013648
	ldr r4, [r5, #4]
	ldrh r0, [r5, #8]
	ldrh r1, [r5, #0xa]
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08013748
	adds r4, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	bl sub_080136BC
	adds r2, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0]
	lsls r3, r0, #0x16
	lsrs r3, r3, #0x1c
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0801365C
	ldrb r1, [r5, #0xc]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08013630
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _08013630
	adds r0, r1, #0
	b _08013644
	.align 2, 0
_08013624: .4byte gGame
_08013628: .4byte 0x000067C4
_0801362C: .4byte 0x0000647C
_08013630:
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0801368C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08013648
	ldrb r0, [r5, #0xc]
_08013644:
	ands r0, r7
	strb r0, [r5, #0xc]
_08013648:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #0x10
	cmp r6, #0x13
	bls _080135CA
_08013654:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

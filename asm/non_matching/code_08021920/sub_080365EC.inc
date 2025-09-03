	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r4, #0
	ldr r0, _08036634
	ldr r1, _08036638
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r4, r1
	bhs _08036648
	adds r7, r0, #0
_08036606:
	adds r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, r6
	beq _0803663C
	adds r0, r1, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803663C
	adds r0, r1, #0
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r0, r5
	bne _0803663C
	adds r0, r1, #0
	b _0803664A
	.align 2, 0
_08036634: .4byte gGame
_08036638: .4byte 0x00008370
_0803663C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r7]
	cmp r4, r0
	blo _08036606
_08036648:
	movs r0, #0
_0803664A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided

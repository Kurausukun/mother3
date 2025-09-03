	.syntax unified
	push {r4, r5, lr}
	ldr r5, _08023F9C
	ldr r0, _08023FA0
	adds r4, r5, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08023F94
	ldrh r0, [r4]
	bl get_obj_direct
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08023FA4
	adds r5, r5, r0
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08023F94
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
	ldrh r0, [r4]
	ldrh r1, [r5]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1c
	bl sub_08036A1C
_08023F94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023F9C: .4byte gGame
_08023FA0: .4byte 0x00008450
_08023FA4: .4byte 0x00008494
	.syntax divided

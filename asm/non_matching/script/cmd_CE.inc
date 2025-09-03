	.syntax unified
cmd_CE:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _08020B4C
	ldr r1, _08020B40
	ldr r0, _08020B44
	adds r3, r1, r0
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldr r0, _08020B48
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_080123B0
	b _08020B58
	.align 2, 0
_08020B40: .4byte gGame
_08020B44: .4byte 0x000067C5
_08020B48: .4byte 0x000067AC
_08020B4C:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0802724C
_08020B58:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided

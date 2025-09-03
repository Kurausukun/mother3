	.syntax unified
	push {r4, r5, lr}
	movs r5, #0
_08033C48:
	adds r0, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033C68
	adds r4, #0x85
	ldrb r0, [r4]
	bl sub_08033414
	ldrb r0, [r4]
	bl sub_0803349C
_08033C68:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08033C48
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	movs r3, #1
	bl sub_08035384
	ldr r1, _08033C98
	ldr r0, _08033C9C
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033C98: .4byte gGame
_08033C9C: .4byte 0x00008496
	.syntax divided

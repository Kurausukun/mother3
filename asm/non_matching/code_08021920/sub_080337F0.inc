	.syntax unified
sub_080337F0:
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl get_obj_direct
	adds r6, r0, #0
	adds r0, r4, #0
	bl get_obj_direct
	adds r3, r0, #0
	adds r2, r6, #0
	adds r2, #0xcb
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x91
	strb r4, [r0]
	lsls r5, r5, #0x10
	asrs r1, r5, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803384A
	adds r0, r6, #0
	adds r0, #0x88
	adds r1, r3, #0
	adds r1, #0x88
	ldrh r0, [r0]
	ldrh r2, [r1]
	cmp r0, r2
	beq _08033854
	ldrh r1, [r1]
	adds r0, r6, #0
	movs r2, #1
	bl sub_08030550
	b _08033854
_0803384A:
	lsrs r1, r5, #0x10
	adds r0, r6, #0
	movs r2, #1
	bl sub_08030550
_08033854:
	ldr r0, _08033864
	ldrb r1, [r0, #1]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033864: .4byte gGame
	.syntax divided

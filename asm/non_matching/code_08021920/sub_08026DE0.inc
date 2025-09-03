	.syntax unified
sub_08026DE0:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	bl get_obj_direct
	adds r5, r0, #0
	ldrh r1, [r4, #2]
	movs r0, #0xf0
	ands r0, r1
	strh r0, [r4, #2]
	cmp r0, #0
	beq _08026E34
	ldrh r0, [r4, #2]
	bl sub_0802706C
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r3]
	movs r2, #0x1d
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #0
	bl sub_080332AC
_08026E34:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sp
	strh r1, [r0]
	movs r5, #0
_080338E6:
	adds r0, r5, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033934
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803391C
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r4, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08036650
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08036A1C
	b _08033934
_0803391C:
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r4, [r0]
	adds r0, r6, #0
	bl sub_08036C80
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08036A1C
_08033934:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _080338E6
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided

	.syntax unified
sub_08033578:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r6, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0x88
	ldrh r0, [r0]
	bl sub_08036D18
	adds r7, r0, #0
	adds r3, r4, #0
	adds r3, #0x50
	ldrb r1, [r3]
	movs r0, #1
	mov ip, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080335AC
	lsrs r0, r1, #3
	cmp r0, r5
	beq _080335EA
_080335AC:
	mov r0, ip
	orrs r0, r1
	lsls r2, r6, #3
	movs r1, #7
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x4c
	movs r0, #0
	strh r0, [r1]
	ldrb r1, [r3]
	subs r0, #5
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x51
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r7, #9]
	adds r0, r4, #0
	adds r0, #0x4e
	strh r1, [r0]
_080335EA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

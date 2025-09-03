	.syntax unified
sub_08050948:
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r1, #0x5c
	ldrb r4, [r1]
	adds r4, #1
	adds r1, r4, #0
	bl sub_08002BCC
	bl sub_08002C20
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, r6, #0
	adds r2, #0x64
	ldrh r0, [r2]
	cmp r0, r3
	blo _080509A8
	adds r5, r6, #0
	adds r5, #0x6f
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r5]
	lsls r0, r1, #0x1a
	cmp r0, #0
	blt _080509A4
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _080509A6
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08050F2C
	ldrb r1, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	b _080509AA
_080509A4:
	subs r0, r3, #1
_080509A6:
	strh r0, [r2]
_080509A8:
	adds r0, r4, #0
_080509AA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided

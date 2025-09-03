	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
_08027C46:
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r5, r0, #2
	adds r4, r7, r5
	ldrb r0, [r4, #8]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08027C5C
	adds r0, r4, #0
	bl sub_08027C98
_08027C5C:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08027C72
	adds r0, r5, #0
	adds r0, #0x78
	adds r0, r7, r0
	bl sub_08027CD8
_08027C72:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #9
	bls _08027C46
	adds r0, r7, #0
	adds r0, #0xf8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08027C92
	adds r0, r7, #0
	adds r0, #0xf0
	bl sub_08027D1C
_08027C92:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided

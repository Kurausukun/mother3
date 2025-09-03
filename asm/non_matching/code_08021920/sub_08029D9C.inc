	.syntax unified
	push {r4, lr}
	ldr r0, _08029E10
	ldr r1, _08029E14
	adds r4, r0, r1
	ldrb r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4]
	movs r0, #2
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08029DD8
	adds r0, r2, #0
	bl get_char_stats
	bl ch_has_psi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029DD8
	ldrb r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
_08029DD8:
	movs r0, #4
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08029E0A
	adds r0, r2, #0
	bl get_char_stats
	bl ch_has_psi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029E0A
	ldr r0, _08029E10
	ldr r1, _08029E14
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
_08029E0A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029E10: .4byte gGame
_08029E14: .4byte 0x000082B8
	.syntax divided

	.syntax unified
sub_0802AA78:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r6, #0
_0802AA80:
	adds r0, r6, #0
	bl get_obj_direct
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802AADA
	adds r0, r6, #0
	bl get_char_stats
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_0802B874
	adds r1, r0, #0
	cmp r5, #1
	beq _0802AABE
	cmp r5, #1
	bgt _0802AAAE
	cmp r5, #0
	beq _0802AAB8
	b _0802AAD2
_0802AAAE:
	cmp r5, #2
	beq _0802AAC2
	cmp r5, #3
	beq _0802AAC8
	b _0802AAD2
_0802AAB8:
	ldr r0, [r1, #8]
	str r0, [r4, #0x18]
	b _0802AAC2
_0802AABE:
	ldr r0, [r1, #8]
	b _0802AAD0
_0802AAC2:
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0x1c]
	b _0802AAD2
_0802AAC8:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bgt _0802AAD2
	movs r0, #1
_0802AAD0:
	str r0, [r4, #0x18]
_0802AAD2:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080295E8
_0802AADA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0802AA80
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
